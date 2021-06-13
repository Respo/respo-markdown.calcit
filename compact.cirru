
{} (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:reload-fn |respo-md.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
    :version |0.3.4
  :files $ {}
    |respo-md.comp.container $ {}
      :ns $ quote
        ns respo-md.comp.container $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo-md.comp.md :refer $ [] comp-md comp-md-block
          [] respo.core :refer $ [] defcomp <> div span textarea input a
      :defs $ {}
        |comp-container $ quote
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
        |initial-state $ quote
          def initial-state $ {} (:draft |) (:text |)
      :proc $ quote ()
    |respo-md.comp.md $ {}
      :ns $ quote
        ns respo-md.comp.md $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] create-element
          [] respo.comp.space :refer $ [] =<
          [] respo-md.util.core :refer $ [] split-block split-line
          [] respo.core :refer $ [] defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li
          [] respo.util.list :refer $ [] map-with-idx
      :defs $ {}
        |comp-md-block $ quote
          defcomp comp-md-block (text options)
            let
                blocks $ split-block text
                css $ :css options
                class-name $ :class-name options
              div
                {}
                  :class-name $ if (nil? class-name) |md-block (str "|md-block " class-name)
                  :style $ :style options
                , & $ let
                    css $ :css options
                    p-elements $ -> blocks
                      map $ fn (block)
                        let[] (mode lines) block
                          <> $ pr-str mode
                          case mode
                            :text $ comp-text-block lines
                            :code $ comp-code-block lines options
                            <> "|Unknown content."
                  if (nil? css) p-elements $ prepend p-elements
                    style $ {} (:inner-text css) (:scoped true)
        |comp-image $ quote
          defn comp-image (chunk)
            let
                useful $ substr chunk 2
                  - (count chunk) 1
              let[] (content url) (split useful "|](")
                img $ {} (:src url) (:alt content)
        |comp-text-block $ quote
          defcomp comp-text-block (lines)
            div
              {} $ :class-name |md-p
              , & $ ->
                map-with-idx
                  fn (line) (comp-line line)
                  , lines
                map last
        |comp-line $ quote
          defcomp comp-line (line)
            cond
                starts-with? line "|# "
                h1 ({}) & $ map
                  render-inline $ substr line 2
                  , last
              (starts-with? line "|## ")
                h2 ({}) & $ map
                  render-inline $ substr line 3
                  , last
              (starts-with? line "|### ")
                h3 ({}) & $ map
                  render-inline $ substr line 4
                  , last
              (starts-with? line "|#### ")
                h4 ({}) & $ map
                  render-inline $ substr line 5
                  , last
              (starts-with? line "|> ")
                blockquote ({}) & $ map
                  render-inline $ substr line 2
                  , last
              (starts-with? line "|* ")
                li ({}) & $ map
                  render-inline $ substr line 2
                  , last
              true $ div ({}) &
                map (render-inline line) last
        |comp-md $ quote
          defcomp comp-md (text)
            div ({}) & $ map (render-inline text) last
        |comp-link $ quote
          defn comp-link (chunk)
            let
                useful $ substr chunk 1
                  - (count chunk) 1
              let[] (content url) (split useful "|](")
                if
                  and (starts-with? content "|`") (ends-with? content "|`")
                  a
                    {} (:href url) (:target |_blank)
                    code $ {}
                      :inner-text $ substr content 1
                        dec $ count content
                  a $ {} (:href url) (:inner-text content) (:target |_blank)
        |blockquote $ quote
          defn blockquote (props & children) (create-element :blockquote props & children)
        |render-inline $ quote
          defn render-inline (text)
            -> (split-line text)
              map-indexed $ fn (idx chunk)
                [] idx $ let[] (mode content) chunk
                  case mode
                    :code $ code ({}) (<> content nil)
                    :url $ a
                      {} (:href content) (:inner-text content) (:target |_blank)
                    :link $ comp-link content
                    :image $ comp-image content
                    :text $ <> content nil
                    mode $ <> (str |Unknown: content) nil
        |comp-code-block $ quote
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
      :proc $ quote ()
    |respo-md.main $ {}
      :ns $ quote
        ns respo-md.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] respo-md.comp.container :refer $ [] comp-container
          [] cljs.reader :refer $ [] read-string
          [] respo-md.schema :as schema
          [] respo.cursor :refer $ [] update-states
          [] respo-md.config :as config
      :defs $ {}
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            let
                next-store $ if (= op :states) (update-states @*store op-data) @*store
              reset! *store next-store
        |highligher $ quote
          defn highligher (code lang) (js/console.warn "\"highligher not ready") (str |<code> code |</code>)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            println "|App started!"
        |mount-target $ quote
          def mount-target $ js/document.querySelector |.app
        |reload! $ quote
          defn reload! () (clear-cache!) (render-app! render!) (println "|Code update.")
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*store highligher) dispatch!
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
      :proc $ quote ()
    |respo-md.schema $ {}
      :ns $ quote (ns respo-md.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
      :proc $ quote ()
    |respo-md.util.core $ {}
      :ns $ quote
        ns respo-md.util.core $ :require
      :defs $ {}
        |split-block $ quote
          defn split-block (text)
            split-block-iter (split-lines text) ([]) ([]) :empty
        |split-line $ quote
          defn split-line (line)
            split-line-iter ([]) line | :text
        |split-block-iter $ quote
          defn split-block-iter (lines acc buffer mode)
            if (empty? lines)
              if (empty? buffer) acc $ conj acc ([] mode buffer)
              let
                  cursor $ first lines
                  left $ rest lines
                case mode
                  :empty $ cond
                      = cursor |
                      recur left acc ([]) :empty
                    (starts-with? cursor "|```")
                      recur left acc
                        [] $ substr cursor 3
                        , :code
                    :else $ recur left acc ([] cursor) :text
                  :text $ cond
                      = cursor |
                      recur left
                        conj acc $ [] :text buffer
                        []
                        , :empty
                    (starts-with? cursor "|```")
                      recur left
                        conj acc $ [] :text buffer
                        [] $ substr cursor 3
                        , :code
                    :else $ recur left acc (conj buffer cursor) :text
                  :code $ if (starts-with? cursor "|```")
                    recur left
                      conj acc $ [] mode buffer
                      []
                      , :empty
                    recur left acc (conj buffer cursor) :code
                  mode $ raise (str "|Strange splitting mode: " mode)
        |split-line-iter $ quote
          defn split-line-iter (acc line buffer mode)
            if (= | line)
              if (= | buffer) acc $ conj acc ([] mode buffer)
              let
                  cursor $ first line
                  left $ substr line 1
                case mode
                  :text $ case cursor
                    "|`" $ recur
                      if (some? buffer)
                        conj acc $ [] :text buffer
                        , acc
                      , left | :code
                    |h $ if
                      or
                        = |http:// $ substr line 0 7
                        = |https:// $ substr line 0 8
                      let
                          pieces $ split line "| "
                        recur
                          conj
                            if (= | buffer) acc $ conj acc ([] :text buffer)
                            [] :url $ first pieces
                          str "| " $ join "| " (rest pieces)
                          , | :text
                      recur acc left (str buffer |h) :text
                    |[ $ let
                        guess $ first (re-find-all line "\"^\\[[^\\]]+\\]\\([^\\)]+\\)")
                      if (some? guess)
                        recur
                          conj
                            if (= | buffer) acc $ conj acc ([] :text buffer)
                            [] :link guess
                          .replace line guess |
                          , | :text
                        recur acc left (str buffer |[) :text
                    |! $ let
                        guess $ first (re-find-all line "\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)")
                      if (some? guess)
                        recur
                          conj
                            if (= | buffer) acc $ conj acc ([] :text buffer)
                            [] :image guess
                          .replace line guess |
                          , | :text
                        recur acc left (str buffer |!) :text
                    cursor $ recur acc left (str buffer cursor) :text
                  :code $ if (= cursor "|`")
                    recur
                      conj acc $ [] :code buffer
                      , left | :text
                    recur acc left (str buffer cursor) :code
                  mode $ raise (str "|Unknown mode:" mode)
      :proc $ quote ()
    |respo-md.config $ {}
      :ns $ quote (ns respo-md.config)
      :defs $ {}
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/respo-markdown/") (:title "\"Markdown") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-markdown")
      :proc $ quote ()
