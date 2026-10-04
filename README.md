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
let
    comp-md-block $ fn (source options)
      [] source options
    comp-md $ fn (source)
      [] source
  do
    comp-md-block "|# Title\n\n- item A\n- item B" ({})
; => returns Respo DSL for a block container

    comp-md "|hello **world**"
; => returns inline Respo nodes
```

### Practical Example: Block Rendering with Options

````cirru.no-run
let
    comp-md-block $ fn (source options)
      [] source options
    md-source $ str
      , "|# Changelog\n"
      , "|- Added parser improvements\n"
      , "|- Fixed nested inline code\n"
      , "|\n"
      , "|```js\nconsole.log(1)\n```"
    options $ {}
      :highlight $ fn (code lang)
        ; replace with real highlighter in your app runtime
        str code
      :class-name |doc-preview
      :css "|.md-p { margin: 12px 0; }"
      :style $ {}
  comp-md-block md-source options
````

### Practical Example: Inline Rendering in UI

```cirru.no-run
let
    comp-md $ fn (source)
      [] source
    text "|Use `calcit docs read` for quick lookup, and **pin** important sections."
  comp-md text
```

### Options Reference

```cirru
let
    options $ {}
      :class-name |demo
      :css "|.md-code-block { padding: 8px; }"
      :style $ {}
      :highlight $ fn (code lang)
        str code
  , options
```

Key options:

- `:highlight` - function `(code lang) => html-string`
- `:style` - inline style map for root block
- `:css` - extra CSS text injected by wrapper logic
- `:class-name` - class on root markdown block

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

```cirru
let
    previous $ parse-markdown old-text
    next $ parse-markdown-incremental old-text new-text previous
  comp-md-block new-text $ {} (:parse-result next)
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

Markdown rendering depends on `respo-ui` primitives. `respo-ui` does not depend
back on Markdown, so the package graph stays acyclic and stable releases can be
validated with `caps --strict --ci`.

Markdown 渲染依赖 `respo-ui` 原语，而 `respo-ui` 不再反向依赖 Markdown。
该单向边界保持依赖图无环，使稳定 release 可以通过 `caps --strict --ci`
验证。

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### Smoke Test

After recompiling the snapshot, run the lightweight MathML smoke test:

```bash
calcit js
node mathml-smoke.mjs
```

### License

MIT
## Calcit 0.27.0

项目使用 Calcit / @calcit/procs 0.27.0、Node 24、Yarn 4.18.0 和 Vite 8.3.1。
0.4.47 的严格依赖图与 UI alpha.3、js-ffi alpha.4 对齐；当前浏览器调用均已在
alpha.4 提供，Markdown 不需要 alpha.10 新增的 Canvas、Document 和 Node API。
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
calcit calcit.cirru fix --workflow strict --verify --format edn
calcit calcit.cirru --check-only
calcit calcit.cirru js
node --test scripts/inline-render.test.mjs
yarn vite build --base=./
```

解析器的开放数据边界仍显式使用 Dynamic；增量解析和 MathML 输出由可执行测试覆盖。

`parse-markdown`、`parse-markdown-incremental` 与内部构造器的返回合同明确为
`respo-md.util.core/ParserResult`。组件复用 `read-field` 读取 Map 或 Struct 的
`:blocks`，避免把解析器返回的 Struct 当作 Map。原增量测试的
`component-uses-parser-result` 断言现在调用实际 `resolve-blocks`，不增加测试脚本。
RegExp 实例声明为 `JsObject`，统一通过 `(String, String) -> JsObject` 的
`make-regexp` 构造，保留原模式与 flags；DemoState 初始值使用具体 Struct 合同。
表格行使用嵌套 String List 合同和 Option 读取，watch 回调明确 Map 输入与 Unit 返回。
现有类型预算收紧到实际结果：typeNotFull 90、schemaDynamic 63、unresolved 93。
本次保留 Calcit/procs 0.27.0 发布图；正式 0.28 检查仍受到已发布 Respo 模块
阻塞，不以局部修复代替完整升级验收，也不追随 0.29 alpha。
