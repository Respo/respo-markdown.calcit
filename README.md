# Respo Markdown for Calcit

Markdown 渲染与增量解析；Demo：<http://repo.respo-mvc.org/respo-markdown/>。

## Calcit 0.42.1

更新源码后请同步升级 Calcit CLI 与 `@calcit/procs`。Markdown 渲染、增量解析结果和 Demo 存档格式沿用现有约定。直接调用 `comp-md` 时，选项 Map 的键须为 Tag，例如 `:class-name`。
Demo 在读取存档后校验 Map，随后将其封装为具名操作。编辑状态更新使用 `DemoState` 和 Respo 的 `CoordKey` 路径。
Demo 高亮器明确接收源码和语言两个 String；内联缓存恢复时检查 Respo Element 身份，保留原匿名 token 与解析缓存格式。

## 0.9.1 候选

直接调用 MathML 的 `greek-command` 或 `operator-command` 时，使用 `Option String` 接收结果，未知命令返回 `:none`。Markdown 渲染和未知命令的文本回退保持原样。

Markdown 的自定义高亮选项沿用原格式。直接调用 `highlight-code` 时，高亮器需要接收源码与语言两个 String；高亮输出仍在运行时检查为 String。

## 0.8.2：Calcit 0.37.0

CLI / `@calcit/procs` 配对正式 **0.37.0**，依赖 UI **0.15.2**、Respo **0.19.5**、JS-FFI **0.2.13**，传递 Router **0.12.2**。`edit format` 把剩余的 `& Dynamic` 改为 `(& Dynamic)`，入口 `:dispatch-op` 改为符号 `'respo-md.schema/Op`，0.37 不再接受旧写法。

## 历史 0.8.1：使用者影响

CLI / `@calcit/procs` 同步正式 **0.35.1**，依赖 UI **0.15.1**、Respo **0.19.4**、JS-FFI **0.2.13**，传递 Router **0.12.1**。请统一精确依赖图并重新生成 JS；正式 tag 发布前仍为候选。

本 patch 纳入此前已合并 #108 的 AnyEnum 同义拼写，候选自身不改 Snapshot。既有 BlockBufferValue union、累积器和拼接泛型、parser payload/缓存、MathML及增量输出合同保持；append-blocks 的 nil / false / 混合值与宿主引用继续按原开放合同处理，不伪装成有限模型。HUD、存档格式与恢复/保存顺序、HTML信任边界及部署路径保持。

原完整strict、全部定义、原native/JS/MathML/增量性能与逐字符等价回归、包年龄门禁和COS action内置verify保留；本轮精确结果以PR为准，不引用历史运行或浏览器操作作为本次证据。不新增测试/验证脚本或编译器fix规则。

## 内联扫描与渲染

渲染器使用具名 `InlineToken`，文本、数学、代码和链接等分支均携带 `String`。直接调用低层 `split-line` 或 `split-line-iter` 的项目继续收到原匿名 Enum，包括原有 tag 和载荷格式。

## 历史 0.8.0：有限缓冲区与泛型

CLI / `@calcit/procs` 配对正式 **0.35.0**，依赖 UI **0.15.0**、Respo **0.19.3**、
JS-FFI **0.2.12**，传递 Router **0.12.0**。消费者须同步完整精确图并重新生成 JS；
正式 tag 发布前仍是候选，不使用 main/hash 替代，也不关闭 Caps strict。

低层 `split-block-iter` 的累积器明确为 `List Enum`，缓冲区使用新具名 union
`BlockBufferValue = String | Number | List<String>`（文本/代码、缩进宽度、表格行）；
`split-line-iter` 的累积器同样明确为 `List Enum`。直接调用这两个低层入口时，
预填累积器与缓冲区需符合上述类型。这是 minor 的静态合同变化，匿名 Enum 块的运行表示、
parser mode 和载荷不变，不声称 Enum 的任意外部 payload 已通过深层验证。

`split-block` / `split-line` 自产结果明确为 `List Enum`；字符串拼接辅助函数保留泛型元素
并沿用原 `str` 转换。五个 schema 共减少 **8** 处显式 Dynamic；两处 Number/String
字面量用静态标注提供共同 union 上下文，移除一处重复输出标注。原130个定义的执行逻辑、
附带测试与其他元数据保持，新增一个 union 定义；全部代码差异只涉及静态标注。

真实开放边界保持：`split-line` 仍接收任意输入，对非字符串告警并返回空列表；
`append-blocks` 继续允许 nil / false / 混合值及宿主引用，保持成员身份；外部旧块缓存、
ParserResult / ScanResult、options 与 wire 不伪装成有限业务模型。HTML 信任边界、
HUD、存档格式与恢复/保存顺序不改，没有增加兼容改写规则或校验脚本。

本轮验证包括原14项 native、MathML、增量性能与逐字符输出一致性、原21项 JS 渲染、
两端命名入口、完整 strict、canonical、工具链和构建。实际结果与精确 CI 见 PR；
本轮不宣称浏览器坏存档、60秒保存、剪贴板或生产数据已复验。全部原测试、门禁、
部署路径与 COS action 内置 verify 保持。

## 历史 0.7.1：使用者影响

0.7.1 候选保持官方 Calcit / `@calcit/procs` **0.34.2**，依赖对齐正式 UI
**0.14.1**、Respo **0.19.2**、JS-FFI **0.2.10**，传递 Router **0.11.2**。
这使本库能与正式 Reel 0.9.0 / UI 0.14.1 一起通过 Caps strict；0.7.0 的旧精确
依赖会导致混装图被 strict 拒绝。消费者须协调完整模块图，重新生成 JS 并刷新。
旧 tag 不移动，不关闭 strict 或使用 main/hash 替代版本。

本 patch 还修复 [#105](https://github.com/Respo/respo-markdown.calcit/issues/105)：
逐字符输入数学块或含空行的 code fence 时，增量结果必须与完整解析一致；数学式
不再需要刷新才能出现。调整两个增量解析函数，保留低层 API 的空列表兼容合同；ParserResult 没有可复用
缓存时走完整解析，仅复用确实对应 raw source
末尾的 text 后缀；边界不确定时回退原完整解析。未闭合片段可能扫描更多行，
`incremental?`/复用计数相应反映实际回退；原已完成段落的性能断言保留。

`comp-md` / `comp-md-block`、ParserResult/ScanResult 字段、匿名块/载荷、HTML 信任
边界、原 8/40/40/200 间距、HUD 及存档合同保持。已有 Option 泛型继续保留，
不为开放 Markdown 块/缓存回调构造不完整 union，不声称清零 Dynamic。

最终本地 302 个全定义、118 个公开定义、完整 strict（diagnostics=[]）、原 14 项 native、
原 MathML/增量性能与边界、21 项 JS 渲染及构建通过。普通可见 Chrome 逐字输入后
即时生成 MathML，两个合成输入与数学块刷新后恢复，无应用 pageerror；这不替代坏
存档或 60 秒保存验收。

保留全部原测试与质量门禁，在现有 JS 渲染测试中加入逐字符 full/incremental 输出
一致的真实回归，旧实现已确认失败；不新增预算、检查脚本、测试框架或编译器 fix/proof。
本轮正式依赖图的原类型/解析/渲染/构建验收与精确 CI 分开记录；0.7.1 在正式
Git tag 创建前仍是候选。原生/JS 测试不代替全部浏览器持久化场景；本轮不沿用
0.7.0 的历史浏览器结果证明坏存档保护、60 秒计时保存或实体移动设备已复验。

## 本轮门禁

继续要求正式依赖图的 Caps strict/toolchain、Yarn immutable、canonical、全定义与公开定义检查、完整 strict（diagnostics=[]）、原 native 附带测试、原 MathML/增量解析、JS 渲染回归及构建。两个命名 Node 入口的原检查、零 dynamic-method 与 deprecated-call 门禁均保留，不以版本号代替实际检查。

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
