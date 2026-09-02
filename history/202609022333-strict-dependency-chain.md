# Strict dependency chain / 严格依赖链

- Upgrade Calcit and `@calcit/procs` from 0.13.64 to 0.13.75.
- 将 Calcit 与 `@calcit/procs` 从 0.13.64 升级到 0.13.75。
- Align Respo at 0.16.89 and respo-ui at 0.7.14 so downstream strict dependency resolution has no version conflict.
- 对齐 Respo 0.16.89 与 respo-ui 0.7.14，消除下游严格依赖解析中的版本冲突。
- Narrow the parsed code-block language to `String`, and explicitly adapt the trusted DOM `visibilityState` boundary.
- 将解析得到的代码块语言收窄为 `String`，并显式适配可信 DOM `visibilityState` 边界。
