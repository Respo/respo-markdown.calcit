# Respo Markdown for Calcit

Markdown 渲染与增量解析；Demo：<http://repo.respo-mvc.org/respo-markdown/>。

## 使用者影响：0.5.0 正式版候选

候选 `0.5.0` 配对正式 Calcit CLI / `@calcit/procs` **0.32.1**、UI **0.9.0**、Respo **0.17.1**、JS-FFI **0.2.9**；UI 的传递 Router 仍为 **0.9.0-alpha.4**，不声称整图全部正式版。从 0.4.x / Calcit 0.30.1 升级时，须协调完整精确依赖图，迁移旧类型写法并重新生成 JS，不能只更新单端或关闭 Caps strict。UI 变化不保证样式逐像素相同。

相对已发布 0.5.0-alpha.5，最新 main 只收紧 18 个定义的 schema：样式 class 为 String、实际测试/benchmark 返回 Unit、数学字符谓词返回 Bool；130 个定义的运行代码和原测试保持。公共 Markdown API、MathML、增量解析、原匿名块/载荷、HTML 信任边界及存档格式不变。本轮不修改 Snapshot，不增加类型预算、强转或迁移规则。版本声明仍是候选，以精确 Git tag 为发版证据，不移动旧 tag。

README 的 highlighter 类型示例同步为当前 `Fn String String (-> String)`，不保留已退役的类型写法。

## 本轮验证

正式工具链和已发布宿主图通过 Caps strict/toolchain、immutable、canonical、296 项全定义、118 项公开定义、完整 strict（diagnostics=[]）、14 项 native 附带测试、原 MathML/增量解析、20 项 JS 渲染回归及构建。两个命名 Node 入口的原检查保留；原兼容 read-field 的两处 Option→nil 提示没有被静默删除，不假装旧缺失值协议已退场。

实际隔离 Demo 完成内联/块输入、Unicode、表格、MathML、fenced code、正常刷新恢复及恢复后追加编辑，控制台无 warning/error；未操作剪贴板、坏存档或真实数据。原 HTML 信任模型与剩余开放载荷保持，构建的大 chunk 提示未调高阈值。FP China 精确源码另在隔离夹具用本候选替换 Markdown 入口：182 项全定义、完整 strict、原构建与 7 项 SSR 测试通过，消费者 Snapshot/四份 Markdown/原断言不变；该源码兼容夹具不冒充已发布 Caps 图。正式 tag 解析与下游依赖 pin 在发布后另行验证。

## Demo 与持久化

Demo 的两个输入事件已在此前迁移中改为单个名义 Op，原 JS 事件回归保留。恢复只接受原 draft/text 字段并重新解析缓存；先恢复成功，再渲染和注册保存，失败则退出而不覆盖旧值，见 [#87](https://github.com/Respo/respo-markdown.calcit/issues/87)。本轮保留 Modal/HUD、原存档 key、格式与顺序，不用正常刷新替代坏存档验收。

## 开发与门禁

Node.js 24、Yarn 4.18.0。新解析出的 npm 包版本必须已发布至少 60 分钟，本仓库未配置单包豁免；已有 immutable 锁版本不重新计算等待时间。完整 strict、MathML、增量解析、原 native/JS 回归及 Demo 构建均保留；不引入额外 checker、concurrently 或 COS 校验脚本。

Supported features:

- Code block
- Headers (`h1`..`h4`)
- Quoteblock
- Unordered list
- Inline code
- Inline and block math rendered as native MathML
- Inline emphasis / italic
- URL auto-link
- Inline link
- Image link

### Quick Start

`comp-md-block` is for block markdown, `comp-md` is for inline markdown.

```cirru.no-run
respo-md.comp.md/comp-md-block "|# Title\n\n- item A\n- item B" $ {}

; => returns Respo DSL for a block container

respo-md.comp.md/comp-md "|hello **world**" $ {}

; => returns inline Respo nodes
```

### Practical Example: Block Rendering with Options

````cirru.no-run
let
    md-source $ str
      , "|# Changelog\n"
      , "|- Added parser improvements\n"
      , "|- Fixed nested inline code\n"
      , "|\n"
      , "|```js\nconsole.log(1)\n```"
    options $ {}
      :highlight $ fn (code lang)
        hint-fn $ Fn String String (-> String)
        ; replace with real highlighter in your app runtime
        respo-md.util.math/escape-html code
      :class-name |doc-preview
      :css "|.md-p { margin: 12px 0; }"
      :style $ {}
  respo-md.comp.md/comp-md-block md-source options
````

### Practical Example: Inline Rendering in UI

```cirru.no-run
let
    text "|Use `calcit docs read` for quick lookup, and **pin** important sections."
  respo-md.comp.md/comp-md text $ {}
```

### Options Reference

```cirru
let
    options $ {} (:class-name |demo) (:css "|.md-code-block { padding: 8px; }")
      :style $ {}
      :highlight $ fn (code lang)
        hint-fn $ Fn String String $ -> String
        respo-md.util.math/escape-html code
  , options
```

Key options:

- `:highlight` - function `(code lang) => html-string`
- `:style` - inline style map for root block
- `:css` - extra CSS text injected by wrapper logic
- `:class-name` - class on root markdown block

### 自定义代码高亮的边界

`:highlight` 缺失或为 nil 时，普通 fenced code 仍按纯文本显示，Cirru 仍使用
原语法着色组件；两者保留复制原始代码的控件。有回调时，模块以原代码正文和
语言标签调用 `(code lang)`，检查返回值为 String，再将该字符串作为 HTML 渲染。
自定义 Cirru 高亮也遵守同一回调合同。

回调返回的 HTML 是调用者提供的信任边界，模块不替它做清洗；处理不可信代码时，
高亮器必须转义源码；上面的最小示例复用现有 HTML 转义函数，不直接返回原 code。
缺失回调不会将默认源码作为 HTML 执行。非函数选项或非 String 返回值会明确报错，
回调自身的异常原样传播。

自定义回调路径不缓存渲染结果，每次构建代码块都会执行一次；不会把不同语言或
不同渲染器的同一正文错误复用。复制按钮始终复制原始代码，而非高亮 HTML。
定义内 `:tests` 覆盖调用次数、参数、空值、Unicode、结果和异常；现有渲染测试
验证真实 HTML、默认转义、语言切换和复制控件。

Write your own CSS to style HTML output:

```css
.md-block {
}

.md-span {
}

.md-p {
  margin: 16px 0;
}

.md-code-block {
  color: white;
  background-color: hsl(300, 80%, 20%);
  padding: 8px;
  display: block;
  line-height: 1.5em;
}
```

### Custom Syntax

Math fragments accept both Gemini-style dollar delimiters and LaTeX-style backslash delimiters:

- Inline: `$a^2 + b^2 = c^2$`, `\(\frac{1}{2}\)`
- Block: `$$\n\sum_{i=1}^{n} i\n$$`, `\[\sqrt{x}\]`

To insert raw HTML:
```text
#!html <div>TODO</div>
```

Raw HTML 与自定义高亮 HTML 都是调用方的信任边界，本库不是 HTML 清洗器。
不要因为类型检查通过就把不可信 Markdown 当作安全 HTML；调用方需按其应用的
信任模型处理。本次不新增清洗策略，也不改变现有 raw HTML 语法。

### Incremental Parsing

For editors or streaming text that append to an existing document, keep the parser result outside the Respo VDOM and pass it back through `:parse-result`:

The parser uses JavaScript regular expressions. Run this example in a JS target;
`calcit docs check-md` evaluates native snippets and cannot execute this parser.
The same incremental path is exercised by `yarn test:incremental` below.

```cirru.no-run
let
    old-text "|# Notes\n\nFirst paragraph.\n\n"
    new-text $ str old-text "|Second paragraph."
    previous $ respo-md.util.core/parse-markdown old-text
    next $ respo-md.util.core/parse-markdown-incremental old-text new-text previous
  respo-md.comp.md/comp-md-block new-text $ {} $ :parse-result next
```

The incremental parser reuses completed blocks and reparses only the appended suffix. Non-prefix edits automatically fall back to a full parse.

`parse-markdown` and `parse-markdown-incremental` return a typed `ParserResult` struct with `:blocks`, reuse counters, scanned-line counts, `:incremental?`, and an enum `:mode` (`:full`, `:incremental`, or `:fallback`). Keep this value in application state rather than rebuilding it inside the VDOM tree.

For LLM-style streaming, line-sized or text-only chunks can be appended repeatedly while keeping the previous parser result. An unfinished ordinary text block is reparsed from its beginning; unfinished code or math blocks use a full-parse fallback until their delimiters are known, preserving output correctness.

The Calcit performance entry exercises these cases:

```bash
yarn test:incremental
```

To run the same checks used by CI:

```bash
yarn install --immutable
yarn test:mathml
yarn test:incremental
calcit js
yarn vite build --base=./
```

The performance benchmark is intentionally a Calcit entry point, so it validates the parser state and generated JavaScript path without introducing a separate JavaScript benchmark implementation.

### Tips

- Prefer `comp-md-block` for full article sections.
- Prefer `comp-md` for text fragments inside buttons/cards/tooltips.
- Keep code fences language tags (`js`, `bash`, `cirru`) so highlighter can work correctly.

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### Smoke Test

After recompiling the snapshot, run the lightweight MathML smoke test:

```bash
yarn test:mathml
```

### License

MIT

## 验证入口与兼容边界

Node 24、Yarn 4.18.0 与 Vite 8.3.1 保持原配置；工具链与模块版本见上文依赖边界。
发布状态以对应 Git tag 为准，版本声明不代替迁移验收。
默认 demo 入口为 JS/browser；`smoke-test` 和 `perf-test` 为 JS/node，
与现有 Node 测试驱动一致，不再将它们标记为 native 入口。
`calcit.cirru` 是源码快照；生成的 `js-out/` 可以删除，打包前须重新编译。
规范项目文件为 `calcit.cirru` 和 `deps.cirru`，CI 拒绝旧 compact/package 快照。

校验与构建在独立的 `test` job 中执行，不加入 COS 上传并发组。
构建通过后，以当前 workflow 运行的 `client-dist` artifact 将 `dist/` 传给
独立的上传 job；artifact 保留七天，上传失败可重跑上传 job。
只有同仓库 PR 和 push 运行可以上传，fork PR 仍执行全部校验与构建。
上传 job 按 PR/生产分支分组串行执行，使用正式 Action v1.2.0 内置逐文件公开校验，
不另加上传验证脚本。PR CDN 前缀按 PR/run/attempt 隔离；等待队列使用 `queue: max`，
不会取消执行中的上传，也不会把不同 PR 的预览写到同一个目录。
COS 只上传前端 `dist`；main 的服务器部署路径保持原样。当前自动触发限 main push
和 PR，非 main 分支需打开 PR 后验收，不再保留重复的分支 push 上传路径分支。

CI 使用的校验命令：

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn test:mathml
yarn test:incremental
yarn check:deprecated
calcit edit format
calcit --check-only --all-defs --format json
calcit fix --workflow strict --verify --format json
calcit --check-only --ns respo-md.comp.container --ns respo-md.comp.md --ns respo-md.config --ns respo-md.main --ns respo-md.schema --ns respo-md.util.core --ns respo-md.util.math --summary-only --format json
calcit test --exclude-tag js-only --require-match --summary-only --format json
calcit calcit.cirru js
node --test scripts/inline-render.test.mjs
yarn vite build --base=./
```

解析统计使用 `ScanResult` / `ParserResult`，内联数学和强调解析使用具名
Struct/Enum，正则捕获返回 `Option<String>` 并在 JS 边界检查捕获值。
`DemoState` 统一放在 `respo-md.util.core`；更新使用 Struct 构造，旧持久化状态
保留 draft/text，缺失的解析缓存从 draft 重建。`resolve-blocks` 检查缓存的 Struct
类型后读取必需字段。异构 Markdown 块载荷等剩余 Dynamic 槽仍需后续收紧。
持久化恢复边界只恢复 draft/text，并重新解析缓存；不会把反序列化后丢失完整
具名类型信息的缓存直接带回应用。正常编辑仍使用内存中的增量解析缓存。

旧 `some?`、`case-default`、watch 别名已迁移。CI 不再应用编译器硬编码 fix 规则、
重复诊断 JSON 文件或项目专用预算脚本；使用严格检查、完整公开 API 检查和现有
MathML、增量解析、渲染测试。具体回归覆盖重复图片、缺失数学结束符及旧状态恢复。

0.4.51 在渲染分支校验文本的 `List<String>`、表格的 `List<List<String>>`
及代码块 List 容器，保留原匿名块格式和代码缩进 Number 前缀。逐字输入表格时，
第二行按可缺失的 List.get 读取；空表格显式返回空 body，完整表格仍按原规则
跳过标题和分隔行。不通过强转、载荷填充或新增 helper 绕过这些边界。
表格函数的返回合同明确为 `respo.schema/Element`，不再以 Dynamic 隐藏实际返回类型；
这不代表其余解析载荷或依赖框架内部的开放字段已经全部闭合。

0.4.52 进一步检查数学解析的 String 输入和非空 pair 的 `List<String>` 返回，
保留可空 pair、匿名块和代码缩进的原格式。解析状态、存储、宿主文本和 viewport
边界使用已有检查函数；memo 的内联渲染返回先检查 List 再展开，不用断言冒充校验。
完整 strict 工作流仅作为只读门禁运行，不自动应用规则，也不增加迁移脚本或类型预算。
UI 的 Tabs 输入改为具名 `TabRoute`；本库没有 Tabs 调用，不引入旧输入兼容层。
