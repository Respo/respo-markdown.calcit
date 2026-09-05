
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |respo-md)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-md.main/main!) (:mode :native) (:reload-fn 'respo-md.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/calcit.cirru |respo-ui.calcit/calcit.cirru |js-ffi/
      :type-slots $ {}
    :perf-test $ {} (:description |) (:init-fn 'respo-md.perf-test/main!) (:mode :native) (:reload-fn 'respo-md.perf-test/main!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
    :smoke-test $ {} (:description |) (:init-fn 'respo-md.test/main!) (:mode :native) (:reload-fn 'respo-md.test/main!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'respo-md.comp.container $ %{} 'FileEntry
      :defs $ {}
        'DemoState $ %{} 'CodeEntry (:doc "|Typed state kept outside the VDOM tree for the Markdown demo.")
          :code $ quote
            defstruct DemoState (:draft 'String) (:text 'String) (:parse-result 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store highlighter)
              let
                  states $ respo-md.schema/read-field store :states
                  cursor $ either (respo-md.schema/read-field states :cursor) ([])
                  state $ either (respo-md.schema/read-field states :data) initial-state
                div
                  {} (:class-name css/global)
                    :style $ {} (:width |96%) (:margin "|0 auto") (:padding 8)
                  div
                    {} $ :class-name css/row-middle
                    img $ {} (:src |https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)
                      :style $ {} (:width 40)
                    =< 8 nil
                    a
                      {} $ :href |https://github.com/Respo/respo-markdown.calcit
                      <> |respo-markdown
                  div ({})
                    comp-md-block "|Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```cirru\n:require\n  respo-md.comp.md :refer $ comp-md comp-md-block\n\ncomp-md \"|content\"\n\ncomp-md-block \"|content\\nnew line\" $ {}\n```\n" $ {}
                  =< nil 40
                  div
                    {} $ :style ({})
                    div ({}) (comp-md "|This is an example for using `comp-md`:")
                    div ({})
                      input $ {} (:class-name css/input)
                        :style $ {} (:width |100%)
                        :value $ respo-md.schema/read-field state :text
                        :placeholder "|text inline"
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :text
                            str $ respo-md.schema/read-field e :value
                    div ({})
                      comp-md $ respo-md.schema/read-field state :text
                  =< nil 40
                  div ({}) (comp-md "|Example For using `comp-md-block`:")
                  div
                    {} $ :class-name css/row
                    div
                      {} $ :class-name css/expand
                      textarea $ {} (:placeholder "|multi-line content")
                        :value $ respo-md.schema/read-field state :draft
                        :class-name $ str-spaced css/textarea css/font-code!
                        :style $ {} (:height |100%) (:width |100%) (:font-size 13)
                        :on-input $ fn (e d!)
                          ; println |Editing: state $ :value e
                          let
                              next-draft $ str (respo-md.schema/read-field e :value)
                            d! cursor $ update-draft-state state next-draft
                    div
                      {} (:class-name css/flex)
                        :style $ {} (:padding 8)
                      comp-md-block (respo-md.schema/read-field state :draft)
                        {} (:highlight highlighter) (:class-name |demo)
                          :parse-result $ respo-md.schema/read-field state :parse-result
                  =< nil 200
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ %{} DemoState ([] :draft |) ([] :text |) ([] :parse-result nil)
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.comp.container $ :require
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
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-code-block (indented-lines options)
              let
                  peek $ first indented-lines
                  lines $ if (number? peek) (rest indented-lines) indented-lines
                  indented $ if (number? peek) (first indented-lines) 0
                  indentation $ if indented
                    .join-str (repeat "| " indented) |
                    , |
                  lang $ let
                      raw-lang $
                        first lines
                        , .unwrap-or |
                    if (string? raw-lang) raw-lang |
                  content $ -> (rest lines)
                    map $ fn (line) (.strip-prefix line indentation)
                    join-str &newline
                  highlight-fn $ either (respo-md.schema/read-field options :highlight)
                    fn (x & l) x
                  indented? $ &> indented 0
                  code-block $ if (= lang |cirru)
                    respo.core/memo-comp-by ([] :cirru content) comp-cirru-snippet content $ {}
                      :class-name $ str-spaced |md-code-block style-code-block (if indented? css/expand)
                    respo.core/memo-comp-by ([] :snippet content) comp-snippet content $ {}
                      :class-name $ str-spaced |md-code-block style-code-block (if indented? css/expand)
                      :highlighter highlight-fn
                      :lang lang
                if indented?
                  div
                    {} $ :class-name css/row
                    span $ {} (:inner-text indentation)
                      :class-name $ str-spaced css/font-code style-indent
                    , code-block
                  , code-block
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-image $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-image (chunk)
              let
                  useful $ &str:slice chunk 2
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  img $ {} (:src url) (:class-name style-image) (:alt content)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-line $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-line (line)
              cond
                  starts-with? line "|# "
                  h1 ({}) & $ render-inline (&str:slice line 2)
                (starts-with? line "|## ")
                  h2 ({}) & $ render-inline (&str:slice line 3)
                (starts-with? line "|### ")
                  h3 ({}) & $ render-inline (&str:slice line 4)
                (starts-with? line "|#### ")
                  h4 ({}) & $ render-inline (&str:slice line 5)
                (starts-with? line "|> ")
                  blockquote
                    {} $ :class-name style-blockquote
                    , & $ render-inline (&str:slice line 2)
                (starts-with? line "| ")
                  let
                      content $ unsafe-coerce (.!trimLeft line) 'String
                      space-size $ &- (count line) (count content)
                      spaces $ unsafe-coerce (.!slice line 0 space-size) 'String
                    div ({}) (<> spaces style-indent)
                      comp-line $ unsafe-coerce (.!trimLeft line) 'String
                (or (starts-with? line "|* ") (starts-with? line "|- "))
                  li
                    {} $ :class-name style-line-list
                    , & $ render-inline (&str:slice line 2)
                (starts-with? line "|#!html ")
                  div $ {} (:class-name |html-container)
                    :innerHTML $ .trim (&str:slice line 7)
                true $ div ({}) & (render-inline line)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-link (chunk)
              let
                  useful $ &str:slice chunk 1
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  span ({})
                    if
                      and (starts-with? content "|`") (ends-with? content "|`")
                      a
                        {}
                          :class-name $ str-spaced css/link style-default-link
                          :href url
                          :target |_blank
                        code $ {}
                          :inner-text $ &str:slice content 1
                            dec $ count content
                      a $ {}
                        :class-name $ str-spaced css/link style-default-link
                        :href url
                        :inner-text $ str-spaced "|🌐" content
                        :target |_blank
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-math-block $ %{} 'CodeEntry (:doc "|Renders a block-level math fragment as native MathML inside a styled container.")
          :code $ quote
            defcomp comp-math-block (lines)
              div $ {} (:class-name style-math-block)
                :innerHTML $ mathml-markup (join-str lines &newline) true
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
        'comp-md $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-md (text ? options)
              div
                {} $ :class-name (get options :class-name)
                , & $ respo.core/memo-value-by text render-inline text
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-md-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-md-block (text ? options)
              let
                  blocks $ resolve-blocks text options
                  class-name $ respo-md.schema/read-field options :class-name
                list->
                  {}
                    :class-name $ if (nil? class-name) |md-block (str-spaced |md-block class-name)
                    :style $ respo-md.schema/read-field options :style
                  -> blocks $ map-indexed
                    fn (idx block)
                      [] idx $ match block
                        (:text lines) (comp-text-block lines)
                        (:code lines) (comp-code-block lines options)
                        (:math lines) (comp-math-block lines)
                        (:table lines) (comp-table-block lines)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'String 'Map
        'comp-table-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-table-block (lines)
              let
                  header-line $ option:unwrap-or (first lines) []
                  body-lines $ let
                      p0 $ option:unwrap-or
                        get
                          option:unwrap-or (get lines 1) ([])
                          , 0
                        , nil
                    if
                      and (some? p0)
                        or (.starts-with? p0 |:-) (.starts-with? p0 |--)
                      .slice lines 2
                      .slice lines 1
                create-element :table
                  {} $ :class-name style-md-table
                  create-element :thead ({})
                    create-element :tr ({}) & $ -> header-line
                      map $ fn (x)
                        create-element :th ({}) & $ render-inline x
                  create-element :tbody ({}) & $ -> body-lines
                    map $ fn (line)
                      create-element :tr ({}) & $ -> line
                        map $ fn (x)
                          create-element :td ({}) & $ render-inline x
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-text-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-text-block (lines)
              div
                {} $ :class-name (str-spaced |md-p style-paragraph)
                , & $ -> lines
                  map $ fn (line) (respo.core/memo-comp-by line comp-line line)
          :examples $ []
          :schema $ :: 'Dynamic
        'render-inline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-inline (text)
              -> (split-line text)
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
                    (:text content) (<> content nil)
                    (:emphasis content)
                      create-element :b ({}) & $ render-inline content
                    (:italic content)
                      create-element :i $ {} (:inner-text content)
                    _ $ <> (str |Unknown: chunk) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'resolve-blocks $ %{} 'CodeEntry (:doc "|Uses a caller-owned parser result when supplied, keeping parser state outside the Respo VDOM tree.")
          :code $ quote
            defn resolve-blocks (text options)
              if
                some? $ respo-md.schema/read-field options :parse-result
                get (respo-md.schema/read-field options :parse-result) :blocks
                split-block text
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String 'Dynamic
        'style-blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-blockquote $ {}
              |& $ {}
                :border-left $ str "|6px solid " (hsl 0 0 90)
                :margin-left 0
                :padding-left 12
                :color $ hsl 0 0 50
          :examples $ []
          :schema $ :: 'Dynamic
        'style-code-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-block $ {}
              |& $ {} (:max-width |60vw) (:margin-bottom 8)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-default-link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-default-link $ {}
              |& $ {} (:opacity 0.9) (:transition-duration |200ms)
              |&:hover $ {} (:opacity 1) (:transform "|scale(1)")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-image $ {}
              |& $ {} (:max-width 480) (:max-height 320)
                :border $ str "|1px solid " (hsl 0 0 90)
                :border-radius |8px
          :examples $ []
          :schema $ :: 'Dynamic
        'style-indent $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-indent $ {}
              |& $ {} (:white-space :pre) (:float :left) (:font-family ui/font-code) (:user-select :none)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-inline-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-inline-code $ {}
              |& $ {}
                :border $ str "|1px solid " (hsl 0 0 086)
                :border-radius |4px
                :font-size 12
                :padding "|2px 4px"
                :margin "|2px 4px"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-inline-math $ %{} 'CodeEntry (:doc "|Keeps inline MathML readable inside prose without over-expanding line height.")
          :code $ quote
            defstyle style-inline-math $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding "|0 3px") (:font-size 15)
                :background-color $ hsl 0 0 97
                :border-radius |4px
          :examples $ []
          :schema $ :: 'Dynamic
        'style-line-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-line-list $ {}
              |& $ {} (:margin-left 12)
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
        'style-math-block $ %{} 'CodeEntry (:doc "|Expands block MathML slightly so dense formulas stay readable in the preview pane.")
          :code $ quote
            defstyle style-math-block $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding 14) (:margin "|10px 0") (:font-size 18)
                :background-color $ hsl 0 0 97
                :border-radius |8px
                :line-height |1.6em
                :overflow :auto
          :examples $ []
          :schema $ :: 'Dynamic
        'style-md-table $ %{} 'CodeEntry (:doc "|reused some styles from https://pure-css.github.io/tables/")
          :code $ quote
            defstyle style-md-table $ {}
              |& $ {}
                :border $ str "|1px solid " (hsl 0 0 90)
                :empty-cells :show
                :border-collapse :collapse
              "|& thead" $ {}
                :background-color $ hsl 0 0 96
              "|& tr" $ {}
                :border-top $ str "|1px solid " (hsl 0 0 94)
              "|& td, & th" $ {}
                :border-left $ str "|1px solid " (hsl 0 0 94)
                :padding "|0.5em 1em"
                :line-height |1.5em
                :text-align :left
                :vertical-align :middle
          :examples $ []
          :schema $ :: 'Dynamic
        'style-paragraph $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-paragraph $ {}
              |& $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.comp.md $ :require
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
          :code $ quote (def dev? true)
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-markdown/) (:title |Markdown) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-markdown)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-md.config)
    'respo-md.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              let
                  next-store $ match op
                    (:states cursor s) (update-states @*store cursor s)
                    (:hydrate-storage s) s
                    _ $ do (eprintln "|unknown op:" op) @*store
                reset! *store next-store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
        'highligher $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn highligher (code lang) (js/console.warn "|highligher not ready") (str |<code> code |</code>)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *store :changes $ fn (store prev) (render-app!)
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if
                  = |hidden $ unsafe-coerce js/document.visibilityState 'String
                  persist-storage!
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (respo-md.schema/read-field config/site :storage-key)
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw 'String
              println "|App started!"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'String
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (respo-md.schema/read-field config/site :storage-key) (format-cirru-edn @*store)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (clear-cache!)
                add-watch *store :changes $ fn (reel prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store highligher) dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def ssr? $ js-present? (js/document.querySelector |meta.respo-ssr)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-md.comp.container :refer $ comp-container
            respo-md.schema :as schema
            respo.cursor :refer $ update-states
            respo-md.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'respo-md.perf-test $ %{} 'FileEntry
      :defs $ {}
        'assert-perf $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn assert-perf (label condition)
              if condition
                println $ str "|[ok] " label
                raise $ str "|Performance assertion failed: " label
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String 'Bool
        'main! $ %{} 'CodeEntry (:doc "|Runs append-only Markdown parser benchmark using Calcit code.")
          :code $ quote
            defn main! () $ let
                base $ make-source 2000 |
                appended $ str base "|tail\n\n"
                old-result $ parse-markdown base
                full-result $ parse-markdown appended
                incremental $ parse-markdown-incremental base appended old-result
                demo-state $ update-draft-state
                  {} (:draft base) (:parse-result old-result)
                  , appended
                changed $ str "|changed\n\n" base
                fallback $ parse-markdown-incremental base changed old-result
                rendered-blocks $ respo-md.schema/read-field incremental :blocks
                stream $ stream-append-iter 80 base old-result 0 0
                code-old "|```js\nconst x = 1\n"
                code-new $ str code-old "|const y = 2\n```\n"
                code-result $ parse-markdown-incremental code-old code-new (parse-markdown code-old)
              assert-perf |incremental-mode $ respo-md.schema/read-field incremental :incremental?
              assert-perf |typed-incremental-mode $ =
                option:unwrap-or
                  first $ respo-md.schema/read-field incremental :mode
                  , nil
                , :incremental
              assert-perf |typed-full-mode $ =
                option:unwrap-or
                  first $ respo-md.schema/read-field full-result :mode
                  , nil
                , :full
              assert-perf |same-block-output $ =
                count $ respo-md.schema/read-field full-result :blocks
                count $ respo-md.schema/read-field incremental :blocks
              assert-perf |reuses-prefix $ > (respo-md.schema/read-field incremental :reused-blocks) 1900
              assert-perf |scans-less-than-full $ < (respo-md.schema/read-field incremental :scanned-lines)
                count $ split-lines appended
              assert-perf |fallback-mode $ not (respo-md.schema/read-field fallback :incremental?)
              assert-perf |fallback-output $ =
                count $ respo-md.schema/read-field (parse-markdown changed) :blocks
                count $ respo-md.schema/read-field fallback :blocks
              assert-perf |component-uses-parser-result $ = (count rendered-blocks)
                count $ respo-md.schema/read-field incremental :blocks
              assert-perf |demo-state-draft $ = (respo-md.schema/read-field demo-state :draft) appended
              assert-perf |demo-state-parser $ =
                count $ respo-md.schema/read-field (respo-md.schema/read-field demo-state :parse-result) :blocks
                count $ respo-md.schema/read-field incremental :blocks
              assert-perf |llm-stream-output $ =
                count $ respo-md.schema/read-field (respo-md.schema/read-field stream :result) :blocks
                count $ respo-md.schema/read-field
                  parse-markdown $ respo-md.schema/read-field stream :text
                  , :blocks
              assert-perf |llm-stream-saves-work $ > (respo-md.schema/read-field stream :full-lines)
                * (respo-md.schema/read-field stream :incremental-lines) 10
              assert-perf |open-code-fallback $ = false (respo-md.schema/read-field code-result :incremental?)
              assert-perf |open-code-output $ =
                count $ respo-md.schema/read-field code-result :blocks
                count $ respo-md.schema/read-field (parse-markdown code-new) :blocks
              println $ str |full-lines=
                count $ split-lines appended
                , "| incremental-lines=" (respo-md.schema/read-field incremental :scanned-lines) "| reused-blocks=" (respo-md.schema/read-field incremental :reused-blocks) "| reparsed-blocks=" (respo-md.schema/read-field incremental :reparsed-blocks)
              println $ str |llm-full-lines= (respo-md.schema/read-field stream :full-lines) "| llm-incremental-lines=" (respo-md.schema/read-field stream :incremental-lines)
              println "|Incremental parser performance test passed."
          :examples $ []
          :schema $ :: 'Dynamic
        'make-source $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn make-source (n acc)
              if (= n 0) acc $ recur (dec n) (str acc "|line\n\n")
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Number 'String
        'stream-append-iter $ %{} 'CodeEntry (:doc "|Feeds line-sized chunks like an LLM stream and compares cumulative full/incremental parser work.")
          :code $ quote
            defn stream-append-iter (n text result full-lines incremental-lines)
              if (= n 0)
                {} (:text text) (:result result) (:full-lines full-lines) (:incremental-lines incremental-lines)
                let
                    next-text $ str text "|token\n"
                    full-result $ parse-markdown next-text
                    next-result $ parse-markdown-incremental text next-text result
                  recur (dec n) next-text next-result
                    + full-lines $ respo-md.schema/read-field full-result :scanned-lines
                    + incremental-lines $ respo-md.schema/read-field next-result :scanned-lines
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Number 'String 'Dynamic 'Number 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.perf-test $ :require
            respo-md.util.core :refer $ parse-markdown parse-markdown-incremental update-draft-state
    'respo-md.schema $ %{} 'FileEntry
      :defs $ {}
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-md.schema)
    'respo-md.test $ %{} 'FileEntry
      :defs $ {}
        'assert= $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn assert= (label expected actual)
              if (= expected actual)
                println $ str "|[ok] " label
                do
                  println $ str "|[fail] " label
                  println $ str "|  expected: " expected
                  println $ str "|  actual:   " actual
                  raise $ str "|Test failed: " label
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (test-escape-html!) (test-normalize-math!) (test-mathml-markup!) (test-inline-non-string!) (println "|All math tests passed.")
          :examples $ []
          :schema $ :: 'Dynamic
        'test-escape-html! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn test-escape-html! ()
              assert= |&amp; $ escape-html |&
              assert= |&lt; $ escape-html |<
              assert= |&gt; $ escape-html |>
              assert= | $ escape-html |
              println "|test-escape-html! done"
          :examples $ []
          :schema $ :: 'Dynamic
        'test-inline-non-string! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn test-inline-non-string! () $ let
                foreign-value $ js-object (:message |unexpected)
                actual $ split-line foreign-value
              assert= ([]) actual
              println "|test-inline-non-string! done"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'test-mathml-markup! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn test-mathml-markup! ()
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
              println "|test-mathml-markup! done"
          :examples $ []
          :schema $ :: 'Dynamic
        'test-normalize-math! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn test-normalize-math! ()
              assert= |a+b $ normalize-math-source "|  a+b  "
              assert= |ab $ normalize-math-source "|  a \n b  "
              println "|test-normalize-math! done"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.test $ :require
            respo-md.util.math :refer $ escape-html normalize-math-source mathml-markup
            respo-md.util.core :refer $ split-line
    'respo-md.util.core $ %{} 'FileEntry
      :defs $ {}
        'ParseMode $ %{} 'CodeEntry (:doc "|Describes how a parser result was produced.")
          :code $ quote
            def ParseMode $ defenum ParseMode (:full) (:incremental 'Number 'Number) (:fallback)
          :examples $ []
          :schema $ :: 'Dynamic
        'ParserResult $ %{} 'CodeEntry (:doc "|Typed public result shared by the incremental parser and Markdown components.")
          :code $ quote
            defstruct ParserResult (:blocks 'List) (:reused-blocks 'Number) (:reparsed-blocks 'Number) (:scanned-lines 'Number) (:incremental? 'Bool) (:mode 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'append-blocks $ %{} 'CodeEntry (:doc "|Appends parsed blocks without rebuilding the reused prefix.")
          :code $ quote
            defn append-blocks (acc blocks)
              if (empty? blocks) acc $ recur
                conj acc $ option:unwrap (first blocks)
                rest blocks
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |appends-values)
              :code $ quote
                assert= ([] 1 2)
                  append-blocks ([] 1) ([] 2)
        'get0 $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get0 (xs)
              if (nil? xs) nil $ unsafe-coerce
                .-0 $ unsafe-coerce xs 'JsObject
                , 'String
          :examples $ []
          :schema $ :: 'Dynamic
        'get1 $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get1 (xs)
              if (nil? xs) nil $ unsafe-coerce
                .-1 $ unsafe-coerce xs 'JsObject
                , 'String
          :examples $ []
          :schema $ :: 'Dynamic
        'handle-inline-math $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn handle-inline-math (line)
              let
                  slash-matched $ .!match line peek-inline-math
                  dollar-end-idx $ if (starts-with? line |$)
                    .!indexOf (&str:slice line 1) |$
                    , -1
                if (js-present? slash-matched)
                  let
                      formula $ get1 slash-matched
                      rest-line $ &str:slice line
                        + 4 $ count formula
                    [] formula rest-line
                  if (&< -1 dollar-end-idx)
                    let
                        formula $ &str:slice line 1 (+ 1 dollar-end-idx)
                        rest-line $ &str:slice line (+ 2 dollar-end-idx)
                      [] formula rest-line
                    [] nil nil
          :examples $ []
          :schema $ :: 'Dynamic
        'handle-inline-star $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn handle-inline-star (left)
              if (ignore-inline-star? left) ([] :literal nil nil)
                if
                  = |* $ option:unwrap-or (first left) |
                  let
                      next-left $ &str:slice left 1
                      matched $ .!match next-left peek-emphasis
                    if (js-present? matched)
                      let
                          emphasis $ get1 matched
                          rest-line $ &str:slice next-left
                            + 2 $ count emphasis
                        [] :emphasis emphasis rest-line
                      [] :literal nil nil
                  let
                      matched $ .!match left peek-italic
                    if (js-present? matched)
                      let
                          italic $ get1 matched
                          rest-line $ &str:slice left
                            + 1 $ count italic
                        [] :italic italic rest-line
                      [] :literal nil nil
          :examples $ []
          :schema $ :: 'Dynamic
        'ignore-inline-star? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn ignore-inline-star? (left)
              if (= left |) true $ =
                option:unwrap-or (first left) |
                , "| "
          :examples $ []
          :schema $ :: 'Dynamic
        'make-parser-result $ %{} 'CodeEntry (:doc "|Converts an internal scan result into the typed parser result.")
          :code $ quote
            defn make-parser-result (raw mode)
              let
                  blocks $ respo-md.schema/read-field raw :blocks
                  reused-blocks $ respo-md.schema/read-field raw :reused-blocks
                  reparsed-blocks $ respo-md.schema/read-field raw :reparsed-blocks
                  scanned-lines $ respo-md.schema/read-field raw :scanned-lines
                  incremental? $ respo-md.schema/read-field raw :incremental?
                &%{} ParserResult :blocks blocks :reused-blocks reused-blocks :reparsed-blocks reparsed-blocks :scanned-lines scanned-lines :incremental? incremental? :mode mode
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Struct)
              :args $ [] 'Dynamic 'Dynamic
        'math-block-close-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-close-content (line)
              let
                  trimmed $ .trim line
                if
                  &> (count trimmed) 2
                  .trim $ &str:slice trimmed 0
                    - (count trimmed) 2
                  , |
          :examples $ []
          :schema $ :: 'Dynamic
        'math-block-close-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-close-line? (line)
              let
                  trimmed $ .trim line
                or (= trimmed |$$)
                  js-present? $ .!match trimmed pattern-math-block-close
          :examples $ []
          :schema $ :: 'Dynamic
        'math-block-open-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-open-content (line)
              let
                  trimmed $ .trim line
                if
                  &> (count trimmed) 2
                  .trim $ &str:slice trimmed 2
                  , |
          :examples $ []
          :schema $ :: 'Dynamic
        'math-block-open? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-open? (line)
              let
                  trimmed $ .trim line
                or (= trimmed |$$)
                  js-present? $ .!match trimmed pattern-math-block-open
          :examples $ []
          :schema $ :: 'Dynamic
        'math-block-single-line-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-single-line-content (line)
              let
                  trimmed $ .trim line
                  matched $ .!match trimmed peek-math-block-single-line
                if
                  and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                    &> (count trimmed) 4
                  .trim $ &str:slice trimmed 2
                    - (count trimmed) 2
                  if (js-present? matched)
                    .trim $ get1 matched
                    , |
          :examples $ []
          :schema $ :: 'Dynamic
        'math-block-single-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-block-single-line? (line)
              let
                  trimmed $ .trim line
                or
                  and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                    &> (count trimmed) 4
                  js-present? $ .!match trimmed peek-math-block-single-line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-markdown $ %{} 'CodeEntry (:doc "|Creates a parser result suitable for passing to comp-md-block via options :parse-result.")
          :code $ quote
            defn parse-markdown (text)
              let
                  blocks $ split-block text
                  raw $ {} (:blocks blocks) (:reused-blocks 0)
                    :reparsed-blocks $ count blocks
                    :scanned-lines $ count (split-lines text)
                    :incremental? false
                make-parser-result raw $ %:: ParseMode :full
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Struct)
              :args $ [] 'String
        'parse-markdown-incremental $ %{} 'CodeEntry (:doc "|Continues a parser result and returns only the changed suffix statistics.")
          :code $ quote
            defn parse-markdown-incremental (old-text new-text old-result)
              let
                  raw $ split-block-incremental old-text new-text (respo-md.schema/read-field old-result :blocks)
                  mode $ if (respo-md.schema/read-field raw :incremental?)
                    %:: ParseMode :incremental (respo-md.schema/read-field raw :reused-blocks) (respo-md.schema/read-field raw :reparsed-blocks)
                    %:: ParseMode :fallback
                make-parser-result raw mode
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Struct)
              :args $ [] 'String 'String 'Dynamic
        'pattern-indented-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-indented-code $ &raw-code "|/^(\\s+)```/"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'pattern-math-block-close $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-math-block-close $ new js/RegExp |\\\]$
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'pattern-math-block-open $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-math-block-open $ new js/RegExp |^\\\[
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-emphasis $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-emphasis $ new js/RegExp "|^(.+)\\*\\*"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-image $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-image $ new js/RegExp "|^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" |g
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-inline-math $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-inline-math $ new js/RegExp "|^\\\\\\((.+?)\\\\\\)"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-italic $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-italic $ new js/RegExp "|^([^*/]+)\\*"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-link $ new js/RegExp "|^\\[[^\\]]+\\]\\([^\\)]+\\)"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-math-block-single-line $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-math-block-single-line $ new js/RegExp "|^\\\\\\[(.*)\\\\\\]$"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'split-block $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-block (text)
              split-block-iter (split-lines text) ([]) ([]) :empty
          :examples $ []
          :schema $ :: 'Dynamic
        'split-block-incremental $ %{} 'CodeEntry (:doc "|Parses only appended lines when the new source has the old source as a prefix; returns reuse statistics for benchmarks.")
          :code $ quote
            defn split-block-incremental (old-text new-text old-blocks)
              if (starts-with? new-text old-text)
                let
                    appended $ &str:slice new-text (count old-text)
                    appended-lines $ split-lines appended
                    block-count $ count old-blocks
                    last-block $ if (> block-count 0)
                      option:unwrap-or
                        first $ .slice old-blocks (dec block-count)
                        , nil
                      , nil
                  if
                    and
                      = false $ ends-with? old-text "|\n\n"
                      not $ nil? last-block
                      =
                        option:unwrap-or (first last-block) :unknown
                        , :text
                    let
                        prefix-blocks $ .slice old-blocks 0 (dec block-count)
                        last-lines $ option:unwrap-or (get last-block 1) []
                        tail-text $ if (ends-with? old-text "|\n")
                          str (join-str last-lines &newline) &newline appended
                          str (join-str last-lines &newline) appended
                        next-blocks $ split-block tail-text
                      {}
                        :blocks $ append-blocks prefix-blocks next-blocks
                        :reused-blocks $ dec block-count
                        :reparsed-blocks $ count next-blocks
                        :scanned-lines $ count (split-lines tail-text)
                        :incremental? true
                    let
                        next-blocks $ split-block appended
                      if
                        and (> block-count 0)
                          = false $ ends-with? old-text "|\n\n"
                          = false $ =
                            option:unwrap-or (first last-block) :unknown
                            , :text
                        let
                            full-blocks $ split-block new-text
                          {} (:blocks full-blocks) (:reused-blocks 0)
                            :reparsed-blocks $ count full-blocks
                            :scanned-lines $ count (split-lines new-text)
                            :incremental? false
                        {}
                          :blocks $ append-blocks old-blocks next-blocks
                          :reused-blocks $ count old-blocks
                          :reparsed-blocks $ count next-blocks
                          :scanned-lines $ count appended-lines
                          :incremental? true
                let
                    next-blocks $ split-block new-text
                  {} (:blocks next-blocks) (:reused-blocks 0)
                    :reparsed-blocks $ count next-blocks
                    :scanned-lines $ count (split-lines new-text)
                    :incremental? false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String 'String 'Dynamic
        'split-block-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-block-iter (lines acc buffer mode)
              if (empty? lines)
                if (empty? buffer) acc $ conj acc (:: mode buffer)
                let
                    cursor $ option:unwrap (first lines)
                    left $ rest lines
                  case-default mode
                    raise $ str "|Strange splitting mode: " mode
                    :empty $ cond
                        = cursor |
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
                              count $ get1 raw
                              &str:slice cursor $ count (get0 raw)
                            , :code
                      (math-block-single-line? cursor)
                        recur left
                          conj acc $ :: :math
                            [] $ math-block-single-line-content cursor
                          []
                          , :empty
                      (math-block-open? cursor)
                        let
                            first-line $ math-block-open-content cursor
                          recur left acc
                            if (= first-line |) ([]) ([] first-line)
                            , :math
                      (table-line? cursor)
                        recur left
                          conj acc $ :: :text buffer
                          [] $ split-table-content cursor
                          , :table
                      true $ recur left acc ([] cursor) :text
                    :text $ cond
                        = cursor |
                        recur left
                          conj acc $ :: :text buffer
                          []
                          , :empty
                      (starts-with? cursor "|```")
                        recur left
                          conj acc $ :: :text buffer
                          [] $ &str:slice cursor 3
                          , :code
                      (cursor.!match pattern-indented-code)
                        let
                            raw $ cursor.!match pattern-indented-code
                          recur left
                            conj acc $ :: :text buffer
                            []
                              count $ get1 raw
                              &str:slice cursor $ count (get0 raw)
                            , :code
                      (math-block-single-line? cursor)
                        let
                            next-acc $ -> acc
                              conj $ :: :text buffer
                              conj $ :: :math
                                [] $ math-block-single-line-content cursor
                          recur left next-acc ([]) :empty
                      (math-block-open? cursor)
                        let
                            first-line $ math-block-open-content cursor
                          recur left
                            conj acc $ :: :text buffer
                            if (= first-line |) ([]) ([] first-line)
                            , :math
                      (table-line? cursor)
                        recur left
                          conj acc $ :: :text buffer
                          [] $ split-table-content cursor
                          , :table
                      true $ recur left acc (conj buffer cursor) :text
                    :code $ if
                      or (starts-with? cursor "|```") (cursor.!match pattern-indented-code)
                      recur left
                        conj acc $ :: :code buffer
                        []
                        , :empty
                      recur left acc (conj buffer cursor) :code
                    :math $ if (math-block-close-line? cursor)
                      let
                          tail-line $ math-block-close-content cursor
                          next-buffer $ if (= tail-line |) buffer (conj buffer tail-line)
                        recur left
                          conj acc $ :: :math next-buffer
                          []
                          , :empty
                      recur left acc (conj buffer cursor) :math
                    :table $ if (table-line? cursor)
                      recur left acc
                        conj buffer $ split-table-content cursor
                        , :table
                      recur left
                        conj acc $ :: :table buffer
                        []
                        , :empty
          :examples $ []
          :schema $ :: 'Dynamic
        'split-line $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-line (line)
              if (string? line)
                split-line-iter ([]) line | :text
                do (js/console.warn "|respo-markdown: ignored non-string inline Markdown") ([])
          :examples $ []
          :schema $ :: 'Dynamic
        'split-line-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-line-iter (acc line buffer mode)
              if (= | line)
                if (= | buffer) acc $ conj acc (:: mode buffer)
                let
                    cursor $ option:unwrap (first line)
                    left $ &str:slice line 1
                  case-default mode
                    raise $ str "|Unknown mode:" mode
                    :text $ if
                      or
                        js-present? $ .!match line peek-inline-math
                        let
                            dollar-end-idx $ if (starts-with? line |$)
                              .!indexOf (&str:slice line 1) |$
                              , -1
                          &< -1 dollar-end-idx
                      let[] (formula rest-line) (handle-inline-math line)
                        recur
                          conj
                            if (= | buffer) acc $ conj acc (:: :text buffer)
                            :: :math formula
                          , rest-line | :text
                      case-default cursor
                        recur acc left (str buffer cursor) :text
                        "|`" $ recur
                          if (some? buffer)
                            conj acc $ :: :text buffer
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
                                if (= | buffer) acc $ conj acc (:: :text buffer)
                                :: :url $ option:unwrap (first pieces)
                              str "| " $ join-str (rest pieces) "| "
                              , | :text
                          recur acc left (str buffer |h) :text
                        |[ $ let
                            guess $ get0 (.!match line peek-link)
                          if (some? guess)
                            recur
                              conj
                                if (= | buffer) acc $ conj acc (:: :text buffer)
                                :: :link guess
                              .!replace line guess |
                              , | :text
                            recur acc left (str buffer |[) :text
                        |! $ let
                            guess $ get0 (.!match line peek-image)
                          if (some? guess)
                            recur
                              conj
                                if (= | buffer) acc $ conj acc (:: :text buffer)
                                :: :image guess
                              .replace line guess |
                              , | :text
                            recur acc left (str buffer |!) :text
                        |* $ let[] (kind content rest-line) (handle-inline-star left)
                          case-default kind
                            recur acc left (str buffer |*) :text
                            :literal $ recur acc left (str buffer |*) :text
                            :emphasis $ recur
                              conj acc (:: :text buffer) (:: :emphasis content)
                              , rest-line | :text
                            :italic $ recur
                              conj acc (:: :text buffer) (:: :italic content)
                              , rest-line | :text
                    :code $ if (= cursor "|`")
                      recur
                        conj acc $ :: :code buffer
                        , left | :text
                      recur acc left (str buffer cursor) :code
          :examples $ []
          :schema $ :: 'Dynamic
        'split-table-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-table-content (cursor)
              -> cursor
                .slice 1 $ dec (count cursor)
                .split ||
                .map $ fn (x) (.trim x)
          :examples $ []
          :schema $ :: 'Dynamic
        'table-line? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn table-line? (cursor)
              and (starts-with? cursor ||) (ends-with? cursor ||)
          :examples $ []
          :schema $ :: 'Dynamic
        'update-draft-state $ %{} 'CodeEntry (:doc "|Updates the textarea draft and parser result as one state transition.")
          :code $ quote
            defn update-draft-state (state next-draft)
              assoc (assoc state :draft next-draft) :parse-result $ parse-markdown-incremental (respo-md.schema/read-field state :draft) next-draft (respo-md.schema/read-field state :parse-result)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.util.core $ :require
    'respo-md.util.math $ %{} 'FileEntry
      :defs $ {}
        'escape-html $ %{} 'CodeEntry (:doc "|Escapes the subset of HTML-sensitive characters that may appear in generated MathML text nodes.")
          :code $ quote
            defn escape-html (text)
              if (nil? text) | $ let
                  text1 $ unsafe-coerce
                    .!replace (unsafe-coerce text 'JsObject) |& |&amp;
                    , 'String
                  text2 $ unsafe-coerce
                    .!replace (unsafe-coerce text1 'JsObject) |< |&lt;
                    , 'String
                  text3 $ unsafe-coerce
                    .!replace (unsafe-coerce text2 'JsObject) |> |&gt;
                    , 'String
                unsafe-coerce
                  .!replace (unsafe-coerce text3 'JsObject) "|\"" |&quot;
                  , 'String
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        'function-command? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn function-command? (name)
              or (= name |lim) (= name |sin) (= name |cos) (= name |tan) (= name |sinh) (= name |cosh) (= name |tanh) (= name |ln) (= name |log) (= name |exp) (= name |det) (= name |gcd) (= name |min) (= name |max)
          :examples $ []
          :schema $ :: 'Dynamic
        'greek-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn greek-command (name)
              case-default name nil (|alpha "|α") (|beta "|β") (|gamma "|γ") (|delta "|δ") (|epsilon "|ε") (|varepsilon "|ϵ") (|zeta "|ζ") (|eta "|η") (|theta "|θ") (|vartheta "|ϑ") (|iota "|ι") (|kappa "|κ") (|lambda "|λ") (|mu "|μ") (|nu "|ν") (|xi "|ξ") (|omicron "|ο") (|pi "|π") (|varpi "|ϖ") (|rho "|ρ") (|varrho "|ϱ") (|sigma "|σ") (|varsigma "|ς") (|tau "|τ") (|upsilon "|υ") (|phi "|φ") (|varphi "|ϕ") (|chi "|χ") (|psi "|ψ") (|omega "|ω") (|Gamma "|Γ") (|Delta "|Δ") (|Theta "|Θ") (|Lambda "|Λ") (|Xi "|Ξ") (|Pi "|Π") (|Sigma "|Σ") (|Upsilon "|Υ") (|Phi "|Φ") (|Psi "|Ψ") (|Omega "|Ω")
          :examples $ []
          :schema $ :: 'Dynamic
        'math-command-html $ %{} 'CodeEntry (:doc "|Maps a recognized LaTeX-like command to a MathML snippet. Unsupported commands fall back to identifiers.")
          :code $ quote
            defn math-command-html (name)
              let
                  greek $ greek-command name
                  operator $ operator-command name
                if (some? greek)
                  str |<mi> (escape-html greek) |</mi>
                  if (some? operator)
                    str |<mo> (escape-html operator) |</mo>
                    if (function-command? name)
                      str "|<mi mathvariant=\"normal\">" (escape-html name) |</mi>
                      case-default name
                        str |<mi> (escape-html name) |</mi>
                        |int "|<mo>∫</mo>"
                        |iint "|<mo>∬</mo>"
                        |iiint "|<mo>∭</mo>"
                        |oint "|<mo>∮</mo>"
                        |sum "|<mo>∑</mo>"
                        |prod "|<mo>∏</mo>"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        'math-delimiter-html $ %{} 'CodeEntry (:doc "|Wraps a single delimiter or operator character in a MathML operator node.")
          :code $ quote
            defn math-delimiter-html (cursor)
              str |<mo> (escape-html cursor) |</mo>
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        'math-environment-html $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn math-environment-html (name source)
              if (matrix-environment? name)
                let
                    rows $ split source |\\
                    delimiters $ matrix-environment-delimiters name
                    open-html $ option:unwrap-or (get delimiters 0) |
                    close-html $ option:unwrap-or (get delimiters 1) |
                    table-html $ str |<mtable>
                      join-str (map rows render-math-matrix-row) |
                      , |</mtable>
                  str |<mrow> (or open-html |) table-html (or close-html |) |</mrow>
                str |<mrow><mi>begin</mi><mi> (escape-html name) |</mi></mrow>
          :examples $ []
          :schema $ :: 'Dynamic
        'math-operator-char? $ %{} 'CodeEntry (:doc "|Recognizes punctuation and operator glyphs that should render as MathML operator nodes.")
          :code $ quote
            defn math-operator-char? (cursor)
              or (= cursor |+) (= cursor |-) (= cursor |=) (= cursor "|(") (= cursor "|)") (= cursor |[) (= cursor |]) (= cursor |,) (= cursor |/) (= cursor |:)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String
          :tests $ []
            %{} 'TestEntry (:name |recognizes-plus)
              :code $ quote
                assert= true $ math-operator-char? |+
        'math-operator-command? $ %{} 'CodeEntry (:doc "|Recognizes LaTeX command names that represent operator/relation symbols (arrows, relations) and should render as MathML <mo> nodes rather than <mi> identifiers.")
          :code $ quote
            defn math-operator-command? (name)
              or (= name |pm) (= name |neq) (= name |to) (= name |implies) (= name |iff) (= name |rightarrow) (= name |Rightarrow) (= name |leftarrow) (= name |Leftarrow) (= name |leftrightarrow) (= name |mapsto) (= name |gets) (= name |longleftarrow) (= name |longrightarrow) (= name |uparrow) (= name |downarrow) (= name |longleftrightarrow) (= name |nearrow) (= name |searrow) (= name |nwarrow) (= name |swarrow) (= name |updownarrow) (= name |Longleftarrow) (= name |Longrightarrow) (= name |Uparrow) (= name |Downarrow) (= name |Leftrightarrow) (= name |Longleftrightarrow) (= name |Updownarrow) (= name |longmapsto) (= name |hookrightarrow) (= name |hookleftarrow) (= name |twoheadrightarrow) (= name |twoheadleftarrow) (= name |leftharpoonup) (= name |rightharpoonup) (= name |rightleftharpoonup) (= name |rightleftharpoons) (= name |nleftarrow) (= name |nrightarrow) (= name |nLeftarrow) (= name |nRightarrow) (= name |nleftrightarrow) (= name |nLeftrightarrow)
          :examples $ []
          :schema $ :: 'Dynamic
        'mathml-markup $ %{} 'CodeEntry (:doc "|Converts a math source fragment into a lightweight MathML tree string suitable for browser-native rendering.")
          :code $ quote
            defn mathml-markup (source display?)
              let[] (body rest-line)
                parse-math-row (normalize-math-source source) nil
                str |<math><mrow> body |</mrow></math>
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String 'Dynamic
        'matrix-environment-delimiters $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn matrix-environment-delimiters (name)
              case-default name ([] nil nil)
                |pmatrix $ [] "|<mo>(</mo>" "|<mo>)</mo>"
                |bmatrix $ [] |<mo>[</mo> |<mo>]</mo>
                |Bmatrix $ [] |<mo>{</mo> |<mo>}</mo>
                |vmatrix $ [] |<mo>|</mo> |<mo>|</mo>
                |Vmatrix $ [] "|<mo>‖</mo>" "|<mo>‖</mo>"
                |cases $ [] |<mo>{</mo> nil
          :examples $ []
          :schema $ :: 'Dynamic
        'matrix-environment? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn matrix-environment? (name)
              or (= name |matrix) (= name |pmatrix) (= name |bmatrix) (= name |Bmatrix) (= name |vmatrix) (= name |Vmatrix) (= name |smallmatrix) (= name |aligned) (= name |cases)
          :examples $ []
          :schema $ :: 'Dynamic
        'normalize-math-source $ %{} 'CodeEntry (:doc "|Normalizes multi-line math input into a single trimmed line before tokenization.")
          :code $ quote
            defn normalize-math-source (source)
              -> source (split-lines)
                map $ fn (line) (.trim line)
                join-str |
                .trim
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        'operator-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn operator-command (name)
              case-default name nil (|cdot "|⋅") (|times "|×") (|div "|÷") (|pm "|±") (|mp "|∓") (|wedge "|∧") (|vee "|∨") (|cap "|∩") (|cup "|∪") (|neq "|≠") (|le "|≤") (|leq "|≤") (|ge "|≥") (|geq "|≥") (|approx "|≈") (|equiv "|≡") (|to "|→") (|rightarrow "|→") (|Rightarrow "|⇒") (|leftarrow "|←") (|Leftarrow "|⇐") (|leftrightarrow "|↔") (|mapsto "|↦") (|gets "|←") (|implies "|⇒") (|iff "|⇔") (|longleftarrow "|⟵") (|longrightarrow "|⟶") (|uparrow "|↑") (|downarrow "|↓") (|longleftrightarrow "|⟷") (|nearrow "|↗") (|searrow "|↘") (|nwarrow "|↖") (|swarrow "|↙") (|updownarrow "|↕") (|Longleftarrow "|⟸") (|Longrightarrow "|⟹") (|Uparrow "|⇑") (|Downarrow "|⇓") (|Leftrightarrow "|⇔") (|Longleftrightarrow "|⟺") (|Updownarrow "|⇕") (|longmapsto "|⟼") (|hookrightarrow "|↪") (|hookleftarrow "|↩") (|twoheadrightarrow "|↠") (|twoheadleftarrow "|↞") (|leftharpoonup "|↼") (|rightharpoonup "|⇀") (|rightleftharpoons "|⇌") (|nleftarrow "|↚") (|nrightarrow "|↛") (|nLeftarrow "|⇍") (|nRightarrow "|⇏") (|nleftrightarrow "|↮") (|nLeftrightarrow "|⇎") (|in "|∈") (|notin "|∉") (|subset "|⊂") (|subseteq "|⊆") (|supset "|⊃") (|supseteq "|⊇") (|partial "|∂") (|nabla "|∇") (|infty "|∞") (|propto "|∝") (|perp "|⊥") (|parallel "|∥") (|angle "|∠") (|circ "|∘") (|ast "|∗") (|langle "|⟨") (|rangle "|⟩") (|cong "|≅") (|sim "|∼") (|simeq "|≃") (|mid "|∣") (|vert ||) (|Vert "|‖") (|ldots "|…") (|cdots "|⋯")
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-command-name (line)
              let
                  matched $ .!match line peek-command-name
                if (js-present? matched)
                  let
                      name $ get1 matched
                    [] name $ &str:slice line (count name)
                  [] nil line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-arg (line)
              if (= | line) ([] |<mrow></mrow> line)
                if
                  =
                    option:unwrap-or (first line) |
                    , |{
                  let[] (body rest-line)
                    parse-math-row (&str:slice line 1) |}
                    [] (str |<mrow> body |</mrow>)
                      if (= | rest-line) rest-line $ &str:slice rest-line 1
                  parse-math-atom line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-atom (line)
              if (= | line) ([] || line)
                let
                    cursor $ option:unwrap (first line)
                    left $ &str:slice line 1
                  cond
                      = cursor "| "
                      parse-math-atom left
                    (= cursor |{)
                      let[] (body rest-line) (parse-math-row left |})
                        let
                            next-rest $ if (= | rest-line) rest-line (&str:slice rest-line 1)
                          [] (str |<mrow> body |</mrow>) next-rest
                    (= cursor |\) (parse-math-command left)
                    (js-present? (.!match line peek-number))
                      let
                          matched $ .!match line peek-number
                          content $ get1 matched
                          next-rest $ &str:slice line (count content)
                        []
                          str |<mn> (escape-html content) |</mn>
                          , next-rest
                    (= cursor |') ([] "|<mo>′</mo>" left)
                    (math-operator-char? cursor)
                      [] (math-delimiter-html cursor) left
                    true $ []
                      str |<mi> (escape-html cursor) |</mi>
                      , left
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-command $ %{} 'CodeEntry (:doc "|Parses a backslash-prefixed LaTeX-like command and returns a tuple of MathML html and remaining source.")
          :code $ quote
            defn parse-math-command (line)
              let[] (name rest-line) (parse-command-name line)
                if (some? name)
                  case-default name
                    [] (math-command-html name) rest-line
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
                    |left $ if (= | rest-line) ([] || rest-line)
                      []
                        math-delimiter-html $ option:unwrap-or (first rest-line) |
                        &str:slice rest-line 1
                    |right $ if (= | rest-line) ([] || rest-line)
                      []
                        math-delimiter-html $ option:unwrap-or (first rest-line) |
                        &str:slice rest-line 1
                    |sqrt $ let[] (index-html rest0) (parse-math-root-index rest-line)
                      let[] (content rest1) (parse-math-arg rest0)
                        []
                          if (some? index-html) (str |<mroot> content index-html |</mroot>) (str |<msqrt> content |</msqrt>)
                          , rest1
                  if (= | rest-line) ([] || rest-line)
                    if
                      = |, $ option:unwrap-or (first rest-line) |
                      [] |<mspace></mspace> $ &str:slice rest-line 1
                      []
                        str |<mo>\\</mo><mi>
                          escape-html $ option:unwrap-or (first rest-line) |
                          , |</mi>
                        &str:slice rest-line 1
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-environment $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-environment (line)
              let[] (name rest-line) (parse-math-raw-group line)
                if (some? name)
                  let
                      closing $ str |\end{ name |}
                      end-index $ &str:find-index rest-line closing
                    if (some? end-index)
                      let
                          source $ &str:slice rest-line 0 end-index
                          next-rest $ &str:slice rest-line
                            + end-index $ count closing
                        [] (math-environment-html name source) next-rest
                      [] (math-environment-html name rest-line) |
                  [] |<mi>begin</mi> line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-over-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-over-arg (line mark)
              let[] (content rest-line) (parse-math-arg line)
                [] (str "|<mover accent=\"true\">" content |<mo> mark |</mo></mover>) rest-line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-raw-group $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-raw-group (line)
              if
                or (= | line)
                  not= |{ $ option:unwrap (first line)
                [] nil line
                let
                    end-index $ &str:find-index line |}
                  if (some? end-index)
                    [] (&str:slice line 1 end-index)
                      &str:slice line $ + end-index 1
                    [] nil line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-root-index $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-root-index (line)
              if
                and (not= | line)
                  = |[ $ option:unwrap-or (first line) |
                let[] (body rest-line)
                  parse-math-row (&str:slice line 1) |]
                  [] body $ if (= | rest-line) rest-line (&str:slice rest-line 1)
                [] nil line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-row $ %{} 'CodeEntry (:doc "|Consumes a sequence of math atoms until the source ends or a stop delimiter is reached.")
          :code $ quote
            defn parse-math-row (line stop-char) (parse-math-row-iter line stop-char |)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String 'Dynamic
        'parse-math-row-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-row-iter (line stop-char acc)
              if (= | line) ([] acc line)
                let
                    cursor $ option:unwrap (first line)
                  if
                    and (some? stop-char) (= cursor stop-char)
                    [] acc line
                    let[] (unit-html rest-line) (parse-math-unit line)
                      recur rest-line stop-char $ str acc unit-html
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-script $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-script (base line)
              if (= | line) ([] base line)
                case-default
                  option:unwrap $ first line
                  [] base line
                  |^ $ let[] (sup rest1)
                    parse-math-arg $ &str:slice line 1
                    if
                      and (not= | rest1)
                        =
                          option:unwrap-or (first rest1) |
                          , |_
                      let[] (sub rest2)
                        parse-math-arg $ &str:slice rest1 1
                        [] (str |<msubsup> base sub sup |</msubsup>) rest2
                      [] (str |<msup> base sup |</msup>) rest1
                  |_ $ let[] (sub rest1)
                    parse-math-arg $ &str:slice line 1
                    if
                      and (not= | rest1)
                        =
                          option:unwrap-or (first rest1) |
                          , |^
                      let[] (sup rest2)
                        parse-math-arg $ &str:slice rest1 1
                        [] (str |<msubsup> base sub sup |</msubsup>) rest2
                      [] (str |<msub> base sub |</msub>) rest1
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-styled-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-styled-arg (line variant)
              let[] (content rest-line) (parse-math-arg line)
                [] (str "|<mstyle mathvariant=\"" variant "|\">" content |</mstyle>) rest-line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-text-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-text-arg (line operator?)
              let[] (content rest-line) (parse-math-raw-group line)
                if (some? content)
                  []
                    if operator?
                      str "|<mi mathvariant=\"normal\">" (escape-html content) |</mi>
                      str |<mtext> (escape-html content) |</mtext>
                    , rest-line
                  parse-math-styled-arg line |normal
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-under-arg $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-under-arg (line mark)
              let[] (content rest-line) (parse-math-arg line)
                [] (str "|<munder accentunder=\"true\">" content |<mo> mark |</mo></munder>) rest-line
          :examples $ []
          :schema $ :: 'Dynamic
        'parse-math-unit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-math-unit (line)
              let[] (base rest-line) (parse-math-atom line) (parse-math-script base rest-line)
          :examples $ []
          :schema $ :: 'Dynamic
        'peek-command-name $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-command-name $ new js/RegExp "|^([A-Za-z]+)"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'peek-number $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def peek-number $ new js/RegExp "|^([0-9]+)"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'render-math-matrix-row $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-math-matrix-row (source)
              let
                  cells $ split source |&
                str |<mtr>
                  join-str
                    map cells $ fn (cell)
                      let
                          parsed $ parse-math-row cell nil
                        str |<mtd><mrow>
                          option:unwrap $ first parsed
                          , |</mrow></mtd>
                    , |
                  , |</mtr>
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-md.util.math $ :require
            respo-md.util.core :refer $ get1
