
respo-markdown in Calcit-js
----

> Render Markdown subset to Respo DSL. Ported from [Respo/respo-markdown](https://github.com/Respo/respo-markdown).

Demo http://repo.respo-mvc.org/respo-markdown/
Supported features:

* Code block
* Headers, h1, h2, h3, h4
* Quoteblock
* Unordered list
* Inline code
* Url
* Inline link
* Image link

### Usages

```cirru
respo-md.comp.md/comp-md-block "|a\n" ({})
; returns DSL

respo-md.comp.md/comp-md "|text inline"
; render inline DOM elements
```

For options `{}`, `highlight.js` is suggested:

```cirru
{}
  :highlight $ fn (code lang)
    let
        result $ .highlight hljs lang code
      ; js/console.log "|Result" result code lang
      .-value result
  :style {}
  :css "|.md-p {}"
  :class-name |demo
```

Write your own CSS to style the HTML:

```css
.md-block {}

.md-span {}

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

To insert HTML by raw:

```cirru
#!html <div>TODO</div>
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
