## respo-markdown in Calcit-js

> Render Markdown subset to Respo DSL. Ported from [Respo/respo-markdown](https://github.com/Respo/respo-markdown).

Demo http://repo.respo-mvc.org/respo-markdown/
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
        hint-fn $ {} (:args $ [] 'String 'String) (:return 'String)
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
    options $ {}
      :class-name |demo
      :css "|.md-code-block { padding: 8px; }"
      :style $ {}
      :highlight $ fn (code lang)
        hint-fn $ {} (:args $ [] 'String 'String) (:return 'String)
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
  respo-md.comp.md/comp-md-block new-text $ {} (:parse-result next)
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

### Dependency boundary

本轮为 0.30.1 缺失值原语变化准备迁移：源码使用公开 `get`、`first`、`last`
的 Option 合同，保留原缺失/nil 默认值与求值顺序；仅在非空字符串和 URL 分割
已有分支保证的路径解包。原持久化渲染测试也改用公开查询，不改断言预期。
已有缺失值修改保留；下面的 0.4.56 候选进一步对齐已发布工具链和依赖图，
不重复改写源码。这不代表 Calcit 0.30.1 已稳定发布。
不新增测试脚本、类型断言或 COS 校验流程，现有部署路径保持不变。

0.4.56 候选使用已发布的 UI 0.7.41、Respo 0.16.122 和 JS FFI 0.2.3，
传递 Router 为 0.8.36；Calcit CLI/runtime 成对固定为已发布的 0.30.1-alpha.4。
编译器仍为预发布版本，模块版本声明不代替发布与消费者验收。
下游其他模块也需协调 UI/Router 的精确版本，不要放宽 Caps strict 来绕过冲突。
本轮不改变 Markdown API、高亮、MathML 或增量解析语义。
下游须在正式模块发布后更新 pin，不能将本地依赖调整当作已发布版本。

Markdown rendering depends on `respo-ui` primitives. `respo-ui` does not depend
back on Markdown, so the package graph stays acyclic.

Markdown 渲染依赖 `respo-ui` 原语，而 `respo-ui` 不再反向依赖 Markdown。
该单向边界保持依赖图无环。当前候选使用已发布的 UI/Respo/js-ffi 依赖，
CI 通过 `caps --strict --ci` 拒绝版本冲突，再运行原严格检查和业务测试。

本次 `calcit.cirru`、Markdown API、解析实现与原测试完全未改动。原 0.30.0 配对基线及
新的 alpha.4 候选均通过原 8 项附带测试、MathML、增量解析、14 项 Node 渲染回归和构建；
新配对另通过完整 strict、all-defs 294/294、完整公开检查 117/117，以及全部 named entry 检查。
真实浏览器验证 Unicode、表格、数学公式、代码块、刷新恢复和恢复后追加编辑，控制台无 warning/error。
没有新增 Option→nil 回流、Dynamic、unsafe、脚本或预算豁免；既有开放解析载荷仍待收窄，
不宣称类型债务清零。
CI 使用完整内置 strict，并显式要求 workflow passed 和空 diagnostics。
完整依赖图通过正常 Caps strict 安装与工具链精确配对，不替换模块缓存或修改生成文件。
显式 absence 迁移预览无建议；最新 HEAD 的 CI/review 与精确 main 部署通过后才发布模块。
其他消费者和 Calcit 稳定版验收仍需独立完成。

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
发布状态以 Release 为准，版本声明不代替迁移验收。
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
COS 只上传前端 `dist`；main 的服务器部署路径保持原样。

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
calcit test --require-match --summary-only --format json
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
