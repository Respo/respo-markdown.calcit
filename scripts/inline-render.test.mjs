import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { comp_md, comp_md_block } from "../js-out/respo-md.comp.md.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { DemoState, ParserResult, hydrate_demo_store, parse_markdown } from "../js-out/respo-md.util.core.mjs";
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

test("headings, inline code and fenced code coexist in a homepage document", () => {
  const source = "# 安装\n\nUse `calcit` and **types**.\n\n```bash\ncalcit --check-only\n```";
  const html = make_string(comp_md_block(source, c._$n__$M_()));
  assert.ok(html.includes("安装"));
  assert.ok(html.includes("--check-only"));
  assert.ok(html.includes("<code"));
});
