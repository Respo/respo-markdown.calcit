
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |respo-md.main/main!) (:output |src) (:port 6001) (:reload-fn |respo-md.main/reload!) (:storage-key |calcit.cirru) (:version |0.3.10)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :ir $ {} (:package |respo-md)
    :files $ {}
      |respo-md.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727501758) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-container) (:type :leaf)
              |n $ {} (:at 1505727504292) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505727504998) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1505730982666) (:by |root) (:text |highlighter) (:type :leaf)
              |p $ {} (:at 1505727548387) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1505727549043) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1505727549265) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505727549415) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505727551326) (:by |root) (:text |states) (:type :leaf)
                          |j $ {} (:at 1505727551563) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505727553338) (:by |root) (:text |:states) (:type :leaf)
                              |j $ {} (:at 1505727554261) (:by |root) (:text |store) (:type :leaf)
                      |b $ {} (:at 1604993448025) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604993450133) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1604993458643) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610734068493) (:by |wA2nX3K2f) (:text |either) (:type :leaf)
                              |T $ {} (:at 1604993451171) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604993455203) (:by |wA2nX3K2f) (:text |:cursor) (:type :leaf)
                                  |j $ {} (:at 1604993458218) (:by |wA2nX3K2f) (:text |states) (:type :leaf)
                              |j $ {} (:at 1604993460055) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604993460387) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1505727555091) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505727555850) (:by |root) (:text |state) (:type :leaf)
                          |j $ {} (:at 1505727557133) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734064857) (:by |wA2nX3K2f) (:text |either) (:type :leaf)
                              |j $ {} (:at 1505727562987) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505727561366) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1505727564864) (:by |root) (:text |states) (:type :leaf)
                              |r $ {} (:at 1505727567606) (:by |root) (:text |initial-state) (:type :leaf)
                  |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |merge) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |ui/global) (:type :leaf)
                                  |r $ {} (:at 1519666231707) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519666232286) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1519666232551) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519666233841) (:by |root) (:text |:width) (:type :leaf)
                                          |j $ {} (:at 1519666237039) (:by |root) (:text ||80%) (:type :leaf)
                                      |r $ {} (:at 1519666237536) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519666242626) (:by |root) (:text |:margin) (:type :leaf)
                                          |j $ {} (:at 1519666245079) (:by |root) (:text "||0 auto") (:type :leaf)
                      |l $ {} (:at 1519667208341) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519667209559) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1519667209799) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519667210149) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1519668146091) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519668146639) (:by |root) (:text |a) (:type :leaf)
                              |L $ {} (:at 1519668147383) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519668147826) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519668148235) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519668150003) (:by |root) (:text |:href) (:type :leaf)
                                      |j $ {} (:at 1519668150849) (:by |root) (:text ||https://github.com/Respo/respo-markdown) (:type :leaf)
                              |T $ {} (:at 1519667210771) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667211837) (:by |root) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1519667215929) (:by |root) (:text ||respo-markdown) (:type :leaf)
                      |m $ {} (:at 1519667221229) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519667222564) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1519667222866) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519667223215) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1519667223732) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519667368528) (:by |root) (:text |comp-md-block) (:type :leaf)
                              |j $ {} (:at 1519667362824) (:by |root) (:text "||Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```clojure\n(require '[respo-md.comp.md :refer [comp-md comp-md-block]]\n\n(comp-md \"content\")\n\n(comp-md-block \"content\\nnew line\" {})\n```\n") (:type :leaf)
                              |r $ {} (:at 1519667369384) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667369745) (:by |root) (:text |{}) (:type :leaf)
                      |n $ {} (:at 1519636082578) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519636083747) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1519636083956) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519636084293) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1519636084566) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519636089648) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1519636089874) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519636090304) (:by |root) (:text |{}) (:type :leaf)
                          |n $ {} (:at 1519667388871) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519667389401) (:by |root) (:text |div) (:type :leaf)
                              |j $ {} (:at 1519667389648) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667389960) (:by |root) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1519667392117) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667415609) (:by |root) (:text |comp-md) (:type :leaf)
                                  |j $ {} (:at 1519667411426) (:by |root) (:text "||This is an example for using `comp-md`:") (:type :leaf)
                          |r $ {} (:at 1519667385975) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519667386674) (:by |root) (:text |div) (:type :leaf)
                              |L $ {} (:at 1519667386967) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667387320) (:by |root) (:text |{}) (:type :leaf)
                              |T $ {} (:at 1519636091595) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519636092591) (:by |root) (:text |input) (:type :leaf)
                                  |j $ {} (:at 1519636092805) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519636093109) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1519636093657) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519636096877) (:by |root) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1519636603964) (:by |root) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1519636605434) (:by |root) (:text |merge) (:type :leaf)
                                              |T $ {} (:at 1519636099031) (:by |root) (:text |ui/input) (:type :leaf)
                                              |j $ {} (:at 1519636606008) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1519636606328) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1519667537765) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1519667538766) (:by |root) (:text |:width) (:type :leaf)
                                                      |j $ {} (:at 1519667540089) (:by |root) (:text ||100%) (:type :leaf)
                                      |r $ {} (:at 1519636210841) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519636211804) (:by |root) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1519636212409) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519636213126) (:by |root) (:text |:text) (:type :leaf)
                                              |j $ {} (:at 1519636213706) (:by |root) (:text |state) (:type :leaf)
                                      |t $ {} (:at 1519667663253) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519667667363) (:by |root) (:text |:placeholder) (:type :leaf)
                                          |j $ {} (:at 1519667671464) (:by |root) (:text "||text inline") (:type :leaf)
                                      |v $ {} (:at 1519636214774) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519636217004) (:by |root) (:text |:on-input) (:type :leaf)
                                          |j $ {} (:at 1519636217402) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1604993439405) (:by |wA2nX3K2f) (:text |fn) (:type :leaf)
                                              |b $ {} (:at 1604993440300) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604993440585) (:by |wA2nX3K2f) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1604993441127) (:by |wA2nX3K2f) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1604993442294) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1604993444132) (:by |wA2nX3K2f) (:text |d!) (:type :leaf)
                                                  |L $ {} (:at 1604993445125) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                                  |T $ {} (:at 1519636220710) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1519636221572) (:by |root) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1519636222894) (:by |root) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1519636224255) (:by |root) (:text |:text) (:type :leaf)
                                                      |v $ {} (:at 1519636224632) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1519636226843) (:by |root) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1604993570363) (:by |wA2nX3K2f) (:text |e) (:type :leaf)
                          |v $ {} (:at 1519636102692) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519636103343) (:by |root) (:text |div) (:type :leaf)
                              |j $ {} (:at 1519636103537) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519636106583) (:by |root) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1519636107040) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519636110292) (:by |root) (:text |comp-md) (:type :leaf)
                                  |j $ {} (:at 1519636204706) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519636206830) (:by |root) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1519636208338) (:by |root) (:text |state) (:type :leaf)
                      |p $ {} (:at 1519666281442) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519666282429) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1519666283329) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1519667202122) (:by |root) (:text |40) (:type :leaf)
                      |r $ {} (:at 1519635935661) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1519635936391) (:by |root) (:text |div) (:type :leaf)
                          |L $ {} (:at 1519635936607) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519635936929) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1519635956527) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519635959461) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1519667467315) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519667467612) (:by |root) (:text |{}) (:type :leaf)
                          |P $ {} (:at 1519667425064) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519667425624) (:by |root) (:text |div) (:type :leaf)
                              |j $ {} (:at 1519667426253) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667426566) (:by |root) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1519667427072) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667429974) (:by |root) (:text |comp-md) (:type :leaf)
                                  |j $ {} (:at 1519667456866) (:by |root) (:text "||Example For using `comp-md-block`:") (:type :leaf)
                          |T $ {} (:at 1519667420713) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519667421408) (:by |root) (:text |div) (:type :leaf)
                              |L $ {} (:at 1519667423158) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519667423507) (:by |root) (:text |{}) (:type :leaf)
                              |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |textarea) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |:placeholder) (:type :leaf)
                                          |j $ {} (:at 1519667681976) (:by |root) (:text "||multi-line content") (:type :leaf)
                                      |f $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1505725057558) (:by |root) (:text |:draft) (:type :leaf)
                                              |j $ {} (:at 1505725057558) (:by |root) (:text |state) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1505725057558) (:by |root) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1505725057558) (:by |root) (:text |ui/textarea) (:type :leaf)
                                              |v $ {} (:at 1519635981594) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1519635981969) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1519635982219) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1519635983633) (:by |root) (:text |:height) (:type :leaf)
                                                      |j $ {} (:at 1519635990207) (:by |root) (:text |240) (:type :leaf)
                                                  |r $ {} (:at 1519667537765) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1519667538766) (:by |root) (:text |:width) (:type :leaf)
                                                      |j $ {} (:at 1519667540089) (:by |root) (:text ||100%) (:type :leaf)
                                      |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505727637212) (:by |root) (:text |:on) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1505725057558) (:by |root) (:text |:input) (:type :leaf)
                                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1505725057558) (:by |root) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1505725057558) (:by |root) (:text |e) (:type :leaf)
                                                          |j $ {} (:at 1604993544643) (:by |wA2nX3K2f) (:text |d!) (:type :leaf)
                                                      |n $ {} (:at 1505731396007) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1612254726351) (:by |wA2nX3K2f) (:text |;) (:type :leaf)
                                                          |T $ {} (:at 1505731398427) (:by |root) (:text |println) (:type :leaf)
                                                          |X $ {} (:at 1505731408053) (:by |root) (:text ||Editing:) (:type :leaf)
                                                          |b $ {} (:at 1505731403909) (:by |root) (:text |state) (:type :leaf)
                                                          |j $ {} (:at 1505731399317) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1505731400003) (:by |root) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1505731400407) (:by |root) (:text |e) (:type :leaf)
                                                      |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604993541453) (:by |wA2nX3K2f) (:text |d!) (:type :leaf)
                                                          |f $ {} (:at 1604993543162) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                                          |r $ {} (:at 1505727589905) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1505727591504) (:by |root) (:text |assoc) (:type :leaf)
                                                              |L $ {} (:at 1505727600077) (:by |root) (:text |state) (:type :leaf)
                                                              |P $ {} (:at 1505727602474) (:by |root) (:text |:draft) (:type :leaf)
                                                              |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1505725057558) (:by |root) (:text |:value) (:type :leaf)
                                                                  |j $ {} (:at 1505725057558) (:by |root) (:text |e) (:type :leaf)
                          |j $ {} (:at 1519635994848) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519635996530) (:by |root) (:text |div) (:type :leaf)
                              |L $ {} (:at 1519635996781) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519635997097) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519635998824) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519635999712) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1519636013166) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1519636014079) (:by |root) (:text |merge) (:type :leaf)
                                          |L $ {} (:at 1519636015308) (:by |root) (:text |ui/flex) (:type :leaf)
                                          |T $ {} (:at 1519635999950) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519636000224) (:by |root) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1519636000475) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1519636002766) (:by |root) (:text |:padding) (:type :leaf)
                                                  |j $ {} (:at 1519636003541) (:by |root) (:text |8) (:type :leaf)
                              |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519632143897) (:by |root) (:text |comp-md-block) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:draft) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |state) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |:highlight) (:type :leaf)
                                          |j $ {} (:at 1505730937250) (:by |root) (:text |highlighter) (:type :leaf)
                                      |r $ {} (:at 1520787968976) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520787970268) (:by |root) (:text |:css) (:type :leaf)
                                          |j $ {} (:at 1520789321927) (:by |root) (:text "||.md-p code {\n  background-color: #edf;\n  padding: 0 8px;\n}") (:type :leaf)
                                      |v $ {} (:at 1520789005245) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520789006749) (:by |root) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1520789008066) (:by |root) (:text ||demo) (:type :leaf)
                      |t $ {} (:at 1650651782303) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651782948) (:by |wA2nX3K2f) (:text |=<) (:type :leaf)
                          |b $ {} (:at 1650651785023) (:by |wA2nX3K2f) (:text |nil) (:type :leaf)
                          |h $ {} (:at 1650651785610) (:by |wA2nX3K2f) (:text |200) (:type :leaf)
          |initial-state $ {} (:at 1505727567989) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727568736) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1505727567989) (:by |root) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |:draft) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by |root) (:text ||) (:type :leaf)
                  |r $ {} (:at 1519636197599) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519636199835) (:by |root) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1519636200127) (:by |root) (:text ||) (:type :leaf)
        :ns $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505725057558) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.comp.container) (:type :leaf)
            |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505725057558) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610732016720) (:by |wA2nX3K2f) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505725057558) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by |root) (:text |ui) (:type :leaf)
                |x $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505726952691) (:by |root) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1519632066189) (:by |root) (:text |respo-md.comp.md) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1519632128446) (:by |root) (:text |comp-md) (:type :leaf)
                        |r $ {} (:at 1519632309109) (:by |root) (:text |comp-md-block) (:type :leaf)
                |yj $ {} (:at 1505726927139) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540917574411) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1505726931244) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505726931520) (:by |root) (:type :expr)
                      :data $ {}
                        |b $ {} (:at 1505726936654) (:by |root) (:text |defcomp) (:type :leaf)
                        |j $ {} (:at 1505726934044) (:by |root) (:text |<>) (:type :leaf)
                        |r $ {} (:at 1505726942621) (:by |root) (:text |div) (:type :leaf)
                        |v $ {} (:at 1505726943769) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1505726945290) (:by |root) (:text |textarea) (:type :leaf)
                        |y $ {} (:at 1519636123858) (:by |root) (:text |input) (:type :leaf)
                        |yT $ {} (:at 1519668159416) (:by |root) (:text |a) (:type :leaf)
        :proc $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
      |respo-md.comp.md $ {}
        :defs $ {}
          |blockquote $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |blockquote) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |props) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |&) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by |root) (:text |children) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |:blockquote) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by |root) (:text |props) (:type :leaf)
                  |t $ {} (:at 1619549322828) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by |root) (:text |children) (:type :leaf)
          |comp-code-block $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727949016) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-code-block) (:type :leaf)
              |n $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |lines) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |options) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |lang) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |first) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text |lines) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732597144) (:by |wA2nX3K2f) (:text |join-str) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |lines) (:type :leaf)
                              |v $ {} (:at 1619549157943) (:by |wA2nX3K2f) (:text |&newline) (:type :leaf)
                      |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |highlight-fn) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |:highlight) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text |options) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |pre) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text ||md-code-block) (:type :leaf)
                      |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |code) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |and) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732592096) (:by |wA2nX3K2f) (:text |blank?) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by |root) (:text |lang) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |fn?) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |highlight-fn) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:innerHTML) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |highlight-fn) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                                          |r $ {} (:at 1505725057558) (:by |root) (:text |lang) (:type :leaf)
                              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
          |comp-image $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-image) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |useful) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1623694304398) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by |root) (:text |2) (:type :leaf)
                              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |-) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by |root) (:text |1) (:type :leaf)
                  |r $ {} (:at 1610732442668) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610732443683) (:by |wA2nX3K2f) (:text |let[]) (:type :leaf)
                      |L $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                          |r $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:text |url) (:type :leaf)
                      |P $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:text |split) (:type :leaf)
                          |j $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:text |useful) (:type :leaf)
                          |r $ {} (:at 1610732444355) (:by |wA2nX3K2f) (:text "||](") (:type :leaf)
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |img) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |:src) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |url) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |:alt) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
          |comp-line $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727713665) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-line) (:type :leaf)
              |n $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |cond) (:type :leaf)
                  |a $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732235103) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by |root) (:text "||# ") (:type :leaf)
                      |j $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:text |h1) (:type :leaf)
                          |b $ {} (:at 1610734142430) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734142835) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1623694230810) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1610733156408) (:by |wA2nX3K2f) (:text |2) (:type :leaf)
                  |h $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732238962) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by |root) (:text "||## ") (:type :leaf)
                      |j $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610733162108) (:by |wA2nX3K2f) (:text |h2) (:type :leaf)
                          |b $ {} (:at 1610734144909) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734144909) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1623694233087) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1610733157934) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1610733164003) (:by |wA2nX3K2f) (:text |3) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732240941) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by |root) (:text "||### ") (:type :leaf)
                      |j $ {} (:at 1610733167793) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610733170252) (:by |wA2nX3K2f) (:text |h3) (:type :leaf)
                          |b $ {} (:at 1610734145994) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734145994) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733167793) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1624121037073) (:by |wA2nX3K2f) (:text |4) (:type :leaf)
                  |w $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732242389) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1604993366873) (:by |wA2nX3K2f) (:text "||#### ") (:type :leaf)
                      |j $ {} (:at 1610733174842) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610733176874) (:by |wA2nX3K2f) (:text |h4) (:type :leaf)
                          |b $ {} (:at 1610734147486) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734147486) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733174842) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1624121038809) (:by |wA2nX3K2f) (:text |5) (:type :leaf)
                  |x $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732244014) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by |root) (:text "||> ") (:type :leaf)
                      |j $ {} (:at 1610733198882) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610733202609) (:by |wA2nX3K2f) (:text |blockquote) (:type :leaf)
                          |b $ {} (:at 1610734148876) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734148876) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733198882) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1624121040551) (:by |wA2nX3K2f) (:text |2) (:type :leaf)
                  |y $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732569696) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by |root) (:text "||* ") (:type :leaf)
                      |j $ {} (:at 1610733209022) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612254635649) (:by |wA2nX3K2f) (:text |li) (:type :leaf)
                          |b $ {} (:at 1610734150301) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610734150301) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1610733209022) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1624121043142) (:by |wA2nX3K2f) (:text |2) (:type :leaf)
                  |yT $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732572111) (:by |wA2nX3K2f) (:text |true) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1612253094691) (:by |wA2nX3K2f) (:text |div) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                          |n $ {} (:at 1612253103294) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                          |r $ {} (:at 1624121045270) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121045270) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                              |j $ {} (:at 1624121045270) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
          |comp-link $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727764748) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-link) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |useful) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1623694267639) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by |root) (:text |1) (:type :leaf)
                              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |-) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by |root) (:text |1) (:type :leaf)
                  |r $ {} (:at 1610732390750) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610732392388) (:by |wA2nX3K2f) (:text |let[]) (:type :leaf)
                      |L $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                          |r $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:text |url) (:type :leaf)
                      |P $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732425420) (:by |wA2nX3K2f) (:text |split) (:type :leaf)
                          |j $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:text |useful) (:type :leaf)
                          |r $ {} (:at 1610732396438) (:by |wA2nX3K2f) (:text "||](") (:type :leaf)
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732406138) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by |root) (:text "||`") (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732408009) (:by |wA2nX3K2f) (:text |ends-with?) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by |root) (:text "||`") (:type :leaf)
                          |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |a) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:href) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |url) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:target) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text ||_blank) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |code) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505725057558) (:by |root) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1623694269865) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                              |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                                              |r $ {} (:at 1505725057558) (:by |root) (:text |1) (:type :leaf)
                                              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1505725057558) (:by |root) (:text |dec) (:type :leaf)
                                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1505725057558) (:by |root) (:text |count) (:type :leaf)
                                                      |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                          |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |a) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:href) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |url) (:type :leaf)
                                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text |content) (:type :leaf)
                                  |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505725057558) (:by |root) (:text |:target) (:type :leaf)
                                      |j $ {} (:at 1505725057558) (:by |root) (:text ||_blank) (:type :leaf)
          |comp-md $ {} (:at 1519631928616) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1519632881248) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519631928616) (:by |root) (:text |comp-md) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1519636153860) (:by |root) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1612253159496) (:by |wA2nX3K2f) (:text |div) (:type :leaf)
                  |L $ {} (:at 1519636158892) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519636159183) (:by |root) (:text |{}) (:type :leaf)
                  |P $ {} (:at 1612253164155) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                  |T $ {} (:at 1624121076956) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624121076956) (:by |wA2nX3K2f) (:text |render-inline) (:type :leaf)
                      |j $ {} (:at 1624121076956) (:by |wA2nX3K2f) (:text |text) (:type :leaf)
          |comp-md-block $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727653494) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-md-block) (:type :leaf)
              |n $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |options) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |blocks) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |split-block) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
                      |j $ {} (:at 1520789030602) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520789031254) (:by |root) (:text |css) (:type :leaf)
                          |j $ {} (:at 1520789034981) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520789035575) (:by |root) (:text |:css) (:type :leaf)
                              |j $ {} (:at 1520789037456) (:by |root) (:text |options) (:type :leaf)
                      |r $ {} (:at 1520789039052) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520789042450) (:by |root) (:text |class-name) (:type :leaf)
                          |j $ {} (:at 1520789043515) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520789045795) (:by |root) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1520789046690) (:by |root) (:text |options) (:type :leaf)
                  |r $ {} (:at 1612252836011) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612253228060) (:by |wA2nX3K2f) (:text |div) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1520789052026) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1520789052543) (:by |root) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1520789053460) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1520789076862) (:by |root) (:text |nil?) (:type :leaf)
                                      |j $ {} (:at 1520789058375) (:by |root) (:text |class-name) (:type :leaf)
                                  |P $ {} (:at 1520789072603) (:by |root) (:text ||md-block) (:type :leaf)
                                  |T $ {} (:at 1520789017375) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520789018183) (:by |root) (:text |str) (:type :leaf)
                                      |T $ {} (:at 1520789019136) (:by |root) (:text "||md-block ") (:type :leaf)
                                      |j $ {} (:at 1520789064083) (:by |root) (:text |class-name) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519631967226) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519631968494) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1519631971217) (:by |root) (:text |options) (:type :leaf)
                      |n $ {} (:at 1624121619144) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1624121619595) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                          |j $ {} (:at 1624121619861) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121621285) (:by |wA2nX3K2f) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1624121625804) (:by |wA2nX3K2f) (:text |css) (:type :leaf)
                          |r $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |style) (:type :leaf)
                              |j $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |css) (:type :leaf)
                                  |r $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |:scoped) (:type :leaf)
                                      |j $ {} (:at 1624121633516) (:by |wA2nX3K2f) (:text |true) (:type :leaf)
                      |r $ {} (:at 1612253270752) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                      |v $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |->) (:type :leaf)
                          |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |blocks) (:type :leaf)
                          |r $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |map) (:type :leaf)
                              |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |block) (:type :leaf)
                                  |r $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |let[]) (:type :leaf)
                                      |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                          |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                                      |r $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |block) (:type :leaf)
                                      |v $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |pr-str) (:type :leaf)
                                              |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                      |x $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121660550) (:by |wA2nX3K2f) (:text |case-default) (:type :leaf)
                                          |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                          |n $ {} (:at 1624121662637) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1624121663711) (:by |wA2nX3K2f) (:text |<>) (:type :leaf)
                                              |T $ {} (:at 1624121667484) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1624121668469) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                                  |T $ {} (:at 1624121673662) (:by |wA2nX3K2f) (:text "||Unknown content: ") (:type :leaf)
                                                  |j $ {} (:at 1624121669701) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                          |r $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                              |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-text-block) (:type :leaf)
                                                  |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                                          |v $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                              |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-code-block) (:type :leaf)
                                                  |j $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                                                  |r $ {} (:at 1624121641310) (:by |wA2nX3K2f) (:text |options) (:type :leaf)
          |comp-text-block $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727689097) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |comp-text-block) (:type :leaf)
              |n $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |lines) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612253185530) (:by |wA2nX3K2f) (:text |div) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |:class-name) (:type :leaf)
                          |j $ {} (:at 1519633028823) (:by |root) (:text ||md-p) (:type :leaf)
                  |r $ {} (:at 1612253189178) (:by |wA2nX3K2f) (:text |&) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619548895002) (:by |wA2nX3K2f) (:text |->) (:type :leaf)
                      |f $ {} (:at 1624120989884) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                      |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1624120987280) (:by |wA2nX3K2f) (:text |map) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505725057558) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505725057558) (:by |root) (:text |comp-line) (:type :leaf)
                                  |j $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
          |render-inline $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |render-inline) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619548843573) (:by |wA2nX3K2f) (:text |->) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |split-line) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624121020878) (:by |wA2nX3K2f) (:text |map) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1505725057558) (:by |root) (:text |chunk) (:type :leaf)
                          |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |let[]) (:type :leaf)
                              |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                  |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                              |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |chunk) (:type :leaf)
                              |v $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121725761) (:by |wA2nX3K2f) (:text |case-default) (:type :leaf)
                                  |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                  |n $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:text ||Unknown:) (:type :leaf)
                                          |r $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                      |r $ {} (:at 1624121728364) (:by |wA2nX3K2f) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                      |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |code) (:type :leaf)
                                          |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                                          |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>) (:type :leaf)
                                              |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                              |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil) (:type :leaf)
                                  |v $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:url) (:type :leaf)
                                      |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |a) (:type :leaf)
                                          |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:href) (:type :leaf)
                                                  |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                              |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:inner-text) (:type :leaf)
                                                  |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                              |v $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:target) (:type :leaf)
                                                  |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text ||_blank) (:type :leaf)
                                  |x $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:link) (:type :leaf)
                                      |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-link) (:type :leaf)
                                          |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                  |y $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:image) (:type :leaf)
                                      |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-image) (:type :leaf)
                                          |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                  |yT $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |content) (:type :leaf)
                                          |r $ {} (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505725057558) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.comp.md) (:type :leaf)
            |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505725057558) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610732231554) (:by |wA2nX3K2f) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505725057558) (:by |root) (:text |hsl) (:type :leaf)
                |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by |root) (:text |ui) (:type :leaf)
                |x $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505727181444) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |r $ {} (:at 1505725057558) (:by |root) (:text |create-element) (:type :leaf)
                |y $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505726906010) (:by |root) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.util.core) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505725057558) (:by |root) (:text |split-block) (:type :leaf)
                        |r $ {} (:at 1505725057558) (:by |root) (:text |split-line) (:type :leaf)
                |yv $ {} (:at 1505727143181) (:by |root) (:type :expr)
                  :data $ {}
                    |L $ {} (:at 1540917580026) (:by |root) (:text |respo.core) (:type :leaf)
                    |P $ {} (:at 1505727150077) (:by |root) (:text |:refer) (:type :leaf)
                    |T $ {} (:at 1505726875499) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505726881037) (:by |root) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1510159464898) (:by |root) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1505726883973) (:by |root) (:text |div) (:type :leaf)
                        |v $ {} (:at 1505726885309) (:by |root) (:text |pre) (:type :leaf)
                        |x $ {} (:at 1505726888827) (:by |root) (:text |code) (:type :leaf)
                        |xT $ {} (:at 1505727855954) (:by |root) (:text |span) (:type :leaf)
                        |y $ {} (:at 1505726889044) (:by |root) (:text |p) (:type :leaf)
                        |yT $ {} (:at 1505726892558) (:by |root) (:text |h1) (:type :leaf)
                        |yj $ {} (:at 1505726893138) (:by |root) (:text |h2) (:type :leaf)
                        |yn $ {} (:at 1610733131089) (:by |wA2nX3K2f) (:text |h3) (:type :leaf)
                        |yp $ {} (:at 1610733131590) (:by |wA2nX3K2f) (:text |h4) (:type :leaf)
                        |yr $ {} (:at 1505726894443) (:by |root) (:text |img) (:type :leaf)
                        |yv $ {} (:at 1505726894740) (:by |root) (:text |a) (:type :leaf)
                        |yx $ {} (:at 1505726913072) (:by |root) (:text |<>) (:type :leaf)
                        |yy $ {} (:at 1520787877469) (:by |root) (:text |style) (:type :leaf)
                        |yyT $ {} (:at 1612254669217) (:by |wA2nX3K2f) (:text |li) (:type :leaf)
                |yx $ {} (:at 1520787802718) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1520787809175) (:by |root) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1520787811338) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1520787811550) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1520787816329) (:by |root) (:text |map-with-idx) (:type :leaf)
        :proc $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
      |respo-md.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |def) (:type :leaf)
              |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1610733445074) (:by |wA2nX3K2f) (:text |true) (:type :leaf)
          |site $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |def) (:type :leaf)
              |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |site) (:type :leaf)
              |r $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:dev-ui) (:type :leaf)
                      |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf)
                  |r $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:release-ui) (:type :leaf)
                      |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf)
                  |v $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:cdn-url) (:type :leaf)
                      |j $ {} (:at 1574868988921) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/respo-markdown/") (:type :leaf)
                  |x $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1574868982235) (:by |wA2nX3K2f) (:text "|\"Markdown") (:type :leaf)
                  |y $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1574868977564) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/logo/respo.png") (:type :leaf)
                  |yT $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1574868969123) (:by |wA2nX3K2f) (:text "|\"respo-markdown") (:type :leaf)
        :ns $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
          :data $ {}
            |T $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |ns) (:type :leaf)
            |j $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:text |respo-md.config) (:type :leaf)
        :proc $ {} (:at 1574868941964) (:by |wA2nX3K2f) (:type :expr)
          :data $ {}
      |respo-md.main $ {}
        :defs $ {}
          |*store $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732838513) (:by |wA2nX3K2f) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |*store) (:type :leaf)
              |r $ {} (:at 1505728403740) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1505731425162) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505731425844) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1505731471250) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505731471836) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505731473585) (:by |root) (:text |next-store) (:type :leaf)
                          |j $ {} (:at 1505731474525) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1505731475078) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1505731475960) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1505731476076) (:by |root) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1505731476494) (:by |root) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1505731477596) (:by |root) (:text |:states) (:type :leaf)
                              |n $ {} (:at 1604993512710) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604993517507) (:by |wA2nX3K2f) (:text |update-states) (:type :leaf)
                                  |j $ {} (:at 1604993520837) (:by |wA2nX3K2f) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1604993523414) (:by |wA2nX3K2f) (:text |op-data) (:type :leaf)
                              |v $ {} (:at 1505731497095) (:by |root) (:text |@*store) (:type :leaf)
                  |r $ {} (:at 1505731498721) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505731500253) (:by |root) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1505731502135) (:by |root) (:text |*store) (:type :leaf)
                      |r $ {} (:at 1505731505514) (:by |root) (:text |next-store) (:type :leaf)
          |highligher $ {} (:at 1505730957353) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505730957353) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505730957353) (:by |root) (:text |highligher) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |code) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |lang) (:type :leaf)
              |t $ {} (:at 1610732783545) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732787182) (:by |wA2nX3K2f) (:text |js/console.warn) (:type :leaf)
                  |j $ {} (:at 1623590946570) (:by |wA2nX3K2f) (:text "|\"highligher not ready") (:type :leaf)
              |v $ {} (:at 1610732781199) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732781199) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                  |j $ {} (:at 1610732781199) (:by |wA2nX3K2f) (:text ||<code>) (:type :leaf)
                  |r $ {} (:at 1610732781199) (:by |wA2nX3K2f) (:text |code) (:type :leaf)
                  |v $ {} (:at 1610732781199) (:by |wA2nX3K2f) (:text ||</code>) (:type :leaf)
          |main! $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505730490269) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
              |s $ {} (:at 1574869032003) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1574869033858) (:by |wA2nX3K2f) (:text |println) (:type :leaf)
                  |j $ {} (:at 1574869047631) (:by |wA2nX3K2f) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1574869053411) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574869053744) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                      |j $ {} (:at 1574869055366) (:by |wA2nX3K2f) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1574869061226) (:by |wA2nX3K2f) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1574869062722) (:by |wA2nX3K2f) (:text "|\"release") (:type :leaf)
              |u $ {} (:at 1650651406067) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1650651407265) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                  |b $ {} (:at 1650651408874) (:by |wA2nX3K2f) (:text |config/dev?) (:type :leaf)
                  |h $ {} (:at 1650651410562) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1650651417256) (:by |wA2nX3K2f) (:text |load-console-formatter!) (:type :leaf)
              |y $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |render-app!) (:type :leaf)
              |yj $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1505731195914) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1505731196579) (:by |root) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1505731205783) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612251648032) (:by |wA2nX3K2f) (:text |store) (:type :leaf)
                          |j $ {} (:at 1612251649006) (:by |wA2nX3K2f) (:text |prev) (:type :leaf)
                      |T $ {} (:at 1505731203017) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505725057558) (:by |root) (:text |render-app!) (:type :leaf)
              |yv $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by |root) (:text "||App started!") (:type :leaf)
          |mount-target $ {} (:at 1505727391585) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727392691) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1505727391585) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610733473639) (:by |wA2nX3K2f) (:text |js/document.querySelector) (:type :leaf)
                  |r $ {} (:at 1505728789454) (:by |root) (:text ||.app) (:type :leaf)
          |reload! $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |reload!) (:type :leaf)
              |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
              |l $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                  |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |nil?) (:type :leaf)
                      |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors) (:type :leaf)
                  |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |do) (:type :leaf)
                      |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |remove-watch) (:type :leaf)
                          |b $ {} (:at 1650651629562) (:by |wA2nX3K2f) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes) (:type :leaf)
                      |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |clear-cache!) (:type :leaf)
                      |l $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |add-watch) (:type :leaf)
                          |b $ {} (:at 1650651630519) (:by |wA2nX3K2f) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes) (:type :leaf)
                          |l $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |reel) (:type :leaf)
                                  |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |prev) (:type :leaf)
                              |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |render-app!) (:type :leaf)
                      |n $ {} (:at 1650651855563) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651857249) (:by |wA2nX3K2f) (:text |render-app!) (:type :leaf)
                      |q $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!) (:type :leaf)
                          |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"ok~") (:type :leaf)
                          |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"Ok") (:type :leaf)
                  |l $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"error") (:type :leaf)
                      |h $ {} (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505725057558) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1650651657536) (:by |wA2nX3K2f) (:text |render!) (:type :leaf)
                  |b $ {} (:at 1505727385806) (:by |root) (:text |mount-target) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by |root) (:text |@*store) (:type :leaf)
                      |r $ {} (:at 1505730956948) (:by |root) (:text |highligher) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by |root) (:text |dispatch!) (:type :leaf)
          |ssr? $ {} (:at 1505727454126) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505727455518) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1505727454126) (:by |root) (:text |ssr?) (:type :leaf)
              |r $ {} (:at 1505727454126) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505727459220) (:by |root) (:text |some?) (:type :leaf)
                  |j $ {} (:at 1505727459505) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610733481502) (:by |wA2nX3K2f) (:text |js/document.querySelector) (:type :leaf)
                      |r $ {} (:at 1505731281859) (:by |root) (:text ||meta.respo-ssr) (:type :leaf)
        :ns $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505725057558) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.main) (:type :leaf)
            |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505725057558) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505725057558) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1505725057558) (:by |root) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1505727321639) (:by |root) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.comp.container) (:type :leaf)
                    |r $ {} (:at 1505725057558) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1505725057558) (:by |root) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1505728388653) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505728394020) (:by |root) (:text |respo-md.schema) (:type :leaf)
                    |r $ {} (:at 1505728395098) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1505728395889) (:by |root) (:text |schema) (:type :leaf)
                |xD $ {} (:at 1505731517463) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1505731523117) (:by |root) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1505731523899) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1505731524156) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1604993493280) (:by |wA2nX3K2f) (:text |update-states) (:type :leaf)
                |ys $ {} (:at 1574869015775) (:by |wA2nX3K2f) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1574869016607) (:by |wA2nX3K2f) (:text |respo-md.config) (:type :leaf)
                    |r $ {} (:at 1574869018310) (:by |wA2nX3K2f) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1574869019033) (:by |wA2nX3K2f) (:text |config) (:type :leaf)
                |z $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |b $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text |build-errors) (:type :leaf)
                |zD $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"bottom-tip") (:type :leaf)
                    |b $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1650651609517) (:by |wA2nX3K2f) (:text |hud!) (:type :leaf)
        :proc $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
      |respo-md.schema $ {}
        :defs $ {}
          |store $ {} (:at 1505728371777) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505728374235) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1505728371777) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1505728371777) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505728375589) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1505728375898) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505728378070) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1505728378484) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1505728378975) (:by |root) (:text |{}) (:type :leaf)
        :ns $ {} (:at 1505728367327) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505728367327) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505728367327) (:by |root) (:text |respo-md.schema) (:type :leaf)
        :proc $ {} (:at 1505728367327) (:by |root) (:type :expr)
          :data $ {}
      |respo-md.util.core $ {}
        :defs $ {}
          |get0 $ {} (:at 1633240307982) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633240309352) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633240307982) (:by |wA2nX3K2f) (:text |get0) (:type :leaf)
              |r $ {} (:at 1633240307982) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1633240310512) (:by |wA2nX3K2f) (:text |xs) (:type :leaf)
              |v $ {} (:at 1633240310881) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1633240311348) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                  |j $ {} (:at 1633240312002) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1633240312293) (:by |wA2nX3K2f) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1633240313098) (:by |wA2nX3K2f) (:text |xs) (:type :leaf)
                  |r $ {} (:at 1633240313999) (:by |wA2nX3K2f) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1633240314521) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1633240316009) (:by |wA2nX3K2f) (:text |.-0) (:type :leaf)
                      |j $ {} (:at 1633240317040) (:by |wA2nX3K2f) (:text |xs) (:type :leaf)
          |split-block $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732182245) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |split-block) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732141925) (:by |wA2nX3K2f) (:text |split-block-iter) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732074961) (:by |wA2nX3K2f) (:text |split-lines) (:type :leaf)
                      |j $ {} (:at 1505725057558) (:by |root) (:text |text) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |[]) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |[]) (:type :leaf)
                  |x $ {} (:at 1505725057558) (:by |root) (:text |:empty) (:type :leaf)
          |split-block-iter $ {} (:at 1610732143799) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732149389) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732143799) (:by |wA2nX3K2f) (:text |split-block-iter) (:type :leaf)
              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                  |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
              |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?) (:type :leaf)
                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                      |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                      |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                  |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |let) (:type :leaf)
                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines) (:type :leaf)
                      |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1650651735128) (:by |wA2nX3K2f) (:text |case-default) (:type :leaf)
                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                          |n $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:text |raise) (:type :leaf)
                              |b $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:text "||Strange splitting mode: ") (:type :leaf)
                                  |h $ {} (:at 1650651732863) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond) (:type :leaf)
                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty) (:type :leaf)
                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732163573) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```") (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1623694281287) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |3) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                  |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1650651738578) (:by |wA2nX3K2f) (:text |true) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond) (:type :leaf)
                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty) (:type :leaf)
                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732165915) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```") (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1623694282723) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |3) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                  |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1650651740525) (:by |wA2nX3K2f) (:text |true) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                          |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732168365) (:by |wA2nX3K2f) (:text |starts-with?) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                      |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```") (:type :leaf)
                                  |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                      |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                                              |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                      |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                      |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty) (:type :leaf)
                                  |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                      |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                      |v $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                          |r $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                      |x $ {} (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
          |split-line $ {} (:at 1505725057558) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732553043) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1505725057558) (:by |root) (:text |split-line) (:type :leaf)
              |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
              |v $ {} (:at 1505725057558) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732547789) (:by |wA2nX3K2f) (:text |split-line-iter) (:type :leaf)
                  |j $ {} (:at 1505725057558) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505725057558) (:by |root) (:text |[]) (:type :leaf)
                  |r $ {} (:at 1505725057558) (:by |root) (:text |line) (:type :leaf)
                  |v $ {} (:at 1505725057558) (:by |root) (:text ||) (:type :leaf)
                  |x $ {} (:at 1505725057558) (:by |root) (:text |:text) (:type :leaf)
          |split-line-iter $ {} (:at 1610732555006) (:by |wA2nX3K2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610733935919) (:by |wA2nX3K2f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732555006) (:by |wA2nX3K2f) (:text |split-line-iter) (:type :leaf)
              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
              |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |let) (:type :leaf)
                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1623694292775) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |1) (:type :leaf)
                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1633239190265) (:by |wA2nX3K2f) (:text |case-default) (:type :leaf)
                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                          |n $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:text |raise) (:type :leaf)
                              |j $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:text "||Unknown mode:") (:type :leaf)
                                  |r $ {} (:at 1633239190994) (:by |wA2nX3K2f) (:text |mode) (:type :leaf)
                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624121246531) (:by |wA2nX3K2f) (:text |case-default) (:type :leaf)
                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                  |n $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                      |r $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                      |v $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                          |r $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                      |x $ {} (:at 1624121247315) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`") (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                              |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                          |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |or) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||http://) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1623694293982) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |7) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||https://) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1623694294955) (:by |wA2nX3K2f) (:text |&str:slice) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |8) (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |let) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |split) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ") (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:url) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |first) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ") (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1624121329019) (:by |wA2nX3K2f) (:text |join-str) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |rest) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces) (:type :leaf)
                                                          |v $ {} (:at 1624120649742) (:by |wA2nX3K2f) (:text "|| ") (:type :leaf)
                                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                              |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h) (:type :leaf)
                                              |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                  |j $ {} (:at 1612251751745) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1633240305535) (:by |wA2nX3K2f) (:text |get0) (:type :leaf)
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1633239106366) (:by |wA2nX3K2f) (:text |.!match) (:type :leaf)
                                                          |b $ {} (:at 1619548977892) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                          |j $ {} (:at 1633239108699) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1633239110354) (:by |wA2nX3K2f) (:text |new) (:type :leaf)
                                                              |L $ {} (:at 1633239113235) (:by |wA2nX3K2f) (:text |js/RegExp) (:type :leaf)
                                                              |T $ {} (:at 1612251934577) (:by |wA2nX3K2f) (:text "|\"^\\[[^\\]]+\\]\\([^\\)]+\\)") (:type :leaf)
                                                              |j $ {} (:at 1633239115771) (:by |wA2nX3K2f) (:text "|\"g") (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:link) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1624120684709) (:by |wA2nX3K2f) (:text |.!replace) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                      |r $ {} (:at 1612251802738) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                              |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[) (:type :leaf)
                                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                  |y $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                  |j $ {} (:at 1612251776491) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1633240307455) (:by |wA2nX3K2f) (:text |get0) (:type :leaf)
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1633239126853) (:by |wA2nX3K2f) (:text |.!match) (:type :leaf)
                                                          |b $ {} (:at 1619548980755) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                          |j $ {} (:at 1633239127991) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1633239129212) (:by |wA2nX3K2f) (:text |new) (:type :leaf)
                                                              |L $ {} (:at 1633239132777) (:by |wA2nX3K2f) (:text |js/RegExp) (:type :leaf)
                                                              |T $ {} (:at 1612251936699) (:by |wA2nX3K2f) (:text "|\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)") (:type :leaf)
                                                              |j $ {} (:at 1633240248438) (:by |wA2nX3K2f) (:text "|\"g") (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:image) (:type :leaf)
                                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1623590485067) (:by |wA2nX3K2f) (:text |.replace) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |line) (:type :leaf)
                                                      |r $ {} (:at 1612251804395) (:by |wA2nX3K2f) (:text |guess) (:type :leaf)
                                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                              |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!) (:type :leaf)
                                                  |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                          |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`") (:type :leaf)
                                  |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
                                              |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text ||) (:type :leaf)
                                      |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text) (:type :leaf)
                                  |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc) (:type :leaf)
                                      |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |left) (:type :leaf)
                                      |v $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer) (:type :leaf)
                                          |r $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor) (:type :leaf)
                                      |x $ {} (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code) (:type :leaf)
        :ns $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505725057558) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505725057558) (:by |root) (:text |respo-md.util.core) (:type :leaf)
            |r $ {} (:at 1505725057558) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505725057558) (:by |root) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1505725057558) (:by nil) (:type :expr)
          :data $ {}
  :users $ {}
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |wA2nX3K2f $ {} (:avatar nil) (:id |wA2nX3K2f) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
