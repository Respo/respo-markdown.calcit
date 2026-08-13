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
    text "|Use `cr docs read` for quick lookup, and **pin** important sections."
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
cr js
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
cr js
node mathml-smoke.mjs
```

### License

MIT
## Calcit 0.13.15

The project now uses Calcit 0.13.15 and the current Respo runtime modules.
The canonical `calcit.cirru` snapshot is the source of truth; generated
`js-out/` files are disposable and must be regenerated before bundling.

Validation commands used by CI:

```bash
caps --ci
yarn install --immutable
yarn test:mathml
yarn test:incremental
yarn check:deprecated
cr calcit.cirru --check-only
cr calcit.cirru js
yarn vite build --base=./
```

The parser's open data boundary remains intentionally Dynamic while the
incremental parser and MathML output are covered by executable smoke tests.
