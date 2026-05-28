// Smoke test: verifies that compiled artefacts exist and that all calcit-side
// math test entries are present in the source snapshot.
// The actual logic tests (assert= calls) live in the respo-md.test namespace
// inside calcit.cirru and run in browser context where Vite resolves all deps.

import { readFileSync, existsSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = dirname(fileURLToPath(import.meta.url));
const source = readFileSync(join(root, "calcit.cirru"), "utf8");

const checks = [
  // --- compiled artefacts ---
  [
    "respo-md.comp.md emitted",
    existsSync(join(root, "js-out", "respo-md.comp.md.mjs")),
  ],
  [
    "respo-md.test emitted",
    existsSync(join(root, "js-out", "respo-md.test.mjs")),
  ],
  // --- MathML renderer helpers in source ---
  ["mathml-markup entry present", source.includes("|mathml-markup")],
  ["escape-html entry present", source.includes("|escape-html")],
  [
    "normalize-math-source entry present",
    source.includes("|normalize-math-source"),
  ],
  ["inline math font-size recorded", source.includes("(:font-size 15)")],
  ["block math font-size recorded", source.includes("(:font-size 18)")],
  // --- parser entries in source ---
  ["peek-inline-math entry present", source.includes("|peek-inline-math")],
  [
    "pattern-math-block-open entry present",
    source.includes("|pattern-math-block-open"),
  ],
  // --- calcit-side test entries present ---
  ["respo-md.test namespace declared", source.includes("|respo-md.test")],
  ["assert= entry present", source.includes("|assert=")],
  ["test-escape-html! entry present", source.includes("|test-escape-html!")],
  [
    "test-normalize-math! entry present",
    source.includes("|test-normalize-math!"),
  ],
  [
    "test-mathml-markup! entry present",
    source.includes("|test-mathml-markup!"),
  ],
  ["test-all! entry present", source.includes("|test-all!")],
];

const failures = checks.filter(([, passed]) => !passed);

if (failures.length > 0) {
  console.error("MathML smoke test failed:");
  for (const [label] of failures) {
    console.error(`  - ${label}`);
  }
  process.exit(1);
}

console.log(`MathML smoke test passed (${checks.length} checks).`);
