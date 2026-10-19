# Markdown 的 Option 与开放值边界

## 内部流程

`respo-md.util.core/append-blocks` 保留两个 `List<Dynamic>` 返回 `List<Dynamic>` 的旧合同。
它直接匹配 `destruct-list` 的空/非空分支，不先把 first 的 Option 结果折回 nil。
空输入返回原累积列表；已有成员（包括 nil、false、0、空串与可变引用）按原顺序、
原身份保留。匿名块尚未成为闭合成员类型，不能仅把签名改成同一个 T：那会额外拒绝
旧合同允许的 Number 列表与 String 列表混合追加，不是本次 Option 语义迁移的必要变化。

`split-block-incremental` 保留 `last` 的 Option 直到读取。缺失末块进入原 unknown
模式；显式 nil 块也保留旧 unknown 模式，但原列表长度和回退分支不被合并。
false、0、空串不是缺失块，仍报 `Invalid Markdown block`。
文本块缺少行 payload、显式 nil 或其他非 List 行 payload 时，仍报
`Invalid Markdown text block lines`；只有真实存在的空 List 才按空行处理，不自动填正文。
已完成前缀复用原块，未完成文本只重解析尾部；非追加编辑走原全量回退。

## 保留的边界

- 匿名块仍按原 List/Enum 协议传递；开放 payload 的名义化属于后续公开模型设计，不能只改返回 schema 冒充已验证。
- `respo-md.schema/read-field` 继续兼容 Map/Struct 旧字段读取，缺失与显式 nil 的旧合流不改变；消费者仍在具体使用处检查内容。
- Respo 展示 props 的 class/style 省略保留原 nil 出口；不改成业务默认 String，也不把 false、0、空串当成缺失。
- Markdown 正则匹配依赖 JavaScript 宿主；完整解析回归是 JS 验收，不宣称 native/WASM 已支持。

## 复用现有验证入口

使用 deps.cirru 指定的正式 CLI 与 @calcit/procs 配对，先正常安装依赖：

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs --format edn
calcit fix --workflow strict --verify --format edn
calcit test --exclude-tag js-only --require-match --summary-only --format edn
yarn test:mathml
yarn test:incremental
calcit js
node --test scripts/inline-render.test.mjs
yarn vite build --base=./
```

新增语义测试附在 definition `:tests`，不新增 runner。可移植的追加、成员身份与非法块
检查在 native 和生成 JS 上回放。依赖 JS 正则的测试附在既有 perf-test 命名空间，
标为 `js-only`，并由原 `main!` 调用同一测试定义，因此原 `yarn test:incremental`
及 CI 会执行它。native 只排除这项明确的宿主测试，不删除或豁免原测试。

旧正式源码对照使用同一组运行语义断言。成员泛型与异质列表合并的精确推导仍待后续
明确合同；本次不以更窄签名或显式扩大调用方类型来制造通过，也不宣称这部分类型债务已解决。
