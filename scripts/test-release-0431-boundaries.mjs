import assert from "node:assert/strict";
import { init_tags, _$e_ as equal } from "../js-out/calcit.core.mjs";
import { read_field } from "../js-out/respo-md.schema.mjs";
import { split_block, split_block_incremental } from "../js-out/respo-md.util.core.mjs";

const tags = init_tags(["blocks", "incremental?"]);
const cases = [
  ["empty source", "", "hello", true],
  ["unfinished text", "hello", "hello world", true],
  ["text after newline", "hello\n", "hello\nworld", true],
  ["completed paragraph", "hello\n\n", "hello\n\nworld", true],
  ["open code block", "```js\nconst x = 1\n", "```js\nconst x = 1\n```\n", false],
  ["non-append edit", "hello", "changed", false],
];
for (const [name, before, after, incremental] of cases) {
  const result = split_block_incremental(before, after, split_block(before));
  assert.equal(read_field(result, tags["incremental?"]), incremental, name);
  assert.equal(equal(read_field(result, tags.blocks), split_block(after)), true, `${name}: full block equality`);
  console.log(`[ok] ${name}`);
}
