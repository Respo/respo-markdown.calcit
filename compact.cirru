
{} (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:reload-fn |respo-md.main/reload!) (:version |0.4.0-a2)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :files $ {}
    |respo-md.comp.container $ {}
      :defs $ {}
        |comp-container $ %{} :CodeEntry
          :code $ quote
            defcomp comp-container (store highlighter)
              let
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                  state $ either (:data states) initial-state
                div
                  {} $ :style
                    merge ui/global $ {} (:width |80%) (:margin "|0 auto")
                  div ({})
                    a
                      {} $ :href |https://github.com/Respo/respo-markdown
                      <> |respo-markdown
                  div ({})
                    comp-md-block "|Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```clojure\n(require '[respo-md.comp.md :refer [comp-md comp-md-block]]\n\n(comp-md \"content\")\n\n(comp-md-block \"content\\nnew line\" {})\n```\n" $ {}
                  div
                    {} $ :style ({})
                    div ({}) (comp-md "|This is an example for using `comp-md`:")
                    div ({})
                      input $ {}
                        :style $ merge ui/input
                          {} $ :width |100%
                        :value $ :text state
                        :placeholder "|text inline"
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :text (:value e)
                    div ({})
                      comp-md $ :text state
                  =< nil 40
                  div
                    {} $ :style ({})
                    div ({}) (comp-md "|Example For using `comp-md-block`:")
                    div ({})
                      textarea $ {} (:placeholder "|multi-line content")
                        :value $ :draft state
                        :style $ merge ui/textarea
                          {} (:height 240) (:width |100%)
                        :on $ {}
                          :input $ fn (e d!)
                            ; println |Editing: state $ :value e
                            d! cursor $ assoc state :draft (:value e)
                    div
                      {} $ :style
                        merge ui/flex $ {} (:padding 8)
                      comp-md-block (:draft state)
                        {} (:highlight highlighter) (:css "|.md-p code {\n  background-color: #edf;\n  padding: 0 8px;\n}") (:class-name |demo)
                  =< nil 200
          :doc |
        |initial-state $ %{} :CodeEntry
          :code $ quote
            def initial-state $ {} (:draft |) (:text |)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-md.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md comp-md-block
            respo.core :refer $ defcomp <> div span textarea input a
        :doc |
    |respo-md.comp.md $ {}
      :defs $ {}
        |blockquote $ %{} :CodeEntry
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
          :doc |
        |comp-code-block $ %{} :CodeEntry
          :code $ quote
            defcomp comp-code-block (lines options)
              let
                  lang $ first lines
                  content $ join-str (rest lines) &newline
                  highlight-fn $ :highlight options
                pre
                  {} $ :class-name |md-code-block
                  code $ if
                    and
                      not $ blank? lang
                      fn? highlight-fn
                    {} $ :innerHTML (highlight-fn content lang)
                    {} $ :inner-text content
          :doc |
        |comp-image $ %{} :CodeEntry
          :code $ quote
            defn comp-image (chunk)
              let
                  useful $ &str:slice chunk 2
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  img $ {} (:src url) (:alt content)
          :doc |
        |comp-line $ %{} :CodeEntry
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
                  blockquote ({}) & $ render-inline (&str:slice line 2)
                (starts-with? line "|* ")
                  li ({}) & $ render-inline (&str:slice line 2)
                (starts-with? line "|- ")
                  li ({}) & $ render-inline (&str:slice line 2)
                (starts-with? line "|#!html ")
                  div $ {} (:class-name "\"html-container")
                    :innerHTML $ .trim (&str:slice line 7)
                true $ div ({}) & (render-inline line)
          :doc |
        |comp-link $ %{} :CodeEntry
          :code $ quote
            defn comp-link (chunk)
              let
                  useful $ &str:slice chunk 1
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  if
                    and (starts-with? content "|`") (ends-with? content "|`")
                    a
                      {} (:href url) (:target |_blank)
                      code $ {}
                        :inner-text $ &str:slice content 1
                          dec $ count content
                    a $ {} (:href url) (:inner-text content) (:target |_blank)
          :doc |
        |comp-md $ %{} :CodeEntry
          :code $ quote
            defcomp comp-md (text)
              div ({}) & $ render-inline text
          :doc |
        |comp-md-block $ %{} :CodeEntry
          :code $ quote
            defcomp comp-md-block (text options)
              let
                  blocks $ split-block text
                  css $ :css options
                  class-name $ :class-name options
                div
                  {}
                    :class-name $ if (nil? class-name) |md-block (str "|md-block " class-name)
                    :style $ :style options
                  if (some? css)
                    style $ {} (:inner-text css) (:scoped true)
                  , & $ -> blocks
                    map $ fn (block)
                      let[] (mode lines) block
                        <> $ pr-str mode
                        case-default mode
                          <> $ str "|Unknown content: " mode
                          :text $ comp-text-block lines
                          :code $ comp-code-block lines options
          :doc |
        |comp-text-block $ %{} :CodeEntry
          :code $ quote
            defcomp comp-text-block (lines)
              div
                {} $ :class-name |md-p
                , & $ -> lines
                  map $ fn (line) (comp-line line)
          :doc |
        |render-inline $ %{} :CodeEntry
          :code $ quote
            defn render-inline (text)
              -> (split-line text)
                map $ fn (chunk)
                  let[] (mode content) chunk $ case-default mode
                    <> (str |Unknown: content) nil
                    :code $ code ({}) (<> content nil)
                    :url $ a
                      {} (:href content) (:inner-text content) (:target |_blank)
                    :link $ comp-link content
                    :image $ comp-image content
                    :text $ <> content nil
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-md.comp.md $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ create-element
            respo.comp.space :refer $ =<
            respo-md.util.core :refer $ split-block split-line
            respo.core :refer $ defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li
            respo.util.list :refer $ map-with-idx
        :doc |
    |respo-md.config $ {}
      :defs $ {}
        |dev? $ %{} :CodeEntry
          :code $ quote (def dev? true)
          :doc |
        |site $ %{} :CodeEntry
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/respo-markdown/") (:title "\"Markdown") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-markdown")
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote (ns respo-md.config)
        :doc |
    |respo-md.main $ {}
      :defs $ {}
        |*store $ %{} :CodeEntry
          :code $ quote (defatom *store schema/store)
          :doc |
        |dispatch! $ %{} :CodeEntry
          :code $ quote
            defn dispatch! (op)
              let
                  next-store $ tag-match op
                      :states cursor s
                      update-states @*store cursor s
                    _ $ do (eprintln "\"unknown op:" op) @*store
                reset! *store next-store
          :doc |
        |highligher $ %{} :CodeEntry
          :code $ quote
            defn highligher (code lang) (js/console.warn "\"highligher not ready") (str |<code> code |</code>)
          :doc |
        |main! $ %{} :CodeEntry
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *store :changes $ fn (store prev) (render-app!)
              println "|App started!"
          :doc |
        |mount-target $ %{} :CodeEntry
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :doc |
        |reload! $ %{} :CodeEntry
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (clear-cache!)
                add-watch *store :changes $ fn (reel prev) (render-app!)
                render-app!
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
          :doc |
        |render-app! $ %{} :CodeEntry
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store highligher) dispatch!
          :doc |
        |ssr? $ %{} :CodeEntry
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-md.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-md.comp.container :refer $ comp-container
            respo-md.schema :as schema
            respo.cursor :refer $ update-states
            respo-md.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
        :doc |
    |respo-md.schema $ {}
      :defs $ {}
        |store $ %{} :CodeEntry
          :code $ quote
            def store $ {}
              :states $ {}
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote (ns respo-md.schema)
        :doc |
    |respo-md.util.core $ {}
      :defs $ {}
        |get0 $ %{} :CodeEntry
          :code $ quote
            defn get0 (xs)
              if (nil? xs) nil $ .-0 xs
          :doc |
        |split-block $ %{} :CodeEntry
          :code $ quote
            defn split-block (text)
              split-block-iter (split-lines text) ([]) ([]) :empty
          :doc |
        |split-block-iter $ %{} :CodeEntry
          :code $ quote
            defn split-block-iter (lines acc buffer mode)
              if (empty? lines)
                if (empty? buffer) acc $ conj acc ([] mode buffer)
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
                      true $ recur left acc ([] cursor) :text
                    :text $ cond
                        = cursor |
                        recur left
                          conj acc $ [] :text buffer
                          []
                          , :empty
                      (starts-with? cursor "|```")
                        recur left
                          conj acc $ [] :text buffer
                          [] $ &str:slice cursor 3
                          , :code
                      true $ recur left acc (conj buffer cursor) :text
                    :code $ if (starts-with? cursor "|```")
                      recur left
                        conj acc $ [] mode buffer
                        []
                        , :empty
                      recur left acc (conj buffer cursor) :code
          :doc |
        |split-line $ %{} :CodeEntry
          :code $ quote
            defn split-line (line)
              split-line-iter ([]) line | :text
          :doc |
        |split-line-iter $ %{} :CodeEntry
          :code $ quote
            defn split-line-iter (acc line buffer mode)
              if (= | line)
                if (= | buffer) acc $ conj acc ([] mode buffer)
                let
                    cursor $ first line
                    left $ &str:slice line 1
                  case-default mode
                    raise $ str "|Unknown mode:" mode
                    :text $ case-default cursor
                      recur acc left (str buffer cursor) :text
                      "|`" $ recur
                        if (some? buffer)
                          conj acc $ [] :text buffer
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
                              if (= | buffer) acc $ conj acc ([] :text buffer)
                              [] :url $ first pieces
                            str "| " $ join-str (rest pieces) "| "
                            , | :text
                        recur acc left (str buffer |h) :text
                      |[ $ let
                          guess $ get0
                            .!match line $ new js/RegExp "\"^\\[[^\\]]+\\]\\([^\\)]+\\)" "\"g"
                        if (some? guess)
                          recur
                            conj
                              if (= | buffer) acc $ conj acc ([] :text buffer)
                              [] :link guess
                            .!replace line guess |
                            , | :text
                          recur acc left (str buffer |[) :text
                      |! $ let
                          guess $ get0
                            .!match line $ new js/RegExp "\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" "\"g"
                        if (some? guess)
                          recur
                            conj
                              if (= | buffer) acc $ conj acc ([] :text buffer)
                              [] :image guess
                            .replace line guess |
                            , | :text
                          recur acc left (str buffer |!) :text
                    :code $ if (= cursor "|`")
                      recur
                        conj acc $ [] :code buffer
                        , left | :text
                      recur acc left (str buffer cursor) :code
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-md.util.core $ :require
        :doc |
