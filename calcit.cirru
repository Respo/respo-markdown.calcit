
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-md
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-md.main/main!) (:mode :js) (:reload-fn 'respo-md.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/calcit.cirru |respo-ui.calcit/calcit.cirru |js-ffi/
      :type-slots $ {}
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
                states $ respo-md.schema/read-field store :states
                cursor $ either (respo-md.schema/read-field states :cursor) ([])
                state $ respo-md.util.core/read-demo-state $ respo-md.schema/read-field states :data
              div
                {} (:class-name css/global)
                  :style $ {} (:width |96%) (:margin "|0 auto") (:padding 8)
                div
                  {} $ :class-name css/row-middle
                  img $ {}
                    :src |https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png
                    :style $ {} $ :width 40
                  =< 8 nil
                  a
                    {} $ :href |https://github.com/Respo/respo-markdown.calcit
                    <> |respo-markdown
                div ({})
                  comp-md-block "|Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```cirru\n:require\n  respo-md.comp.md :refer $ comp-md comp-md-block\n\ncomp-md \"|content\"\n\ncomp-md-block \"|content\\nnew line\" $ {}\n```\n" $ {}
                =< nil 40
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
                        d! cursor $ respo-md.util.core/DemoState :draft (:draft state) :text
                          str $ respo-md.schema/read-field e :value
                          , :parse-result $ :parse-result state
                  div ({})
                    comp-md (:text state) ({})
                =< nil 40
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
                            next-draft $ str $ respo-md.schema/read-field e :value
                          d! cursor $ update-draft-state state next-draft
                  div
                    {} (:class-name css/flex)
                      :style $ {} $ :padding 8
                    comp-md-block (:draft state)
                      {} (:highlight highlighter) (:class-name |demo)
                        :parse-result $ :parse-result state
                =< nil 200
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (respo-md.util.core/read-demo-state nil)
          :examples $ []
          :schema $ :: 'respo-md.util.core/DemoState
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.comp.container
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md comp-md-block
            respo-md.util.core :refer $ update-draft-state
            respo.core :refer $ defcomp <> div span textarea input a img
    'respo-md.comp.md $ %{} 'FileEntry
      :defs $ {}
        'blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'comp-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-code-block (indented-lines options)
            let
                indent-option $ assert-type
                  match (first indented-lines)
                    (:none) (Option :none)
                    (:some value)
                      if (number? value) (Option :some value) (Option :none)
                  :: 'Option 'Number
                lines $ match
                  try-decode-map-as
                    if (indent-option .some?) (&list:rest indented-lines) indented-lines
                    :: 'List 'String
                  (:ok decoded) decoded
                  (:err message) (raise message)
                indented $ indent-option .unwrap-or 0
                indentation $ if indented
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
                      &str:slice line $ count indentation
                      , line
                  respo-md.util.core/join-strings-dynamic &newline
                highlight-fn $ respo-md.schema/read-field options :highlight
                indented? $ &> indented 0
                code-block $ if (nil? highlight-fn)
                  if (&= lang |cirru)
                    respo.core/memo-comp-by ([] :cirru content) comp-cirru-snippet content $ Option :some $ respo-ui.schema/PresentationOptions :class-name
                      Option :some $ str-spaced |md-code-block style-code-block $ if indented? css/expand
                    respo.core/memo-comp-by ([] :snippet content) comp-snippet content $ Option :some $ respo-ui.schema/PresentationOptions :class-name
                      Option :some $ str-spaced |md-code-block style-code-block $ if indented? css/expand
                  if (fn? highlight-fn)
                    div
                      {} $ :class-name $ str-spaced css/row respo-ui.comp/css-snippet |md-code-block style-code-block (if indented? css/expand)
                      pre $ {} (:class-name css/expand)
                        :innerHTML $ highlight-code content lang highlight-fn
                      span
                        {} $ :class-name respo-ui.comp/style-copy-wrapper
                        respo-ui.comp/comp-copy content $ Option :none
                    raise |Markdown-:highlight-must-be-a-function-or-nil
              if indented?
                div
                  {} $ :class-name css/row
                  span $ {} (:inner-text indentation)
                    :class-name $ str-spaced css/font-code style-indent
                  , code-block
                , code-block
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'List 'Dynamic) (:: 'Map 'Dynamic 'Dynamic)
        'comp-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-image (chunk)
            let
                useful $ &str:slice chunk 2 $ - (count chunk) 1
              let[] (content url) (split useful "|](")
                img $ {} (:src url) (:class-name style-image) (:alt content)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String
            :features $ #{} :js-ffi
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
                    space-size $ &- (count line) (count content)
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'comp-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-link (chunk)
            let
                useful $ &str:slice chunk 1 $ - (count chunk) 1
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
                        &str:slice content 1 $ dec $ count content
                    a $ {}
                      :class-name $ str-spaced css/link style-default-link
                      :href url
                      :inner-text $ str-spaced "|🌐" content
                      :target |_blank
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'comp-math-block $ %{} 'CodeEntry
          :doc "|Renders a block-level math fragment as native MathML inside a styled container."
          :code $ quote $ defcomp comp-math-block (lines)
            div $ {} (:class-name style-math-block)
              :innerHTML $ mathml-markup (respo-md.util.core/join-strings-dynamic lines &newline) true
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List 'Dynamic
        'comp-md $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-md (text options)
            let
                inner $ match
                  try-decode-map-as (respo.core/memo-value-by text render-inline text) (:: 'List 'Dynamic)
                  (:ok children) children
                  (:err message) (raise message)
              div
                {} $ :class-name $ &map:get options :class-name
                , & inner
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Map 'Dynamic 'Dynamic
        'comp-md-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-md-block (text options)
            let
                blocks $ resolve-blocks text options
                class-name $ respo-md.schema/read-field options :class-name
              list->
                {}
                  :class-name $ if (nil? class-name) |md-block $ str-spaced |md-block class-name
                  :style $ respo-md.schema/read-field options :style
                -> blocks $ respo-md.util.core/map-indexed-dynamic $ fn (idx block)
                  hint-fn $ {}
                    :args $ [] 'Number 'Dynamic
                    :return $ :: 'List 'Dynamic
                  [] idx $ match block
                    (:text lines)
                      match
                        try-decode-map-as lines $ :: 'List 'String
                        (:ok text-lines) (comp-text-block text-lines)
                        (:err error) (raise error)
                    (:code lines)
                      if (list? lines) (comp-code-block lines options) (raise |Invalid-Markdown-code-block-lines)
                    (:math lines)
                      if (list? lines) (comp-math-block lines) (raise "|Invalid Markdown math block lines")
                    (:table lines)
                      match
                        try-decode-map-as lines $ :: 'List $ :: 'List 'String
                        (:ok table-lines) (comp-table-block table-lines)
                        (:err error) (raise error)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] $ :: 'List (:: 'List 'String)
            :features $ #{} :js-ffi
        'comp-text-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-text-block (lines)
            div
              {} $ :class-name $ str-spaced |md-p style-paragraph
              , & $ -> lines $ map
                fn (line) (respo.core/memo-comp-by line comp-line line)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List 'String
        'highlight-code $ %{} 'CodeEntry
          :doc "|调用既有自定义高亮回调，并检查 HTML 结果为 String。内容可信度由调用者负责；不缓存回调结果，不用于默认纯文本路径。"
          :code $ quote $ defn highlight-code (content lang highlight-fn)
            let
                html $ highlight-fn content lang
              if (string? html) html $ raise |Markdown-:highlight-must-return-a-String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String 'Fn
          :tests $ []
            %{} 'TestEntry
              :name |highlight-callback-invoked-with-code-and-language
              :code $ quote $ let
                  calls $ ref 0
                  callback $ fn (code lang)
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'String
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
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'String
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
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'String
                    reset! calls $ inc $ deref calls
                    str |<i> lang |</i>
                  other $ fn (code lang)
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'String
                    , |<b>other-renderer</b>
                assert= |<i>js</i> $ highlight-code |same |js callback
                assert= |<i>bash</i> $ highlight-code |same |bash callback
                assert= |<b>other-renderer</b> $ highlight-code |same |js other
                assert= 2 $ deref calls
              :tags $ #{} :highlight :unit
            %{} 'TestEntry (:name |highlight-rejects-non-string-result)
              :code $ quote $ let
                  callback $ fn (code lang)
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'Number
                    , 42
                assert= true $ try
                  do (highlight-code |code |js callback) false
                  fn (message)
                    hint-fn $ {}
                      :args $ [] 'String
                      :return 'Bool
                    .includes? message |highlight
              :tags $ #{} :highlight :unit
            %{} 'TestEntry (:name |highlight-preserves-callback-failure)
              :code $ quote $ let
                  callback $ fn (code lang)
                    hint-fn $ {}
                      :args $ [] 'String 'String
                      :return 'String
                    raise |highlighter-sentinel-failure
                assert= true $ try
                  do (highlight-code |code |js callback) false
                  fn (message)
                    hint-fn $ {}
                      :args $ [] 'String
                      :return 'Bool
                    &= message |highlighter-sentinel-failure
              :tags $ #{} :highlight :unit
        'render-inline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-inline (text)
            -> (split-line text)
              map $ fn (chunk)
                match chunk
                  (:code content)
                    code $ {} (:class-name style-inline-code) (:inner-text content)
                  (:math content)
                    if (string? content)
                      span $ {} (:class-name style-inline-math)
                        :innerHTML $ mathml-markup content false
                      raise "|Invalid inline math payload"
                  (:url content)
                    a $ {} (:href content) (:inner-text content) (:target |_blank)
                  (:link content)
                    if (string? content) (comp-link content) (raise "|Invalid Markdown link payload")
                  (:image content)
                    if (string? content) (comp-image content) (raise "|Invalid Markdown image payload")
                  (:text content)
                    if (string? content) (<> content nil) (raise "|Invalid inline text payload")
                  (:emphasis content)
                    create-element :b ({}) & $ render-inline content
                  (:italic content)
                    create-element :i $ {} $ :inner-text content
                  _ $ <> (str |Unknown: chunk) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'List 'Dynamic
        'resolve-blocks $ %{} 'CodeEntry
          :doc "|Uses a caller-owned parser result when supplied, keeping parser state outside the Respo VDOM tree."
          :code $ quote $ defn resolve-blocks (text options)
            let
                result $ respo-md.schema/read-field options :parse-result
              if (nil? result) (split-block text)
                if (struct? result)
                  if (&struct:matches? result respo-md.util.core/ParserResult) (:blocks result) (raise "|Invalid Markdown parser result")
                  raise "|Expected Markdown parser result Struct"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'List 'Dynamic
        'style-blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-blockquote
            {} $ |& $ {}
              :border-left $ str "|6px solid " $ hsl 0 0 90
              :margin-left 0
              :padding-left 12
              :color $ hsl 0 0 50
          :examples $ []
          :schema $ :: 'Dynamic
        'style-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code-block
            {} $ |& $ {} (:max-width |60vw) (:margin-bottom 8)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-default-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-default-link
            {}
              |& $ {} (:opacity 0.9) (:transition-duration |200ms)
              |&:hover $ {} (:opacity 1) (:transform "|scale(1)")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image
            {} $ |& $ {} (:max-width 480) (:max-height 320)
              :border $ str "|1px solid " $ hsl 0 0 90
              :border-radius |8px
          :examples $ []
          :schema $ :: 'Dynamic
        'style-indent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-indent
            {} $ |& $ {} (:white-space :pre) (:float :left) (:font-family ui/font-code) (:user-select :none)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-inline-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-inline-code
            {} $ |& $ {}
              :border $ str "|1px solid " $ hsl 0 0 086
              :border-radius |4px
              :font-size 12
              :padding "|2px 4px"
              :margin "|2px 4px"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-inline-math $ %{} 'CodeEntry
          :doc "|Keeps inline MathML readable inside prose without over-expanding line height."
          :code $ quote $ defstyle style-inline-math
            {} $ |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding "|0 3px") (:font-size 15)
              :background-color $ hsl 0 0 97
              :border-radius |4px
          :examples $ []
          :schema $ :: 'Dynamic
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
          :schema $ :: 'Dynamic
        'style-math-block $ %{} 'CodeEntry
          :doc "|Expands block MathML slightly so dense formulas stay readable in the preview pane."
          :code $ quote $ defstyle style-math-block
            {} $ |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding 14) (:margin "|10px 0") (:font-size 18)
              :background-color $ hsl 0 0 97
              :border-radius |8px
              :line-height |1.6em
              :overflow :auto
          :examples $ []
          :schema $ :: 'Dynamic
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
          :schema $ :: 'Dynamic
        'style-paragraph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-paragraph
            {} $ |& $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.comp.md
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li create-element
            respo.comp.space :refer $ =<
            respo-md.util.core :refer $ split-block split-line get1
            respo.util.list :refer $ map-with-idx
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-cirru-snippet comp-snippet
            respo-md.util.math :refer $ mathml-markup
    'respo-md.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? true
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-markdown/) (:title |Markdown) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-markdown)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.config
    'respo-md.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Dynamic 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if (enum? op)
              do
                reset! *store $ next-store-of op
                , &unit
              raise "|Invalid Markdown demo operation"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'highligher $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn highligher (code lang)
            str |<code> (respo-md.util.math/escape-html code) |</code>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
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
            let
                raw $ browser/storage-get $ .unwrap (get config/site :storage-key)
              match raw
                (:some value)
                  dispatch! $ :: :hydrate-storage $ parse-cirru-edn value
                (:none) &unit
            println "|App started!"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'js-ffi.browser/DomElementHost)
            :args $ []
        'next-store-of $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-store-of (op)
            match op
              (:states cursor s)
                match
                  try-decode-map-as cursor $ :: 'List 'Dynamic
                  (:ok decoded)
                    assoc @*store :states $ respo.cursor/update-state-tree
                      .unwrap-or (get @*store :states) ({})
                      , decoded s
                  (:err message) (raise message)
              (:hydrate-storage s)
                if (map? s) (respo-md.util.core/hydrate-demo-store s) (raise "|Invalid Markdown storage payload")
              _ $ do (eprintln "|unknown op:" op) @*store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Enum
            :return $ :: 'Map 'Dynamic 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ shared/date-now-snapshot
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn @*store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render!
              narrow-element $ mount-target
              comp-container @*store highligher
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def ssr?
            option:some? $ browser/query-selector |meta.respo-ssr
          :examples $ []
          :schema $ :: 'Bool
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
          :code $ quote $ defstruct StreamStats (:text 'String) (:result 'respo-md.util.core/ParserResult) (:full-lines 'Number) (:incremental-lines 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'assert-perf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn assert-perf (label condition)
            if condition
              println $ str "|[ok] " label
              raise $ str "|Performance assertion failed: " label
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String 'Bool
        'main! $ %{} 'CodeEntry
          :doc "|Runs append-only Markdown parser benchmark using Calcit code."
          :code $ quote $ defn main! ()
            let
                base $ make-source 2000 |
                appended $ str base "|tail\n\n"
                old-result $ parse-markdown base
                full-result $ parse-markdown appended
                incremental $ parse-markdown-incremental base appended old-result
                demo-state $ update-draft-state (respo-md.util.core/DemoState :draft base :text | :parse-result old-result) appended
                changed $ str "|changed\n\n" base
                fallback $ parse-markdown-incremental base changed old-result
                rendered-blocks $ resolve-blocks appended $ {} (:parse-result incremental)
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
                count $ :blocks full-result
                count $ :blocks incremental
              assert-perf |reuses-prefix $ > (:reused-blocks incremental) 1900
              assert-perf |scans-less-than-full $ < (:scanned-lines incremental)
                count $ split-lines appended
              assert-perf |fallback-mode $ not $ :incremental? fallback
              assert-perf |fallback-output $ =
                count $ :blocks $ parse-markdown changed
                count $ :blocks fallback
              assert-perf |component-uses-parser-result $ = (count rendered-blocks)
                count $ :blocks incremental
              assert-perf |demo-state-draft $ = (:draft demo-state) appended
              assert-perf |demo-state-parser $ =
                count $ :blocks $ :parse-result demo-state
                count $ :blocks incremental
              assert-perf |llm-stream-output $ =
                count $ :blocks $ :result stream
                count $ :blocks $ parse-markdown (:text stream)
              assert-perf |llm-stream-saves-work $ > (:full-lines stream)
                * (:incremental-lines stream) 10
              assert-perf |open-code-fallback $ = false $ :incremental? code-result
              assert-perf |open-code-output $ =
                count $ :blocks code-result
                count $ :blocks $ parse-markdown code-new
              println $ str |full-lines=
                count $ split-lines appended
                , "| incremental-lines=" (:scanned-lines incremental) "| reused-blocks=" (:reused-blocks incremental) "| reparsed-blocks=" $ :reparsed-blocks incremental
              println $ str |llm-full-lines= (:full-lines stream) "| llm-incremental-lines=" $ :incremental-lines stream
              assert-perf |legacy-demo-draft $ = (:draft legacy-state) base
              assert-perf |legacy-demo-text $ = (:text legacy-state) "|legacy inline"
              assert-perf |legacy-demo-parser $ =
                :blocks $ :parse-result legacy-state
                :blocks old-result
              println "|Incremental parser performance test passed."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'make-source $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-source (n acc)
            if (&= n 0) acc $ recur (dec n) (str acc "|line\n\n")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'String
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
          :schema $ :: 'Fn $ {} (:return 'respo-md.perf-test/StreamStats)
            :args $ [] 'Number 'String 'respo-md.util.core/ParserResult 'Number 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.perf-test
          :require
            respo-md.util.core :refer $ parse-markdown parse-markdown-incremental update-draft-state
            respo-md.comp.md :refer $ resolve-blocks
    'respo-md.schema $ %{} 'FileEntry
      :defs $ {}
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-field (value field)
            cond
                struct? value
                &map:get (&struct:to-map value) field
              (map? value) (&map:get value field)
              true $ raise "|[Markdown] expected Struct or Map"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Tag
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
          :examples $ []
          :schema $ :: 'Map
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
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (test-escape-html!) (test-normalize-math!) (test-mathml-markup!) (test-inline-non-string!) (println "|All math tests passed.")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'test-escape-html! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-escape-html! ()
            assert= |&amp; $ escape-html |&
            assert= |&lt; $ escape-html |<
            assert= |&gt; $ escape-html |>
            assert= | $ escape-html |
            println "|test-escape-html! done"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'test-inline-non-string! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-inline-non-string! ()
            let
                foreign-value $ js-object $ :message |unexpected
                actual $ split-line foreign-value
              assert= ([]) actual
              println "|test-inline-non-string! done"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'test-normalize-math! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-normalize-math! ()
            assert= |a+b $ normalize-math-source "|  a+b  "
            assert= |ab $ normalize-math-source "|  a \n b  "
            println "|test-normalize-math! done"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.test
          :require
            respo-md.util.math :refer $ escape-html normalize-math-source mathml-markup
            respo-md.util.core :refer $ split-line
    'respo-md.util.core $ %{} 'FileEntry
      :defs $ {}
        'DemoState $ %{} 'CodeEntry
          :doc "|Typed state kept outside the VDOM tree for the Markdown demo."
          :code $ quote $ defstruct DemoState (:draft 'String) (:text 'String) (:parse-result 'respo-md.util.core/ParserResult)
          :examples $ []
          :schema $ :: 'StructDef
        'InlineMath $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InlineMath (:formula 'String) (:rest-line 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'InlineStar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum InlineStar (:literal) (:emphasis 'String 'String) (:italic 'String 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'ParseMode $ %{} 'CodeEntry (:doc "|Describes how a parser result was produced.")
          :code $ quote $ def ParseMode
            defenum ParseMode (:full) (:incremental 'Number 'Number) (:fallback)
          :examples $ []
          :schema $ :: 'EnumDef
        'ParserResult $ %{} 'CodeEntry
          :doc "|Typed public result shared by the incremental parser and Markdown components."
          :code $ quote $ defstruct ParserResult
            :blocks $ :: 'List 'Dynamic
            :reused-blocks 'Number
            :reparsed-blocks 'Number
            :scanned-lines 'Number
            :incremental? 'Bool
            :mode 'respo-md.util.core/ParseMode
          :examples $ []
          :schema $ :: 'StructDef
        'ScanResult $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ScanResult
            :blocks $ :: 'List 'Dynamic
            :reused-blocks 'Number
            :reparsed-blocks 'Number
            :scanned-lines 'Number
            :incremental? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'append-blocks $ %{} 'CodeEntry
          :doc "|Appends parsed blocks without rebuilding the reused prefix."
          :code $ quote $ defn append-blocks (acc blocks)
            if (empty? blocks) acc $ recur
              &list:append acc $ &list:first blocks
              &list:rest blocks
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Dynamic) (:: 'List 'Dynamic)
            :return $ :: 'List 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |appends-values)
            :code $ quote $ assert= ([] 1 2)
              append-blocks ([] 1) ([] 2)
        'coalesce $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coalesce (a b)
            if (nil? a) b a
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic
        'get0 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get0 (xs)
            match (js-nullish->option xs)
              (:none) (Option :none)
              (:some matched)
                match
                  js-nullish->option $ aget (contract/expect-object |RegExp.match matched) 0
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ contract/expect-string |RegExp.capture value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
            :return $ :: 'Option 'String
        'get1 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get1 (xs)
            match (js-nullish->option xs)
              (:none) (Option :none)
              (:some matched)
                match
                  js-nullish->option $ aget (contract/expect-object |RegExp.match matched) 1
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ contract/expect-string |RegExp.capture value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
            :return $ :: 'Option 'String
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
                    formula $ option:unwrap $ get1 slash-matched
                    rest-line $ &str:slice line $ + 4 (count formula)
                  Option :some $ InlineMath :formula formula :rest-line rest-line
                if (&< -1 dollar-end-idx)
                  let
                      formula $ &str:slice line 1 $ + 1 dollar-end-idx
                      rest-line $ &str:slice line $ + 2 dollar-end-idx
                    Option :some $ InlineMath :formula formula :rest-line rest-line
                  Option :none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'Option 'respo-md.util.core/InlineMath
        'handle-inline-star $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-inline-star (left)
            if (ignore-inline-star? left) (InlineStar :literal)
              if
                = |* $ respo-md.util.core/coalesce (&str:first left) |
                let
                    next-left $ &str:slice left 1
                    matched $ .!match next-left peek-emphasis
                  if (js-present? matched)
                    let
                        emphasis $ option:unwrap $ get1 matched
                        rest-line $ &str:slice next-left $ + 2 (count emphasis)
                      InlineStar :emphasis emphasis rest-line
                    InlineStar :literal
                let
                    matched $ .!match left peek-italic
                  if (js-present? matched)
                    let
                        italic $ option:unwrap $ get1 matched
                        rest-line $ &str:slice left $ + 1 (count italic)
                      InlineStar :italic italic rest-line
                    InlineStar :literal
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/InlineStar)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'hydrate-demo-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hydrate-demo-store (store)
            let
                states $ respo-md.schema/read-field store :states
                data $ respo-md.schema/read-field states :data
                restored $ if (nil? data) (read-demo-state nil)
                  read-demo-state $ {}
                    :draft $ respo-md.schema/read-field data :draft
                    :text $ respo-md.schema/read-field data :text
              assoc store :states $ assoc
                either states $ {}
                , :data restored
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
        'ignore-inline-star? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ignore-inline-star? (left)
            if (&= left |) true $ =
              respo-md.util.core/coalesce (&str:first left) |
              , "| "
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] (:: 'List 'Dynamic) 'String
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
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/ParserResult)
            :args $ [] 'respo-md.util.core/ScanResult 'respo-md.util.core/ParseMode
        'make-regexp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-regexp (pattern flags) (new js/RegExp pattern flags)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'T)
              :: 'Fn $ {} (:return 'U)
                :args $ [] 'Number 'T
            :generics $ [] 'T 'U
            :return $ :: 'List 'U
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
                &> (count trimmed) 2
                trim $ &str:slice trimmed 0 $ - (count trimmed) 2
                , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'math-block-close-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-close-line? (line)
            let
                trimmed $ trim line
              or (&= trimmed |$$)
                js-present? $ .!match trimmed pattern-math-block-close
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'math-block-open-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-open-content (line)
            let
                trimmed $ trim line
              if
                &> (count trimmed) 2
                trim $ &str:slice trimmed 2
                , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'math-block-open? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-open? (line)
            let
                trimmed $ trim line
              or (&= trimmed |$$)
                js-present? $ .!match trimmed pattern-math-block-open
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'math-block-single-line-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-single-line-content (line)
            let
                trimmed $ trim line
                matched $ .!match trimmed peek-math-block-single-line
              if
                and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                  &> (count trimmed) 4
                trim $ &str:slice trimmed 2 $ - (count trimmed) 2
                if (js-present? matched)
                  trim $ option:unwrap $ get1 matched
                  , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'math-block-single-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-block-single-line? (line)
            let
                trimmed $ trim line
              or
                and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                  &> (count trimmed) 4
                js-present? $ .!match trimmed peek-math-block-single-line
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'parse-markdown $ %{} 'CodeEntry
          :doc "|Creates a parser result suitable for passing to comp-md-block via options :parse-result."
          :code $ quote $ defn parse-markdown (text)
            let
                blocks $ split-block text
                raw $ ScanResult :blocks blocks :reused-blocks 0 :reparsed-blocks (count blocks) :scanned-lines
                  count $ split-lines text
                  , :incremental? false
              make-parser-result raw $ %:: ParseMode :full
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/ParserResult)
            :args $ [] 'String
        'parse-markdown-incremental $ %{} 'CodeEntry
          :doc "|Continues a parser result and returns only the changed suffix statistics."
          :code $ quote $ defn parse-markdown-incremental (old-text new-text old-result)
            let
                raw $ split-block-incremental old-text new-text $ :blocks old-result
                mode $ if (:incremental? raw)
                  %:: ParseMode :incremental (:reused-blocks raw) (:reparsed-blocks raw)
                  %:: ParseMode :fallback
              make-parser-result raw mode
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/ParserResult)
            :args $ [] 'String 'String 'respo-md.util.core/ParserResult
        'pattern-indented-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-indented-code (respo-md.util.core/make-regexp "|^(\\s+)```" |)
          :examples $ []
          :schema $ :: 'JsObject
        'pattern-math-block-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-math-block-close (respo-md.util.core/make-regexp |\\\]$ |)
          :examples $ []
          :schema $ :: 'JsObject
        'pattern-math-block-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-math-block-open (respo-md.util.core/make-regexp |^\\\[ |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-emphasis $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-emphasis (respo-md.util.core/make-regexp "|^(.+)\\*\\*" |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-image (respo-md.util.core/make-regexp "|^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" |g)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-inline-math $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-inline-math (respo-md.util.core/make-regexp "|^\\\\\\((.+?)\\\\\\)" |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-italic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-italic (respo-md.util.core/make-regexp "|^([^*/]+)\\*" |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-link (respo-md.util.core/make-regexp "|^\\[[^\\]]+\\]\\([^\\)]+\\)" |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-math-block-single-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-math-block-single-line (respo-md.util.core/make-regexp "|^\\\\\\[(.*)\\\\\\]$" |)
          :examples $ []
          :schema $ :: 'JsObject
        'read-demo-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-demo-state (value)
            if (nil? value)
              DemoState :draft | :text | :parse-result $ parse-markdown |
              let
                  draft $ respo-md.schema/read-field value :draft
                  text $ respo-md.schema/read-field value :text
                  result $ respo-md.schema/read-field value :parse-result
                if
                  and (string? draft) (string? text)
                  let
                      parsed $ if (struct? result)
                        if (&struct:matches? result ParserResult) result $ parse-markdown draft
                        parse-markdown draft
                    DemoState :draft draft :text text :parse-result parsed
                  raise "|Invalid Markdown demo draft/text"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/DemoState)
            :args $ [] 'T
            :generics $ [] 'T
        'split-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-block (text)
            split-block-iter (split-lines text) ([]) ([]) :empty
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'Dynamic
        'split-block-incremental $ %{} 'CodeEntry
          :doc "|Parses only appended lines when the new source has the old source as a prefix; returns reuse statistics for benchmarks."
          :code $ quote $ defn split-block-incremental (old-text new-text old-blocks)
            if (starts-with? new-text old-text)
              let
                  appended $ &str:slice new-text $ count old-text
                  appended-lines $ split-lines appended
                  block-count $ count old-blocks
                  last-block $ if (> block-count 0) (&list:last old-blocks) nil
                  last-mode $ cond
                      enum? last-block
                      &enum:nth last-block 0
                    (nil? last-block) :unknown
                    true $ raise "|Invalid Markdown block"
                if
                  and
                    = false $ ends-with? old-text "|\n\n"
                    not $ nil? last-block
                    = last-mode :text
                  let
                      prefix-blocks $ &list:slice old-blocks 0 $ dec block-count
                      last-lines $ let
                          value $ respo-md.util.core/unwrap-or
                            if (enum? last-block) (get last-block 1) (raise "|Missing Markdown text block")
                            , []
                        if (list? value) value $ raise "|Invalid Markdown text block lines"
                      tail-text $ if (ends-with? old-text "|\n")
                        str (respo-md.util.core/join-strings-dynamic last-lines &newline) &newline appended
                        str (respo-md.util.core/join-strings-dynamic last-lines &newline) appended
                      next-blocks $ split-block tail-text
                    ScanResult :blocks (append-blocks prefix-blocks next-blocks) :reused-blocks (dec block-count) :reparsed-blocks (count next-blocks) :scanned-lines
                      count $ split-lines tail-text
                      , :incremental? true
                  let
                      next-blocks $ split-block appended
                    if
                      and (> block-count 0)
                        = false $ ends-with? old-text "|\n\n"
                        = false $ = last-mode :text
                      let
                          full-blocks $ split-block new-text
                        ScanResult :blocks full-blocks :reused-blocks 0 :reparsed-blocks (count full-blocks) :scanned-lines
                          count $ split-lines new-text
                          , :incremental? false
                      ScanResult :blocks (append-blocks old-blocks next-blocks) :reused-blocks (count old-blocks) :reparsed-blocks (count next-blocks) :scanned-lines (count appended-lines) :incremental? true
              let
                  next-blocks $ split-block new-text
                ScanResult :blocks next-blocks :reused-blocks 0 :reparsed-blocks (count next-blocks) :scanned-lines
                  count $ split-lines new-text
                  , :incremental? false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/ScanResult)
            :args $ [] 'String 'String $ :: 'List 'Dynamic
        'split-block-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-block-iter (lines acc buffer mode)
            if (empty? lines)
              if (empty? buffer) acc $ &list:append acc $ :: mode buffer
              let
                  cursor $ .unwrap $ .first lines
                  left $ &list:rest lines
                match mode
                  :empty $ cond
                      &= cursor |
                      recur left acc ([]) :empty
                    (starts-with? cursor "|```")
                      recur left acc
                        [] $ &str:slice cursor 3
                        , :code
                    (cursor.!match pattern-indented-code)
                      let
                          raw $ cursor.!match pattern-indented-code
                        recur left acc
                          []
                            count $ option:unwrap $ get1 raw
                            &str:slice cursor $ count $ option:unwrap (get0 raw)
                          , :code
                    (math-block-single-line? cursor)
                      recur left
                        &list:append acc $ :: :math $ [] (math-block-single-line-content cursor)
                        []
                        , :empty
                    (math-block-open? cursor)
                      let
                          first-line $ math-block-open-content cursor
                        recur left acc
                          if (&= first-line |) ([]) ([] first-line)
                          , :math
                    (table-line? cursor)
                      recur left
                        &list:append acc $ :: :text buffer
                        [] $ split-table-content cursor
                        , :table
                    true $ recur left acc ([] cursor) :text
                  :text $ cond
                      &= cursor |
                      recur left
                        &list:append acc $ :: :text buffer
                        []
                        , :empty
                    (starts-with? cursor "|```")
                      recur left
                        &list:append acc $ :: :text buffer
                        [] $ &str:slice cursor 3
                        , :code
                    (cursor.!match pattern-indented-code)
                      let
                          raw $ cursor.!match pattern-indented-code
                        recur left
                          &list:append acc $ :: :text buffer
                          []
                            count $ option:unwrap $ get1 raw
                            &str:slice cursor $ count $ option:unwrap (get0 raw)
                          , :code
                    (math-block-single-line? cursor)
                      let
                          next-acc $ -> acc
                            &list:append $ :: :text buffer
                            &list:append $ :: :math $ [] (math-block-single-line-content cursor)
                        recur left next-acc ([]) :empty
                    (math-block-open? cursor)
                      let
                          first-line $ math-block-open-content cursor
                        recur left
                          &list:append acc $ :: :text buffer
                          if (&= first-line |) ([]) ([] first-line)
                          , :math
                    (table-line? cursor)
                      recur left
                        &list:append acc $ :: :text buffer
                        [] $ split-table-content cursor
                        , :table
                    true $ recur left acc (&list:append buffer cursor) :text
                  :code $ if
                    or (starts-with? cursor "|```") (cursor.!match pattern-indented-code)
                    recur left
                      &list:append acc $ :: :code buffer
                      []
                      , :empty
                    recur left acc (&list:append buffer cursor) :code
                  :math $ if (math-block-close-line? cursor)
                    let
                        tail-line $ math-block-close-content cursor
                        next-buffer $ if (&= tail-line |) buffer $ &list:append buffer tail-line
                      recur left
                        &list:append acc $ :: :math next-buffer
                        []
                        , :empty
                    recur left acc (&list:append buffer cursor) :math
                  :table $ if (table-line? cursor)
                    recur left acc
                      &list:append buffer $ split-table-content cursor
                      , :table
                    recur left
                      &list:append acc $ :: :table buffer
                      []
                      , :empty
                  _ $ raise $ str "|Strange splitting mode: " mode
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'String) (:: 'List 'Dynamic) (:: 'List 'Dynamic) 'Tag
            :features $ #{} :js-ffi
            :return $ :: 'List 'Dynamic
        'split-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-line (line)
            if (string? line)
              assert-type
                split-line-iter ([]) line | :text
                :: 'List 'Dynamic
              do
                js/console.warn "|respo-markdown: ignored non-string inline Markdown"
                []
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'List 'Dynamic
        'split-line-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-line-iter (acc line buffer mode)
            if (&= | line)
              if (&= | buffer) acc $ &list:append acc $ :: mode buffer
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
                        recur
                          conj
                            if (&= | buffer) acc $ &list:append acc $ :: :text buffer
                            :: :math $ :formula parsed
                          :rest-line parsed
                          , | :text
                      (:none) (raise "|Inconsistent inline math prefix")
                    match cursor
                      "|`" $ recur
                        if (non-nil? buffer)
                          &list:append acc $ :: :text buffer
                          , acc
                        , left | :code
                      |h $ if
                        or
                          = |http:// $ &str:slice line 0 7
                          = |https:// $ &str:slice line 0 8
                        let
                            pieces $ split line "| "
                          recur
                            conj
                              if (&= | buffer) acc $ &list:append acc $ :: :text buffer
                              :: :url $ &list:first pieces
                            str "| " $ respo-md.util.core/join-strings-dynamic (&list:rest pieces) "| "
                            , | :text
                        recur acc left (str buffer |h) :text
                      |[ $ let
                          guess $ get0 $ .!match line peek-link
                        match guess
                          (:some guess)
                            recur
                              conj
                                if (&= | buffer) acc $ &list:append acc $ :: :text buffer
                                :: :link guess
                              &str:slice line $ count guess
                              , | :text
                          (:none)
                            recur acc left (str buffer |[) :text
                      |! $ let
                          guess $ get0 $ .!match line peek-image
                        match guess
                          (:some guess)
                            recur
                              conj
                                if (&= | buffer) acc $ &list:append acc $ :: :text buffer
                                :: :image guess
                              &str:slice line $ count guess
                              , | :text
                          (:none)
                            recur acc left (str buffer |!) :text
                      |* $ match (handle-inline-star left)
                        (:literal)
                          recur acc left (str buffer |*) :text
                        (:emphasis content rest-line)
                          recur
                            &list:append
                              &list:append acc $ :: :text buffer
                              :: :emphasis content
                            , rest-line | :text
                        (:italic content rest-line)
                          recur
                            &list:append
                              &list:append acc $ :: :text buffer
                              :: :italic content
                            , rest-line | :text
                      _ $ recur acc left (str buffer cursor) :text
                  :code $ if (&= cursor "|`")
                    recur
                      &list:append acc $ :: :code buffer
                      , left | :text
                    recur acc left (str buffer cursor) :code
                  _ $ raise $ str "|Unknown mode:" mode
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Dynamic) 'String 'String 'Tag
            :features $ #{} :js-ffi
            :return $ :: 'List 'Dynamic
        'split-table-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-table-content (cursor)
            -> cursor
              &str:slice 1 $ dec $ count cursor
              split ||
              map $ fn (x) (trim x)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'List 'String
        'table-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn table-line? (cursor)
            and (starts-with? cursor ||) (ends-with? cursor ||)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'unwrap-option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unwrap-option (o)
            match o
              (:some x) x
              (:none) (raise "|unexpected none")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
        'unwrap-or $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unwrap-or (o d)
            match o
              (:some x) x
              (:none) d
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic
        'update-draft-state $ %{} 'CodeEntry
          :doc "|Updates the textarea draft and parser result as one state transition."
          :code $ quote $ defn update-draft-state (state next-draft)
            DemoState :draft next-draft :text (:text state) :parse-result $ parse-markdown-incremental (:draft state) next-draft $ :parse-result state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-md.util.core/DemoState)
            :args $ [] 'respo-md.util.core/DemoState 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.util.core
          :require
            calcit.test :refer $ [] is
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'function-command? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn function-command? (name)
            or (&= name |lim) (&= name |sin) (&= name |cos) (&= name |tan) (&= name |sinh) (&= name |cosh) (&= name |tanh) (&= name |ln) (&= name |log) (&= name |exp) (&= name |det) (&= name |gcd) (&= name |min) (&= name |max)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'greek-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn greek-command (name)
            match name (|alpha "|α") (|beta "|β") (|gamma "|γ") (|delta "|δ") (|epsilon "|ε") (|varepsilon "|ϵ") (|zeta "|ζ") (|eta "|η") (|theta "|θ") (|vartheta "|ϑ") (|iota "|ι") (|kappa "|κ") (|lambda "|λ") (|mu "|μ") (|nu "|ν") (|xi "|ξ") (|omicron "|ο") (|pi "|π") (|varpi "|ϖ") (|rho "|ρ") (|varrho "|ϱ") (|sigma "|σ") (|varsigma "|ς") (|tau "|τ") (|upsilon "|υ") (|phi "|φ") (|varphi "|ϕ") (|chi "|χ") (|psi "|ψ") (|omega "|ω") (|Gamma "|Γ") (|Delta "|Δ") (|Theta "|Θ") (|Lambda "|Λ") (|Xi "|Ξ") (|Pi "|Π") (|Sigma "|Σ") (|Upsilon "|Υ") (|Phi "|Φ") (|Psi "|Ψ") (|Omega "|Ω") (_ nil)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'math-command-html $ %{} 'CodeEntry
          :doc "|Maps a recognized LaTeX-like command to a MathML snippet. Unsupported commands fall back to identifiers."
          :code $ quote $ defn math-command-html (name)
            let
                greek $ greek-command name
                operator $ operator-command name
              if (non-nil? greek)
                str |<mi> (escape-html greek) |</mi>
                if (non-nil? operator)
                  str |<mo> (escape-html operator) |</mo>
                  if (function-command? name)
                    str "|<mi mathvariant=\"normal\">" (escape-html name) |</mi>
                    match name (|int "|<mo>∫</mo>") (|iint "|<mo>∬</mo>") (|iiint "|<mo>∭</mo>") (|oint "|<mo>∮</mo>") (|sum "|<mo>∑</mo>") (|prod "|<mo>∏</mo>")
                      _ $ str |<mi> (escape-html name) |</mi>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'math-delimiter-html $ %{} 'CodeEntry
          :doc "|Wraps a single delimiter or operator character in a MathML operator node."
          :code $ quote $ defn math-delimiter-html (cursor)
            str |<mo> (escape-html cursor) |</mo>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'math-environment-html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn math-environment-html (name source)
            if (matrix-environment? name)
              let
                  rows $ split source |\\
                  delimiters $ matrix-environment-delimiters name
                  open-html $ respo-md.util.core/coalesce (&list:nth delimiters 0) |
                  close-html $ respo-md.util.core/coalesce (&list:nth delimiters 1) |
                  table-html $ str |<mtable>
                    respo-md.util.core/join-strings-dynamic (map rows render-math-matrix-row) |
                    , |</mtable>
                str |<mrow> (or open-html |) table-html (or close-html |) |</mrow>
              str |<mrow><mi>begin</mi><mi> (escape-html name) |</mi></mrow>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'math-operator-char? $ %{} 'CodeEntry
          :doc "|Recognizes punctuation and operator glyphs that should render as MathML operator nodes."
          :code $ quote $ defn math-operator-char? (cursor)
            or (&= cursor |+) (&= cursor |-) (&= cursor |=) (&= cursor "|(") (&= cursor "|)") (&= cursor |[) (&= cursor |]) (&= cursor |,) (&= cursor |/) (&= cursor |:)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
          :tests $ [] $ %{} 'TestEntry (:name |recognizes-plus)
            :code $ quote $ assert= true (math-operator-char? |+)
        'math-operator-command? $ %{} 'CodeEntry
          :doc "|Recognizes LaTeX command names that represent operator/relation symbols (arrows, relations) and should render as MathML <mo> nodes rather than <mi> identifiers."
          :code $ quote $ defn math-operator-command? (name)
            or (&= name |pm) (&= name |neq) (&= name |to) (&= name |implies) (&= name |iff) (&= name |rightarrow) (&= name |Rightarrow) (&= name |leftarrow) (&= name |Leftarrow) (&= name |leftrightarrow) (&= name |mapsto) (&= name |gets) (&= name |longleftarrow) (&= name |longrightarrow) (&= name |uparrow) (&= name |downarrow) (&= name |longleftrightarrow) (&= name |nearrow) (&= name |searrow) (&= name |nwarrow) (&= name |swarrow) (&= name |updownarrow) (&= name |Longleftarrow) (&= name |Longrightarrow) (&= name |Uparrow) (&= name |Downarrow) (&= name |Leftrightarrow) (&= name |Longleftrightarrow) (&= name |Updownarrow) (&= name |longmapsto) (&= name |hookrightarrow) (&= name |hookleftarrow) (&= name |twoheadrightarrow) (&= name |twoheadleftarrow) (&= name |leftharpoonup) (&= name |rightharpoonup) (&= name |rightleftharpoonup) (&= name |rightleftharpoons) (&= name |nleftarrow) (&= name |nrightarrow) (&= name |nLeftarrow) (&= name |nRightarrow) (&= name |nleftrightarrow) (&= name |nLeftrightarrow)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'mathml-markup $ %{} 'CodeEntry
          :doc "|Converts a math source fragment into a lightweight MathML tree string suitable for browser-native rendering."
          :code $ quote $ defn mathml-markup (source display?)
            let[] (body rest-line)
              parse-math-row (normalize-math-source source) nil
              str |<math><mrow> body |</mrow></math>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Dynamic
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
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'matrix-environment? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matrix-environment? (name)
            or (&= name |matrix) (&= name |pmatrix) (&= name |bmatrix) (&= name |Bmatrix) (&= name |vmatrix) (&= name |Vmatrix) (&= name |smallmatrix) (&= name |aligned) (&= name |cases)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'normalize-math-source $ %{} 'CodeEntry
          :doc "|Normalizes multi-line math input into a single trimmed line before tokenization."
          :code $ quote $ defn normalize-math-source (source)
            -> source (split-lines)
              map $ fn (line) (trim line)
              respo-md.util.core/join-strings-dynamic |
              trim
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'operator-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn operator-command (name)
            match name (|cdot "|⋅") (|times "|×") (|div "|÷") (|pm "|±") (|mp "|∓") (|wedge "|∧") (|vee "|∨") (|cap "|∩") (|cup "|∪") (|neq "|≠") (|le "|≤") (|leq "|≤") (|ge "|≥") (|geq "|≥") (|approx "|≈") (|equiv "|≡") (|to "|→") (|rightarrow "|→") (|Rightarrow "|⇒") (|leftarrow "|←") (|Leftarrow "|⇐") (|leftrightarrow "|↔") (|mapsto "|↦") (|gets "|←") (|implies "|⇒") (|iff "|⇔") (|longleftarrow "|⟵") (|longrightarrow "|⟶") (|uparrow "|↑") (|downarrow "|↓") (|longleftrightarrow "|⟷") (|nearrow "|↗") (|searrow "|↘") (|nwarrow "|↖") (|swarrow "|↙") (|updownarrow "|↕") (|Longleftarrow "|⟸") (|Longrightarrow "|⟹") (|Uparrow "|⇑") (|Downarrow "|⇓") (|Leftrightarrow "|⇔") (|Longleftrightarrow "|⟺") (|Updownarrow "|⇕") (|longmapsto "|⟼") (|hookrightarrow "|↪") (|hookleftarrow "|↩") (|twoheadrightarrow "|↠") (|twoheadleftarrow "|↞") (|leftharpoonup "|↼") (|rightharpoonup "|⇀") (|rightleftharpoons "|⇌") (|nleftarrow "|↚") (|nrightarrow "|↛") (|nLeftarrow "|⇍") (|nRightarrow "|⇏") (|nleftrightarrow "|↮") (|nLeftrightarrow "|⇎") (|in "|∈") (|notin "|∉") (|subset "|⊂") (|subseteq "|⊆") (|supset "|⊃") (|supseteq "|⊇") (|partial "|∂") (|nabla "|∇") (|infty "|∞") (|propto "|∝") (|perp "|⊥") (|parallel "|∥") (|angle "|∠") (|circ "|∘") (|ast "|∗") (|langle "|⟨") (|rangle "|⟩") (|cong "|≅") (|sim "|∼") (|simeq "|≃") (|mid "|∣") (|vert ||) (|Vert "|‖") (|ldots "|…") (|cdots "|⋯") (_ nil)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'parse-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-command-name (line)
            let
                matched $ .!match line peek-command-name
              if (js-present? matched)
                let
                    name $ option:unwrap $ get1 matched
                  [] name $ &str:slice line $ count name
                [] nil line
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'parse-math-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-arg (line)
            if (&= | line) ([] |<mrow></mrow> line)
              if
                =
                  .unwrap-or (.first line) |
                  , |{
                let[] (body rest-line)
                  parse-math-row (&str:slice line 1) |}
                  [] (str |<mrow> body |</mrow>)
                    if (&= | rest-line) rest-line $ &str:slice rest-line 1
                parse-math-atom line
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
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
                    let[] (body rest-line) (parse-math-row left |})
                      let
                          next-rest $ if (&= | rest-line) rest-line $ &str:slice rest-line 1
                        [] (str |<mrow> body |</mrow>) next-rest
                  (&= cursor |\) (parse-math-command left)
                  (js-present? (.!match line peek-number))
                    let
                        matched $ .!match line peek-number
                        content $ option:unwrap $ get1 matched
                        next-rest $ &str:slice line $ count content
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
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-command $ %{} 'CodeEntry
          :doc "|Parses a backslash-prefixed LaTeX-like command and returns a tuple of MathML html and remaining source."
          :code $ quote $ defn parse-math-command (line)
            let[] (name rest-line) (parse-command-name line)
              if (string? rest-line)
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
                      if (string? rest0)
                        let[] (content rest1) (parse-math-arg rest0)
                          []
                            if (non-nil? index-html) (str |<mroot> content index-html |</mroot>) (str |<msqrt> content |</msqrt>)
                            , rest1
                        raise "|[Markdown] invalid root-index remainder"
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
                raise "|[Markdown] invalid command remainder"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-environment $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-environment (line)
            let[] (name rest-line) (parse-math-raw-group line)
              if
                and (string? name) (string? rest-line)
                let
                    closing $ str |\end{ name |}
                    end-index $ &str:find-index rest-line closing
                  if (>= end-index 0)
                    let
                        source $ &str:slice rest-line 0 end-index
                        next-rest $ &str:slice rest-line $ + end-index (count closing)
                      [] (math-environment-html name source) next-rest
                    [] (math-environment-html name rest-line) |
                [] |<mi>begin</mi> line
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-over-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-over-arg (line mark)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<mover accent=\"true\">" content |<mo> mark |</mo></mover>) rest-line
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-raw-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-raw-group (line)
            if
              or (&= | line)
                not $ &= |{ $ &str:first line
              [] nil line
              let
                  end-index $ &str:find-index line |}
                if (>= end-index 0)
                  [] (&str:slice line 1 end-index)
                    &str:slice line $ + end-index 1
                  [] nil line
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'parse-math-root-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-root-index (line)
            if
              and
                not $ &= | line
                = |[ $ .unwrap-or (.first line) |
              let[] (body rest-line)
                parse-math-row (&str:slice line 1) |]
                [] body $ if (&= | rest-line) rest-line $ &str:slice rest-line 1
              [] nil line
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'parse-math-row $ %{} 'CodeEntry
          :doc "|Consumes a sequence of math atoms until the source ends or a stop delimiter is reached."
          :code $ quote $ defn parse-math-row (line stop-char) (parse-math-row-iter line stop-char |)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'Dynamic
            :return $ :: 'List 'String
        'parse-math-row-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-row-iter (line stop-char acc)
            if (&= | line) ([] acc line)
              let
                  cursor $ .unwrap $ .first line
                if
                  and (non-nil? stop-char) (&= cursor stop-char)
                  [] acc line
                  let[] (unit-html rest-line) (parse-math-unit line)
                    recur rest-line stop-char $ str acc unit-html
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'Dynamic 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
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
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-styled-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-styled-arg (line variant)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<mstyle mathvariant=\"" variant "|\">" content |</mstyle>) rest-line
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-text-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-text-arg (line operator?)
            let[] (content rest-line) (parse-math-raw-group line)
              if (string? rest-line)
                if (string? content)
                  []
                    if operator?
                      str "|<mi mathvariant=\"normal\">" (escape-html content) |</mi>
                      str |<mtext> (escape-html content) |</mtext>
                    , rest-line
                  parse-math-styled-arg line |normal
                raise "|[Markdown] invalid text-group remainder"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'Bool
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-under-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-under-arg (line mark)
            let[] (content rest-line) (parse-math-arg line)
              [] (str "|<munder accentunder=\"true\">" content |<mo> mark |</mo></munder>) rest-line
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'parse-math-unit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-math-unit (line)
            let[] (base rest-line) (parse-math-atom line) (parse-math-script base rest-line)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
        'peek-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-command-name (respo-md.util.core/make-regexp "|^([A-Za-z]+)" |)
          :examples $ []
          :schema $ :: 'JsObject
        'peek-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def peek-number (respo-md.util.core/make-regexp "|^([0-9]+)" |)
          :examples $ []
          :schema $ :: 'JsObject
        'render-math-matrix-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-math-matrix-row (source)
            let
                cells $ split source |&
              str |<mtr>
                respo-md.util.core/join-strings-dynamic
                  map cells $ fn (cell)
                    let
                        parsed $ parse-math-row cell nil
                      str |<mtd><mrow>
                        respo-md.util.core/unwrap-option $ first parsed
                        , |</mrow></mtd>
                  , |
                , |</mtr>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-md.util.math
          :require $ respo-md.util.core :refer $ get1
