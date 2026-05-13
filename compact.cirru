
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:reload-fn |respo-md.main/reload!) (:version |0.4.11)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
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
            respo-md.util.core :refer $ split-block split-line
            respo.core :refer $ defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li create-element
            respo.util.list :refer $ map-with-idx
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-cirru-snippet comp-snippet
            memof.once :refer $ memof1-call
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
        |pattern-indented-code $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def pattern-indented-code $ &raw-code "|/^(\\s+)```/"
          :examples $ []
        |peek-emphasis $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-emphasis $ new js/RegExp "|^(.+)\\*\\*"
          :examples $ []
        |peek-image $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-image $ new js/RegExp "|^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" |g
          :examples $ []
        |peek-italic $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-italic $ new js/RegExp "|^([^*/]+)\\*"
          :examples $ []
        |peek-link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def peek-link $ new js/RegExp "|^\\[[^\\]]+\\]\\([^\\)]+\\)"
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
                    :text $ case-default cursor
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
