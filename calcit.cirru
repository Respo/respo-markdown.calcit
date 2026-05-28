
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:reload-fn |respo-md.main/reload!) (:version |0.4.13)
    :modules $ [] |respo.calcit/calcit.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
    :smoke-test $ {} (:init-fn |respo-md.test/main!) (:reload-fn |respo-md.test/main!) (:version |0.0.0)
      :modules $ []
  :files $ {}
    |respo-md.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-container (store highlighter)
              let
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                  state $ either (:data states) initial-state
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
                        :value $ :text state
                        :placeholder "|text inline"
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :text (:value e)
                    div ({})
                      comp-md $ :text state
                  =< nil 40
                  div ({}) (comp-md "|Example For using `comp-md-block`:")
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
                          d! cursor $ assoc state :draft (:value e)
                    div
                      {} (:class-name css/flex)
                        :style $ {} (:padding 8)
                      comp-md-block (:draft state)
                        {} (:highlight highlighter) (:class-name |demo)
                  =< nil 200
          :examples $ []
        |initial-state $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def initial-state $ {} (:draft |) (:text |)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md comp-md-block
            respo.core :refer $ defcomp <> div span textarea input a img
    |respo-md.comp.md $ %{} :FileEntry
      :defs $ {}
        |blockquote $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
        |comp-code-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-code-block (indented-lines options)
              let
                  peek $ first indented-lines
                  lines $ if (number? peek) (rest indented-lines) indented-lines
                  indented $ if (number? peek) (first indented-lines) 0
                  indentation $ if indented
                    .join-str (repeat "| " indented) |
                    , |
                  lang $ first lines
                  content $ -> (rest lines)
                    map $ fn (line) (.strip-prefix line indentation)
                    join-str &newline
                  highlight-fn $ either (:highlight options)
                    fn (x & l) x
                  indented? $ &> indented 0
                  code-block $ if (= lang |cirru)
                    memof1-call comp-cirru-snippet content $ {}
                      :class-name $ str-spaced |md-code-block style-code-block (if indented? css/expand)
                    memof1-call comp-snippet content $ {}
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
        |comp-image $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn comp-image (chunk)
              let
                  useful $ &str:slice chunk 2
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  img $ {} (:src url) (:class-name style-image) (:alt content)
          :examples $ []
        |comp-line $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
                      content $ .!trimLeft line
                      space-size $ &- (count line) (count content)
                      spaces $ .!slice line 0 space-size
                    div ({}) (<> spaces style-indent)
                      comp-line $ .!trimLeft line
                (or (starts-with? line "|* ") (starts-with? line "|- "))
                  li
                    {} $ :class-name style-line-list
                    , & $ render-inline (&str:slice line 2)
                (starts-with? line "|#!html ")
                  div $ {} (:class-name |html-container)
                    :innerHTML $ .trim (&str:slice line 7)
                true $ div ({}) & (render-inline line)
          :examples $ []
        |comp-link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |comp-math-block $ %{} :CodeEntry (:doc "|Renders a block-level math fragment as native MathML inside a styled container.")
          :code $ quote
            defcomp comp-math-block (lines)
              div $ {} (:class-name style-math-block)
                :innerHTML $ mathml-markup (join-str lines &newline) true
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :dynamic
        |comp-md $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-md (text ? options)
              div
                {} $ :class-name (get options :class-name)
                , & $ memof1-call render-inline text
          :examples $ []
        |comp-md-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-md-block (text ? options)
              let
                  blocks $ split-block text
                  class-name $ :class-name options
                list->
                  {}
                    :class-name $ if (nil? class-name) |md-block (str-spaced |md-block class-name)
                    :style $ :style options
                  -> blocks $ map-indexed
                    fn (idx block)
                      [] idx $ tag-match block
                        (:text lines) (comp-text-block lines)
                        (:code lines) (comp-code-block lines options)
                        (:math lines) (comp-math-block lines)
                        (:table lines) (comp-table-block lines)
          :examples $ []
        |comp-table-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn comp-table-block (lines)
              let
                  header-line $ first lines
                  body-lines $ let
                      p0 $ get (get lines 1) 0
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
        |comp-text-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-text-block (lines)
              div
                {} $ :class-name (str-spaced |md-p style-paragraph)
                , & $ -> lines
                  map $ fn (line) (memof1-call comp-line line)
          :examples $ []
        |render-inline $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-inline (text)
              -> (split-line text)
                map $ fn (chunk)
                  tag-match chunk
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
        |style-blockquote $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-blockquote $ {}
              |& $ {}
                :border-left $ str "|6px solid " (hsl 0 0 90)
                :margin-left 0
                :padding-left 12
                :color $ hsl 0 0 50
          :examples $ []
        |style-code-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-code-block $ {}
              |& $ {} (:max-width |60vw) (:margin-bottom 8)
          :examples $ []
        |style-default-link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-default-link $ {}
              |& $ {} (:opacity 0.9) (:transition-duration |200ms)
              |&:hover $ {} (:opacity 1) (:transform "|scale(1)")
          :examples $ []
        |style-image $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-image $ {}
              |& $ {} (:max-width 480) (:max-height 320)
                :border $ str "|1px solid " (hsl 0 0 90)
                :border-radius |8px
          :examples $ []
        |style-indent $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-indent $ {}
              |& $ {} (:white-space :pre) (:float :left) (:font-family ui/font-code) (:user-select :none)
          :examples $ []
        |style-inline-code $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-inline-code $ {}
              |& $ {}
                :border $ str "|1px solid " (hsl 0 0 086)
                :border-radius |4px
                :font-size 12
                :padding "|2px 4px"
                :margin "|2px 4px"
          :examples $ []
        |style-inline-math $ %{} :CodeEntry (:doc "|Keeps inline MathML readable inside prose without over-expanding line height.") (:schema :dynamic)
          :code $ quote
            defstyle style-inline-math $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding "|0 3px") (:font-size 15)
                :background-color $ hsl 0 0 97
                :border-radius |4px
          :examples $ []
        |style-line-list $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-math-block $ %{} :CodeEntry (:doc "|Expands block MathML slightly so dense formulas stay readable in the preview pane.") (:schema :dynamic)
          :code $ quote
            defstyle style-math-block $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre-wrap) (:padding 14) (:margin "|10px 0") (:font-size 18)
                :background-color $ hsl 0 0 97
                :border-radius |8px
                :line-height |1.6em
                :overflow :auto
          :examples $ []
        |style-md-table $ %{} :CodeEntry (:doc "|reused some styles from https://pure-css.github.io/tables/") (:schema :dynamic)
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
        |style-paragraph $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-paragraph $ {}
              |& $ {}
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.comp.md $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ create-element
            respo.comp.space :refer $ =<
            respo-md.util.core :refer $ split-block split-line get1
            respo.core :refer $ defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li create-element
            respo.util.list :refer $ map-with-idx
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-cirru-snippet comp-snippet
            memof.once :refer $ memof1-call
            respo-md.util.math :refer $ mathml-markup
    |respo-md.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def dev? true)
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-markdown/) (:title |Markdown) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-markdown)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-md.config)
    |respo-md.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (defatom *store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op)
              let
                  next-store $ tag-match op
                    (:states cursor s) (update-states @*store cursor s)
                    (:hydrate-storage s) s
                    _ $ do (eprintln "|unknown op:" op) @*store
                reset! *store next-store
          :examples $ []
        |highligher $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn highligher (code lang) (js/console.warn "|highligher not ready") (str |<code> code |</code>)
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *store :changes $ fn (store prev) (render-app!)
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= |hidden js/document.visibilityState) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started!"
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site) (format-cirru-edn @*store)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (clear-cache!)
                add-watch *store :changes $ fn (reel prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store highligher) dispatch!
          :examples $ []
        |ssr? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-md.comp.container :refer $ comp-container
            respo-md.schema :as schema
            respo.cursor :refer $ update-states
            respo-md.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    |respo-md.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def store $ {}
              :states $ {}
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-md.schema)
    |respo-md.test $ %{} :FileEntry
      :defs $ {}
        |assert= $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! () (test-escape-html!) (test-normalize-math!) (test-mathml-markup!) (println "|All math tests passed.")
          :examples $ []
        |test-escape-html! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn test-escape-html! ()
              assert= |&amp; $ escape-html |&
              assert= |&lt; $ escape-html |<
              assert= |&gt; $ escape-html |>
              assert= | $ escape-html |
              println "|test-escape-html! done"
          :examples $ []
        |test-mathml-markup! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn test-mathml-markup! ()
              assert= |<math><mrow><mn>42</mn></mrow></math> $ mathml-markup |42 false
              assert= |<math><mrow><mi>x</mi></mrow></math> $ mathml-markup |x false
              assert= |<math><mrow><msup><mi>a</mi><mn>2</mn></msup></mrow></math> $ mathml-markup |a^2 false
              assert= |<math><mrow><mfrac><mrow><mn>1</mn></mrow><mrow><mn>2</mn></mrow></mfrac></mrow></math> $ mathml-markup |\frac{1}{2} false
              println "|test-mathml-markup! done"
          :examples $ []
        |test-normalize-math! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn test-normalize-math! ()
              assert= |a+b $ normalize-math-source "|  a+b  "
              assert= |ab $ normalize-math-source "|  a \n b  "
              println "|test-normalize-math! done"
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.test $ :require
            respo-md.util.math :refer $ escape-html normalize-math-source mathml-markup
    |respo-md.util.core $ %{} :FileEntry
      :defs $ {}
        |get0 $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn get0 (xs)
              if (nil? xs) nil $ .-0 xs
          :examples $ []
        |get1 $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn get1 (xs)
              if (nil? xs) nil $ .-1 xs
          :examples $ []
        |handle-inline-math $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn handle-inline-math (line)
              let
                  slash-matched $ .!match line peek-inline-math
                  dollar-end-idx $ if (starts-with? line |$)
                    .!indexOf (&str:slice line 1) |$
                    , -1
                if (some? slash-matched)
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
        |handle-inline-star $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn handle-inline-star (left)
              if (ignore-inline-star? left) ([] :literal nil nil)
                if
                  = |* $ first left
                  let
                      next-left $ &str:slice left 1
                      matched $ .!match next-left peek-emphasis
                    if (some? matched)
                      let
                          emphasis $ get1 matched
                          rest-line $ &str:slice next-left
                            + 2 $ count emphasis
                        [] :emphasis emphasis rest-line
                      [] :literal nil nil
                  let
                      matched $ .!match left peek-italic
                    if (some? matched)
                      let
                          italic $ get1 matched
                          rest-line $ &str:slice left
                            + 1 $ count italic
                        [] :italic italic rest-line
                      [] :literal nil nil
          :examples $ []
        |ignore-inline-star? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn ignore-inline-star? (left)
              if (= left |) true $ = (first left) "| "
          :examples $ []
        |math-block-close-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |math-block-close-line? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn math-block-close-line? (line)
              let
                  trimmed $ .trim line
                or (= trimmed |$$)
                  some? $ .!match trimmed pattern-math-block-close
          :examples $ []
        |math-block-open-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn math-block-open-content (line)
              let
                  trimmed $ .trim line
                if
                  &> (count trimmed) 2
                  .trim $ &str:slice trimmed 2
                  , |
          :examples $ []
        |math-block-open? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn math-block-open? (line)
              let
                  trimmed $ .trim line
                or (= trimmed |$$)
                  some? $ .!match trimmed pattern-math-block-open
          :examples $ []
        |math-block-single-line-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
                  if (some? matched)
                    .trim $ get1 matched
                    , |
          :examples $ []
        |math-block-single-line? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn math-block-single-line? (line)
              let
                  trimmed $ .trim line
                or
                  and (starts-with? trimmed |$$) (ends-with? trimmed |$$)
                    &> (count trimmed) 4
                  some? $ .!match trimmed peek-math-block-single-line
          :examples $ []
        |pattern-indented-code $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def pattern-indented-code $ &raw-code "|/^(\\s+)```/"
          :examples $ []
        |pattern-math-block-close $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def pattern-math-block-close $ new js/RegExp |\\\]$
          :examples $ []
        |pattern-math-block-open $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def pattern-math-block-open $ new js/RegExp |^\\\[
          :examples $ []
        |peek-emphasis $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-emphasis $ new js/RegExp "|^(.+)\\*\\*"
          :examples $ []
        |peek-image $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-image $ new js/RegExp "|^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" |g
          :examples $ []
        |peek-inline-math $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-inline-math $ new js/RegExp "|^\\\\\\((.+?)\\\\\\)"
          :examples $ []
        |peek-italic $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-italic $ new js/RegExp "|^([^*/]+)\\*"
          :examples $ []
        |peek-link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-link $ new js/RegExp "|^\\[[^\\]]+\\]\\([^\\)]+\\)"
          :examples $ []
        |peek-math-block-single-line $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-math-block-single-line $ new js/RegExp "|^\\\\\\[(.*)\\\\\\]$"
          :examples $ []
        |split-block $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn split-block (text)
              split-block-iter (split-lines text) ([]) ([]) :empty
          :examples $ []
        |split-block-iter $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn split-block-iter (lines acc buffer mode)
              if (empty? lines)
                if (empty? buffer) acc $ conj acc (:: mode buffer)
                let
                    cursor $ first lines
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
                              count $ .-1 raw
                              &str:slice cursor $ .-length (.-0 raw)
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
                              count $ .-1 raw
                              &str:slice cursor $ .-length (.-0 raw)
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
        |split-line $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn split-line (line)
              split-line-iter ([]) line | :text
          :examples $ []
        |split-line-iter $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn split-line-iter (acc line buffer mode)
              if (= | line)
                if (= | buffer) acc $ conj acc (:: mode buffer)
                let
                    cursor $ first line
                    left $ &str:slice line 1
                  case-default mode
                    raise $ str "|Unknown mode:" mode
                    :text $ if
                      or
                        some? $ .!match line peek-inline-math
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
                                :: :url $ first pieces
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
        |split-table-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn split-table-content (cursor)
              -> cursor
                .slice 1 $ dec (count cursor)
                .split ||
                .map $ fn (x) (.trim x)
          :examples $ []
        |table-line? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn table-line? (cursor)
              and (starts-with? cursor ||) (ends-with? cursor ||)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.util.core $ :require
    |respo-md.util.math $ %{} :FileEntry
      :defs $ {}
        |escape-html $ %{} :CodeEntry (:doc "|Escapes the subset of HTML-sensitive characters that may appear in generated MathML text nodes.")
          :code $ quote
            defn escape-html (text)
              if (nil? text) | $ let
                  text1 $ .!replace text |& |&amp;
                  text2 $ .!replace text1 |< |&lt;
                  text3 $ .!replace text2 |> |&gt;
                .!replace text3 "|\"" |&quot;
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string
        |function-command? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn function-command? (name)
              or (= name |lim) (= name |sin) (= name |cos) (= name |ln)
          :examples $ []
        |greek-command $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn greek-command (name)
              case-default name nil (|Delta "|Δ") (|infty "|∞") (|mu "|μ") (|neq "|≠") (|pi "|π") (|pm "|±") (|sigma "|σ") (|theta "|θ") (|to "|→")
          :examples $ []
        |math-command-html $ %{} :CodeEntry (:doc "|Maps a recognized LaTeX-like command to a MathML snippet. Unsupported commands fall back to identifiers.")
          :code $ quote
            defn math-command-html (name)
              let
                  greek $ greek-command name
                if (some? greek)
                  if
                    or (= name |pm) (= name |neq) (= name |to)
                    str |<mo> (escape-html greek) |</mo>
                    str |<mi> (escape-html greek) |</mi>
                  if (function-command? name)
                    str |<mi> (escape-html name) |</mi>
                    case-default name
                      str |<mi> (escape-html name) |</mi>
                      |int "|<mo>∫</mo>"
                      |sum "|<mo>∑</mo>"
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string
        |math-delimiter-html $ %{} :CodeEntry (:doc "|Wraps a single delimiter or operator character in a MathML operator node.")
          :code $ quote
            defn math-delimiter-html (cursor)
              str |<mo> (escape-html cursor) |</mo>
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string
        |math-operator-char? $ %{} :CodeEntry (:doc "|Recognizes punctuation and operator glyphs that should render as MathML operator nodes.")
          :code $ quote
            defn math-operator-char? (cursor)
              or (= cursor |+) (= cursor |-) (= cursor |=) (= cursor "|(") (= cursor "|)") (= cursor |[) (= cursor |]) (= cursor |,) (= cursor |/) (= cursor |:)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :string
        |mathml-markup $ %{} :CodeEntry (:doc "|Converts a math source fragment into a lightweight MathML tree string suitable for browser-native rendering.")
          :code $ quote
            defn mathml-markup (source display?)
              let[] (body rest-line)
                parse-math-row (normalize-math-source source) nil
                str |<math><mrow> body |</mrow></math>
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string :dynamic
        |normalize-math-source $ %{} :CodeEntry (:doc "|Normalizes multi-line math input into a single trimmed line before tokenization.")
          :code $ quote
            defn normalize-math-source (source)
              -> source (split-lines)
                map $ fn (line) (.trim line)
                join-str |
                .trim
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string
        |parse-command-name $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-command-name (line)
              let
                  matched $ .!match line peek-command-name
                if (some? matched)
                  let
                      name $ get1 matched
                    [] name $ &str:slice line (count name)
                  [] nil line
          :examples $ []
        |parse-math-arg $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-math-arg (line)
              if (= | line) ([] |<mrow></mrow> line)
                if
                  = (first line) |{
                  let[] (body rest-line)
                    parse-math-row (&str:slice line 1) |}
                    [] (str |<mrow> body |</mrow>)
                      if (= | rest-line) rest-line $ &str:slice rest-line 1
                  parse-math-atom line
          :examples $ []
        |parse-math-atom $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-math-atom (line)
              if (= | line) ([] || line)
                let
                    cursor $ first line
                    left $ &str:slice line 1
                  cond
                      = cursor |
                      parse-math-atom left
                    (= cursor |{)
                      let[] (body rest-line) (parse-math-row left |})
                        let
                            next-rest $ if (= | rest-line) rest-line (&str:slice rest-line 1)
                          [] (str |<mrow> body |</mrow>) next-rest
                    (= cursor |\) (parse-math-command left)
                    (some? (.!match line peek-number))
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
        |parse-math-command $ %{} :CodeEntry (:doc "|Parses a backslash-prefixed LaTeX-like command and returns a tuple of MathML html and remaining source.")
          :code $ quote
            defn parse-math-command (line)
              let[] (name rest-line) (parse-command-name line)
                if (some? name)
                  case-default name
                    [] (math-command-html name) rest-line
                    |binom $ let[] (upper rest1) (parse-math-arg rest-line)
                      let[] (lower rest2) (parse-math-arg rest1)
                        []
                          str |<mrow> (math-delimiter-html "|(") upper (math-delimiter-html |,) lower (math-delimiter-html "|)") |</mrow>
                          , rest2
                    |frac $ let[] (numerator rest1) (parse-math-arg rest-line)
                      let[] (denominator rest2) (parse-math-arg rest1)
                        [] (str |<mfrac> numerator denominator |</mfrac>) rest2
                    |left $ if (= | rest-line) ([] || rest-line)
                      []
                        math-delimiter-html $ first rest-line
                        &str:slice rest-line 1
                    |right $ if (= | rest-line) ([] || rest-line)
                      []
                        math-delimiter-html $ first rest-line
                        &str:slice rest-line 1
                    |sqrt $ let[] (content rest1) (parse-math-arg rest-line)
                      [] (str |<msqrt> content |</msqrt>) rest1
                  if (= | rest-line) ([] || rest-line)
                    if
                      = |, $ first rest-line
                      [] |<mspace></mspace> $ &str:slice rest-line 1
                      []
                        str |<mo>\\</mo><mi>
                          escape-html $ first rest-line
                          , |</mi>
                        &str:slice rest-line 1
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :string
        |parse-math-row $ %{} :CodeEntry (:doc "|Consumes a sequence of math atoms until the source ends or a stop delimiter is reached.")
          :code $ quote
            defn parse-math-row (line stop-char) (parse-math-row-iter line stop-char |)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :string :dynamic
        |parse-math-row-iter $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-math-row-iter (line stop-char acc)
              if (= | line) ([] acc line)
                let
                    cursor $ first line
                  if
                    and (some? stop-char) (= cursor stop-char)
                    [] acc line
                    let[] (unit-html rest-line) (parse-math-unit line)
                      recur rest-line stop-char $ str acc unit-html
          :examples $ []
        |parse-math-script $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-math-script (base line)
              if (= | line) ([] base line)
                case-default (first line) ([] base line)
                  |^ $ let[] (sup rest1)
                    parse-math-arg $ &str:slice line 1
                    if
                      and (not= | rest1)
                        = (first rest1) |_
                      let[] (sub rest2)
                        parse-math-arg $ &str:slice rest1 1
                        [] (str |<msubsup> base sub sup |</msubsup>) rest2
                      [] (str |<msup> base sup |</msup>) rest1
                  |_ $ let[] (sub rest1)
                    parse-math-arg $ &str:slice line 1
                    if
                      and (not= | rest1)
                        = (first rest1) |^
                      let[] (sup rest2)
                        parse-math-arg $ &str:slice rest1 1
                        [] (str |<msubsup> base sub sup |</msubsup>) rest2
                      [] (str |<msub> base sub |</msub>) rest1
          :examples $ []
        |parse-math-unit $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn parse-math-unit (line)
              let[] (base rest-line) (parse-math-atom line) (parse-math-script base rest-line)
          :examples $ []
        |peek-command-name $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-command-name $ new js/RegExp "|^([A-Za-z]+)"
          :examples $ []
        |peek-number $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-number $ new js/RegExp "|^([0-9]+)"
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-md.util.math $ :require
            respo-md.util.core :refer $ get1
