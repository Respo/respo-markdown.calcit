
{} (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:reload-fn |respo-md.main/reload!) (:version |0.4.1)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :files $ {}
    |respo-md.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store highlighter)
              let
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                  state $ either (:data states) initial-state
                div
                  {} (:class-name css/global)
                    :style $ {} (:width |80%) (:margin "|0 auto")
                  div ({})
                    a
                      {} $ :href |https://github.com/Respo/respo-markdown
                      <> |respo-markdown
                  div ({})
                    comp-md-block "|Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```cirru\n:require\n  respo-md.comp.md :refer $ comp-md comp-md-block\n\ncomp-md \"|content\"\n\ncomp-md-block \"|content\\nnew line\" $ {}\n```\n" $ {}
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
                  div
                    {} $ :style ({})
                    div ({}) (comp-md "|Example For using `comp-md-block`:")
                    div ({})
                      textarea $ {} (:placeholder "|multi-line content")
                        :value $ :draft state
                        :class-name css/textarea
                        :style $ {} (:height 240) (:width |100%)
                        :on-input $ fn (e d!)
                          ; println |Editing: state $ :value e
                          d! cursor $ assoc state :draft (:value e)
                    div
                      {} (:class-name css/flex)
                        :style $ {} (:padding 8)
                      comp-md-block (:draft state)
                        {} (:highlight highlighter) (:class-name |demo)
                  =< nil 200
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:draft |) (:text |)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-md.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md comp-md-block
            respo.core :refer $ defcomp <> div span textarea input a
    |respo-md.comp.md $ %{} :FileEntry
      :defs $ {}
        |blockquote $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
        |comp-code-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-code-block (lines options)
              let
                  lang $ first lines
                  content $ join-str (rest lines) &newline
                  highlight-fn $ either (:highlight options)
                    fn (x & l) x
                comp-snippet
                  if
                    and
                      not $ blank? lang
                      fn? highlight-fn
                    highlight-fn content lang
                    , content
                  {} $ :class-name style-code-block
        |comp-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-image (chunk)
              let
                  useful $ &str:slice chunk 2
                    - (count chunk) 1
                let[] (content url) (split useful "|](")
                  img $ {} (:src url) (:class-name style-image) (:alt content)
        |comp-line $ %{} :CodeEntry (:doc |)
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
        |comp-link $ %{} :CodeEntry (:doc |)
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
        |comp-md $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-md (text)
              div ({}) & $ render-inline text
        |comp-md-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-md-block (text options)
              let
                  blocks $ split-block text
                  class-name $ :class-name options
                div
                  {}
                    :class-name $ if (nil? class-name) |md-block (str-spaced |md-block class-name)
                    :style $ :style options
                  , & $ -> blocks
                    map $ fn (block)
                      tag-match block
                          :text lines
                          comp-text-block lines
                        (:code lines) (comp-code-block lines options)
        |comp-text-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-text-block (lines)
              div
                {} $ :class-name (str-spaced |md-p style-paragraph)
                , & $ -> lines
                  map $ fn (line) (comp-line line)
        |render-inline $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-inline (text)
              -> (split-line text)
                map $ fn (chunk)
                  tag-match chunk
                      :code content
                      code
                        {} $ :class-name style-inline-code
                        <> content nil
                    (:url content)
                      a $ {} (:href content) (:inner-text content) (:target |_blank)
                    (:link content) (comp-link content)
                    (:image content) (comp-image content)
                    (:text content) (<> content nil)
                    (:emphasis content)
                      create-element :b $ {} (:inner-text content)
                    (:italic content)
                      create-element :i $ {} (:inner-text content)
                    _ $ <> (str |Unknown: chunk) nil
        |style-code-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-block $ {}
              "\"&" $ {}
                :border $ str "\"1px solid " (hsl 0 0 86)
                :border-radius "\"8px"
                :padding "\"4px 8px"
                :max-width 600
        |style-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-image $ {}
              "\"&" $ {} (:max-width 480) (:max-height 320)
                :border $ str "\"1px solid " (hsl 0 0 90)
                :border-radius "\"8px"
        |style-inline-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-inline-code $ {}
              "\"&" $ {}
                :border $ str "\"1px solid " (hsl 0 0 086)
                :border-radius "\"4px"
                :padding "\"2px 4px"
                :margin "\"2px 4px"
        |style-paragraph $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-paragraph $ {}
              "\"&" $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-md.comp.md $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ create-element
            respo.comp.space :refer $ =<
            respo-md.util.core :refer $ split-block split-line
            respo.core :refer $ defcomp list-> div pre code span p h1 h2 h3 h4 img a <> style li
            respo.util.list :refer $ map-with-idx
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-snippet
    |respo-md.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote (def dev? true)
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/respo-markdown/") (:title "\"Markdown") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-markdown")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-md.config)
    |respo-md.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              let
                  next-store $ tag-match op
                      :states cursor s
                      update-states @*store cursor s
                    _ $ do (eprintln "\"unknown op:" op) @*store
                reset! *store next-store
        |highligher $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn highligher (code lang) (js/console.warn "\"highligher not ready") (str |<code> code |</code>)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *store :changes $ fn (store prev) (render-app!)
              println "|App started!"
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (clear-cache!)
                add-watch *store :changes $ fn (reel prev) (render-app!)
                render-app!
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store highligher) dispatch!
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-md.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-md.comp.container :refer $ comp-container
            respo-md.schema :as schema
            respo.cursor :refer $ update-states
            respo-md.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
    |respo-md.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-md.schema)
    |respo-md.util.core $ %{} :FileEntry
      :defs $ {}
        |get0 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get0 (xs)
              if (nil? xs) nil $ .-0 xs
        |get1 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get1 (xs)
              if (nil? xs) nil $ .-1 xs
        |peek-emphasis $ %{} :CodeEntry (:doc |)
          :code $ quote
            def peek-emphasis $ new js/RegExp "\"^([^*/]+)\\*\\*"
        |peek-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            def peek-image $ new js/RegExp "\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)" "\"g"
        |peek-italic $ %{} :CodeEntry (:doc |)
          :code $ quote
            def peek-italic $ new js/RegExp "\"^([^*/]+)\\*"
        |peek-link $ %{} :CodeEntry (:doc |)
          :code $ quote
            def peek-link $ new js/RegExp "\"^\\[[^\\]]+\\]\\([^\\)]+\\)"
        |split-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn split-block (text)
              split-block-iter (split-lines text) ([]) ([]) :empty
        |split-block-iter $ %{} :CodeEntry (:doc |)
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
                      true $ recur left acc (conj buffer cursor) :text
                    :code $ if (starts-with? cursor "|```")
                      recur left
                        conj acc $ :: :code buffer
                        []
                        , :empty
                      recur left acc (conj buffer cursor) :code
        |split-line $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn split-line (line)
              split-line-iter ([]) line | :text
        |split-line-iter $ %{} :CodeEntry (:doc |)
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
                      |* $ if (= left "\"")
                        recur acc left (str buffer |*) :text
                        let
                            next-left $ &str:slice left 1
                          if
                            = "\"*" $ first left
                            let
                                matched $ .!match next-left peek-emphasis
                              if (some? matched)
                                let
                                    emphasis $ get1 matched
                                    rest-line $ &str:slice next-left
                                      + 2 $ count emphasis
                                  recur
                                    conj acc (:: :text buffer) (:: :emphasis emphasis)
                                    , rest-line | :text
                                recur acc left (str buffer |*) :text
                            let
                                matched $ .!match next-left peek-italic
                              if (some? matched)
                                let
                                    italic $ get1 matched
                                    rest-line $ &str:slice next-left
                                      + 1 $ count italic
                                  recur
                                    conj acc (:: :text buffer) (:: :italic italic)
                                    , rest-line | :text
                                recur acc left (str buffer |*) :text
                    :code $ if (= cursor "|`")
                      recur
                        conj acc $ :: :code buffer
                        , left | :text
                      recur acc left (str buffer cursor) :code
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-md.util.core $ :require
