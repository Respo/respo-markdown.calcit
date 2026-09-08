# Audit 0.4.31 source changes / 审计 0.4.31 源码变更

Tracks calcit-lang/calcit#851 and #770. Audited on 2026-09-08.

## Immutable boundary / 不可变边界

Previous release 0.4.30 resolves to ff0f20c55479812d148a0f348870a4f50f25fda5.
Release 0.4.31 resolves to 12c2864cc09a4ae267bb7ca570d56343d14cd863.
Current main before this audit is d71f46af (0.4.33).
`git diff 0.4.31 HEAD -- calcit.cirru` is empty: current source is identical
to the audited published Snapshot. No published tag or release was changed.

The complete `0.4.30...0.4.31` GitHub comparison and local history contain
exactly two commits:

- c6482e3f58ab67eb513138dfb50b4ca29f507a92: release metadata plus two source
  leaves in `respo-md.util.core/split-block-incremental`. Both change the
  missing optional block-kind fallback from nil to :unknown, preserving the
  :text equality/inequality branch decisions while satisfying tag typing.
- 12c2864cc09a4ae267bb7ca570d56343d14cd863: two fallback leaves in
  `respo-md.perf-test/main!`, likewise nil to :unknown for typed incremental
  and full mode assertions. This changes test input typing, not parser output.

The `a536ce0` reference in #851 cannot be resolved by the repository commit
API (HTTP 422), is not in this release range, and is not evidence of a third
shipped commit. No missing diff is invented; an authoritative full SHA would
be needed to audit a different historical commit.

0.4.30 到 0.4.31 的权威范围只有上述两个提交，共四处 fallback leaf 修改。
#851 的 a536ce0 引用无法解析且不属于该发布范围；如需扩展审计，应先提供
权威完整 SHA。当前 Snapshot 与 0.4.31 完全相同，未改写任何既有发布。

## Regression evidence / 回归证据

Run using exact Calcit/procs 0.13.77 and Node 24.4.1 in separate main/tag
worktrees, each with its own published dependency graph and immutable Yarn:

- strict Caps and exact toolchain verification pass on both revisions;
- `yarn test:incremental`: all 15 existing assertions pass, including typed
  incremental/full modes, prefix reuse, fallback, stream append and open-code
  behavior. Both report full-lines=4003, incremental-lines=3,
  reused-blocks=2000, reparsed-blocks=1; stream counts 323320 vs 3320;
- `yarn test:mathml`: escaping, normalization, MathML markup and non-string
  input regressions pass on both revisions;
- new `scripts/test-release-0431-boundaries.mjs`: six cases pass against both
  generated outputs: empty source, unfinished text, text after newline,
  completed paragraph, open code block and non-append edit. Each checks the
  expected incremental/fallback mode and full block equality with a fresh
  parse, strengthening the previous count-only comparison;
- `perf-test-main.mjs` imports this focused fixture so the existing
  `yarn test:incremental` CI gate executes it without changing workflow scope.

两个独立版本均通过相同回归；新增六种边界测试逐项比较完整 block 结果，
不只比较数量。复用既有 CI 入口，不修改 Snapshot、依赖、版本或 workflow。
