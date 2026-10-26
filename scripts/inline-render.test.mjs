import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { comp_md, comp_md_block, resolve_blocks } from "../js-out/respo-md.comp.md.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { DemoState, ParserResult, ScanResult, hydrate_demo_store, parse_markdown, read_demo_state } from "../js-out/respo-md.util.core.mjs";
import { escape_html } from "../js-out/respo-md.util.math.mjs";
import { comp_container } from "../js-out/respo-md.comp.container.mjs";
import { Op } from "../js-out/respo-md.schema.mjs";
const t = c.init_tags(["class-name"]);
const render = (text, options = c._$n__$M_()) => make_string(comp_md(text, options));
test("demo input handlers dispatch one states operation with the updated text", () => {
  const tags = c.init_tags(["states", "tree", "children", "node", "event", "input", "value", "text", "draft"]);
  const inputs = [];
  function visit(node) {
    if (node.tag.value === "component") {
      const tree = node.extra[0].get(tags.tree);
      if (tree.tag.value === "some") visit(tree.extra[0]);
    } else {
      const element = node.extra[0];
      const handler = c.get(element.get(tags.event), tags.input);
      if (handler.tag.value === "some") inputs.push(handler.extra[0]);
      for (const pair of element.get(tags.children).toArray()) {
        const child = pair.get(tags.node);
        if (child.tag.value === "some") visit(child.extra[0]);
      }
    }
  }
  const component = comp_container(c._$n__$M_(tags.states, c._$n__$M_()), null);
  visit(c.option_$o_unwrap(component.get(tags.tree)));
  assert.equal(inputs.length, 2);
  inputs.forEach((handler, index) => {
    const calls = [];
    handler(c._$n__$M_(tags.value, "编辑🐈"), (...args) => calls.push(args));
    assert.equal(calls.length, 1);
    assert.equal(calls[0].length, 1);
    const operation = calls[0][0];
    assert.equal(operation.tag, tags.states);
    assert.equal(c.option_$o_unwrap(c.enum_definition(operation)), Op);
    assert.equal(operation.extra[1].get(index === 0 ? tags.text : tags.draft), "编辑🐈");
  });
});
test("persisted demo text survives reload with a rebuilt nominal parser cache", () => {
  const tags = c.init_tags(["draft", "text", "parse-result", "states", "data", "blocks"]);
  const original = c._$n__PCT__$M_(DemoState, tags.draft, "# restored", tags.text, "inline restored", tags["parse-result"], parse_markdown("# restored"));
  const wire = c.parse_cirru_edn(c.format_cirru_edn(c._$n__$M_(tags.states, c._$n__$M_(tags.data, original))));
  const states = c.option_$o_unwrap(c.get(hydrate_demo_store(wire), tags.states));
  const restored = c.option_$o_unwrap(c.get(states, tags.data));
  assert.equal(restored.get(tags.draft), "# restored");
  assert.equal(restored.get(tags.text), "inline restored");
  assert.equal(c.option_$o_unwrap(c.struct_definition(restored.get(tags["parse-result"]))), ParserResult);
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
test("class omission distinguishes nil from false, zero and empty strings", () => {
  for (const component of [comp_md, comp_md_block]) {
    const absent = make_string(component("plain", c._$n__$M_()));
    assert.equal(make_string(component("plain", c._$n__$M_(t["class-name"], null))), absent);
    const prefix = component === comp_md ? "" : "md-block ";
    for (const [value, text] of [[false, "false"], [0, "0"], ["", ""]]) {
      const html = make_string(component("plain", c._$n__$M_(t["class-name"], value)));
      assert.ok(html.startsWith(`<div class="${prefix}${text}"`));
      assert.notEqual(html, absent);
    }
  }
});
test("style omission does not hide invalid provided values", () => {
  const tags = c.init_tags(["style", "color"]);
  const renderBlock = (options) => make_string(comp_md_block("plain", options));
  assert.equal(renderBlock(c._$n__$M_(tags.style, null)), renderBlock(c._$n__$M_()));
  for (const [value, type] of [[false, "bool"], [0, "number"], ["", "string"]]) {
    assert.throws(() => renderBlock(c._$n__$M_(tags.style, value)), {message: `[Respo] expected :style to be a map, got: :${type}`});
  }
  assert.ok(renderBlock(c._$n__$M_(tags.style, c._$n__$M_(tags.color, "red"))).includes('style="color:red;"'));
});
test("provided parser results are checked instead of replaced by absence defaults", () => {
  const tags = c.init_tags(["parse-result", "blocks", "reused-blocks", "reparsed-blocks", "scanned-lines", "incremental?"]);
  const source = "typed cache";
  const parsed = parse_markdown(source);
  assert.equal(resolve_blocks("different source", c._$n__$M_(tags["parse-result"], parsed)), parsed.get(tags.blocks));
  assert.equal(c._$e_(resolve_blocks(source, c._$n__$M_()), resolve_blocks(source, c._$n__$M_(tags["parse-result"], null))), true);
  for (const value of [false, 0, "", c._$L_()]) {
    assert.throws(() => resolve_blocks(source, c._$n__$M_(tags["parse-result"], value)), {message: "Expected Markdown parser result Struct"});
  }
  const wrong = c._$n__PCT__$M_(ScanResult, tags.blocks, c._$L_(), tags["reused-blocks"], 0, tags["reparsed-blocks"], 0, tags["scanned-lines"], 0, tags["incremental?"], false);
  assert.throws(() => resolve_blocks(source, c._$n__$M_(tags["parse-result"], wrong)), {message: "Invalid Markdown parser result"});
});
test("demo state validates required strings and rebuilds only its optional parser cache", () => {
  const tags = c.init_tags(["draft", "text", "parse-result", "blocks"]);
  for (const value of [c._$n__$M_(), c._$n__$M_(tags.draft, 0, tags.text, ""), c._$n__$M_(tags.draft, "", tags.text, false)]) {
    assert.throws(() => read_demo_state(value), {message: "Invalid Markdown demo draft/text"});
  }
  const rebuilt = read_demo_state(c._$n__$M_(tags.draft, "", tags.text, "", tags["parse-result"], 0));
  assert.equal(rebuilt.get(tags.draft), "");
  assert.equal(rebuilt.get(tags.text), "");
  assert.equal(c.option_$o_unwrap(c.struct_definition(rebuilt.get(tags["parse-result"]))), ParserResult);
  assert.equal(c._$e_(rebuilt.get(tags["parse-result"]).get(tags.blocks), parse_markdown("").get(tags.blocks)), true);
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

test("empty image alt preserves URLs and adjacent content", () => {
  const html = render("before ![](https://example.com/empty.png) [中文🐈](https://example.com/link) ![中文🐈](https://example.com/named.png) after");
  assert.ok(html.includes('src="https://example.com/empty.png"'));
  assert.ok(html.includes('alt=""'));
  assert.ok(html.includes('href="https://example.com/link"'));
  assert.ok(html.includes('alt="中文🐈"'));
  assert.equal((html.match(/<img/g) || []).length, 2);
  assert.ok(html.includes("before"));
  assert.ok(html.includes("after"));
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
  const sentinel = new Error("same-highlighter-error");
  let calls = 0;
  assert.throws(() => renderBlock(() => { calls += 1; throw sentinel; }), (error) => error === sentinel);
  assert.equal(calls, 1);
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
