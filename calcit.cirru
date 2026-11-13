
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-md
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-md.main/main!) (:mode :js) (:reload-fn 'respo-md.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/calcit.cirru |respo-ui.calcit/calcit.cirru |js-ffi/
      :type-slots $ {} $ :dispatch-op 'respo-md.schema/Op
    :perf-test $ {} (:description |) (:init-fn 'respo-md.perf-test/main!) (:mode :js) (:reload-fn 'respo-md.perf-test/main!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |js-ffi/
      :type-slots $ {}
    :smoke-test $ {} (:description |) (:init-fn 'respo-md.test/main!) (:mode :js) (:reload-fn 'respo-md.test/main!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |js-ffi/
      :type-slots $ {}
  :files $ {}
    'respo-md.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store highlighter)
            let
                states $ .unwrap-or (respo-md.schema/read-field store :states) ({})
                cursor $ decode-map-as
                  match (respo-md.schema/read-field states :cursor)
                    (:some v)
                      either v $ []
                    (:none) ([])
                  List respo.schema/CoordKey
                state $ match (respo-md.schema/read-field states :data)
                  (:some v) (respo-md.util.core/read-demo-state v)
                  (:none) (respo-md.util.core/read-demo-state nil)
              div
                {} (:class-name css/global)
                  :style $ {} (:width |96%) (:margin "|0 auto") (:padding 8)
                div
                  {} $ :class-name css/row-middle
                  img $ {}
                    :src |https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png
                    :style $ {} $ :width 40
                  space-x 8
                  a
                    {} $ :href |https://github.com/Respo/respo-markdown.calcit
                    <> |respo-markdown
                div ({})
                  comp-md-block "|Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```cirru\n:require\n  respo-md.comp.md :refer $ comp-md comp-md-block\n\ncomp-md \"|content\"\n\ncomp-md-block \"|content\\nnew line\" $ {}\n```\n" $ {}
                space-y 40
                div
                  {} $ :style $ {}
                  div ({})
                    comp-md "|This is an example for using `comp-md`:" $ {}
                  div ({})
                    input $ {} (:class-name css/input)
                      :style $ {} $ :width |100%
                      :value $ :text state
                      :placeholder "|text inline"
                      :on-input $ fn (e d!)
                        d! $ respo-md.schema/Op :states cursor $ respo-md.util.core/DemoState :draft (:draft state) :text
                          str $ .unwrap-or (respo-md.schema/read-field e :value) |
                          , :parse-result (:parse-result state)
                  div ({})
                    comp-md (:text state) ({})
                space-y 40
                div ({})
                  comp-md "|Example For using `comp-md-block`:" $ {}
                div
                  {} $ :class-name css/row
                  div
                    {} $ :class-name css/expand
                    textarea $ {} (:placeholder "|multi-line content")
                      :value $ :draft state
                      :class-name $ str-spaced css/textarea css/font-code!
                      :style $ {} (:height |100%) (:width |100%) (:font-size 13)
                      :on-input $ fn (e d!)
                        ; println |Editing: state $ :value e
                        let
                            next-draft $ str $ .unwrap-or (respo-md.schema/read-field e :value) |
                          d! $ respo-md.schema/Op :states cursor $ update-draft-state state next-draft
                  div
                    {} (:class-name css/flex)
                      :style $ {} $ :padding 8
                    comp-md-block (:draft state)
                      {} (:highlight highlighter) (:class-name |demo)
                        :parse-result $ :parse-result state
                space-y 200
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic)
            Fn String String $ -> String
            -> respo.schema/Component
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (respo-md.util.core/read-demo-state nil)
          :examples $ []
          :schema $ quote respo-md.util.core/DemoState
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.comp.container
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ space-x space-y
            respo-md.comp.md :refer $ comp-md comp-md-block
            respo-md.util.core :refer $ update-draft-state
            respo.core :refer $ defcomp <> div span textarea input a img
    'respo-md.comp.md $ %{} 'FileEntry
      :defs $ {}
        'blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
          :schema $ quote $ Fn PropsInput (& Dynamic) (-> respo.schema/Element) (:generics PropsInput) (:features :js-ffi)
        'comp-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-code-block (indented-lines options)
            let
                indent-option $ match (first indented-lines)
                  (:none) None
                  (:some value)
                    match value
                      (Number n) (Some n)
                      (String _) None
                lines $ match
                  try-decode-map-as
                    if (indent-option .some?) (&list:rest indented-lines) indented-lines
                    List String
                  (:ok decoded) decoded
                  (:err message) (raise message)
                indented $ indent-option .unwrap-or 0
                indentation $ if (&> indented 0)
                  respo-md.util.core/join-strings-dynamic (repeat "| " indented) |
                  , |
                lang $ let
                    raw-lang $
                      first lines
                      , .unwrap-or |
                  if (string? raw-lang) raw-lang |
                content $ -> (&list:rest lines)
                  map $ fn (line)
                    if (starts-with? line indentation)
                      &str:slice line $ .len indentation
                      , line
                  respo-md.util.core/join-strings-dynamic &newline
                highlight-fn $ match (respo-md.schema/read-field options :highlight)
                  (:some f)
                    if (nil? f) None $ Some f
                  (:none) None
                indented? $ &> indented 0
                code-block $ match highlight-fn
                  (:none)
                    if (&= lang |cirru)
                      respo.core/memo-comp-by ([] :cirru content) comp-cirru-snippet content $ Some $ respo-ui.schema/PresentationOptions :class-name
                        Some $ if indented? (str-spaced |md-code-block style-code-block css/expand) (str-spaced |md-code-block style-code-block)
                      respo.core/memo-comp-by ([] :snippet content) comp-snippet content $ Some $ respo-ui.schema/PresentationOptions :class-name
                        Some $ if indented? (str-spaced |md-code-block style-code-block css/expand) (str-spaced |md-code-block style-code-block)
                  (:some f)
                    if (fn? f)
                      div
                        {} $ :class-name $ if indented? (str-spaced css/row respo-ui.comp/css-snippet |md-code-block style-code-block css/expand) (str-spaced css/row respo-ui.comp/css-snippet |md-code-block style-code-block)
                        pre $ {} (:class-name css/expand)
                          :innerHTML $ highlight-code content lang $ fn (code language)
                            hint-fn $ Fn String String $ -> Dynamic
                            f code language
                        span
                          {} $ :class-name respo-ui.comp/style-copy-wrapper
                          respo-ui.comp/comp-copy content None
                      raise |Markdown-:highlight-must-be-a-function-or-nil
              if indented?
                div
                  {} $ :class-name css/row
                  span $ {} (:inner-text indentation)
                    :class-name $ str-spaced css/font-code style-indent
                  , code-block
                , code-block
          :examples $ []
          :schema $ quote $ Fn (List respo-md.util.core/CodeLine) (Map Tag O) (-> respo.schema/Component) (:generics O)
        'comp-image $ %{} 'CodeEntry
          :doc "|按首个 ]( 的 Unicode 标量位置切开原始片段，保留空标签和完整 URL；不能用会丢弃空项的 split 再按固定下标解包。"
          :code $ quote $ defn comp-image (chunk)
            let
                useful $ &str:slice chunk 2 $ - (.len chunk) 1
                index $ .unwrap $ str-find-index useful "|]("
                content $ &str:slice useful 0 index
                url $ &str:slice useful $ + index 2
              img $ {} (:src url) (:class-name style-image) (:alt content)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Element) (:features :js-ffi)
        'comp-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-line (line)
            cond
                starts-with? line "|# "
                h1 ({}) & $ render-inline $ &str:slice line 2
              (starts-with? line "|## ")
                h2 ({}) & $ render-inline $ &str:slice line 3
              (starts-with? line "|### ")
                h3 ({}) & $ render-inline $ &str:slice line 4
              (starts-with? line "|#### ")
                h4 ({}) & $ render-inline $ &str:slice line 5
              (starts-with? line "|> ")
                blockquote
                  {} $ :class-name style-blockquote
                  , & $ render-inline $ &str:slice line 2
              (starts-with? line "| ")
                let
                    content $ js-ffi.contract/expect-string |String.trimLeft $ .!trimLeft line
                    space-size $ &- (.len line) (.len content)
                    spaces $ js-ffi.contract/expect-string |String.slice $ .!slice line 0 space-size
                  div ({}) (<> spaces style-indent) (comp-line content)
              (or (starts-with? line "|* ") (starts-with? line "|- "))
                li
                  {} $ :class-name style-line-list
                  , & $ render-inline $ &str:slice line 2
              (starts-with? line "|#!html ")
                div $ {} (:class-name |html-container)
                  :innerHTML $ trim $ &str:slice line 7
              true $ div ({}) & $ render-inline line
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component) (:features :js-ffi)
        'comp-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-link (chunk)
            let
                useful $ &str:slice chunk 1 $ - (.len chunk) 1
              let[] (content url) (split useful "|](")
                span ({})
                  if
                    and (starts-with? content "|`") (ends-with? content "|`")
                    a
                      {}
                        :class-name $ str-spaced css/link style-default-link
                        :href url
                        :target |_blank
                      code $ {} $ :inner-text
                        &str:slice content 1 $ dec $ .len content
                    a $ {}
                      :class-name $ str-spaced css/link style-default-link
                      :href url
                      :inner-text $ str-spaced "|🌐" content
                      :target |_blank
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Element) (:features :js-ffi)
        'comp-math-block $ %{} 'CodeEntry
          :doc "|Renders a block-level math fragment as native MathML inside a styled container."
          :code $ quote $ defcomp comp-math-block (lines)
            div $ {} (:class-name style-math-block)
              :innerHTML $ mathml-markup (respo-md.util.core/join-strings-dynamic lines &newline) true
          :examples $ []
          :schema $ quote $ Fn (List String) (-> respo.schema/Component)
        'comp-md $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-md (text options)
            let
                inner $ match
                  try-decode-map-as (respo.core/memo-value-by text render-inline text) (List Dynamic)
                  (:ok children) (map children respo.util.detect/as-element)
                  (:err message) (raise message)
              div
                match (get options :class-name)
                  (:some class-name)
                    {} $ :class-name class-name
                  (:none) ({})
                , & inner
          :examples $ []
          :schema $ quote $ Fn String (Map Tag V) (-> respo.schema/Component) (:generics V)
        'comp-md-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-md-block (text options)
            let
                blocks $ resolve-render-blocks text options
                class-name $ match (respo-md.schema/read-field options :class-name)
                  (:some v)
                    if (nil? v) |md-block $ str-spaced |md-block v
                  (:none) |md-block
              respo.core/keyed->
                {} (:class-name class-name)
                  :style $ .unwrap-or (respo-md.schema/read-field options :style) ({})
                -> blocks $ respo-md.util.core/map-indexed-dynamic $ fn (idx block)
                  hint-fn $ Fn Number BlockToken $ -> respo.schema/ChildPair
                  match block
                    (:text lines)
                      respo.core/keyed-component idx $ comp-text-block lines
                    (:code lines)
                      respo.core/keyed-component idx $ comp-code-block lines options
                    (:math lines)
                      respo.core/keyed-component idx $ comp-math-block lines
                    (:table lines)
                      respo.core/keyed-element idx $ comp-table-block lines
          :examples $ []
          :schema $ quote $ Fn String (Map Tag O) (-> respo.schema/Component) (:generics O)
        'comp-table-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-table-block (lines)
            let
                header-line $ .unwrap-or (.first lines) ([])
                body-lines $ let
                    p0 $ .unwrap-or
                      get
                        .unwrap-or (.get lines 1) ([])
                        , 0
                      , |
                  if
                    or (starts-with? p0 |:-) (starts-with? p0 |--)
                    .drop lines 2
                    if (empty? lines) ([]) (.drop lines 1)
              create-element :table
                {} $ :class-name style-md-table
                create-element :thead ({})
                  create-element :tr ({}) & $ -> header-line $ map
                    fn (x)
                      create-element :th ({}) & $ render-inline x
                create-element :tbody ({}) & $ -> body-lines $ map
                  fn (line)
                    create-element :tr ({}) & $ -> line $ map
                      fn (x)
                        create-element :td ({}) & $ render-inline x
          :examples $ []
          :schema $ quote $ Fn
            List $ List String
            -> respo.schema/Element
            :features :js-ffi
        'comp-text-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-text-block (lines)
            div
              {} $ :class-name $ str-spaced |md-p style-paragraph
              , & $ -> lines $ map
                fn (line) (respo.core/memo-comp-by line comp-line line)
          :examples $ []
          :schema $ quote $ Fn (List String) (-> respo.schema/Component)
        'decode-render-block $ %{} 'CodeEntry
          :doc "|Reads existing anonymous parser blocks. Cached math lines retain the legacy string conversion before MathML rendering. Fresh scanner math lines are already strings."
          :code $ quote $ defn decode-render-block (block)
            if (enum? block)
              match block
                (:text lines)
                  BlockToken :text $ decode-map-as lines $ List String
                (:code lines)
                  if (list? lines)
                    BlockToken :code $ decode-map-as lines $ List respo-md.util.core/CodeLine
                    raise |Invalid-Markdown-code-block-lines
                (:math lines)
                  if (list? lines)
                    BlockToken :math $ map lines $ fn (line) (str line)
                    raise "|Invalid Markdown math block lines"
                (:table lines)
                  BlockToken :table $ decode-map-as lines $ List (List String)
                _ $ raise "|Invalid Markdown block"
              raise "|Invalid Markdown block"
          :examples $ []
          :schema $ quote $ Fn Raw (-> BlockToken) (:generics Raw) (:open :decode)
        'highlight-code $ %{} 'CodeEntry
          :doc "|调用既有自定义高亮回调，并检查 HTML 结果为 String。内容可信度由调用者负责；不缓存回调结果，不用于默认纯文本路径。"
          :code $ quote $ defn highlight-code (content lang highlight-fn)
            let
                html $ highlight-fn content lang
              if (string? html) html $ raise |Markdown-:highlight-must-return-a-String
          :examples $ []
          :schema $ quote $ Fn String String
            Fn String String $ -> T
            -> String
            :generics T
          :tests $ []
            %{} 'TestEntry
              :name |highlight-callback-invoked-with-code-and-language
              :code $ quote $ let
                  calls $ ref 0
                  callback $ fn (code lang)
                    hint-fn $ Fn String String $ -> String
                    assert= "|🐈正文" code
                    assert= |unknown-language lang
                    reset! calls $ inc $ deref calls
                    , |<mark>highlight-sentinel</mark>
                  html $ highlight-code "|🐈正文" |unknown-language callback
                assert= 1 $ deref calls
                assert= |<mark>highlight-sentinel</mark> html
              :tags $ #{} :highlight :unit
            %{} 'TestEntry (:name |highlight-empty-code-and-language)
              :code $ quote $ let
                  callback $ fn (code lang)
                    hint-fn $ Fn String String $ -> String
                    assert= | code
                    assert= | lang
                    , |<b>empty-sentinel</b>
                assert= |<b>empty-sentinel</b> $ highlight-code | | callback
              :tags $ #{} :highlight :unit
            %{} 'TestEntry
              :name |highlight-does-not-reuse-language-or-renderer-result
              :code $ quote $ let
                  calls $ ref 0
                  callback $ fn (code lang)
                    hint-fn $ Fn String String $ -> String
                    reset! calls $ inc $ deref calls
                    str |<i> lang |</i>
                  other $ fn (code lang)
                    hint-fn $ Fn String String $ -> String
                    , |<b>other-renderer</b>
                assert= |<i>js</i> $ highlight-code |same |js callback
                assert= |<i>bash</i> $ highlight-code |same |bash callback
                assert= |<b>other-renderer</b> $ highlight-code |same |js other
                assert= 2 $ deref calls
              :tags $ #{} :highlight :unit
            %{} 'TestEntry (:name |highlight-rejects-non-string-result)
              :code $ quote $ let
                  callback $ fn (code lang)
                    hint-fn $ Fn String String $ -> Number
                    , 42
                assert= true $ try
                  do (highlight-code |code |js callback) false
                  fn (message)
                    hint-fn $ Fn String $ -> Bool
                    .includes? message |highlight
              :tags $ #{} :highlight :unit
            %{} 'TestEntry (:name |highlight-preserves-callback-failure)
              :code $ quote $ let
                  callback $ fn (code lang)
                    hint-fn $ Fn String String $ -> String
                    raise |highlighter-sentinel-failure
                assert= true $ try
                  do (highlight-code |code |js callback) false
                  fn (message)
                    hint-fn $ Fn String $ -> Bool
                    &= message |highlighter-sentinel-failure
              :tags $ #{} :highlight :unit
        'inline-token $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn inline-token (tag value)
            match tag
              :text $ InlineToken :text value
              :code $ InlineToken :code value
              :math $ InlineToken :math value
              :url $ InlineToken :url value
              :link $ InlineToken :link value
              :image $ InlineToken :image value
              :emphasis $ InlineToken :emphasis value
              :italic $ InlineToken :italic value
              _ $ raise $ str "|Unknown inline Markdown token: " tag
          :examples $ []
          :schema $ quote $ Fn Tag String (-> InlineToken)
        'read-parser-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-parser-result (options)
            match (respo-md.schema/read-field options :parse-result)
              (:some raw)
                if (nil? raw) None $ if (struct? raw)
                  struct-match raw
                    respo-md.util.core/ParserResult result $ Some result
                    _ other $ raise "|Invalid Markdown parser result"
                  raise "|Expected Markdown parser result Struct"
              (:none) None
          :examples $ []
          :schema $ quote $ Fn (Map Tag O)
            -> $ Option respo-md.util.core/ParserResult
            :generics O
        'render-inline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-inline (text)
            -> (scan-inline text inline-token)
              map $ fn (chunk)
                match chunk
                  (:code content)
                    code $ {} (:class-name style-inline-code) (:inner-text content)
                  (:math content)
                    span $ {} (:class-name style-inline-math)
                      :innerHTML $ mathml-markup content false
                  (:url content)
                    a $ {} (:href content) (:inner-text content) (:target |_blank)
                  (:link content) (comp-link content)
                  (:image content) (comp-image content)
                  (:text content) (<> content)
                  (:emphasis content)
                    create-element :b ({}) & $ render-inline content
                  (:italic content)
                    create-element :i $ {} $ :inner-text content
          :examples $ []
          :schema $ quote $ Fn T
            -> $ List respo.schema/Element
            :generics T
            :features :js-ffi
        'resolve-blocks $ %{} 'CodeEntry
          :doc "|Uses a caller-owned parser result when supplied, keeping parser state outside the Respo VDOM tree."
          :code $ quote $ defn resolve-blocks (text options)
            match (read-parser-result options)
              (:none) (split-block text)
              (:some result) (:blocks result)
          :examples $ []
          :schema $ quote $ Fn String (Map Tag O)
            -> $ List Dynamic
            :generics O
        'resolve-render-blocks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resolve-render-blocks (text options)
            match (read-parser-result options)
              (:none) (scan-blocks text)
              (:some result)
                map (:blocks result) decode-render-block
          :examples $ []
          :schema $ quote $ Fn String (Map Tag O)
            -> $ List BlockToken
            :generics O
        'style-blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-blockquote
            {} $ |& $ {}
              :border-left $ str "|6px solid " $ hsl 0 0 90
              :margin-left 0
              :padding-left 12
              :color $ hsl 0 0 50
          :examples $ []
          :schema $ quote String
        'style-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code-block
            {} $ |& $ {} (:max-width |60vw) (:margin-bottom 8)
          :examples $ []
          :schema $ quote String
        'style-default-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-default-link
            {}
              |& $ {} (:opacity 0.9) (:transition-duration |200ms)
              |&:hover $ {} (:opacity 1) (:transform "|scale(1)")
          :examples $ []
          :schema $ quote String
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image
            {} $ |& $ {} (:max-width 480) (:max-height 320)
              :border $ str "|1px solid " $ hsl 0 0 90
              :border-radius |8px
          :examples $ []
          :schema $ quote String
        'style-indent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-indent
            {} $ |& $ {} (:white-space :pre) (:float :left) (:font-family ui/font-code) (:user-select :none)
          :examples $ []
          :schema $ quote String
        'style-inline-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-inline-code
            {} $ |& $ {}
              :border $ str "|1px solid " $ hsl 0 0 086
              :border-radius |4px
              :font-size 12
              :padding "|2px 4px"
              :margin "|2px 4px"
          :examples $ []
          :schema $ quote String
        'style-inline-math $ %{} 'CodeEntry
          :doc "|Keeps inline MathML readable inside prose without over-expanding line height."
          :code $ quote $ defstyle style-inline-math
            {} $ |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding "|0 3px") (:font-size 15)
              :background-color $ hsl 0 0 97
              :border-radius |4px
          :examples $ []
          :schema $ quote String
        'style-line-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-line-list
            {}
              |& $ {} $ :margin-left 12
              |&::marker $ {}
                :color $ hsl 0 0 80
                :font-family ui/font-code
                :white-space :pre
                :content "|'● '"
                :transition-duration |300ms
              |&:hover::marker $ {}
                :color $ hsl 0 0 50
                :content "|'● '"
          :examples $ []
          :schema $ quote String
        'style-math-block $ %{} 'CodeEntry
          :doc "|Expands block MathML slightly so dense formulas stay readable in the preview pane."
          :code $ quote $ defstyle style-math-block
            {} $ |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding 14) (:margin "|10px 0") (:font-size 18)
              :background-color $ hsl 0 0 97
              :border-radius |8px
              :line-height |1.6em
              :overflow :auto
          :examples $ []
          :schema $ quote String
        'style-md-table $ %{} 'CodeEntry
          :doc "|reused some styles from https://pure-css.github.io/tables/"
          :code $ quote $ defstyle style-md-table
            {}
              |& $ {}
                :border $ str "|1px solid " $ hsl 0 0 90
                :empty-cells :show
                :border-collapse :collapse
              "|& thead" $ {} $ :background-color (hsl 0 0 96)
              "|& tr" $ {} $ :border-top
                str "|1px solid " $ hsl 0 0 94
              "|& td, & th" $ {}
                :border-left $ str "|1px solid " $ hsl 0 0 94
                :padding "|0.5em 1em"
                :line-height |1.5em
                :text-align :left
                :vertical-align :middle
          :examples $ []
          :schema $ quote String
        'style-paragraph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-paragraph
            {} $ |& $ {}
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.comp.md
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp div pre code span p h1 h2 h3 h4 img a <> style li create-element
            respo.comp.space :refer $ =<
            respo-md.util.core :refer $ split-block scan-inline InlineToken get1 scan-blocks BlockToken
            respo.util.list :refer $ map-with-idx
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-cirru-snippet comp-snippet
            respo-md.util.math :refer $ mathml-markup
    'respo-md.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? true
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-markdown/) (:title |Markdown) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-markdown)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.config
    'respo-md.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ quote $ Ref (Map Dynamic Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if (enum? op)
              do
                reset! *store $ next-store-of op
                , &unit
              raise "|Invalid Markdown demo operation"
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :io :state)
        'highligher $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn highligher (code lang)
            str |<code> (respo-md.util.math/escape-html code) |</code>
          :examples $ []
          :schema $ quote $ Fn String String (-> String) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            let
                raw $ browser/storage-get $ .unwrap (get config/site :storage-key)
              match raw
                (:some value)
                  let
                      restored $ parse-cirru-edn value
                    if (map? restored)
                      dispatch! $ schema/Op :hydrate-storage restored
                      raise "|Invalid Markdown storage payload"
                (:none) &unit
            render-app!
            add-watch! *store :changes $ fn (store prev) (render-app!)
              hint-fn $ {} (:kind :fn) (:return 'Unit)
                :args $ [] 'Map 'Map
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/add-event-listener! |visibilitychange $ fn (event)
              match (browser/visibility-state)
                (:hidden) (persist-storage!)
                _ &unit
            browser/set-interval!
              fn () $ persist-storage!
              , 60000
            println "|App started!"
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> browser/DomElementHost)
        'next-store-of $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-store-of (op)
            match op
              (:states cursor state)
                assoc @*store :states $ respo.cursor/update-state-tree
                  .unwrap-or (get @*store :states) ({})
                  , cursor state
              (:hydrate-storage store) (respo-md.util.core/hydrate-demo-store store)
              _ $ do (eprintln "|unknown op:" op) @*store
          :examples $ []
          :schema $ quote $ Fn schema/Op
            -> $ Map Dynamic Dynamic
            :features :io :state
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ shared/date-now-snapshot
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn @*store
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *store :changes) (clear-cache!)
                add-watch! *store :changes $ fn (reel prev) (render-app!)
                  hint-fn $ {} (:kind :fn) (:return 'Unit)
                    :args $ [] 'Map 'Map
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render!
              narrow-element $ mount-target
              comp-container @*store highligher
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def ssr?
            .some? $ browser/query-selector |meta.respo-ssr
          :examples $ []
          :schema $ quote Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-md.comp.container :refer $ comp-container
            respo-md.schema :as schema
            respo.cursor :refer $ update-states
            respo-md.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.ffi.browser :refer $ narrow-element
    'respo-md.perf-test $ %{} 'FileEntry
      :defs $ {}
        'StreamStats $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StreamStats (:text String) (:result respo-md.util.core/ParserResult) (:full-lines Number) (:incremental-lines Number)
          :examples $ []
          :schema $ quote StructDef
        'assert-perf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn assert-perf (label condition)
            if condition
              println $ str "|[ok] " label
              raise $ str "|Performance assertion failed: " label
          :examples $ []
          :schema $ quote $ Fn String Bool (-> Unit) (:features :io)
        'main! $ %{} 'CodeEntry
          :doc "|Runs append-only Markdown parser benchmark using Calcit code."
          :code $ quote $ defn main! () (test-option-block-boundaries!)
            let
                sample "|# Heading\n\n```js\nlet x = 1\n```\n\n$$x^2$$\n\n|a|b|\n|--|--|\n|1|2|"
                cached $ parse-markdown sample
              assert-perf |typed-block-cache-parity $ =
                resolve-render-blocks sample $ {}
                resolve-render-blocks sample $ {} $ :parse-result cached
            let
                cached $ assoc (parse-markdown |) :blocks $ []
                  :: :math $ [] nil 1
              assert-perf |legacy-math-cache-stringification $ =
                [] $ respo-md.util.core/BlockToken :math $ [] | |1
                resolve-render-blocks | $ {} $ :parse-result cached
            let
                base $ make-source 2000 |
                appended $ str base "|tail\n\n"
                old-result $ parse-markdown base
                full-result $ parse-markdown appended
                incremental $ parse-markdown-incremental base appended old-result
                demo-state $ update-draft-state (respo-md.util.core/DemoState :draft base :text | :parse-result old-result) appended
                changed $ str "|changed\n\n" base
                fallback $ parse-markdown-incremental base changed old-result
                rendered-blocks $ resolve-render-blocks appended $ {} (:parse-result incremental)
                stream $ stream-append-iter 80 base old-result 0 0
                code-old "|```js\nconst x = 1\n"
                code-new $ str code-old "|const y = 2\n```\n"
                code-result $ parse-markdown-incremental code-old code-new $ parse-markdown code-old
                legacy-state $ respo-md.util.core/read-demo-state $ {} (:draft base) (:text "|legacy inline") (:parse-result nil)
              assert-perf |incremental-mode $ :incremental? incremental
              assert-perf |typed-incremental-mode $ =
                respo-md.util.core/unwrap-or
                  first $ :mode incremental
                  , :unknown
                , :incremental
              assert-perf |typed-full-mode $ =
                respo-md.util.core/unwrap-or
                  first $ :mode full-result
                  , :unknown
                , :full
              assert-perf |same-block-output $ =
                .len $ :blocks full-result
                .len $ :blocks incremental
              assert-perf |reuses-prefix $ > (:reused-blocks incremental) 1900
              assert-perf |scans-less-than-full $ < (:scanned-lines incremental)
                .len $ split-lines appended
              assert-perf |fallback-mode $ not $ :incremental? fallback
              assert-perf |fallback-output $ =
                .len $ :blocks $ parse-markdown changed
                .len $ :blocks fallback
              assert-perf |component-uses-parser-result $ = (.len rendered-blocks)
                .len $ :blocks incremental
              assert-perf |demo-state-draft $ = (:draft demo-state) appended
              assert-perf |demo-state-parser $ =
                .len $ :blocks $ :parse-result demo-state
                .len $ :blocks incremental
              assert-perf |llm-stream-output $ =
                .len $ :blocks $ :result stream
                .len $ :blocks $ parse-markdown (:text stream)
              assert-perf |llm-stream-saves-work $ > (:full-lines stream)
                * (:incremental-lines stream) 10
              assert-perf |open-code-fallback $ = false $ :incremental? code-result
              assert-perf |open-code-output $ =
                .len $ :blocks code-result
                .len $ :blocks $ parse-markdown code-new
              println $ str |full-lines=
                .len $ split-lines appended
                , "| incremental-lines=" (:scanned-lines incremental) "| reused-blocks=" (:reused-blocks incremental) "| reparsed-blocks=" $ :reparsed-blocks incremental
              println $ str |llm-full-lines= (:full-lines stream) "| llm-incremental-lines=" $ :incremental-lines stream
              assert-perf |legacy-demo-draft $ = (:draft legacy-state) base
              assert-perf |legacy-demo-text $ = (:text legacy-state) "|legacy inline"
              assert-perf |legacy-demo-parser $ =
                :blocks $ :parse-result legacy-state
                :blocks old-result
              println "|Incremental parser performance test passed."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
        'make-source $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-source (n acc)
            if (&= n 0) acc $ recur (dec n) (str acc "|line\n\n")
          :examples $ []
          :schema $ quote $ Fn Number String (-> String)
        'stream-append-iter $ %{} 'CodeEntry
          :doc "|Feeds line-sized chunks like an LLM stream and compares cumulative full/incremental parser work."
          :code $ quote $ defn stream-append-iter (n text result full-lines incremental-lines)
            if (&= n 0)
              StreamStats :text text :result result :full-lines full-lines :incremental-lines incremental-lines
              let
                  next-text $ str text "|token\n"
                  full-result $ parse-markdown next-text
                  next-result $ parse-markdown-incremental text next-text result
                recur (dec n) next-text next-result
                  + full-lines $ :scanned-lines full-result
                  + incremental-lines $ :scanned-lines next-result
          :examples $ []
          :schema $ quote $ Fn Number String respo-md.util.core/ParserResult Number Number (-> StreamStats)
        'test-option-block-boundaries! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-option-block-boundaries! ()
            let
                absent $ respo-md.util.core/split-block-incremental |x |xy $ []
                present-nil $ respo-md.util.core/split-block-incremental |x |xy $ [] nil
                empty-lines $ respo-md.util.core/split-block-incremental |x |xy $ []
                  :: :text $ []
              assert= true $ :incremental? absent
              assert= 0 $ :reused-blocks absent
              assert= (respo-md.util.core/split-block |y) (:blocks absent)
              assert= false $ :incremental? present-nil
              assert= (respo-md.util.core/split-block |xy) (:blocks present-nil)
              assert= "|Invalid Markdown text block lines" $ try
                respo-md.util.core/split-block-incremental |x |xy $ [] $ :: :text
                fn (error) error
              assert= (respo-md.util.core/split-block |y) (:blocks empty-lines)
            let
                before "|第一段🐈\n\n"
                after $ str before |tail
                prefix $ respo-md.util.core/split-block before
                result $ respo-md.util.core/split-block-incremental before after prefix
              assert= true $ :incremental? result
              assert= (.len prefix) (:reused-blocks result)
              assert= true $ identical?
                .unwrap $ first prefix
                .unwrap $ first $ :blocks result
              assert= (respo-md.util.core/split-block after) (:blocks result)
            let
                before "|原文🐈"
                after "|改写🐈"
                result $ respo-md.util.core/split-block-incremental before after $ respo-md.util.core/split-block before
              assert= false $ :incremental? result
              assert= 0 $ :reused-blocks result
              assert= (respo-md.util.core/split-block after) (:blocks result)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |keeps-incremental-option-semantics)
            :code $ quote $ test-option-block-boundaries!
            :tags $ #{} :js-only :option-migration
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.perf-test
          :require
            respo-md.util.core :refer $ parse-markdown parse-markdown-incremental update-draft-state
            respo-md.comp.md :refer $ resolve-render-blocks
    'respo-md.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Dispatch Op of the demo app, bound to the :dispatch-op type slot."
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) respo-md.util.core/DemoState
            :hydrate-storage $ Map Dynamic Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-field (value field)
            cond
                struct? value
                get (&struct:to-map value) field
              (map? value) (get value field)
              true $ raise "|[Markdown] expected Struct or Map"
          :examples $ []
          :schema $ quote $ Fn Container Tag
            -> $ Option Dynamic
            :generics Container
          :tests $ []
            %{} 'TestEntry (:name |keeps-map-absence-and-falsey-payloads)
              :code $ quote $ let
                  value $ {} (:nil nil) (:false false) (:zero 0) (:empty |)
                assert= None $ read-field value :missing
                assert= (Some nil) (read-field value :nil)
                assert= (Some false) (read-field value :false)
                assert= (Some 0) (read-field value :zero)
                assert= (Some |) (read-field value :empty)
              :tags $ #{} :option-migration :unit
            %{} 'TestEntry (:name |keeps-nominal-fields-and-open-members)
              :code $ quote $ let
                  blocks $ [] nil false 0 |
                  value $ respo-md.util.core/ScanResult :blocks blocks :reused-blocks 0 :reparsed-blocks 0 :scanned-lines 0 :incremental? false
                assert= true $ identical? blocks $ .unwrap-or (read-field value :blocks) ([])
                assert= (Some false) (read-field value :incremental?)
                assert= (Some 0) (read-field value :reused-blocks)
                assert= None $ read-field value :missing
              :tags $ #{} :option-migration :unit
            %{} 'TestEntry (:name |rejects-non-container-inputs)
              :code $ quote $ do
                assert= "|[Markdown] expected Struct or Map" $ try (read-field nil :field)
                  fn (error) error
                assert= "|[Markdown] expected Struct or Map" $ try (read-field false :field)
                  fn (error) error
                assert= "|[Markdown] expected Struct or Map" $ try (read-field 0 :field)
                  fn (error) error
                assert= "|[Markdown] expected Struct or Map" $ try (read-field | :field)
                  fn (error) error
                assert= "|[Markdown] expected Struct or Map" $ try
                  read-field ([]) :field
                  fn (error) error
              :tags $ #{} :option-migration :unit
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
          :examples $ []
          :schema $ quote $ Map Tag (Map Dynamic Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.schema
    'respo-md.test $ %{} 'FileEntry
      :defs $ {}
        'assert= $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn assert= (label expected actual)
            if (&= expected actual)
              println $ str "|[ok] " label
              do
                println $ str "|[fail] " label
                println $ str "|  expected: " expected
                println $ str "|  actual:   " actual
                raise $ str "|Test failed: " label
          :examples $ []
          :schema $ quote $ Fn String A B (-> Unit) (:generics A B) (:features :io)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (test-escape-html!) (test-normalize-math!) (test-mathml-markup!) (test-inline-non-string!) (println "|All math tests passed.")
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
        'test-escape-html! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-escape-html! ()
            assert= |&amp; $ escape-html |&
            assert= |&lt; $ escape-html |<
            assert= |&gt; $ escape-html |>
            assert= | $ escape-html |
            println "|test-escape-html! done"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
        'test-inline-non-string! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-inline-non-string! ()
            let
                foreign-value $ js-object $ :message |unexpected
                actual $ split-line foreign-value
              assert= ([]) actual
              println "|test-inline-non-string! done"
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
        'test-mathml-markup! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-mathml-markup! ()
            assert= |<math><mrow><mn>42</mn></mrow></math> $ mathml-markup |42 false
            assert= |<math><mrow><mi>x</mi></mrow></math> $ mathml-markup |x false
            assert= |<math><mrow><msup><mi>a</mi><mn>2</mn></msup></mrow></math> $ mathml-markup |a^2 false
            assert= |<math><mrow><mfrac><mrow><mn>1</mn></mrow><mrow><mn>2</mn></mrow></mfrac></mrow></math> $ mathml-markup |\frac{1}{2} false
            assert= "|<math><mrow><mo>→</mo></mrow></math>" $ mathml-markup |\to false
            assert= "|<math><mrow><mo>→</mo></mrow></math>" $ mathml-markup |\rightarrow false
            assert= "|<math><mrow><mo>⇒</mo></mrow></math>" $ mathml-markup |\Rightarrow false
            assert= "|<math><mrow><mo>←</mo></mrow></math>" $ mathml-markup |\leftarrow false
            assert= "|<math><mrow><mo>⇐</mo></mrow></math>" $ mathml-markup |\Leftarrow false
            assert= "|<math><mrow><mo>↔</mo></mrow></math>" $ mathml-markup |\leftrightarrow false
            assert= "|<math><mrow><mo>↦</mo></mrow></math>" $ mathml-markup |\mapsto false
            assert= "|<math><mrow><mo>←</mo></mrow></math>" $ mathml-markup |\gets false
            assert= "|<math><mrow><mo>⟵</mo></mrow></math>" $ mathml-markup |\longleftarrow false
            assert= "|<math><mrow><mo>⟶</mo></mrow></math>" $ mathml-markup |\longrightarrow false
            assert= "|<math><mrow><mo>↑</mo></mrow></math>" $ mathml-markup |\uparrow false
            assert= "|<math><mrow><mo>↓</mo></mrow></math>" $ mathml-markup |\downarrow false
            assert= "|<math><mrow><mo>⟷</mo></mrow></math>" $ mathml-markup |\longleftrightarrow false
            assert= "|<math><mrow><mo>↗</mo></mrow></math>" $ mathml-markup |\nearrow false
            assert= "|<math><mrow><mo>↘</mo></mrow></math>" $ mathml-markup |\searrow false
            assert= "|<math><mrow><mo>↖</mo></mrow></math>" $ mathml-markup |\nwarrow false
            assert= "|<math><mrow><mo>↙</mo></mrow></math>" $ mathml-markup |\swarrow false
            assert= "|<math><mrow><mo>↕</mo></mrow></math>" $ mathml-markup |\updownarrow false
            assert= "|<math><mrow><mo>⟸</mo></mrow></math>" $ mathml-markup |\Longleftarrow false
            assert= "|<math><mrow><mo>⟹</mo></mrow></math>" $ mathml-markup |\Longrightarrow false
            assert= "|<math><mrow><mo>⇑</mo></mrow></math>" $ mathml-markup |\Uparrow false
            assert= "|<math><mrow><mo>⇓</mo></mrow></math>" $ mathml-markup |\Downarrow false
            assert= "|<math><mrow><mo>⇔</mo></mrow></math>" $ mathml-markup |\Leftrightarrow false
            assert= "|<math><mrow><mo>⟺</mo></mrow></math>" $ mathml-markup |\Longleftrightarrow false
            assert= "|<math><mrow><mo>⇕</mo></mrow></math>" $ mathml-markup |\Updownarrow false
            assert= "|<math><mrow><mo>⟼</mo></mrow></math>" $ mathml-markup |\longmapsto false
            assert= "|<math><mrow><mo>↪</mo></mrow></math>" $ mathml-markup |\hookrightarrow false
            assert= "|<math><mrow><mo>↩</mo></mrow></math>" $ mathml-markup |\hookleftarrow false
            assert= "|<math><mrow><mo>↠</mo></mrow></math>" $ mathml-markup |\twoheadrightarrow false
            assert= "|<math><mrow><mo>↞</mo></mrow></math>" $ mathml-markup |\twoheadleftarrow false
            assert= "|<math><mrow><mo>↼</mo></mrow></math>" $ mathml-markup |\leftharpoonup false
            assert= "|<math><mrow><mo>⇀</mo></mrow></math>" $ mathml-markup |\rightharpoonup false
            assert= "|<math><mrow><mo>⇌</mo></mrow></math>" $ mathml-markup |\rightleftharpoons false
            assert= "|<math><mrow><mo>↚</mo></mrow></math>" $ mathml-markup |\nleftarrow false
            assert= "|<math><mrow><mo>↛</mo></mrow></math>" $ mathml-markup |\nrightarrow false
            assert= "|<math><mrow><mo>⇍</mo></mrow></math>" $ mathml-markup |\nLeftarrow false
            assert= "|<math><mrow><mo>⇏</mo></mrow></math>" $ mathml-markup |\nRightarrow false
            assert= "|<math><mrow><mo>↮</mo></mrow></math>" $ mathml-markup |\nleftrightarrow false
            assert= "|<math><mrow><mo>⇎</mo></mrow></math>" $ mathml-markup |\nLeftrightarrow false
            assert= "|<math><mrow><mo>⇒</mo></mrow></math>" $ mathml-markup |\implies false
            assert= "|<math><mrow><mo>⇔</mo></mrow></math>" $ mathml-markup |\iff false
            assert= "|<math><mrow><mover><mo>→</mo><mrow><mi>x</mi></mrow></mover></mrow></math>" $ mathml-markup |\xrightarrow{x} false
            assert= |<math><mrow><msqrt><mrow><mi>x</mi></mrow></msqrt></mrow></math> $ mathml-markup |\sqrt{x} false
            assert= |<math><mrow><mroot><mrow><mi>x</mi></mrow><mn>3</mn></mroot></mrow></math> $ mathml-markup |\sqrt[3]{x} false
            assert= "|<math><mrow><mi>u</mi><mo>⋅</mo><mi>v</mi><mo>+</mo><mi>u</mi><mo>∧</mo><mi>v</mi></mrow></math>" $ mathml-markup "|u\\cdot v + u\\wedge v" false
            assert= "|<math><mrow><msup><mi>γ</mi><mi>μ</mi></msup><msup><mi>γ</mi><mi>ν</mi></msup><mo>+</mo><msup><mi>γ</mi><mi>ν</mi></msup><msup><mi>γ</mi><mi>μ</mi></msup><mo>=</mo><mn>2</mn><msup><mi>η</mi><mrow><mi>μ</mi><mi>ν</mi></mrow></msup><mi>I</mi></mrow></math>" $ mathml-markup "|\\gamma^\\mu\\gamma^\\nu + \\gamma^\\nu\\gamma^\\mu = 2\\eta^{\\mu\\nu}I" false
            assert= "|<math><mrow><mstyle mathvariant=\"bold\"><mi>a</mi></mstyle><mstyle mathvariant=\"bold\"><mrow><mi>b</mi></mrow></mstyle></mrow></math>" $ mathml-markup "|\\mathbf a\\mathbf{b}" false
            assert= "|<math><mrow><mstyle mathvariant=\"double-struck\"><mi>R</mi></mstyle><mo>→</mo><mstyle mathvariant=\"double-struck\"><mrow><mi>C</mi></mrow></mstyle></mrow></math>" $ mathml-markup "|\\mathbb R \\to \\mathbb{C}" false
            assert= "|<math><mrow><mi mathvariant=\"normal\">Slerp</mi><mo>(</mo><mi>q</mi><mo>)</mo><mo>+</mo><mover accent=\"true\"><mrow><mi>q</mi></mrow><mo>¯</mo></mover><mo>+</mo><mi mathvariant=\"normal\">cosh</mi><mi>φ</mi><mspace width=\"1em\"></mspace><mo>⟨</mo><mi>x</mi><mo>⟩</mo></mrow></math>" $ mathml-markup "|\\operatorname{Slerp}(q)+\\bar{q}+\\cosh\\phi\\quad\\langle x\\rangle" false
            assert= "|<math><mrow><mrow><mo>(</mo><mtable><mtr><mtd><mrow><mi>a</mi></mrow></mtd><mtd><mrow><mi>b</mi></mrow></mtd></mtr><mtr><mtd><mrow><mi>c</mi></mrow></mtd><mtd><mrow><mi>d</mi></mrow></mtd></mtr></mtable><mo>)</mo></mrow></mrow></math>" $ mathml-markup |\begin{pmatrix}a&b\\c&d\end{pmatrix} false
            assert= ([] nil |{unclosed) (respo-md.util.math/parse-math-raw-group |{unclosed)
            assert=
              [] (respo-md.util.math/math-environment-html |matrix |x) |
              respo-md.util.math/parse-math-environment |{matrix}x
            println "|test-mathml-markup! done"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
        'test-normalize-math! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-normalize-math! ()
            assert= |a+b $ normalize-math-source "|  a+b  "
            assert= |ab $ normalize-math-source "|  a \n b  "
            println "|test-normalize-math! done"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.test
          :require
            respo-md.util.math :refer $ escape-html normalize-math-source mathml-markup
            respo-md.util.core :refer $ split-line
    'respo-md.util.core $ %{} 'FileEntry
      :defs $ {}
        'BlockBufferValue $ %{} 'CodeEntry
          :doc "|Internal scanner buffer values: text/code strings, numeric indentation width, or table rows. Does not describe arbitrary externally supplied Markdown blocks."
          :code $ quote $ defunion BlockBufferValue String Number (List String)
          :examples $ []
          :schema $ quote UnionDef
        'BlockToken $ %{} 'CodeEntry
          :doc "|Named rendering blocks. The scanner keeps its public anonymous output and emits this type for the renderer."
          :code $ quote $ defenum BlockToken
            :text $ List String
            :code $ List CodeLine
            :math $ List String
            :table $ List $ List String
          :examples $ []
          :schema $ quote EnumDef
        'CodeLine $ %{} 'CodeEntry
          :doc "|Code fence content is text. A leading number is the legacy indentation marker."
          :code $ quote $ defunion CodeLine String Number
          :examples $ []
          :schema $ quote UnionDef
        'DemoState $ %{} 'CodeEntry
          :doc "|Typed state kept outside the VDOM tree for the Markdown demo."
          :code $ quote $ defstruct DemoState (:draft String) (:text String) (:parse-result respo-md.util.core/ParserResult)
          :examples $ []
          :schema $ quote StructDef
        'InlineMath $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InlineMath (:formula String) (:rest-line String)
          :examples $ []
          :schema $ quote StructDef
        'InlineStar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum InlineStar (:literal) (:emphasis String String) (:italic String String)
          :examples $ []
          :schema $ quote EnumDef
        'InlineToken $ %{} 'CodeEntry (:doc "|Typed payloads emitted to the inline renderer.")
          :code $ quote $ defenum InlineToken (:text String) (:code String) (:math String) (:url String) (:link String) (:image String) (:emphasis String) (:italic String)
          :examples $ []
          :schema $ quote EnumDef
        'ParseMode $ %{} 'CodeEntry (:doc "|Describes how a parser result was produced.")
          :code $ quote $ def ParseMode
            defenum ParseMode (:full) (:incremental Number Number) (:fallback)
          :examples $ []
          :schema $ quote EnumDef
        'ParserResult $ %{} 'CodeEntry
          :doc "|Typed public result shared by the incremental parser and Markdown components."
          :code $ quote $ defstruct ParserResult
            :blocks $ List Dynamic
            :reused-blocks Number
            :reparsed-blocks Number
            :scanned-lines Number
            :incremental? Bool
            :mode respo-md.util.core/ParseMode
          :examples $ []
          :schema $ quote StructDef
        'ScanResult $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ScanResult
            :blocks $ List Dynamic
            :reused-blocks Number
            :reparsed-blocks Number
            :scanned-lines Number
            :incremental? Bool
          :examples $ []
          :schema $ quote StructDef
        'anonymous-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn anonymous-block (mode buffer) (:: mode buffer)
          :examples $ []
          :schema $ quote $ Fn Tag (List BlockBufferValue) (-> AnyEnum) (:open :reflect)
        'anonymous-inline-token $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn anonymous-inline-token (tag value) (:: tag value)
          :examples $ []
          :schema $ quote $ Fn Tag String (-> AnyEnum) (:open :reflect)
        'append-blocks $ %{} 'CodeEntry
          :doc "|Appends parsed blocks without rebuilding the reused prefix."
          :code $ quote $ defn append-blocks (acc blocks)
            match (destruct-list blocks)
              (:none) acc
              (:some block rest-blocks)
                recur (&list:append acc block) rest-blocks
          :examples $ []
          :schema $ quote $ Fn (List Dynamic) (List Dynamic)
            -> $ List Dynamic
          :tests $ []
            %{} 'TestEntry (:name |appends-values)
              :code $ quote $ assert= ([] 1 2)
                append-blocks ([] 1) ([] 2)
            %{} 'TestEntry (:name |preserves-empty-and-open-members)
              :code $ quote $ let
                  prefix $ [] :prefix
                  members $ [] nil false 0 |
                  result $ append-blocks prefix members
                assert= prefix $ append-blocks prefix $ []
                assert= true $ identical? prefix $ append-blocks prefix ([])
                assert= ([] :prefix nil false 0 |) result
                assert= ([] :prefix) prefix
                assert= ([] 1 |a)
                  append-blocks ([] 1) ([] |a)
              :tags $ #{} :option-migration :unit
            %{} 'TestEntry (:name |preserves-member-identity)
              :code $ quote $ let
                  item $ ref 1
                  result $ append-blocks ([]) ([] item)
                assert= true $ identical? item $ .unwrap (first result)
                reset! item 2
                assert= 2 $ deref item
                assert= ([] item) result
              :tags $ #{} :option-migration :unit
        'coalesce $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coalesce (a b)
            if (nil? a) b a
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> Dynamic)
        'get0 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get0 (xs)
            match (js-nullish->option xs)
              (:none) None
              (:some matched)
                match
                  js-nullish->option $ aget (contract/expect-object |RegExp.match matched) 0
                  (:none) None
                  (:some value)
                    Some $ contract/expect-string |RegExp.capture value
          :examples $ []
          :schema $ quote $ Fn T
            -> $ Option String
            :generics T
            :features :js-ffi
        'get1 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get1 (xs)
            match (js-nullish->option xs)
              (:none) None
              (:some matched)
                match
                  js-nullish->option $ aget (contract/expect-object |RegExp.match matched) 1
                  (:none) None
                  (:some value)
                    Some $ contract/expect-string |RegExp.capture value
          :examples $ []
          :schema $ quote $ Fn T
            -> $ Option String
            :generics T
            :features :js-ffi
        'handle-inline-math $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-inline-math (line)
            let
                slash-matched $ .!match line peek-inline-math
                dollar-end-idx $ if (starts-with? line |$)
                  .unwrap-or
                    str-find-index (&str:slice line 1) |$
                    , -1
                  , -1
              if (js-present? slash-matched)
                let
                    formula $ .unwrap $ get1 slash-matched
                    rest-line $ &str:slice line $ + 4 (.len formula)
                  Some $ InlineMath :formula formula :rest-line rest-line
                if (&< -1 dollar-end-idx)
                  let
                      formula $ &str:slice line 1 $ + 1 dollar-end-idx
                      rest-line $ &str:slice line $ + 2 dollar-end-idx
                    Some $ InlineMath :formula formula :rest-line rest-line
                  , None
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Option InlineMath
            :features :js-ffi
        'handle-inline-star $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-inline-star (left)
            if (ignore-inline-star? left) (InlineStar :literal)
              if
                = |* $ .unwrap-or (first left) |
                let
                    next-left $ &str:slice left 1
                    matched $ .!match next-left peek-emphasis
                  if (js-present? matched)
                    let
                        emphasis $ .unwrap $ get1 matched
                        rest-line $ &str:slice next-left $ + 2 (.len emphasis)
                      InlineStar :emphasis emphasis rest-line
                    InlineStar :literal
                let
                    matched $ .!match left peek-italic
                  if (js-present? matched)
                    let
                        italic $ .unwrap $ get1 matched
                        rest-line $ &str:slice left $ + 1 (.len italic)
                      InlineStar :italic italic rest-line
                    InlineStar :literal
          :examples $ []
          :schema $ quote $ Fn String (-> InlineStar) (:features :js-ffi)
        'hydrate-demo-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hydrate-demo-store (store)
            let
                states $ .unwrap-or (respo-md.schema/read-field store :states) ({})
                restored $ match (respo-md.schema/read-field states :data)
                  (:some data)
                    if (nil? data) (read-demo-state nil)
                      read-demo-state $ {}
                        :draft $ .unwrap-or (respo-md.schema/read-field data :draft) false
                        :text $ .unwrap-or (respo-md.schema/read-field data :text) false
                  (:none) (read-demo-state nil)
              assoc store :states $ assoc
                either states $ {}
                , :data restored
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic)
            -> $ Map Dynamic Dynamic
        'ignore-inline-star? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ignore-inline-star? (left)
            if (&= left |) true $ =
              .unwrap-or (first left) |
              , "| "
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :js-ffi)
        'join-strings-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn join-strings-dynamic (xs sep)
            let
                n $ &list:count xs
              loop
                  i 0
                  acc |
                if (>= i n) acc $ recur (inc i)
                  str acc
                    if (= i 0) | sep
                    &list:nth xs i
          :examples $ []
          :schema $ quote $ Fn (List T) String (-> String) (:generics T)
        'make-parser-result $ %{} 'CodeEntry
          :doc "|Converts an internal scan result into the typed parser result."
          :code $ quote $ defn make-parser-result (raw mode)
            let
                blocks $ :blocks raw
                reused-blocks $ :reused-blocks raw
                reparsed-blocks $ :reparsed-blocks raw
                scanned-lines $ :scanned-lines raw
                incremental? $ :incremental? raw
              &%{} ParserResult :blocks blocks :reused-blocks reused-blocks :reparsed-blocks reparsed-blocks :scanned-lines scanned-lines :incremental? incremental? :mode mode
          :examples $ []
          :schema $ quote $ Fn ScanResult ParseMode (-> ParserResult)
        'make-regexp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-regexp (pattern flags) (new js/RegExp pattern flags)
          :examples $ []
          :schema $ quote $ Fn String String (-> JsObject) (:features :js-ffi)
        'map-indexed-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-indexed-dynamic (xs f)
            loop
                i 0
                acc $ []
              if
                >= i $ &list:count xs
                , acc $ recur (inc i)
                  &list:append acc $ f i $ &list:nth xs i
          :examples $ []
          :schema $ quote $ Fn (List T)
            Fn Number T $ -> U
            -> $ List U
            :generics T U
          :tests $ [] $ %{} 'TestEntry (:name |returns-accumulated-list)
            :code $ quote $ do
              is $ = 0 $ count
                map-indexed-dynamic ([])
                  fn (idx item) ([] idx item)
              is $ = 2 $ count
                map-indexed-dynamic ([] |a |b)
                  fn (idx item) ([] idx item)
            :tags $ #{} :regression :unit
        'math-block-close-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-close-content (line)
            let
                trimmed $ trim line
              if
                &> (.len trimmed) 2
                trim $ &str:slice trimmed 0 $ - (.len trimmed) 2
                , |
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'math-block-close-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-close-line? (line)
            let
                trimmed $ trim line
              or (&= trimmed |$$)
                js-present? $ .!match trimmed pattern-math-block-close
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :js-ffi)
        'math-block-open-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-open-content (line)
            let
                trimmed $ trim line
              if
                &> (.len trimmed) 2
                trim $ &str:slice trimmed 2
                , |
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'math-block-open? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-open? (line)
            let
                trimmed $ trim line
              or (&= trimmed |$$)
                js-present? $ .!match trimmed pattern-math-block-open
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :js-ffi)
        'math-block-single-line-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-single-line-content (line)
            let
                trimmed $ trim line
                matched $ .!match trimmed peek-math-block-single-line
              if
                and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                  &> (.len trimmed) 4
                trim $ &str:slice trimmed 2 $ - (.len trimmed) 2
                if (js-present? matched)
                  trim $ .unwrap $ get1 matched
                  , |
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'math-block-single-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-single-line? (line)
            let
                trimmed $ trim line
              or
                and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                  &> (.len trimmed) 4
                js-present? $ .!match trimmed peek-math-block-single-line
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :js-ffi)
        'parse-markdown $ %{} 'CodeEntry
          :doc "|Creates a parser result suitable for passing to comp-md-block via options :parse-result."
          :code $ quote $ defn parse-markdown (text)
            let
                blocks $ split-block text
                raw $ ScanResult :blocks blocks :reused-blocks 0 :reparsed-blocks (.len blocks) :scanned-lines
                  .len $ split-lines text
                  , :incremental? false
              make-parser-result raw $ %:: ParseMode :full
          :examples $ []
          :schema $ quote $ Fn String (-> ParserResult)
        'parse-markdown-incremental $ %{} 'CodeEntry
          :doc "|Continues a parser result and returns only the changed suffix statistics."
          :code $ quote $ defn parse-markdown-incremental (old-text new-text old-result)
            let
                raw $ if
                  and
                    not $ empty? old-text
                    empty? $ :blocks old-result
                  let
                      next-blocks $ split-block new-text
                    ScanResult :blocks next-blocks :reused-blocks 0 :reparsed-blocks (.len next-blocks) :scanned-lines
                      .len $ split-lines new-text
                      , :incremental? false
                  split-block-incremental old-text new-text $ :blocks old-result
                mode $ if (:incremental? raw)
                  %:: ParseMode :incremental (:reused-blocks raw) (:reparsed-blocks raw)
                  %:: ParseMode :fallback
              make-parser-result raw mode
          :examples $ []
          :schema $ quote $ Fn String String ParserResult (-> ParserResult)
        'pattern-indented-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-indented-code (respo-md.util.core/make-regexp "|^(\\s+)```" |)
          :examples $ []
          :schema $ quote JsObject
        'pattern-math-block-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-math-block-close (respo-md.util.core/make-regexp |\\\]$ |)
          :examples $ []
          :schema $ quote JsObject
        'pattern-math-block-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-math-block-open (respo-md.util.core/make-regexp |^\\\[ |)
          :examples $ []
          :schema $ quote JsObject
        'peek-emphasis $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-emphasis (respo-md.util.core/make-regexp "|^(.+)\\*\\*" |)
          :examples $ []
          :schema $ quote JsObject
        'peek-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-image (respo-md.util.core/make-regexp "|^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" |g)
          :examples $ []
          :schema $ quote JsObject
        'peek-inline-math $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-inline-math (respo-md.util.core/make-regexp "|^\\\\\\((.+?)\\\\\\)" |)
          :examples $ []
          :schema $ quote JsObject
        'peek-italic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-italic (respo-md.util.core/make-regexp "|^([^*/]+)\\*" |)
          :examples $ []
          :schema $ quote JsObject
        'peek-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-link (respo-md.util.core/make-regexp "|^\\[[^\\]]+\\]\\([^\\)]+\\)" |)
          :examples $ []
          :schema $ quote JsObject
        'peek-math-block-single-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-math-block-single-line (respo-md.util.core/make-regexp "|^\\\\\\[(.*)\\\\\\]$" |)
          :examples $ []
          :schema $ quote JsObject
        'read-demo-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-demo-state (value)
            if (nil? value)
              DemoState :draft | :text | :parse-result $ parse-markdown |
              let
                  draft $ .unwrap-or (respo-md.schema/read-field value :draft) false
                  text $ .unwrap-or (respo-md.schema/read-field value :text) false
                  result $ .unwrap-or (respo-md.schema/read-field value :parse-result) false
                if
                  and (string? draft) (string? text)
                  let
                      parsed $ if (struct? result)
                        if (&struct:matches? result ParserResult) result $ parse-markdown draft
                        parse-markdown draft
                    DemoState :draft draft :text text :parse-result parsed
                  raise "|Invalid Markdown demo draft/text"
          :examples $ []
          :schema $ quote $ Fn T (-> DemoState) (:generics T)
        'scan-block-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scan-block-iter (emit lines acc buffer mode)
            if (empty? lines)
              if (empty? buffer) acc $ &list:append acc $ emit mode buffer
              let
                  cursor $ .unwrap $ .first lines
                  left $ &list:rest lines
                match mode
                  :empty $ cond
                      &= cursor |
                      recur emit left acc ([]) :empty
                    (starts-with? cursor "|```")
                      recur emit left acc
                        [] $ &str:slice cursor 3
                        , :code
                    (cursor.!match pattern-indented-code)
                      let
                          raw $ cursor.!match pattern-indented-code
                        recur emit left acc
                          assert-type
                            []
                              .len $ .unwrap $ get1 raw
                              &str:slice cursor $ .len $ .unwrap (get0 raw)
                            List BlockBufferValue
                          , :code
                    (math-block-single-line? cursor)
                      recur emit left
                        &list:append acc $ emit :math $ [] (math-block-single-line-content cursor)
                        []
                        , :empty
                    (math-block-open? cursor)
                      let
                          first-line $ math-block-open-content cursor
                        recur emit left acc
                          if (&= first-line |) ([]) ([] first-line)
                          , :math
                    (table-line? cursor)
                      recur emit left
                        &list:append acc $ emit :text buffer
                        [] $ split-table-content cursor
                        , :table
                    true $ recur emit left acc ([] cursor) :text
                  :text $ cond
                      &= cursor |
                      recur emit left
                        &list:append acc $ emit :text buffer
                        []
                        , :empty
                    (starts-with? cursor "|```")
                      recur emit left
                        &list:append acc $ emit :text buffer
                        [] $ &str:slice cursor 3
                        , :code
                    (cursor.!match pattern-indented-code)
                      let
                          raw $ cursor.!match pattern-indented-code
                        recur emit left
                          &list:append acc $ emit :text buffer
                          assert-type
                            []
                              .len $ .unwrap $ get1 raw
                              &str:slice cursor $ .len $ .unwrap (get0 raw)
                            List BlockBufferValue
                          , :code
                    (math-block-single-line? cursor)
                      let
                          next-acc $ -> acc
                            &list:append $ emit :text buffer
                            &list:append $ emit :math $ [] (math-block-single-line-content cursor)
                        recur emit left next-acc ([]) :empty
                    (math-block-open? cursor)
                      let
                          first-line $ math-block-open-content cursor
                        recur emit left
                          &list:append acc $ emit :text buffer
                          if (&= first-line |) ([]) ([] first-line)
                          , :math
                    (table-line? cursor)
                      recur emit left
                        &list:append acc $ emit :text buffer
                        [] $ split-table-content cursor
                        , :table
                    true $ recur emit left acc (&list:append buffer cursor) :text
                  :code $ if
                    or (starts-with? cursor "|```") (cursor.!match pattern-indented-code)
                    recur emit left
                      &list:append acc $ emit :code buffer
                      []
                      , :empty
                    recur emit left acc (&list:append buffer cursor) :code
                  :math $ if (math-block-close-line? cursor)
                    let
                        tail-line $ math-block-close-content cursor
                        next-buffer $ if (&= tail-line |) buffer $ &list:append buffer tail-line
                      recur emit left
                        &list:append acc $ emit :math next-buffer
                        []
                        , :empty
                    recur emit left acc (&list:append buffer cursor) :math
                  :table $ if (table-line? cursor)
                    recur emit left acc
                      &list:append buffer $ split-table-content cursor
                      , :table
                    recur emit left
                      &list:append acc $ emit :table buffer
                      []
                      , :empty
                  _ $ raise $ str "|Strange splitting mode: " mode
          :examples $ []
          :schema $ quote $ Fn
            Fn Tag (List BlockBufferValue) (-> T)
            List String
            List T
            List BlockBufferValue
            , Tag
              -> $ List T
              :generics T
              :features :js-ffi
        'scan-blocks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scan-blocks (text)
            scan-block-iter typed-block (split-lines text) ([]) ([]) :empty
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List BlockToken
            :features :js-ffi
        'scan-inline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scan-inline (line emit)
            if (string? line)
              scan-inline-iter emit ([]) line | :text
              do
                js/console.warn "|respo-markdown: ignored non-string inline Markdown"
                []
          :examples $ []
          :schema $ quote $ Fn Input
            Fn Tag String $ -> T
            -> $ List T
            :generics Input T
            :features :js-ffi
        'scan-inline-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scan-inline-iter (emit acc line buffer mode)
            if (&= | line)
              if (&= | buffer) acc $ &list:append acc $ emit mode buffer
              let
                  cursor $ .unwrap $ .first line
                  left $ &str:slice line 1
                match mode
                  :text $ if
                    or
                      js-present? $ .!match line peek-inline-math
                      let
                          dollar-end-idx $ if (starts-with? line |$)
                            js-ffi.contract/expect-number |String.indexOf $ .!indexOf (&str:slice line 1) |$
                            , -1
                        &< -1 dollar-end-idx
                    match (handle-inline-math line)
                      (:some parsed)
                        recur emit
                          conj
                            if (&= | buffer) acc $ &list:append acc $ emit :text buffer
                            emit :math $ :formula parsed
                          :rest-line parsed
                          , | :text
                      (:none) (raise "|Inconsistent inline math prefix")
                    match cursor
                      "|`" $ recur emit
                        if (non-nil? buffer)
                          &list:append acc $ emit :text buffer
                          , acc
                        , left | :code
                      |h $ if
                        or
                          = |http:// $ &str:slice line 0 7
                          = |https:// $ &str:slice line 0 8
                        let
                            pieces $ split line "| "
                          recur emit
                            conj
                              if (&= | buffer) acc $ &list:append acc $ emit :text buffer
                              emit :url $ .unwrap $ first pieces
                            str "| " $ respo-md.util.core/join-strings-dynamic (&list:rest pieces) "| "
                            , | :text
                        recur emit acc left (str buffer |h) :text
                      |[ $ let
                          guess $ get0 $ .!match line peek-link
                        match guess
                          (:some guess)
                            recur emit
                              conj
                                if (&= | buffer) acc $ &list:append acc $ emit :text buffer
                                emit :link guess
                              &str:slice line $ .len guess
                              , | :text
                          (:none)
                            recur emit acc left (str buffer |[) :text
                      |! $ let
                          guess $ get0 $ .!match line peek-image
                        match guess
                          (:some guess)
                            recur emit
                              conj
                                if (&= | buffer) acc $ &list:append acc $ emit :text buffer
                                emit :image guess
                              &str:slice line $ .len guess
                              , | :text
                          (:none)
                            recur emit acc left (str buffer |!) :text
                      |* $ match (handle-inline-star left)
                        (:literal)
                          recur emit acc left (str buffer |*) :text
                        (:emphasis content rest-line)
                          recur emit
                            &list:append
                              &list:append acc $ emit :text buffer
                              emit :emphasis content
                            , rest-line | :text
                        (:italic content rest-line)
                          recur emit
                            &list:append
                              &list:append acc $ emit :text buffer
                              emit :italic content
                            , rest-line | :text
                      _ $ recur emit acc left (str buffer cursor) :text
                  :code $ if (&= cursor "|`")
                    recur emit
                      &list:append acc $ emit :code buffer
                      , left | :text
                    recur emit acc left (str buffer cursor) :code
                  _ $ raise $ str "|Unknown mode:" mode
          :examples $ []
          :schema $ quote $ Fn
            Fn Tag String $ -> T
            List T
            , String String Tag
              -> $ List T
              :generics T
              :features :js-ffi
        'split-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-block (text)
            split-block-iter (split-lines text) ([]) ([]) :empty
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List AnyEnum
            :features :js-ffi
            :open :reflect
        'split-block-incremental $ %{} 'CodeEntry
          :doc "|Parses only appended lines when the new source has the old source as a prefix; returns reuse statistics for benchmarks."
          :code $ quote $ defn split-block-incremental (old-text new-text old-blocks)
            if (starts-with? new-text old-text)
              let
                  appended $ &str:slice new-text $ .len old-text
                  appended-lines $ split-lines appended
                  block-count $ .len old-blocks
                  last-block $ last old-blocks
                  last-mode $ match last-block
                    (:none) :unknown
                    (:some block)
                      cond
                          enum? block
                          &enum:nth block 0
                        (nil? block) :unknown
                        true $ raise "|Invalid Markdown block"
                  last-text $ if (= last-mode :text)
                    let
                        last-lines $ match last-block
                          (:none) (raise "|Missing Markdown text block")
                          (:some block)
                            match
                              if (enum? block) (get block 1) (raise "|Missing Markdown text block")
                              (:none) (raise "|Invalid Markdown text block lines")
                              (:some value)
                                if (list? value) value $ raise "|Invalid Markdown text block lines"
                      respo-md.util.core/join-strings-dynamic last-lines &newline
                    , |
                  tail-source $ cond
                      ends-with? old-text "|\n\n"
                      str last-text "|\n\n"
                    (ends-with? old-text "|\n") (str last-text &newline)
                    true last-text
                  tail-safe? $ or (= block-count 0)
                    and (= last-mode :text)
                      or (empty? last-text) (ends-with? old-text tail-source)
                if
                  and
                    = false $ ends-with? old-text "|\n\n"
                    = last-mode :text
                    , tail-safe?
                  let
                      prefix-blocks $ &list:slice old-blocks 0 $ dec block-count
                      tail-text $ str tail-source appended
                      next-blocks $ split-block tail-text
                    ScanResult :blocks (append-blocks prefix-blocks next-blocks) :reused-blocks (dec block-count) :reparsed-blocks (.len next-blocks) :scanned-lines
                      .len $ split-lines tail-text
                      , :incremental? true
                  let
                      next-blocks $ split-block appended
                    if (not tail-safe?)
                      let
                          full-blocks $ split-block new-text
                        ScanResult :blocks full-blocks :reused-blocks 0 :reparsed-blocks (.len full-blocks) :scanned-lines
                          .len $ split-lines new-text
                          , :incremental? false
                      ScanResult :blocks (append-blocks old-blocks next-blocks) :reused-blocks (.len old-blocks) :reparsed-blocks (.len next-blocks) :scanned-lines (.len appended-lines) :incremental? true
              let
                  next-blocks $ split-block new-text
                ScanResult :blocks next-blocks :reused-blocks 0 :reparsed-blocks (.len next-blocks) :scanned-lines
                  .len $ split-lines new-text
                  , :incremental? false
          :examples $ []
          :schema $ quote $ Fn String String (List Dynamic) (-> ScanResult)
          :tests $ [] $ %{} 'TestEntry (:name |rejects-invalid-last-blocks)
            :code $ quote $ do
              assert= "|Invalid Markdown block" $ try
                split-block-incremental |x |xy $ [] false
                fn (error) error
              assert= "|Invalid Markdown block" $ try
                split-block-incremental |x |xy $ [] 0
                fn (error) error
              assert= "|Invalid Markdown block" $ try
                split-block-incremental |x |xy $ [] |
                fn (error) error
              assert= "|Invalid Markdown text block lines" $ try
                split-block-incremental |x |xy $ [] $ :: :text nil
                fn (error) error
            :tags $ #{} :option-migration :unit
        'split-block-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-block-iter (lines acc buffer mode) (scan-block-iter anonymous-block lines acc buffer mode)
          :examples $ []
          :schema $ quote $ Fn (List String) (List AnyEnum) (List BlockBufferValue) Tag
            -> $ List AnyEnum
            :features :js-ffi
            :open :reflect
        'split-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-line (line) (scan-inline line anonymous-inline-token)
          :examples $ []
          :schema $ quote $ Fn T
            -> $ List AnyEnum
            :generics T
            :features :js-ffi
            :open :reflect
        'split-line-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-line-iter (acc line buffer mode) (scan-inline-iter anonymous-inline-token acc line buffer mode)
          :examples $ []
          :schema $ quote $ Fn (List AnyEnum) String String Tag
            -> $ List AnyEnum
            :features :js-ffi
            :open :reflect
        'split-table-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-table-content (cursor)
            -> cursor
              &str:slice 1 $ dec $ .len cursor
              split ||
              map $ fn (x) (trim x)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
        'table-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn table-line? (cursor)
            and (starts-with? cursor ||) (ends-with? cursor ||)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :js-ffi)
        'typed-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn typed-block (mode buffer)
            match mode
              :text $ BlockToken :text $ decode-map-as buffer (List String)
              :code $ BlockToken :code $ decode-map-as buffer (List respo-md.util.core/CodeLine)
              :math $ BlockToken :math $ decode-map-as buffer (List String)
              :table $ BlockToken :table $ decode-map-as buffer
                List $ List String
              _ $ raise $ str "|Unknown Markdown block: " mode
          :examples $ []
          :schema $ quote $ Fn Tag (List BlockBufferValue) (-> BlockToken)
        'unwrap-option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unwrap-option (o)
            match o
              (:some x) x
              (:none) (raise "|unexpected none")
          :examples $ []
          :schema $ quote $ Fn (Option T) (-> T) (:generics T)
        'unwrap-or $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unwrap-or (o d)
            match o
              (:some x) x
              (:none) d
          :examples $ []
          :schema $ quote $ Fn (Option T) T (-> T) (:generics T)
        'update-draft-state $ %{} 'CodeEntry
          :doc "|Updates the textarea draft and parser result as one state transition."
          :code $ quote $ defn update-draft-state (state next-draft)
            DemoState :draft next-draft :text (:text state) :parse-result $ parse-markdown-incremental (:draft state) next-draft $ :parse-result state
          :examples $ []
          :schema $ quote $ Fn DemoState String (-> DemoState)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.util.core
          :require
            calcit.test :refer $ is
            js-ffi.contract :as contract
    'respo-md.util.math $ %{} 'FileEntry
      :defs $ {}
        'escape-html $ %{} 'CodeEntry
          :doc "|Escapes the subset of HTML-sensitive characters that may appear in generated MathML text nodes."
          :code $ quote $ defn escape-html (text)
            if (nil? text) | $ let
                text1 $ &str:replace text |& |&amp;
                text2 $ &str:replace text1 |< |&lt;
                text3 $ &str:replace text2 |> |&gt;
              &str:replace text3 "|\"" |&quot;
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'function-command? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn function-command? (name)
            or (&= name |lim) (&= name |sin) (&= name |cos) (&= name |tan) (&= name |sinh) (&= name |cosh) (&= name |tanh) (&= name |ln) (&= name |log) (&= name |exp) (&= name |det) (&= name |gcd) (&= name |min) (&= name |max)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
        'greek-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn greek-command (name)
            match name
              |alpha $ Some "|α"
              |beta $ Some "|β"
              |gamma $ Some "|γ"
              |delta $ Some "|δ"
              |epsilon $ Some "|ε"
              |varepsilon $ Some "|ϵ"
              |zeta $ Some "|ζ"
              |eta $ Some "|η"
              |theta $ Some "|θ"
              |vartheta $ Some "|ϑ"
              |iota $ Some "|ι"
              |kappa $ Some "|κ"
              |lambda $ Some "|λ"
              |mu $ Some "|μ"
              |nu $ Some "|ν"
              |xi $ Some "|ξ"
              |omicron $ Some "|ο"
              |pi $ Some "|π"
              |varpi $ Some "|ϖ"
              |rho $ Some "|ρ"
              |varrho $ Some "|ϱ"
              |sigma $ Some "|σ"
              |varsigma $ Some "|ς"
              |tau $ Some "|τ"
              |upsilon $ Some "|υ"
              |phi $ Some "|φ"
              |varphi $ Some "|ϕ"
              |chi $ Some "|χ"
              |psi $ Some "|ψ"
              |omega $ Some "|ω"
              |Gamma $ Some "|Γ"
              |Delta $ Some "|Δ"
              |Theta $ Some "|Θ"
              |Lambda $ Some "|Λ"
              |Xi $ Some "|Ξ"
              |Pi $ Some "|Π"
              |Sigma $ Some "|Σ"
              |Upsilon $ Some "|Υ"
              |Phi $ Some "|Φ"
              |Psi $ Some "|Ψ"
              |Omega $ Some "|Ω"
              _ None
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Option String
        'math-command-html $ %{} 'CodeEntry
          :doc "|Maps a recognized LaTeX-like command to a MathML snippet. Unsupported commands fall back to identifiers."
          :code $ quote $ defn math-command-html (name)
            match (greek-command name)
              (:some greek)
                str |<mi> (escape-html greek) |</mi>
              (:none)
                match (operator-command name)
                  (:some operator)
                    str |<mo> (escape-html operator) |</mo>
                  (:none)
                    if (function-command? name)
                      str "|<mi mathvariant=\"normal\">" (escape-html name) |</mi>
                      match name (|int "|<mo>∫</mo>") (|iint "|<mo>∬</mo>") (|iiint "|<mo>∭</mo>") (|oint "|<mo>∮</mo>") (|sum "|<mo>∑</mo>") (|prod "|<mo>∏</mo>")
                        _ $ str |<mi> (escape-html name) |</mi>
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'math-delimiter-html $ %{} 'CodeEntry
          :doc "|Wraps a single delimiter or operator character in a MathML operator node."
          :code $ quote $ defn math-delimiter-html (cursor)
            str |<mo> (escape-html cursor) |</mo>
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'math-environment-html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-environment-html (name source)
            if (matrix-environment? name)
              let[] (open-html close-html) (matrix-environment-delimiters name)
                let
                    rows $ split source |\\
                    table-html $ str |<mtable>
                      respo-md.util.core/join-strings-dynamic (map rows render-math-matrix-row) |
                      , |</mtable>
                  str |<mrow> (or open-html |) table-html (or close-html |) |</mrow>
              str |<mrow><mi>begin</mi><mi> (escape-html name) |</mi></mrow>
          :examples $ []
          :schema $ quote $ Fn String String (-> String) (:features :js-ffi)
        'math-operator-char? $ %{} 'CodeEntry
          :doc "|Recognizes punctuation and operator glyphs that should render as MathML operator nodes."
          :code $ quote $ defn math-operator-char? (cursor)
            or (&= cursor |+) (&= cursor |-) (&= cursor |=) (&= cursor "|(") (&= cursor "|)") (&= cursor |[) (&= cursor |]) (&= cursor |,) (&= cursor |/) (&= cursor |:)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
          :tests $ [] $ %{} 'TestEntry (:name |recognizes-plus)
            :code $ quote $ assert= true (math-operator-char? |+)
        'math-operator-command? $ %{} 'CodeEntry
          :doc "|Recognizes LaTeX command names that represent operator/relation symbols (arrows, relations) and should render as MathML <mo> nodes rather than <mi> identifiers."
          :code $ quote $ defn math-operator-command? (name)
            or (&= name |pm) (&= name |neq) (&= name |to) (&= name |implies) (&= name |iff) (&= name |rightarrow) (&= name |Rightarrow) (&= name |leftarrow) (&= name |Leftarrow) (&= name |leftrightarrow) (&= name |mapsto) (&= name |gets) (&= name |longleftarrow) (&= name |longrightarrow) (&= name |uparrow) (&= name |downarrow) (&= name |longleftrightarrow) (&= name |nearrow) (&= name |searrow) (&= name |nwarrow) (&= name |swarrow) (&= name |updownarrow) (&= name |Longleftarrow) (&= name |Longrightarrow) (&= name |Uparrow) (&= name |Downarrow) (&= name |Leftrightarrow) (&= name |Longleftrightarrow) (&= name |Updownarrow) (&= name |longmapsto) (&= name |hookrightarrow) (&= name |hookleftarrow) (&= name |twoheadrightarrow) (&= name |twoheadleftarrow) (&= name |leftharpoonup) (&= name |rightharpoonup) (&= name |rightleftharpoonup) (&= name |rightleftharpoons) (&= name |nleftarrow) (&= name |nrightarrow) (&= name |nLeftarrow) (&= name |nRightarrow) (&= name |nleftrightarrow) (&= name |nLeftrightarrow)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
        'mathml-markup $ %{} 'CodeEntry
          :doc "|Converts a math source fragment into a lightweight MathML tree string suitable for browser-native rendering."
          :code $ quote $ defn mathml-markup (source display?)
            let[] (body rest-line)
              parse-math-row (normalize-math-source source) None
              str |<math><mrow> body |</mrow></math>
          :examples $ []
          :schema $ quote $ Fn String Bool (-> String)
        'matrix-environment-delimiters $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matrix-environment-delimiters (name)
            match name
              |pmatrix $ [] "|<mo>(</mo>" "|<mo>)</mo>"
              |bmatrix $ [] |<mo>[</mo> |<mo>]</mo>
              |Bmatrix $ [] |<mo>{</mo> |<mo>}</mo>
              |vmatrix $ [] |<mo>|</mo> |<mo>|</mo>
              |Vmatrix $ [] "|<mo>‖</mo>" "|<mo>‖</mo>"
              |cases $ [] |<mo>{</mo> nil
              _ $ [] nil nil
          :examples $ []
          :schema $ quote $ Fn T
            -> $ Tuple (JsNullish String) (JsNullish String)
            :generics T
        'matrix-environment? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matrix-environment? (name)
            or (&= name |matrix) (&= name |pmatrix) (&= name |bmatrix) (&= name |Bmatrix) (&= name |vmatrix) (&= name |Vmatrix) (&= name |smallmatrix) (&= name |aligned) (&= name |cases)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
        'normalize-math-source $ %{} 'CodeEntry
          :doc "|Normalizes multi-line math input into a single trimmed line before tokenization."
          :code $ quote $ defn normalize-math-source (source)
            -> source (split-lines)
              map $ fn (line) (trim line)
              respo-md.util.core/join-strings-dynamic |
              trim
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'operator-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn operator-command (name)
            match name
              |cdot $ Some "|⋅"
              |times $ Some "|×"
              |div $ Some "|÷"
              |pm $ Some "|±"
              |mp $ Some "|∓"
              |wedge $ Some "|∧"
              |vee $ Some "|∨"
              |cap $ Some "|∩"
              |cup $ Some "|∪"
              |neq $ Some "|≠"
              |le $ Some "|≤"
              |leq $ Some "|≤"
              |ge $ Some "|≥"
              |geq $ Some "|≥"
              |approx $ Some "|≈"
              |equiv $ Some "|≡"
              |to $ Some "|→"
              |rightarrow $ Some "|→"
              |Rightarrow $ Some "|⇒"
              |leftarrow $ Some "|←"
              |Leftarrow $ Some "|⇐"
              |leftrightarrow $ Some "|↔"
              |mapsto $ Some "|↦"
              |gets $ Some "|←"
              |implies $ Some "|⇒"
              |iff $ Some "|⇔"
              |longleftarrow $ Some "|⟵"
              |longrightarrow $ Some "|⟶"
              |uparrow $ Some "|↑"
              |downarrow $ Some "|↓"
              |longleftrightarrow $ Some "|⟷"
              |nearrow $ Some "|↗"
              |searrow $ Some "|↘"
              |nwarrow $ Some "|↖"
              |swarrow $ Some "|↙"
              |updownarrow $ Some "|↕"
              |Longleftarrow $ Some "|⟸"
              |Longrightarrow $ Some "|⟹"
              |Uparrow $ Some "|⇑"
              |Downarrow $ Some "|⇓"
              |Leftrightarrow $ Some "|⇔"
              |Longleftrightarrow $ Some "|⟺"
              |Updownarrow $ Some "|⇕"
              |longmapsto $ Some "|⟼"
              |hookrightarrow $ Some "|↪"
              |hookleftarrow $ Some "|↩"
              |twoheadrightarrow $ Some "|↠"
              |twoheadleftarrow $ Some "|↞"
              |leftharpoonup $ Some "|↼"
              |rightharpoonup $ Some "|⇀"
              |rightleftharpoons $ Some "|⇌"
              |nleftarrow $ Some "|↚"
              |nrightarrow $ Some "|↛"
              |nLeftarrow $ Some "|⇍"
              |nRightarrow $ Some "|⇏"
              |nleftrightarrow $ Some "|↮"
              |nLeftrightarrow $ Some "|⇎"
              |in $ Some "|∈"
              |notin $ Some "|∉"
              |subset $ Some "|⊂"
              |subseteq $ Some "|⊆"
              |supset $ Some "|⊃"
              |supseteq $ Some "|⊇"
              |partial $ Some "|∂"
              |nabla $ Some "|∇"
              |infty $ Some "|∞"
              |propto $ Some "|∝"
              |perp $ Some "|⊥"
              |parallel $ Some "|∥"
              |angle $ Some "|∠"
              |circ $ Some "|∘"
              |ast $ Some "|∗"
              |langle $ Some "|⟨"
              |rangle $ Some "|⟩"
              |cong $ Some "|≅"
              |sim $ Some "|∼"
              |simeq $ Some "|≃"
              |mid $ Some "|∣"
              |vert $ Some ||
              |Vert $ Some "|‖"
              |ldots $ Some "|…"
              |cdots $ Some "|⋯"
              _ None
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Option String
        'parse-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-command-name (line)
            let
                matched $ .!match line peek-command-name
              if (js-present? matched)
                let
                    name $ .unwrap $ get1 matched
                  [] name $ &str:slice line $ .len name
                [] nil line
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Tuple (JsNullish String) String
            :features :js-ffi
        'parse-math-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-arg (line)
            if (&= | line) ([] |<mrow></mrow> line)
              if
                =
                  .unwrap-or (.first line) |
                  , |{
                let[] (body rest-line)
                  parse-math-row (&str:slice line 1) (Some |})
                  [] (str |<mrow> body |</mrow>)
                    if (&= | rest-line) rest-line $ &str:slice rest-line 1
                parse-math-atom line
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
            :features :js-ffi
        'parse-math-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-atom (line)
            if (&= | line) ([] || line)
              let
                  cursor $ .unwrap $ .first line
                  left $ &str:slice line 1
                cond
                    &= cursor "| "
                    parse-math-atom left
                  (&= cursor |{)
                    let[] (body rest-line)
                      parse-math-row left $ Some |}
                      let
                          next-rest $ if (&= | rest-line) rest-line $ &str:slice rest-line 1
                        [] (str |<mrow> body |</mrow>) next-rest
                  (&= cursor |\) (parse-math-command left)
                  (js-present? (.!match line peek-number))
                    let
                        matched $ .!match line peek-number
                        content $ .unwrap $ get1 matched
                        next-rest $ &str:slice line $ .len content
                      []
                        str |<mn> (escape-html content) |</mn>
                        , next-rest
                  (&= cursor |') ([] "|<mo>′</mo>" left)
                  (math-operator-char? cursor)
                    [] (math-delimiter-html cursor) left
                  true $ []
                    str |<mi> (escape-html cursor) |</mi>
                    , left
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
            :features :js-ffi
        'parse-math-command $ %{} 'CodeEntry
          :doc "|Parses a backslash-prefixed LaTeX-like command and returns a tuple of MathML html and remaining source."
          :code $ quote $ defn parse-math-command (line)
            let[] (name rest-line) (parse-command-name line)
              if (string? name)
                match name
                  |mathbf $ parse-math-styled-arg rest-line |bold
                  |mathbb $ parse-math-styled-arg rest-line |double-struck
                  |mathrm $ parse-math-styled-arg rest-line |normal
                  |mathit $ parse-math-styled-arg rest-line |italic
                  |mathsf $ parse-math-styled-arg rest-line |sans-serif
                  |mathtt $ parse-math-styled-arg rest-line |monospace
                  |mathcal $ parse-math-styled-arg rest-line |script
                  |mathfrak $ parse-math-styled-arg rest-line |fraktur
                  |qquad $ [] "|<mspace width=\"2em\"></mspace>" rest-line
                  |quad $ [] "|<mspace width=\"1em\"></mspace>" rest-line
                  |underline $ parse-math-under-arg rest-line |_
                  |tilde $ parse-math-over-arg rest-line |~
                  |hat $ parse-math-over-arg rest-line |^
                  |overline $ parse-math-over-arg rest-line "|¯"
                  |bar $ parse-math-over-arg rest-line "|¯"
                  |text $ parse-math-text-arg rest-line false
                  |operatorname $ parse-math-text-arg rest-line true
                  |begin $ parse-math-environment rest-line
                  |binom $ let[] (upper rest1) (parse-math-arg rest-line)
                    let[] (lower rest2) (parse-math-arg rest1)
                      []
                        str |<mrow> (math-delimiter-html "|(") upper (math-delimiter-html |,) lower (math-delimiter-html "|)") |</mrow>
                        , rest2
                  |frac $ let[] (numerator rest1) (parse-math-arg rest-line)
                    let[] (denominator rest2) (parse-math-arg rest1)
                      [] (str |<mfrac> numerator denominator |</mfrac>) rest2
                  |xrightarrow $ let[] (upper rest1) (parse-math-arg rest-line)
                    [] (str "|<mover><mo>→</mo>" upper |</mover>) rest1
                  |xleftarrow $ let[] (upper rest1) (parse-math-arg rest-line)
                    [] (str "|<mover><mo>←</mo>" upper |</mover>) rest1
                  |left $ if (&= | rest-line) ([] || rest-line)
                    []
                      math-delimiter-html $ .unwrap-or (.first rest-line) |
                      &str:slice rest-line 1
                  |right $ if (&= | rest-line) ([] || rest-line)
                    []
                      math-delimiter-html $ .unwrap-or (.first rest-line) |
                      &str:slice rest-line 1
                  |sqrt $ let[] (index-html rest0) (parse-math-root-index rest-line)
                    let[] (content rest1) (parse-math-arg rest0)
                      []
                        if (string? index-html) (str |<mroot> content index-html |</mroot>) (str |<msqrt> content |</msqrt>)
                        , rest1
                  _ $ [] (math-command-html name) rest-line
                if (&= | rest-line) ([] || rest-line)
                  if
                    = |, $ .unwrap-or (.first rest-line) |
                    [] |<mspace></mspace> $ &str:slice rest-line 1
                    []
                      str |<mo>\\</mo><mi>
                        escape-html $ .unwrap-or (.first rest-line) |
                        , |</mi>
                      &str:slice rest-line 1
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
            :features :js-ffi
        'parse-math-environment $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-environment (line)
            let[] (name rest-line) (parse-math-raw-group line)
              if (string? name)
                let
                    closing $ str |\end{ name |}
                    end-index $ &str:find-index rest-line closing
                  if (>= end-index 0)
                    let
                        source $ &str:slice rest-line 0 end-index
                        next-rest $ &str:slice rest-line $ + end-index (.len closing)
                      [] (math-environment-html name source) next-rest
                    [] (math-environment-html name rest-line) |
                [] |<mi>begin</mi> line
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
            :features :js-ffi
        'parse-math-over-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-over-arg (line mark)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<mover accent=\"true\">" content |<mo> mark |</mo></mover>) rest-line
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ List String
            :features :js-ffi
        'parse-math-raw-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-raw-group (line)
            if
              or (&= | line)
                not $ &= |{ $ .unwrap (first line)
              [] nil line
              let
                  end-index $ &str:find-index line |}
                if (>= end-index 0)
                  [] (&str:slice line 1 end-index)
                    &str:slice line $ + end-index 1
                  [] nil line
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Tuple (JsNullish String) String
            :features :js-ffi
        'parse-math-root-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-root-index (line)
            if
              and
                not $ &= | line
                = |[ $ .unwrap-or (.first line) |
              let[] (body rest-line)
                parse-math-row (&str:slice line 1) (Some |])
                [] body $ if (&= | rest-line) rest-line $ &str:slice rest-line 1
              [] nil line
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Tuple (JsNullish String) String
            :features :js-ffi
        'parse-math-row $ %{} 'CodeEntry
          :doc "|Consumes a sequence of math atoms until the source ends or a stop delimiter is reached."
          :code $ quote $ defn parse-math-row (line stop-char) (parse-math-row-iter line stop-char |)
          :examples $ []
          :schema $ quote $ Fn String (Option String)
            -> $ List String
        'parse-math-row-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-row-iter (line stop-char acc)
            if (&= | line) ([] acc line)
              let
                  cursor $ .unwrap $ .first line
                if
                  and (.some? stop-char)
                    &= cursor $ .unwrap stop-char
                  [] acc line
                  let[] (unit-html rest-line) (parse-math-unit line)
                    recur rest-line stop-char $ str acc unit-html
          :examples $ []
          :schema $ quote $ Fn String (Option String) String
            -> $ List String
            :features :js-ffi
        'parse-math-script $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-script (base line)
            if (&= | line) ([] base line)
              match
                respo-md.util.core/unwrap-option $ first line
                |^ $ let[] (sup rest1)
                  parse-math-arg $ &str:slice line 1
                  if
                    and
                      not $ &= | rest1
                      =
                        .unwrap-or (.first rest1) |
                        , |_
                    let[] (sub rest2)
                      parse-math-arg $ &str:slice rest1 1
                      [] (str |<msubsup> base sub sup |</msubsup>) rest2
                    [] (str |<msup> base sup |</msup>) rest1
                |_ $ let[] (sub rest1)
                  parse-math-arg $ &str:slice line 1
                  if
                    and
                      not $ &= | rest1
                      =
                        .unwrap-or (.first rest1) |
                        , |^
                    let[] (sup rest2)
                      parse-math-arg $ &str:slice rest1 1
                      [] (str |<msubsup> base sub sup |</msubsup>) rest2
                    [] (str |<msub> base sub |</msub>) rest1
                _ $ [] base line
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ List String
            :features :js-ffi
        'parse-math-styled-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-styled-arg (line variant)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<mstyle mathvariant=\"" variant "|\">" content |</mstyle>) rest-line
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ List String
            :features :js-ffi
        'parse-math-text-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-text-arg (line operator?)
            let[] (content rest-line) (parse-math-raw-group line)
              if (string? content)
                []
                  if operator?
                    str "|<mi mathvariant=\"normal\">" (escape-html content) |</mi>
                    str |<mtext> (escape-html content) |</mtext>
                  , rest-line
                parse-math-styled-arg line |normal
          :examples $ []
          :schema $ quote $ Fn String Bool
            -> $ List String
            :features :js-ffi
        'parse-math-under-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-under-arg (line mark)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<munder accentunder=\"true\">" content |<mo> mark |</mo></munder>) rest-line
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ List String
            :features :js-ffi
        'parse-math-unit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-unit (line)
            let[] (base rest-line) (parse-math-atom line) (parse-math-script base rest-line)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
            :features :js-ffi
        'peek-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-command-name (respo-md.util.core/make-regexp "|^([A-Za-z]+)" |)
          :examples $ []
          :schema $ quote JsObject
        'peek-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-number (respo-md.util.core/make-regexp "|^([0-9]+)" |)
          :examples $ []
          :schema $ quote JsObject
        'render-math-matrix-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-math-matrix-row (source)
            let
                cells $ split source |&
              str |<mtr>
                respo-md.util.core/join-strings-dynamic
                  map cells $ fn (cell)
                    let
                        parsed $ parse-math-row cell None
                      str |<mtd><mrow>
                        respo-md.util.core/unwrap-option $ first parsed
                        , |</mrow></mtd>
                  , |
                , |</mtr>
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.util.math
          :require $ respo-md.util.core :refer $ get1
