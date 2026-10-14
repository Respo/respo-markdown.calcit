import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { comp_md, comp_md_block } from "../js-out/respo-md.comp.md.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { DemoState, ParserResult, hydrate_demo_store, parse_markdown } from "../js-out/respo-md.util.core.mjs";
import { escape_html } from "../js-out/respo-md.util.math.mjs";
const t = c.init_tags(["class-name"]);
const render = (text, options = c._$n__$M_()) => make_string(comp_md(text, options));
test("persisted demo text survives reload with a rebuilt nominal parser cache", () => {
  const tags = c.init_tags(["draft", "text", "parse-result", "states", "data", "blocks"]);
  const original = c._$n__PCT__$M_(DemoState, tags.draft, "# restored", tags.text, "inline restored", tags["parse-result"], parse_markdown("# restored"));
  const wire = c.parse_cirru_edn(c.format_cirru_edn(c._$n__$M_(tags.states, c._$n__$M_(tags.data, original))));
  const restored = c._$n_map_$o_get(c._$n_map_$o_get(hydrate_demo_store(wire), tags.states), tags.data);
  assert.equal(restored.get(tags.draft), "# restored");
  assert.equal(restored.get(tags.text), "inline restored");
  assert.equal(c._$n_struct_$o_definition(restored.get(tags["parse-result"])), ParserResult);
});
test("public inline component spreads rendered nodes instead of passing a List as one child", () => {
  assert.ok(render("Fixture paragraph").includes("Fixture paragraph"));
  assert.doesNotThrow(() => render(""));
});
test("inline emphasis, code and URL remain actual rendered nodes", () => {
  const html = render("hello **world** `code` https://example.com/");
  assert.ok(html.includes("<b"));
  assert.ok(html.includes("world"));
  assert.ok(html.includes("<code"));
  assert.ok(html.includes('href="https://example.com/"'));
});
test("class-name option and literal angle-bracket text are preserved", () => {
  const html = render("a < b", c._$n__$M_(t["class-name"], "inline-fixture"));
  assert.ok(html.includes('class="inline-fixture"'));
  assert.ok(html.includes("&lt;"));
});
test("repeated cached rendering preserves Unicode text and valid children", () => {
  const source = "笔记 **内容**";
  const first = render(source);
  assert.ok(first.includes("笔记"));
  assert.equal(render(source), first);
});

test("repeated links and images consume only the matched prefix", () => {
  const html = render("[相同🐈](https://example.com/) [相同🐈](https://example.com/) ![相同🐈](https://example.com/a.png) ![相同🐈](https://example.com/a.png)");
  assert.equal((html.match(/href="https:\/\/example\.com\/"/g) || []).length, 2);
  assert.equal((html.match(/src="https:\/\/example\.com\/a\.png"/g) || []).length, 2);
});

test("fenced code uses typed presentation options for both snippet components", () => {
  for (const source of ["```bash\nprintf hello\n```", "```cirru\nprintln |hello\n```"]) {
    const html = make_string(comp_md_block(source, c._$n__$M_()));
    assert.ok(html.includes("hello"));
    assert.ok(html.includes("md-code-block"));
    assert.ok(html.includes("<pre"));
  }
});

test("custom fenced-code callback executes and its HTML is rendered", () => {
  const tags = c.init_tags(["highlight"]);
  const calls = [];
  const highlight = (code, lang) => {
    calls.push([code, lang]);
    return '<mark data-highlight="custom">渲染🐈</mark>';
  };
  const html = make_string(comp_md_block("```unknown-language\n正文🐈\n```", c._$n__$M_(tags.highlight, highlight)));
  assert.deepEqual(calls, [["正文🐈", "unknown-language"]]);
  assert.ok(html.includes('<mark data-highlight="custom">渲染🐈</mark>'));
});

test("same code with different languages or highlighters never reuses the wrong HTML", () => {
  const tags = c.init_tags(["highlight"]);
  const calls = [];
  const highlight = (code, lang) => {
    calls.push([code, lang]);
    return `<mark>${lang}</mark>`;
  };
  const renderBlock = (lang, callback) => make_string(comp_md_block(`\`\`\`${lang}\nsame\n\`\`\``, c._$n__$M_(tags.highlight, callback)));
  assert.ok(renderBlock("js", highlight).includes("<mark>js</mark>"));
  assert.ok(renderBlock("bash", highlight).includes("<mark>bash</mark>"));
  assert.ok(renderBlock("js", () => "<b>other-renderer</b>").includes("<b>other-renderer</b>"));
  assert.ok(renderBlock("cirru", highlight).includes("<mark>cirru</mark>"));
  assert.deepEqual(calls, [["same", "js"], ["same", "bash"], ["same", "cirru"]]);
});

test("custom callback accepts empty code and preserves the snippet copy control", () => {
  const tags = c.init_tags(["highlight"]);
  const calls = [];
  const html = make_string(comp_md_block("```\n```", c._$n__$M_(tags.highlight, (code, lang) => {
    calls.push([code, lang]);
    return "<em>empty</em>";
  })));
  assert.deepEqual(calls, [["", ""]]);
  assert.ok(html.includes("<em>empty</em>"));
  assert.ok(html.includes("md-code-block"));
  assert.ok(html.includes("style-copy-container"));
});

test("invalid highlighters and non-string results fail explicitly", () => {
  const tags = c.init_tags(["highlight"]);
  const renderBlock = (callback) => make_string(comp_md_block("```js\ncode\n```", c._$n__$M_(tags.highlight, callback)));
  for (const value of [42, false, "not-a-function"]) {
    assert.throws(() => renderBlock(value), /highlight.*function/i);
  }
  for (const value of [42, null, false, {}]) {
    assert.throws(() => renderBlock(() => value), /highlight.*String/i);
  }
  assert.throws(() => renderBlock(() => { throw new Error("highlighter-sentinel"); }), /highlighter-sentinel/);
});

test("absent or nil highlighter keeps source as text instead of HTML", () => {
  const tags = c.init_tags(["highlight"]);
  const source = "```js\n<script>literal</script>\n```";
  const absent = make_string(comp_md_block(source, c._$n__$M_()));
  const nil = make_string(comp_md_block(source, c._$n__$M_(tags.highlight, null)));
  for (const html of [absent, nil]) {
    assert.ok(html.includes("&lt;script&gt;literal&lt;/script&gt;"));
    assert.ok(!html.includes("<script>"));
    assert.ok(html.includes("style-copy-container"));
  }
  assert.equal(absent, nil);
});

test("documented escaping callback keeps source markup inert", () => {
  const tags = c.init_tags(["highlight"]);
  const html = make_string(comp_md_block("```js\n<script>literal🐈</script>\n```", c._$n__$M_(tags.highlight, (code, lang) => `<code>${escape_html(code)}</code>`)));
  assert.ok(html.includes("<code>&lt;script&gt;literal🐈&lt;/script&gt;</code>"));
  assert.ok(!html.includes("<script>"));
});

test("headings, inline code and fenced code coexist in a homepage document", () => {
  const source = "# 安装\n\nUse `calcit` and **types**.\n\n```bash\ncalcit --check-only\n```";
  const html = make_string(comp_md_block(source, c._$n__$M_()));
  assert.ok(html.includes("安装"));
  assert.ok(html.includes("--check-only"));
  assert.ok(html.includes("<code"));
});
