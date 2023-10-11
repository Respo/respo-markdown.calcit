
{} (:package |respo-md)
  :configs $ {} (:init-fn |respo-md.main/main!) (:output |src) (:port 6001) (:reload-fn |respo-md.main/reload!) (:storage-key |calcit.cirru) (:version |0.4.1)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :files $ {}
    |respo-md.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727501758) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
              |n $ %{} :Expr (:at 1505727504292) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505727504998) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1505730982666) (:by |root) (:text |highlighter)
              |p $ %{} :Expr (:at 1505727548387) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1505727549043) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1505727549265) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505727549415) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505727551326) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1505727551563) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505727553338) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1505727554261) (:by |root) (:text |store)
                      |b $ %{} :Expr (:at 1604993448025) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1604993450133) (:by |wA2nX3K2f) (:text |cursor)
                          |j $ %{} :Expr (:at 1604993458643) (:by |wA2nX3K2f)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610734068493) (:by |wA2nX3K2f) (:text |either)
                              |T $ %{} :Expr (:at 1604993451171) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1604993455203) (:by |wA2nX3K2f) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1604993458218) (:by |wA2nX3K2f) (:text |states)
                              |j $ %{} :Expr (:at 1604993460055) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1604993460387) (:by |wA2nX3K2f) (:text |[])
                      |j $ %{} :Expr (:at 1505727555091) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505727555850) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1505727557133) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734064857) (:by |wA2nX3K2f) (:text |either)
                              |j $ %{} :Expr (:at 1505727562987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505727561366) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1505727564864) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1505727567606) (:by |root) (:text |initial-state)
                  |T $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |merge)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui/global)
                                  |r $ %{} :Expr (:at 1519666231707) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519666232286) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1519666232551) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519666233841) (:by |root) (:text |:width)
                                          |j $ %{} :Leaf (:at 1519666237039) (:by |root) (:text ||80%)
                                      |r $ %{} :Expr (:at 1519666237536) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519666242626) (:by |root) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1519666245079) (:by |root) (:text "||0 auto")
                      |l $ %{} :Expr (:at 1519667208341) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519667209559) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519667209799) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519667210149) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1519668146091) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519668146639) (:by |root) (:text |a)
                              |L $ %{} :Expr (:at 1519668147383) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519668147826) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519668148235) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519668150003) (:by |root) (:text |:href)
                                      |j $ %{} :Leaf (:at 1519668150849) (:by |root) (:text ||https://github.com/Respo/respo-markdown)
                              |T $ %{} :Expr (:at 1519667210771) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667211837) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1519667215929) (:by |root) (:text ||respo-markdown)
                      |m $ %{} :Expr (:at 1519667221229) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519667222564) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519667222866) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519667223215) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1519667223732) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519667368528) (:by |root) (:text |comp-md-block)
                              |j $ %{} :Leaf (:at 1519667362824) (:by |root) (:text "||Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```clojure\n(require '[respo-md.comp.md :refer [comp-md comp-md-block]]\n\n(comp-md \"content\")\n\n(comp-md-block \"content\\nnew line\" {})\n```\n")
                              |r $ %{} :Expr (:at 1519667369384) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667369745) (:by |root) (:text |{})
                      |n $ %{} :Expr (:at 1519636082578) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519636083747) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519636083956) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519636084293) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519636084566) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519636089648) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1519636089874) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519636090304) (:by |root) (:text |{})
                          |n $ %{} :Expr (:at 1519667388871) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519667389401) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1519667389648) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667389960) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1519667392117) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667415609) (:by |root) (:text |comp-md)
                                  |j $ %{} :Leaf (:at 1519667411426) (:by |root) (:text "||This is an example for using `comp-md`:")
                          |r $ %{} :Expr (:at 1519667385975) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519667386674) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1519667386967) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667387320) (:by |root) (:text |{})
                              |T $ %{} :Expr (:at 1519636091595) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519636092591) (:by |root) (:text |input)
                                  |j $ %{} :Expr (:at 1519636092805) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519636093109) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1519636093657) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519636096877) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1519636603964) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1519636605434) (:by |root) (:text |merge)
                                              |T $ %{} :Leaf (:at 1519636099031) (:by |root) (:text |ui/input)
                                              |j $ %{} :Expr (:at 1519636606008) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519636606328) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1519667537765) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1519667538766) (:by |root) (:text |:width)
                                                      |j $ %{} :Leaf (:at 1519667540089) (:by |root) (:text ||100%)
                                      |r $ %{} :Expr (:at 1519636210841) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519636211804) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1519636212409) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519636213126) (:by |root) (:text |:text)
                                              |j $ %{} :Leaf (:at 1519636213706) (:by |root) (:text |state)
                                      |t $ %{} :Expr (:at 1519667663253) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519667667363) (:by |root) (:text |:placeholder)
                                          |j $ %{} :Leaf (:at 1519667671464) (:by |root) (:text "||text inline")
                                      |v $ %{} :Expr (:at 1519636214774) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519636217004) (:by |root) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1519636217402) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1604993439405) (:by |wA2nX3K2f) (:text |fn)
                                              |b $ %{} :Expr (:at 1604993440300) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1604993440585) (:by |wA2nX3K2f) (:text |e)
                                                  |j $ %{} :Leaf (:at 1604993441127) (:by |wA2nX3K2f) (:text |d!)
                                              |j $ %{} :Expr (:at 1604993442294) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1604993444132) (:by |wA2nX3K2f) (:text |d!)
                                                  |L $ %{} :Leaf (:at 1604993445125) (:by |wA2nX3K2f) (:text |cursor)
                                                  |T $ %{} :Expr (:at 1519636220710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1519636221572) (:by |root) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1519636222894) (:by |root) (:text |state)
                                                      |r $ %{} :Leaf (:at 1519636224255) (:by |root) (:text |:text)
                                                      |v $ %{} :Expr (:at 1519636224632) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1519636226843) (:by |root) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1604993570363) (:by |wA2nX3K2f) (:text |e)
                          |v $ %{} :Expr (:at 1519636102692) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519636103343) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1519636103537) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519636106583) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1519636107040) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519636110292) (:by |root) (:text |comp-md)
                                  |j $ %{} :Expr (:at 1519636204706) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519636206830) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1519636208338) (:by |root) (:text |state)
                      |p $ %{} :Expr (:at 1519666281442) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519666282429) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1519666283329) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1519667202122) (:by |root) (:text |40)
                      |r $ %{} :Expr (:at 1519635935661) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1519635936391) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1519635936607) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519635936929) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519635956527) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519635959461) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1519667467315) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519667467612) (:by |root) (:text |{})
                          |P $ %{} :Expr (:at 1519667425064) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519667425624) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1519667426253) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667426566) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1519667427072) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667429974) (:by |root) (:text |comp-md)
                                  |j $ %{} :Leaf (:at 1519667456866) (:by |root) (:text "||Example For using `comp-md-block`:")
                          |T $ %{} :Expr (:at 1519667420713) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519667421408) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1519667423158) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519667423507) (:by |root) (:text |{})
                              |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |textarea)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                      |b $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:placeholder)
                                          |j $ %{} :Leaf (:at 1519667681976) (:by |root) (:text "||multi-line content")
                                      |f $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |state)
                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui/textarea)
                                              |v $ %{} :Expr (:at 1519635981594) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519635981969) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1519635982219) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1519635983633) (:by |root) (:text |:height)
                                                      |j $ %{} :Leaf (:at 1519635990207) (:by |root) (:text |240)
                                                  |r $ %{} :Expr (:at 1519667537765) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1519667538766) (:by |root) (:text |:width)
                                                      |j $ %{} :Leaf (:at 1519667540089) (:by |root) (:text ||100%)
                                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505727637212) (:by |root) (:text |:on)
                                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:input)
                                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |e)
                                                          |j $ %{} :Leaf (:at 1604993544643) (:by |wA2nX3K2f) (:text |d!)
                                                      |n $ %{} :Expr (:at 1505731396007) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1612254726351) (:by |wA2nX3K2f) (:text |;)
                                                          |T $ %{} :Leaf (:at 1505731398427) (:by |root) (:text |println)
                                                          |X $ %{} :Leaf (:at 1505731408053) (:by |root) (:text ||Editing:)
                                                          |b $ %{} :Leaf (:at 1505731403909) (:by |root) (:text |state)
                                                          |j $ %{} :Expr (:at 1505731399317) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1505731400003) (:by |root) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1505731400407) (:by |root) (:text |e)
                                                      |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1604993541453) (:by |wA2nX3K2f) (:text |d!)
                                                          |f $ %{} :Leaf (:at 1604993543162) (:by |wA2nX3K2f) (:text |cursor)
                                                          |r $ %{} :Expr (:at 1505727589905) (:by |root)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1505727591504) (:by |root) (:text |assoc)
                                                              |L $ %{} :Leaf (:at 1505727600077) (:by |root) (:text |state)
                                                              |P $ %{} :Leaf (:at 1505727602474) (:by |root) (:text |:draft)
                                                              |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:value)
                                                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |e)
                          |j $ %{} :Expr (:at 1519635994848) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519635996530) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1519635996781) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519635997097) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519635998824) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519635999712) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1519636013166) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1519636014079) (:by |root) (:text |merge)
                                          |L $ %{} :Leaf (:at 1519636015308) (:by |root) (:text |ui/flex)
                                          |T $ %{} :Expr (:at 1519635999950) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519636000224) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1519636000475) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519636002766) (:by |root) (:text |:padding)
                                                  |j $ %{} :Leaf (:at 1519636003541) (:by |root) (:text |8)
                              |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519632143897) (:by |root) (:text |comp-md-block)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |state)
                                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:highlight)
                                          |j $ %{} :Leaf (:at 1505730937250) (:by |root) (:text |highlighter)
                                      |v $ %{} :Expr (:at 1520789005245) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520789006749) (:by |root) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1520789008066) (:by |root) (:text ||demo)
                      |t $ %{} :Expr (:at 1650651782303) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651782948) (:by |wA2nX3K2f) (:text |=<)
                          |b $ %{} :Leaf (:at 1650651785023) (:by |wA2nX3K2f) (:text |nil)
                          |h $ %{} :Leaf (:at 1650651785610) (:by |wA2nX3K2f) (:text |200)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505727567989) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727568736) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1505727567989) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1519636197599) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519636199835) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1519636200127) (:by |root) (:text ||)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505725057558) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.container)
            |r $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610732016720) (:by |wA2nX3K2f) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505726952691) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519632066189) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519632128446) (:by |root) (:text |comp-md)
                        |r $ %{} :Leaf (:at 1519632309109) (:by |root) (:text |comp-md-block)
                |yj $ %{} :Expr (:at 1505726927139) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540917574411) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1505726931244) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505726931520) (:by |root)
                      :data $ {}
                        |b $ %{} :Leaf (:at 1505726936654) (:by |root) (:text |defcomp)
                        |j $ %{} :Leaf (:at 1505726934044) (:by |root) (:text |<>)
                        |r $ %{} :Leaf (:at 1505726942621) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1505726943769) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1505726945290) (:by |root) (:text |textarea)
                        |y $ %{} :Leaf (:at 1519636123858) (:by |root) (:text |input)
                        |yT $ %{} :Leaf (:at 1519668159416) (:by |root) (:text |a)
    |respo-md.comp.md $ %{} :FileEntry
      :defs $ {}
        |blockquote $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |blockquote)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |props)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |&)
                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |children)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |create-element)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:blockquote)
                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |props)
                  |t $ %{} :Leaf (:at 1619549322828) (:by |wA2nX3K2f) (:text |&)
                  |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |children)
        |comp-code-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727949016) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-code-block)
              |n $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |first)
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732597144) (:by |wA2nX3K2f) (:text |join-str)
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |rest)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                              |v $ %{} :Leaf (:at 1619549157943) (:by |wA2nX3K2f) (:text |&newline)
                      |r $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:highlight)
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |pre)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                              |j $ %{} :Expr (:at 1696790667551) (:by |wA2nX3K2f)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1696790670899) (:by |wA2nX3K2f) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||md-code-block)
                                  |b $ %{} :Leaf (:at 1696790676100) (:by |wA2nX3K2f) (:text |style-code-block)
                      |r $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |not)
                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732592096) (:by |wA2nX3K2f) (:text |blank?)
                                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn?)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:innerHTML)
                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
        |comp-image $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-image)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |useful)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623694304398) (:by |wA2nX3K2f) (:text |&str:slice)
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                              |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |2)
                              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |-)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                  |r $ %{} :Expr (:at 1610732442668) (:by |wA2nX3K2f)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610732443683) (:by |wA2nX3K2f) (:text |let[])
                      |L $ %{} :Expr (:at 1610732444355) (:by |wA2nX3K2f)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |content)
                          |r $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |url)
                      |P $ %{} :Expr (:at 1610732444355) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |split)
                          |j $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |useful)
                          |r $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text "||](")
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |img)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:src)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:alt)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
        |comp-line $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727713665) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-line)
              |n $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |cond)
                  |a $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732235103) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||# ")
                      |j $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |h1)
                          |b $ %{} :Expr (:at 1610734142430) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734142835) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623694230810) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |2)
                  |h $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732238962) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||## ")
                      |j $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610733162108) (:by |wA2nX3K2f) (:text |h2)
                          |b $ %{} :Expr (:at 1610734144909) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734144909) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623694233087) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1610733164003) (:by |wA2nX3K2f) (:text |3)
                  |v $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732240941) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||### ")
                      |j $ %{} :Expr (:at 1610733167793) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610733170252) (:by |wA2nX3K2f) (:text |h3)
                          |b $ %{} :Expr (:at 1610734145994) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734145994) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733167793) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121037073) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1624121037073) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |4)
                  |w $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732242389) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1604993366873) (:by |wA2nX3K2f) (:text "||#### ")
                      |j $ %{} :Expr (:at 1610733174842) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610733176874) (:by |wA2nX3K2f) (:text |h4)
                          |b $ %{} :Expr (:at 1610734147486) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734147486) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733174842) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121038809) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1624121038809) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |5)
                  |x $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732244014) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||> ")
                      |j $ %{} :Expr (:at 1610733198882) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610733202609) (:by |wA2nX3K2f) (:text |blockquote)
                          |b $ %{} :Expr (:at 1610734148876) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734148876) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733198882) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121040551) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1624121040551) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |2)
                  |y $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732569696) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||* ")
                      |j $ %{} :Expr (:at 1610733209022) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612254635649) (:by |wA2nX3K2f) (:text |li)
                          |b $ %{} :Expr (:at 1610734150301) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734150301) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733209022) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |2)
                  |y5 $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732569696) (:by |wA2nX3K2f) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                          |r $ %{} :Leaf (:at 1655784119971) (:by |wA2nX3K2f) (:text "||- ")
                      |j $ %{} :Expr (:at 1610733209022) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612254635649) (:by |wA2nX3K2f) (:text |li)
                          |b $ %{} :Expr (:at 1610734150301) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610734150301) (:by |wA2nX3K2f) (:text |{})
                          |j $ %{} :Leaf (:at 1610733209022) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |2)
                  |yD $ %{} :Expr (:at 1651234447711) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Expr (:at 1651234449684) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651234449684) (:by |wA2nX3K2f) (:text |starts-with?)
                          |b $ %{} :Leaf (:at 1651234449684) (:by |wA2nX3K2f) (:text |line)
                          |h $ %{} :Leaf (:at 1651234455133) (:by |wA2nX3K2f) (:text "||#!html ")
                      |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |div)
                          |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |{})
                              |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text "|\"html-container")
                              |h $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651234532795) (:by |wA2nX3K2f) (:text |:innerHTML)
                                  |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |.trim)
                                      |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |&str:slice)
                                          |b $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |line)
                                          |h $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |7)
                  |yT $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732572111) (:by |wA2nX3K2f) (:text |true)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1612253094691) (:by |wA2nX3K2f) (:text |div)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                          |n $ %{} :Leaf (:at 1612253103294) (:by |wA2nX3K2f) (:text |&)
                          |r $ %{} :Expr (:at 1624121045270) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121045270) (:by |wA2nX3K2f) (:text |render-inline)
                              |j $ %{} :Leaf (:at 1624121045270) (:by |wA2nX3K2f) (:text |line)
        |comp-link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727764748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-link)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |useful)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623694267639) (:by |wA2nX3K2f) (:text |&str:slice)
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                              |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |-)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                  |r $ %{} :Expr (:at 1610732390750) (:by |wA2nX3K2f)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610732392388) (:by |wA2nX3K2f) (:text |let[])
                      |L $ %{} :Expr (:at 1610732396438) (:by |wA2nX3K2f)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |content)
                          |r $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |url)
                      |P $ %{} :Expr (:at 1610732396438) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732425420) (:by |wA2nX3K2f) (:text |split)
                          |j $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |useful)
                          |r $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text "||](")
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |and)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732406138) (:by |wA2nX3K2f) (:text |starts-with?)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||`")
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732408009) (:by |wA2nX3K2f) (:text |ends-with?)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||`")
                          |r $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:href)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:target)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||_blank)
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1623694269865) (:by |wA2nX3K2f) (:text |&str:slice)
                                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                              |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                                              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dec)
                                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                          |v $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:href)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                  |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:target)
                                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||_blank)
        |comp-md $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519631928616) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519632881248) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519631928616) (:by |root) (:text |comp-md)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1519636153860) (:by |root)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1612253159496) (:by |wA2nX3K2f) (:text |div)
                  |L $ %{} :Expr (:at 1519636158892) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519636159183) (:by |root) (:text |{})
                  |P $ %{} :Leaf (:at 1612253164155) (:by |wA2nX3K2f) (:text |&)
                  |T $ %{} :Expr (:at 1624121076956) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624121076956) (:by |wA2nX3K2f) (:text |render-inline)
                      |j $ %{} :Leaf (:at 1624121076956) (:by |wA2nX3K2f) (:text |text)
        |comp-md-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727653494) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-md-block)
              |n $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |blocks)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                      |r $ %{} :Expr (:at 1520789039052) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520789042450) (:by |root) (:text |class-name)
                          |j $ %{} :Expr (:at 1520789043515) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520789045795) (:by |root) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1520789046690) (:by |root) (:text |options)
                  |r $ %{} :Expr (:at 1612252836011) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612253228060) (:by |wA2nX3K2f) (:text |div)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                              |j $ %{} :Expr (:at 1520789052026) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1520789052543) (:by |root) (:text |if)
                                  |L $ %{} :Expr (:at 1520789053460) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520789076862) (:by |root) (:text |nil?)
                                      |j $ %{} :Leaf (:at 1520789058375) (:by |root) (:text |class-name)
                                  |P $ %{} :Leaf (:at 1520789072603) (:by |root) (:text ||md-block)
                                  |T $ %{} :Expr (:at 1520789017375) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520789018183) (:by |root) (:text |str)
                                      |T $ %{} :Leaf (:at 1520789019136) (:by |root) (:text "||md-block ")
                                      |j $ %{} :Leaf (:at 1520789064083) (:by |root) (:text |class-name)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519631967226) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519631968494) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1519631971217) (:by |root) (:text |options)
                      |r $ %{} :Leaf (:at 1612253270752) (:by |wA2nX3K2f) (:text |&)
                      |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |->)
                          |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |blocks)
                          |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |map)
                              |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |fn)
                                  |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |block)
                                  |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |let[])
                                      |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                          |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                      |r $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |block)
                                      |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |<>)
                                          |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1693242930197) (:by |wA2nX3K2f) (:text |to-lispy-string)
                                              |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                      |x $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121660550) (:by |wA2nX3K2f) (:text |case-default)
                                          |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                          |n $ %{} :Expr (:at 1624121662637) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1624121663711) (:by |wA2nX3K2f) (:text |<>)
                                              |T $ %{} :Expr (:at 1624121667484) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1624121668469) (:by |wA2nX3K2f) (:text |str)
                                                  |T $ %{} :Leaf (:at 1624121673662) (:by |wA2nX3K2f) (:text "||Unknown content: ")
                                                  |j $ %{} :Leaf (:at 1624121669701) (:by |wA2nX3K2f) (:text |mode)
                                          |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |:text)
                                              |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-text-block)
                                                  |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                          |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |:code)
                                              |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-code-block)
                                                  |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                                  |r $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |options)
        |comp-text-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727689097) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-text-block)
              |n $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612253185530) (:by |wA2nX3K2f) (:text |div)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                          |j $ %{} :Expr (:at 1696790810541) (:by |wA2nX3K2f)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696790815469) (:by |wA2nX3K2f) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1519633028823) (:by |root) (:text ||md-p)
                              |b $ %{} :Leaf (:at 1696790822398) (:by |wA2nX3K2f) (:text |style-paragraph)
                  |r $ %{} :Leaf (:at 1612253189178) (:by |wA2nX3K2f) (:text |&)
                  |v $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619548895002) (:by |wA2nX3K2f) (:text |->)
                      |f $ %{} :Leaf (:at 1624120989884) (:by |wA2nX3K2f) (:text |lines)
                      |r $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1624120987280) (:by |wA2nX3K2f) (:text |map)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-line)
                                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
        |render-inline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-inline)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619548843573) (:by |wA2nX3K2f) (:text |->)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624121020878) (:by |wA2nX3K2f) (:text |map)
                      |j $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1505725057558) (:by nil)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                          |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |let[])
                              |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode)
                                  |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                              |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |chunk)
                              |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121725761) (:by |wA2nX3K2f) (:text |case-default)
                                  |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode)
                                  |n $ %{} :Expr (:at 1624121728364) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |<>)
                                      |j $ %{} :Expr (:at 1624121728364) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |str)
                                          |j $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text ||Unknown:)
                                          |r $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |content)
                                      |r $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |nil)
                                  |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:code)
                                      |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |code)
                                          |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |{})
                                          |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>)
                                              |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                              |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil)
                                  |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:url)
                                      |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |a)
                                          |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |{})
                                              |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:href)
                                                  |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                              |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:inner-text)
                                                  |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                              |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:target)
                                                  |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text ||_blank)
                                  |x $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:link)
                                      |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-link)
                                          |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                  |y $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:image)
                                      |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-image)
                                          |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                  |yT $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:text)
                                      |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>)
                                          |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                          |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil)
        |style-code-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696790676631) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1696790677868) (:by |wA2nX3K2f) (:text |defstyle)
              |b $ %{} :Leaf (:at 1696790676631) (:by |wA2nX3K2f) (:text |style-code-block)
              |h $ %{} :Expr (:at 1696790676631) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696790679134) (:by |wA2nX3K2f) (:text |{})
                  |b $ %{} :Expr (:at 1696790691111) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696790692084) (:by |wA2nX3K2f) (:text "|\"&")
                      |b $ %{} :Expr (:at 1696790692474) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696790692728) (:by |wA2nX3K2f) (:text |{})
                          |b $ %{} :Expr (:at 1696790707429) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790708805) (:by |wA2nX3K2f) (:text |:border)
                              |b $ %{} :Expr (:at 1696790710096) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696790711445) (:by |wA2nX3K2f) (:text |str)
                                  |b $ %{} :Leaf (:at 1696790714247) (:by |wA2nX3K2f) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1696790714990) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696790715300) (:by |wA2nX3K2f) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1696790715596) (:by |wA2nX3K2f) (:text |0)
                                      |h $ %{} :Leaf (:at 1696790715813) (:by |wA2nX3K2f) (:text |0)
                                      |l $ %{} :Leaf (:at 1696790724281) (:by |wA2nX3K2f) (:text |86)
                          |h $ %{} :Expr (:at 1696790727096) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790729567) (:by |wA2nX3K2f) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1696790758524) (:by |wA2nX3K2f) (:text "|\"8px")
                          |l $ %{} :Expr (:at 1696790732525) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790733802) (:by |wA2nX3K2f) (:text |:padding)
                              |b $ %{} :Leaf (:at 1696790737373) (:by |wA2nX3K2f) (:text "|\"4px 8px")
                          |o $ %{} :Expr (:at 1696790739563) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790742508) (:by |wA2nX3K2f) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1696790747946) (:by |wA2nX3K2f) (:text |600)
        |style-paragraph $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696790822745) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1696790823833) (:by |wA2nX3K2f) (:text |defstyle)
              |b $ %{} :Leaf (:at 1696790822745) (:by |wA2nX3K2f) (:text |style-paragraph)
              |h $ %{} :Expr (:at 1696790822745) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696790825527) (:by |wA2nX3K2f) (:text |{})
                  |b $ %{} :Expr (:at 1696790826358) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696790827657) (:by |wA2nX3K2f) (:text "|\"&")
                      |b $ %{} :Expr (:at 1696790828175) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696790828527) (:by |wA2nX3K2f) (:text |{})
                  |h $ %{} :Expr (:at 1696790854856) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696790870076) (:by |wA2nX3K2f) (:text "|\"& code")
                      |b $ %{} :Expr (:at 1696790858200) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696790906459) (:by |wA2nX3K2f) (:text |{})
                          |b $ %{} :Expr (:at 1696790906869) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790911322) (:by |wA2nX3K2f) (:text |:border)
                              |b $ %{} :Expr (:at 1696790911587) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696790912047) (:by |wA2nX3K2f) (:text |str)
                                  |b $ %{} :Leaf (:at 1696790916635) (:by |wA2nX3K2f) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1696790918184) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696790919116) (:by |wA2nX3K2f) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1696790920367) (:by |wA2nX3K2f) (:text |0)
                                      |h $ %{} :Leaf (:at 1696790920594) (:by |wA2nX3K2f) (:text |0)
                                      |l $ %{} :Leaf (:at 1696790921658) (:by |wA2nX3K2f) (:text |086)
                          |h $ %{} :Expr (:at 1696790924191) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790927195) (:by |wA2nX3K2f) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1696790929648) (:by |wA2nX3K2f) (:text "|\"4px")
                          |l $ %{} :Expr (:at 1696790930615) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790932154) (:by |wA2nX3K2f) (:text |:padding)
                              |b $ %{} :Leaf (:at 1696790936303) (:by |wA2nX3K2f) (:text "|\"2px 4px")
                          |o $ %{} :Expr (:at 1696790930615) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696790939544) (:by |wA2nX3K2f) (:text |:margin)
                              |b $ %{} :Leaf (:at 1696790936303) (:by |wA2nX3K2f) (:text "|\"2px 4px")
                  |l $ %{} :Expr (:at 1696791015430) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696791035579) (:by |wA2nX3K2f) (:text "|\"& img")
                      |b $ %{} :Expr (:at 1696791020874) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696791021207) (:by |wA2nX3K2f) (:text |{})
                          |b $ %{} :Expr (:at 1696791022462) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696791023657) (:by |wA2nX3K2f) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1696791087960) (:by |wA2nX3K2f) (:text |480)
                          |h $ %{} :Expr (:at 1696791022462) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696791028501) (:by |wA2nX3K2f) (:text |:max-height)
                              |b $ %{} :Leaf (:at 1696791085158) (:by |wA2nX3K2f) (:text |320)
                          |l $ %{} :Expr (:at 1696791038772) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696791040449) (:by |wA2nX3K2f) (:text |:border)
                              |b $ %{} :Expr (:at 1696791041463) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696791042128) (:by |wA2nX3K2f) (:text |str)
                                  |b $ %{} :Leaf (:at 1696791045209) (:by |wA2nX3K2f) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1696791046060) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696791046391) (:by |wA2nX3K2f) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1696791046945) (:by |wA2nX3K2f) (:text |0)
                                      |h $ %{} :Leaf (:at 1696791047200) (:by |wA2nX3K2f) (:text |0)
                                      |l $ %{} :Leaf (:at 1696791050258) (:by |wA2nX3K2f) (:text |90)
                          |o $ %{} :Expr (:at 1696791054945) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696791059160) (:by |wA2nX3K2f) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1696791062725) (:by |wA2nX3K2f) (:text "|\"8px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505725057558) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.md)
            |r $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610732231554) (:by |wA2nX3K2f) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |hsl)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505727181444) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |create-element)
                |y $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505726906010) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.util.core)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
                        |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
                |yv $ %{} :Expr (:at 1505727143181) (:by |root)
                  :data $ {}
                    |L $ %{} :Leaf (:at 1540917580026) (:by |root) (:text |respo.core)
                    |P $ %{} :Leaf (:at 1505727150077) (:by |root) (:text |:refer)
                    |T $ %{} :Expr (:at 1505726875499) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505726881037) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1510159464898) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1505726883973) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1505726885309) (:by |root) (:text |pre)
                        |x $ %{} :Leaf (:at 1505726888827) (:by |root) (:text |code)
                        |xT $ %{} :Leaf (:at 1505727855954) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1505726889044) (:by |root) (:text |p)
                        |yT $ %{} :Leaf (:at 1505726892558) (:by |root) (:text |h1)
                        |yj $ %{} :Leaf (:at 1505726893138) (:by |root) (:text |h2)
                        |yn $ %{} :Leaf (:at 1610733131089) (:by |wA2nX3K2f) (:text |h3)
                        |yp $ %{} :Leaf (:at 1610733131590) (:by |wA2nX3K2f) (:text |h4)
                        |yr $ %{} :Leaf (:at 1505726894443) (:by |root) (:text |img)
                        |yv $ %{} :Leaf (:at 1505726894740) (:by |root) (:text |a)
                        |yx $ %{} :Leaf (:at 1505726913072) (:by |root) (:text |<>)
                        |yy $ %{} :Leaf (:at 1520787877469) (:by |root) (:text |style)
                        |yyT $ %{} :Leaf (:at 1612254669217) (:by |wA2nX3K2f) (:text |li)
                |yx $ %{} :Expr (:at 1520787802718) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520787809175) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1520787811338) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520787811550) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520787816329) (:by |root) (:text |map-with-idx)
                |z $ %{} :Expr (:at 1696790682656) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696790684407) (:by |wA2nX3K2f) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1696790685259) (:by |wA2nX3K2f) (:text |:refer)
                    |h $ %{} :Expr (:at 1696790685619) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696790687589) (:by |wA2nX3K2f) (:text |defstyle)
    |respo-md.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |def)
              |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |dev?)
              |r $ %{} :Leaf (:at 1610733445074) (:by |wA2nX3K2f) (:text |true)
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |def)
              |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |site)
              |r $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |{})
                  |j $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://localhost:8100/main-fonts.css")
                  |r $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                  |v $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1574868988921) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/respo-markdown/")
                  |x $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:title)
                      |j $ %{} :Leaf (:at 1574868982235) (:by |wA2nX3K2f) (:text "|\"Markdown")
                  |y $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:icon)
                      |j $ %{} :Leaf (:at 1574868977564) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                  |yT $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1574868969123) (:by |wA2nX3K2f) (:text "|\"respo-markdown")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
          :data $ {}
            |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |ns)
            |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |respo-md.config)
    |respo-md.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732838513) (:by |wA2nX3K2f) (:text |defatom)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |*store)
              |r $ %{} :Leaf (:at 1505728403740) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1505731425162) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505731425844) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1505731471250) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1505731471836) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505731473585) (:by |root) (:text |next-store)
                          |j $ %{} :Expr (:at 1505731474525) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692539190701) (:by |wA2nX3K2f) (:text |tag-match)
                              |b $ %{} :Leaf (:at 1692539144778) (:by |wA2nX3K2f) (:text |op)
                              |f $ %{} :Expr (:at 1692539145383) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1692539145507) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692539147009) (:by |wA2nX3K2f) (:text |:states)
                                      |b $ %{} :Leaf (:at 1692539148441) (:by |wA2nX3K2f) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1692539148698) (:by |wA2nX3K2f) (:text |s)
                                  |b $ %{} :Expr (:at 1692539151224) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692539154908) (:by |wA2nX3K2f) (:text |update-states)
                                      |b $ %{} :Leaf (:at 1692539156949) (:by |wA2nX3K2f) (:text |@*store)
                                      |h $ %{} :Leaf (:at 1692539160923) (:by |wA2nX3K2f) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1692539161243) (:by |wA2nX3K2f) (:text |s)
                              |h $ %{} :Expr (:at 1692539162420) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692539162796) (:by |wA2nX3K2f) (:text |_)
                                  |b $ %{} :Expr (:at 1692539168033) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1692539169196) (:by |wA2nX3K2f) (:text |do)
                                      |L $ %{} :Expr (:at 1692539169450) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1692539173180) (:by |wA2nX3K2f) (:text |eprintln)
                                          |b $ %{} :Leaf (:at 1692539177733) (:by |wA2nX3K2f) (:text "|\"unknown op:")
                                          |h $ %{} :Leaf (:at 1692539178110) (:by |wA2nX3K2f) (:text |op)
                                      |T $ %{} :Leaf (:at 1692539166374) (:by |wA2nX3K2f) (:text |@*store)
                  |r $ %{} :Expr (:at 1505731498721) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505731500253) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1505731502135) (:by |root) (:text |*store)
                      |r $ %{} :Leaf (:at 1505731505514) (:by |root) (:text |next-store)
        |highligher $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505730957353) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505730957353) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505730957353) (:by |root) (:text |highligher)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
              |t $ %{} :Expr (:at 1610732783545) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732787182) (:by |wA2nX3K2f) (:text |js/console.warn)
                  |j $ %{} :Leaf (:at 1623590946570) (:by |wA2nX3K2f) (:text "|\"highligher not ready")
              |v $ %{} :Expr (:at 1610732781199) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text |str)
                  |j $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text ||<code>)
                  |r $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text |code)
                  |v $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text ||</code>)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505730490269) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1574869032003) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1574869033858) (:by |wA2nX3K2f) (:text |println)
                  |j $ %{} :Leaf (:at 1574869047631) (:by |wA2nX3K2f) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1574869053411) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574869053744) (:by |wA2nX3K2f) (:text |if)
                      |j $ %{} :Leaf (:at 1574869055366) (:by |wA2nX3K2f) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1574869061226) (:by |wA2nX3K2f) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1574869062722) (:by |wA2nX3K2f) (:text "|\"release")
              |u $ %{} :Expr (:at 1650651406067) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650651407265) (:by |wA2nX3K2f) (:text |if)
                  |b $ %{} :Leaf (:at 1650651408874) (:by |wA2nX3K2f) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1650651410562) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651417256) (:by |wA2nX3K2f) (:text |load-console-formatter!)
              |y $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
              |yj $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1505731195914) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1505731196579) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1505731205783) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612251648032) (:by |wA2nX3K2f) (:text |store)
                          |j $ %{} :Leaf (:at 1612251649006) (:by |wA2nX3K2f) (:text |prev)
                      |T $ %{} :Expr (:at 1505731203017) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
              |yv $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505727391585) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727392691) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1505727391585) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610733473639) (:by |wA2nX3K2f) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1505728789454) (:by |root) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |defn)
              |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |reload!)
              |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                :data $ {}
              |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |if)
                  |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |nil?)
                      |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors)
                  |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |do)
                      |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |remove-watch)
                          |b $ %{} :Leaf (:at 1650651629562) (:by |wA2nX3K2f) (:text |*store)
                          |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes)
                      |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |clear-cache!)
                      |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |add-watch)
                          |b $ %{} :Leaf (:at 1650651630519) (:by |wA2nX3K2f) (:text |*store)
                          |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes)
                          |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |fn)
                              |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |reel)
                                  |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |prev)
                              |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |render-app!)
                      |n $ %{} :Expr (:at 1650651855563) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651857249) (:by |wA2nX3K2f) (:text |render-app!)
                      |q $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!)
                          |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"ok~")
                          |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"Ok")
                  |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!)
                      |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"error")
                      |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650651657536) (:by |wA2nX3K2f) (:text |render!)
                  |b $ %{} :Leaf (:at 1505727385806) (:by |root) (:text |mount-target)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |@*store)
                      |r $ %{} :Leaf (:at 1505730956948) (:by |root) (:text |highligher)
                  |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dispatch!)
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505727454126) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505727455518) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1505727454126) (:by |root) (:text |ssr?)
              |r $ %{} :Expr (:at 1505727454126) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505727459220) (:by |root) (:text |some?)
                  |j $ %{} :Expr (:at 1505727459505) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610733481502) (:by |wA2nX3K2f) (:text |js/document.querySelector)
                      |r $ %{} :Leaf (:at 1505731281859) (:by |root) (:text ||meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505725057558) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.main)
            |r $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1505727321639) (:by |root) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.container)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
                |x $ %{} :Expr (:at 1505728388653) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505728394020) (:by |root) (:text |respo-md.schema)
                    |r $ %{} :Leaf (:at 1505728395098) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1505728395889) (:by |root) (:text |schema)
                |xD $ %{} :Expr (:at 1505731517463) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1505731523117) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1505731523899) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1505731524156) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1604993493280) (:by |wA2nX3K2f) (:text |update-states)
                |ys $ %{} :Expr (:at 1574869015775) (:by |wA2nX3K2f)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1574869016607) (:by |wA2nX3K2f) (:text |respo-md.config)
                    |r $ %{} :Leaf (:at 1574869018310) (:by |wA2nX3K2f) (:text |:as)
                    |v $ %{} :Leaf (:at 1574869019033) (:by |wA2nX3K2f) (:text |config)
                |z $ %{} :Expr (:at 1650651609517) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"./calcit.build-errors")
                    |b $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default)
                    |h $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |build-errors)
                |zD $ %{} :Expr (:at 1650651609517) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"bottom-tip")
                    |b $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default)
                    |h $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |hud!)
    |respo-md.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505728371777) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505728374235) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1505728371777) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1505728371777) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505728375589) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1505728375898) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505728378070) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1505728378484) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1505728378975) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505728367327) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1505728367327) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505728367327) (:by |root) (:text |respo-md.schema)
    |respo-md.util.core $ %{} :FileEntry
      :defs $ {}
        |get0 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633240307982) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1633240309352) (:by |wA2nX3K2f) (:text |defn)
              |j $ %{} :Leaf (:at 1633240307982) (:by |wA2nX3K2f) (:text |get0)
              |r $ %{} :Expr (:at 1633240307982) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1633240310512) (:by |wA2nX3K2f) (:text |xs)
              |v $ %{} :Expr (:at 1633240310881) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1633240311348) (:by |wA2nX3K2f) (:text |if)
                  |j $ %{} :Expr (:at 1633240312002) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1633240312293) (:by |wA2nX3K2f) (:text |nil?)
                      |j $ %{} :Leaf (:at 1633240313098) (:by |wA2nX3K2f) (:text |xs)
                  |r $ %{} :Leaf (:at 1633240313999) (:by |wA2nX3K2f) (:text |nil)
                  |v $ %{} :Expr (:at 1633240314521) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1633240316009) (:by |wA2nX3K2f) (:text |.-0)
                      |j $ %{} :Leaf (:at 1633240317040) (:by |wA2nX3K2f) (:text |xs)
        |split-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732182245) (:by |wA2nX3K2f) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732141925) (:by |wA2nX3K2f) (:text |split-block-iter)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732074961) (:by |wA2nX3K2f) (:text |split-lines)
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                  |v $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                  |x $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:empty)
        |split-block-iter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732143799) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732149389) (:by |wA2nX3K2f) (:text |defn)
              |j $ %{} :Leaf (:at 1610732143799) (:by |wA2nX3K2f) (:text |split-block-iter)
              |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                  |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                  |v $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
              |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                  |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?)
                      |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                  |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?)
                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                      |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                      |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                          |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                              |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                  |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |let)
                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |first)
                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                          |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |rest)
                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                      |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650651735128) (:by |wA2nX3K2f) (:text |case-default)
                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                          |n $ %{} :Expr (:at 1650651732863) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |raise)
                              |b $ %{} :Expr (:at 1650651732863) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |str)
                                  |b $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text "||Strange splitting mode: ")
                                  |h $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |mode)
                          |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond)
                                  |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |=)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text ||)
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                  |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732163573) (:by |wA2nX3K2f) (:text |starts-with?)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1623694281287) (:by |wA2nX3K2f) (:text |&str:slice)
                                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |3)
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                                  |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650651738578) (:by |wA2nX3K2f) (:text |true)
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond)
                                  |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |=)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text ||)
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                              |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                                                  |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                  |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732165915) (:by |wA2nX3K2f) (:text |starts-with?)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                              |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                                                  |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1623694282723) (:by |wA2nX3K2f) (:text |&str:slice)
                                                  |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |3)
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                                  |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650651740525) (:by |wA2nX3K2f) (:text |true)
                                      |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                          |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                              |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                          |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                          |x $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                              |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                                  |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732168365) (:by |wA2nX3K2f) (:text |starts-with?)
                                      |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                      |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                  |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                      |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                      |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                          |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                              |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                                              |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                      |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                      |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                  |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                      |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                      |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                      |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                          |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                          |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                      |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
        |split-line $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732553043) (:by |wA2nX3K2f) (:text |defn)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
              |v $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732547789) (:by |wA2nX3K2f) (:text |split-line-iter)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                  |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                  |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||)
                  |x $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:text)
        |split-line-iter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732555006) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1610733935919) (:by |wA2nX3K2f) (:text |defn)
              |j $ %{} :Leaf (:at 1610732555006) (:by |wA2nX3K2f) (:text |split-line-iter)
              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                  |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
              |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                  |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                      |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                  |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |first)
                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623694292775) (:by |wA2nX3K2f) (:text |&str:slice)
                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |1)
                      |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1633239190265) (:by |wA2nX3K2f) (:text |case-default)
                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
                          |n $ %{} :Expr (:at 1633239190994) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |raise)
                              |j $ %{} :Expr (:at 1633239190994) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |str)
                                  |j $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text "||Unknown mode:")
                                  |r $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |mode)
                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624121246531) (:by |wA2nX3K2f) (:text |case-default)
                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                  |n $ %{} :Expr (:at 1624121247315) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |recur)
                                      |j $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |acc)
                                      |r $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |left)
                                      |v $ %{} :Expr (:at 1624121247315) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |str)
                                          |j $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |buffer)
                                          |r $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |cursor)
                                      |x $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |:text)
                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`")
                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                              |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                          |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                          |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                                  |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h)
                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |or)
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||http://)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1623694293982) (:by |wA2nX3K2f) (:text |&str:slice)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |0)
                                                      |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |7)
                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||https://)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1623694294955) (:by |wA2nX3K2f) (:text |&str:slice)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |0)
                                                      |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |8)
                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |split)
                                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ")
                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                  |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                          |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                      |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:url)
                                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |first)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ")
                                                      |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1624121329019) (:by |wA2nX3K2f) (:text |join-str)
                                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |rest)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                          |v $ %{} :Leaf (:at 1624120649742) (:by |wA2nX3K2f) (:text "|| ")
                                                  |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                  |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                          |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                              |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h)
                                              |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                  |x $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[)
                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                  |j $ %{} :Expr (:at 1612251751745) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1633240305535) (:by |wA2nX3K2f) (:text |get0)
                                                      |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1633239106366) (:by |wA2nX3K2f) (:text |.!match)
                                                          |b $ %{} :Leaf (:at 1619548977892) (:by |wA2nX3K2f) (:text |line)
                                                          |j $ %{} :Expr (:at 1633239108699) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1633239110354) (:by |wA2nX3K2f) (:text |new)
                                                              |L $ %{} :Leaf (:at 1633239113235) (:by |wA2nX3K2f) (:text |js/RegExp)
                                                              |T $ %{} :Leaf (:at 1612251934577) (:by |wA2nX3K2f) (:text "|\"^\\[[^\\]]+\\]\\([^\\)]+\\)")
                                                              |j $ %{} :Leaf (:at 1633239115771) (:by |wA2nX3K2f) (:text "|\"g")
                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                  |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                          |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                      |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:link)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1624120684709) (:by |wA2nX3K2f) (:text |.!replace)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                      |r $ %{} :Leaf (:at 1612251802738) (:by |wA2nX3K2f) (:text |guess)
                                                      |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                  |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                  |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                              |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                                  |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[)
                                                  |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                  |y $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!)
                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                  |j $ %{} :Expr (:at 1612251776491) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1633240307455) (:by |wA2nX3K2f) (:text |get0)
                                                      |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1633239126853) (:by |wA2nX3K2f) (:text |.!match)
                                                          |b $ %{} :Leaf (:at 1619548980755) (:by |wA2nX3K2f) (:text |line)
                                                          |j $ %{} :Expr (:at 1633239127991) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1633239129212) (:by |wA2nX3K2f) (:text |new)
                                                              |L $ %{} :Leaf (:at 1633239132777) (:by |wA2nX3K2f) (:text |js/RegExp)
                                                              |T $ %{} :Leaf (:at 1612251936699) (:by |wA2nX3K2f) (:text "|\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)")
                                                              |j $ %{} :Leaf (:at 1633240248438) (:by |wA2nX3K2f) (:text "|\"g")
                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                  |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                          |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                          |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                              |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                      |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:image)
                                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1623590485067) (:by |wA2nX3K2f) (:text |.replace)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                      |r $ %{} :Leaf (:at 1612251804395) (:by |wA2nX3K2f) (:text |guess)
                                                      |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                  |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                  |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                              |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                  |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                  |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                                  |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!)
                                                  |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                          |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                              |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                  |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`")
                                  |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                      |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                          |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                              |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                                              |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                      |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                      |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                  |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                      |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                      |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                      |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                          |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                          |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                      |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505725057558) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.util.core)
            |r $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
  :ir $ {} (:package |respo-md)
    :files $ {}
      |respo-md.comp.container $ {}
        :defs $ {}
          |comp-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727501758) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
                |n $ %{} :Expr (:at 1505727504292) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505727504998) (:by |root) (:text |store)
                    |j $ %{} :Leaf (:at 1505730982666) (:by |root) (:text |highlighter)
                |p $ %{} :Expr (:at 1505727548387) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1505727549043) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1505727549265) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505727549415) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505727551326) (:by |root) (:text |states)
                            |j $ %{} :Expr (:at 1505727551563) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505727553338) (:by |root) (:text |:states)
                                |j $ %{} :Leaf (:at 1505727554261) (:by |root) (:text |store)
                        |b $ %{} :Expr (:at 1604993448025) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1604993450133) (:by |wA2nX3K2f) (:text |cursor)
                            |j $ %{} :Expr (:at 1604993458643) (:by |wA2nX3K2f)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1610734068493) (:by |wA2nX3K2f) (:text |either)
                                |T $ %{} :Expr (:at 1604993451171) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1604993455203) (:by |wA2nX3K2f) (:text |:cursor)
                                    |j $ %{} :Leaf (:at 1604993458218) (:by |wA2nX3K2f) (:text |states)
                                |j $ %{} :Expr (:at 1604993460055) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1604993460387) (:by |wA2nX3K2f) (:text |[])
                        |j $ %{} :Expr (:at 1505727555091) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505727555850) (:by |root) (:text |state)
                            |j $ %{} :Expr (:at 1505727557133) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734064857) (:by |wA2nX3K2f) (:text |either)
                                |j $ %{} :Expr (:at 1505727562987) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505727561366) (:by |root) (:text |:data)
                                    |j $ %{} :Leaf (:at 1505727564864) (:by |root) (:text |states)
                                |r $ %{} :Leaf (:at 1505727567606) (:by |root) (:text |initial-state)
                    |T $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |merge)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui/global)
                                    |r $ %{} :Expr (:at 1519666231707) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519666232286) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1519666232551) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519666233841) (:by |root) (:text |:width)
                                            |j $ %{} :Leaf (:at 1519666237039) (:by |root) (:text ||80%)
                                        |r $ %{} :Expr (:at 1519666237536) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519666242626) (:by |root) (:text |:margin)
                                            |j $ %{} :Leaf (:at 1519666245079) (:by |root) (:text "||0 auto")
                        |l $ %{} :Expr (:at 1519667208341) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519667209559) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1519667209799) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519667210149) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1519668146091) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1519668146639) (:by |root) (:text |a)
                                |L $ %{} :Expr (:at 1519668147383) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519668147826) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1519668148235) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519668150003) (:by |root) (:text |:href)
                                        |j $ %{} :Leaf (:at 1519668150849) (:by |root) (:text ||https://github.com/Respo/respo-markdown)
                                |T $ %{} :Expr (:at 1519667210771) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667211837) (:by |root) (:text |<>)
                                    |j $ %{} :Leaf (:at 1519667215929) (:by |root) (:text ||respo-markdown)
                        |m $ %{} :Expr (:at 1519667221229) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519667222564) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1519667222866) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519667223215) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1519667223732) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519667368528) (:by |root) (:text |comp-md-block)
                                |j $ %{} :Leaf (:at 1519667362824) (:by |root) (:text "||Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```clojure\n(require '[respo-md.comp.md :refer [comp-md comp-md-block]]\n\n(comp-md \"content\")\n\n(comp-md-block \"content\\nnew line\" {})\n```\n")
                                |r $ %{} :Expr (:at 1519667369384) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667369745) (:by |root) (:text |{})
                        |n $ %{} :Expr (:at 1519636082578) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519636083747) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1519636083956) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519636084293) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1519636084566) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519636089648) (:by |root) (:text |:style)
                                    |j $ %{} :Expr (:at 1519636089874) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519636090304) (:by |root) (:text |{})
                            |n $ %{} :Expr (:at 1519667388871) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519667389401) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1519667389648) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667389960) (:by |root) (:text |{})
                                |r $ %{} :Expr (:at 1519667392117) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667415609) (:by |root) (:text |comp-md)
                                    |j $ %{} :Leaf (:at 1519667411426) (:by |root) (:text "||This is an example for using `comp-md`:")
                            |r $ %{} :Expr (:at 1519667385975) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1519667386674) (:by |root) (:text |div)
                                |L $ %{} :Expr (:at 1519667386967) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667387320) (:by |root) (:text |{})
                                |T $ %{} :Expr (:at 1519636091595) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519636092591) (:by |root) (:text |input)
                                    |j $ %{} :Expr (:at 1519636092805) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519636093109) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1519636093657) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519636096877) (:by |root) (:text |:style)
                                            |j $ %{} :Expr (:at 1519636603964) (:by |root)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1519636605434) (:by |root) (:text |merge)
                                                |T $ %{} :Leaf (:at 1519636099031) (:by |root) (:text |ui/input)
                                                |j $ %{} :Expr (:at 1519636606008) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1519636606328) (:by |root) (:text |{})
                                                    |j $ %{} :Expr (:at 1519667537765) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1519667538766) (:by |root) (:text |:width)
                                                        |j $ %{} :Leaf (:at 1519667540089) (:by |root) (:text ||100%)
                                        |r $ %{} :Expr (:at 1519636210841) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519636211804) (:by |root) (:text |:value)
                                            |j $ %{} :Expr (:at 1519636212409) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1519636213126) (:by |root) (:text |:text)
                                                |j $ %{} :Leaf (:at 1519636213706) (:by |root) (:text |state)
                                        |t $ %{} :Expr (:at 1519667663253) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519667667363) (:by |root) (:text |:placeholder)
                                            |j $ %{} :Leaf (:at 1519667671464) (:by |root) (:text "||text inline")
                                        |v $ %{} :Expr (:at 1519636214774) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519636217004) (:by |root) (:text |:on-input)
                                            |j $ %{} :Expr (:at 1519636217402) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1604993439405) (:by |wA2nX3K2f) (:text |fn)
                                                |b $ %{} :Expr (:at 1604993440300) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1604993440585) (:by |wA2nX3K2f) (:text |e)
                                                    |j $ %{} :Leaf (:at 1604993441127) (:by |wA2nX3K2f) (:text |d!)
                                                |j $ %{} :Expr (:at 1604993442294) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1604993444132) (:by |wA2nX3K2f) (:text |d!)
                                                    |L $ %{} :Leaf (:at 1604993445125) (:by |wA2nX3K2f) (:text |cursor)
                                                    |T $ %{} :Expr (:at 1519636220710) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1519636221572) (:by |root) (:text |assoc)
                                                        |j $ %{} :Leaf (:at 1519636222894) (:by |root) (:text |state)
                                                        |r $ %{} :Leaf (:at 1519636224255) (:by |root) (:text |:text)
                                                        |v $ %{} :Expr (:at 1519636224632) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1519636226843) (:by |root) (:text |:value)
                                                            |j $ %{} :Leaf (:at 1604993570363) (:by |wA2nX3K2f) (:text |e)
                            |v $ %{} :Expr (:at 1519636102692) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519636103343) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1519636103537) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519636106583) (:by |root) (:text |{})
                                |r $ %{} :Expr (:at 1519636107040) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519636110292) (:by |root) (:text |comp-md)
                                    |j $ %{} :Expr (:at 1519636204706) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519636206830) (:by |root) (:text |:text)
                                        |j $ %{} :Leaf (:at 1519636208338) (:by |root) (:text |state)
                        |p $ %{} :Expr (:at 1519666281442) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519666282429) (:by |root) (:text |=<)
                            |j $ %{} :Leaf (:at 1519666283329) (:by |root) (:text |nil)
                            |r $ %{} :Leaf (:at 1519667202122) (:by |root) (:text |40)
                        |r $ %{} :Expr (:at 1519635935661) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1519635936391) (:by |root) (:text |div)
                            |L $ %{} :Expr (:at 1519635936607) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519635936929) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1519635956527) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519635959461) (:by |root) (:text |:style)
                                    |j $ %{} :Expr (:at 1519667467315) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519667467612) (:by |root) (:text |{})
                            |P $ %{} :Expr (:at 1519667425064) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519667425624) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1519667426253) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667426566) (:by |root) (:text |{})
                                |r $ %{} :Expr (:at 1519667427072) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667429974) (:by |root) (:text |comp-md)
                                    |j $ %{} :Leaf (:at 1519667456866) (:by |root) (:text "||Example For using `comp-md-block`:")
                            |T $ %{} :Expr (:at 1519667420713) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1519667421408) (:by |root) (:text |div)
                                |L $ %{} :Expr (:at 1519667423158) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519667423507) (:by |root) (:text |{})
                                |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |textarea)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                        |b $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:placeholder)
                                            |j $ %{} :Leaf (:at 1519667681976) (:by |root) (:text "||multi-line content")
                                        |f $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:value)
                                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |state)
                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |merge)
                                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui/textarea)
                                                |v $ %{} :Expr (:at 1519635981594) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1519635981969) (:by |root) (:text |{})
                                                    |j $ %{} :Expr (:at 1519635982219) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1519635983633) (:by |root) (:text |:height)
                                                        |j $ %{} :Leaf (:at 1519635990207) (:by |root) (:text |240)
                                                    |r $ %{} :Expr (:at 1519667537765) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1519667538766) (:by |root) (:text |:width)
                                                        |j $ %{} :Leaf (:at 1519667540089) (:by |root) (:text ||100%)
                                        |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505727637212) (:by |root) (:text |:on)
                                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:input)
                                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |e)
                                                            |j $ %{} :Leaf (:at 1604993544643) (:by |wA2nX3K2f) (:text |d!)
                                                        |n $ %{} :Expr (:at 1505731396007) (:by |root)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1612254726351) (:by |wA2nX3K2f) (:text |;)
                                                            |T $ %{} :Leaf (:at 1505731398427) (:by |root) (:text |println)
                                                            |X $ %{} :Leaf (:at 1505731408053) (:by |root) (:text ||Editing:)
                                                            |b $ %{} :Leaf (:at 1505731403909) (:by |root) (:text |state)
                                                            |j $ %{} :Expr (:at 1505731399317) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1505731400003) (:by |root) (:text |:value)
                                                                |j $ %{} :Leaf (:at 1505731400407) (:by |root) (:text |e)
                                                        |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1604993541453) (:by |wA2nX3K2f) (:text |d!)
                                                            |f $ %{} :Leaf (:at 1604993543162) (:by |wA2nX3K2f) (:text |cursor)
                                                            |r $ %{} :Expr (:at 1505727589905) (:by |root)
                                                              :data $ {}
                                                                |D $ %{} :Leaf (:at 1505727591504) (:by |root) (:text |assoc)
                                                                |L $ %{} :Leaf (:at 1505727600077) (:by |root) (:text |state)
                                                                |P $ %{} :Leaf (:at 1505727602474) (:by |root) (:text |:draft)
                                                                |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:value)
                                                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |e)
                            |j $ %{} :Expr (:at 1519635994848) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1519635996530) (:by |root) (:text |div)
                                |L $ %{} :Expr (:at 1519635996781) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519635997097) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1519635998824) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519635999712) (:by |root) (:text |:style)
                                        |j $ %{} :Expr (:at 1519636013166) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1519636014079) (:by |root) (:text |merge)
                                            |L $ %{} :Leaf (:at 1519636015308) (:by |root) (:text |ui/flex)
                                            |T $ %{} :Expr (:at 1519635999950) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1519636000224) (:by |root) (:text |{})
                                                |j $ %{} :Expr (:at 1519636000475) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1519636002766) (:by |root) (:text |:padding)
                                                    |j $ %{} :Leaf (:at 1519636003541) (:by |root) (:text |8)
                                |T $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519632143897) (:by |root) (:text |comp-md-block)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |state)
                                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:highlight)
                                            |j $ %{} :Leaf (:at 1505730937250) (:by |root) (:text |highlighter)
                                        |r $ %{} :Expr (:at 1520787968976) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520787970268) (:by |root) (:text |:css)
                                            |j $ %{} :Leaf (:at 1520789321927) (:by |root) (:text "||.md-p code {\n  background-color: #edf;\n  padding: 0 8px;\n}")
                                        |v $ %{} :Expr (:at 1520789005245) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520789006749) (:by |root) (:text |:class-name)
                                            |j $ %{} :Leaf (:at 1520789008066) (:by |root) (:text ||demo)
                        |t $ %{} :Expr (:at 1650651782303) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651782948) (:by |wA2nX3K2f) (:text |=<)
                            |b $ %{} :Leaf (:at 1650651785023) (:by |wA2nX3K2f) (:text |nil)
                            |h $ %{} :Leaf (:at 1650651785610) (:by |wA2nX3K2f) (:text |200)
          |initial-state $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505727567989) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727568736) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1505727567989) (:by |root) (:text |initial-state)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:draft)
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||)
                    |r $ %{} :Expr (:at 1519636197599) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519636199835) (:by |root) (:text |:text)
                        |j $ %{} :Leaf (:at 1519636200127) (:by |root) (:text ||)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.container)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610732016720) (:by |wA2nX3K2f) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui)
                  |x $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505726952691) (:by |root) (:text |=<)
                  |yT $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1519632066189) (:by |root) (:text |respo-md.comp.md)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1519632128446) (:by |root) (:text |comp-md)
                          |r $ %{} :Leaf (:at 1519632309109) (:by |root) (:text |comp-md-block)
                  |yj $ %{} :Expr (:at 1505726927139) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540917574411) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1505726931244) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505726931520) (:by |root)
                        :data $ {}
                          |b $ %{} :Leaf (:at 1505726936654) (:by |root) (:text |defcomp)
                          |j $ %{} :Leaf (:at 1505726934044) (:by |root) (:text |<>)
                          |r $ %{} :Leaf (:at 1505726942621) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1505726943769) (:by |root) (:text |span)
                          |x $ %{} :Leaf (:at 1505726945290) (:by |root) (:text |textarea)
                          |y $ %{} :Leaf (:at 1519636123858) (:by |root) (:text |input)
                          |yT $ %{} :Leaf (:at 1519668159416) (:by |root) (:text |a)
      |respo-md.comp.md $ {}
        :defs $ {}
          |blockquote $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |blockquote)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |props)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |&)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |children)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |create-element)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:blockquote)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |props)
                    |t $ %{} :Leaf (:at 1619549322828) (:by |wA2nX3K2f) (:text |&)
                    |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |children)
          |comp-code-block $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727949016) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-code-block)
                |n $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |first)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732597144) (:by |wA2nX3K2f) (:text |join-str)
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |rest)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                                |v $ %{} :Leaf (:at 1619549157943) (:by |wA2nX3K2f) (:text |&newline)
                        |r $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:highlight)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |pre)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||md-code-block)
                        |r $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |if)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |and)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |not)
                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732592096) (:by |wA2nX3K2f) (:text |blank?)
                                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn?)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:innerHTML)
                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |highlight-fn)
                                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
          |comp-image $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-image)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |useful)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1623694304398) (:by |wA2nX3K2f) (:text |&str:slice)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |2)
                                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |-)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                    |r $ %{} :Expr (:at 1610732442668) (:by |wA2nX3K2f)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1610732443683) (:by |wA2nX3K2f) (:text |let[])
                        |L $ %{} :Expr (:at 1610732444355) (:by |wA2nX3K2f)
                          :data $ {}
                            |j $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |content)
                            |r $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |url)
                        |P $ %{} :Expr (:at 1610732444355) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |split)
                            |j $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text |useful)
                            |r $ %{} :Leaf (:at 1610732444355) (:by |wA2nX3K2f) (:text "||](")
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |img)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:src)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:alt)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
          |comp-line $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727713665) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-line)
                |n $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |cond)
                    |a $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732235103) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||# ")
                        |j $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |h1)
                            |b $ %{} :Expr (:at 1610734142430) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734142835) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1610733156408) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1623694230810) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1610733156408) (:by |wA2nX3K2f) (:text |2)
                    |h $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732238962) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||## ")
                        |j $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610733162108) (:by |wA2nX3K2f) (:text |h2)
                            |b $ %{} :Expr (:at 1610734144909) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734144909) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1610733157934) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1623694233087) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1610733157934) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1610733164003) (:by |wA2nX3K2f) (:text |3)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732240941) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||### ")
                        |j $ %{} :Expr (:at 1610733167793) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610733170252) (:by |wA2nX3K2f) (:text |h3)
                            |b $ %{} :Expr (:at 1610734145994) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734145994) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733167793) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121037073) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1624121037073) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1624121037073) (:by |wA2nX3K2f) (:text |4)
                    |w $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732242389) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1604993366873) (:by |wA2nX3K2f) (:text "||#### ")
                        |j $ %{} :Expr (:at 1610733174842) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610733176874) (:by |wA2nX3K2f) (:text |h4)
                            |b $ %{} :Expr (:at 1610734147486) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734147486) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733174842) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121038809) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1624121038809) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1624121038809) (:by |wA2nX3K2f) (:text |5)
                    |x $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732244014) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||> ")
                        |j $ %{} :Expr (:at 1610733198882) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610733202609) (:by |wA2nX3K2f) (:text |blockquote)
                            |b $ %{} :Expr (:at 1610734148876) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734148876) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733198882) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121040551) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1624121040551) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1624121040551) (:by |wA2nX3K2f) (:text |2)
                    |y $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732569696) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||* ")
                        |j $ %{} :Expr (:at 1610733209022) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612254635649) (:by |wA2nX3K2f) (:text |li)
                            |b $ %{} :Expr (:at 1610734150301) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734150301) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733209022) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |2)
                    |y5 $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732569696) (:by |wA2nX3K2f) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                            |r $ %{} :Leaf (:at 1655784119971) (:by |wA2nX3K2f) (:text "||- ")
                        |j $ %{} :Expr (:at 1610733209022) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612254635649) (:by |wA2nX3K2f) (:text |li)
                            |b $ %{} :Expr (:at 1610734150301) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610734150301) (:by |wA2nX3K2f) (:text |{})
                            |j $ %{} :Leaf (:at 1610733209022) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Expr (:at 1624121043142) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1624121043142) (:by |wA2nX3K2f) (:text |2)
                    |yD $ %{} :Expr (:at 1651234447711) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Expr (:at 1651234449684) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1651234449684) (:by |wA2nX3K2f) (:text |starts-with?)
                            |b $ %{} :Leaf (:at 1651234449684) (:by |wA2nX3K2f) (:text |line)
                            |h $ %{} :Leaf (:at 1651234455133) (:by |wA2nX3K2f) (:text "||#!html ")
                        |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |div)
                            |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |{})
                                |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |:class-name)
                                    |b $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text "|\"html-container")
                                |h $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1651234532795) (:by |wA2nX3K2f) (:text |:innerHTML)
                                    |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |.trim)
                                        |b $ %{} :Expr (:at 1651234501540) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |&str:slice)
                                            |b $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |line)
                                            |h $ %{} :Leaf (:at 1651234501540) (:by |wA2nX3K2f) (:text |7)
                    |yT $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732572111) (:by |wA2nX3K2f) (:text |true)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1612253094691) (:by |wA2nX3K2f) (:text |div)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                            |n $ %{} :Leaf (:at 1612253103294) (:by |wA2nX3K2f) (:text |&)
                            |r $ %{} :Expr (:at 1624121045270) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121045270) (:by |wA2nX3K2f) (:text |render-inline)
                                |j $ %{} :Leaf (:at 1624121045270) (:by |wA2nX3K2f) (:text |line)
          |comp-link $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727764748) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-link)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |useful)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1623694267639) (:by |wA2nX3K2f) (:text |&str:slice)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |-)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                    |r $ %{} :Expr (:at 1610732390750) (:by |wA2nX3K2f)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1610732392388) (:by |wA2nX3K2f) (:text |let[])
                        |L $ %{} :Expr (:at 1610732396438) (:by |wA2nX3K2f)
                          :data $ {}
                            |j $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |content)
                            |r $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |url)
                        |P $ %{} :Expr (:at 1610732396438) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732425420) (:by |wA2nX3K2f) (:text |split)
                            |j $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text |useful)
                            |r $ %{} :Leaf (:at 1610732396438) (:by |wA2nX3K2f) (:text "||](")
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |if)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |and)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732406138) (:by |wA2nX3K2f) (:text |starts-with?)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||`")
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732408009) (:by |wA2nX3K2f) (:text |ends-with?)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||`")
                            |r $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |a)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:href)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:target)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||_blank)
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1623694269865) (:by |wA2nX3K2f) (:text |&str:slice)
                                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                                |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |1)
                                                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dec)
                                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |count)
                                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                            |v $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |a)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:href)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |url)
                                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:inner-text)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |content)
                                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:target)
                                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||_blank)
          |comp-md $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1519631928616) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519632881248) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1519631928616) (:by |root) (:text |comp-md)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                |v $ %{} :Expr (:at 1519636153860) (:by |root)
                  :data $ {}
                    |5 $ %{} :Leaf (:at 1612253159496) (:by |wA2nX3K2f) (:text |div)
                    |L $ %{} :Expr (:at 1519636158892) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519636159183) (:by |root) (:text |{})
                    |P $ %{} :Leaf (:at 1612253164155) (:by |wA2nX3K2f) (:text |&)
                    |T $ %{} :Expr (:at 1624121076956) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1624121076956) (:by |wA2nX3K2f) (:text |render-inline)
                        |j $ %{} :Leaf (:at 1624121076956) (:by |wA2nX3K2f) (:text |text)
          |comp-md-block $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727653494) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-md-block)
                |n $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |options)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |blocks)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                        |j $ %{} :Expr (:at 1520789030602) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520789031254) (:by |root) (:text |css)
                            |j $ %{} :Expr (:at 1520789034981) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520789035575) (:by |root) (:text |:css)
                                |j $ %{} :Leaf (:at 1520789037456) (:by |root) (:text |options)
                        |r $ %{} :Expr (:at 1520789039052) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520789042450) (:by |root) (:text |class-name)
                            |j $ %{} :Expr (:at 1520789043515) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520789045795) (:by |root) (:text |:class-name)
                                |j $ %{} :Leaf (:at 1520789046690) (:by |root) (:text |options)
                    |r $ %{} :Expr (:at 1612252836011) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1612253228060) (:by |wA2nX3K2f) (:text |div)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                            |b $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                                |j $ %{} :Expr (:at 1520789052026) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1520789052543) (:by |root) (:text |if)
                                    |L $ %{} :Expr (:at 1520789053460) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520789076862) (:by |root) (:text |nil?)
                                        |j $ %{} :Leaf (:at 1520789058375) (:by |root) (:text |class-name)
                                    |P $ %{} :Leaf (:at 1520789072603) (:by |root) (:text ||md-block)
                                    |T $ %{} :Expr (:at 1520789017375) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1520789018183) (:by |root) (:text |str)
                                        |T $ %{} :Leaf (:at 1520789019136) (:by |root) (:text "||md-block ")
                                        |j $ %{} :Leaf (:at 1520789064083) (:by |root) (:text |class-name)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1519631967226) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519631968494) (:by |root) (:text |:style)
                                    |j $ %{} :Leaf (:at 1519631971217) (:by |root) (:text |options)
                        |n $ %{} :Expr (:at 1624121619144) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1624121619595) (:by |wA2nX3K2f) (:text |if)
                            |j $ %{} :Expr (:at 1624121619861) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121621285) (:by |wA2nX3K2f) (:text |some?)
                                |j $ %{} :Leaf (:at 1624121625804) (:by |wA2nX3K2f) (:text |css)
                            |r $ %{} :Expr (:at 1624121633516) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |style)
                                |j $ %{} :Expr (:at 1624121633516) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |{})
                                    |j $ %{} :Expr (:at 1624121633516) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |:inner-text)
                                        |j $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |css)
                                    |r $ %{} :Expr (:at 1624121633516) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |:scoped)
                                        |j $ %{} :Leaf (:at 1624121633516) (:by |wA2nX3K2f) (:text |true)
                        |r $ %{} :Leaf (:at 1612253270752) (:by |wA2nX3K2f) (:text |&)
                        |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |->)
                            |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |blocks)
                            |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |map)
                                |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |fn)
                                    |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |block)
                                    |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |let[])
                                        |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                            |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                        |r $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |block)
                                        |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |<>)
                                            |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |pr-str)
                                                |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                        |x $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121660550) (:by |wA2nX3K2f) (:text |case-default)
                                            |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |mode)
                                            |n $ %{} :Expr (:at 1624121662637) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1624121663711) (:by |wA2nX3K2f) (:text |<>)
                                                |T $ %{} :Expr (:at 1624121667484) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1624121668469) (:by |wA2nX3K2f) (:text |str)
                                                    |T $ %{} :Leaf (:at 1624121673662) (:by |wA2nX3K2f) (:text "||Unknown content: ")
                                                    |j $ %{} :Leaf (:at 1624121669701) (:by |wA2nX3K2f) (:text |mode)
                                            |r $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |:text)
                                                |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-text-block)
                                                    |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                            |v $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |:code)
                                                |j $ %{} :Expr (:at 1624121641310) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |comp-code-block)
                                                    |j $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |lines)
                                                    |r $ %{} :Leaf (:at 1624121641310) (:by |wA2nX3K2f) (:text |options)
          |comp-text-block $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727689097) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-text-block)
                |n $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lines)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1612253185530) (:by |wA2nX3K2f) (:text |div)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:class-name)
                            |j $ %{} :Leaf (:at 1519633028823) (:by |root) (:text ||md-p)
                    |r $ %{} :Leaf (:at 1612253189178) (:by |wA2nX3K2f) (:text |&)
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1619548895002) (:by |wA2nX3K2f) (:text |->)
                        |f $ %{} :Leaf (:at 1624120989884) (:by |wA2nX3K2f) (:text |lines)
                        |r $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1624120987280) (:by |wA2nX3K2f) (:text |map)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-line)
                                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
          |render-inline $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-inline)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1619548843573) (:by |wA2nX3K2f) (:text |->)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1624121020878) (:by |wA2nX3K2f) (:text |map)
                        |j $ %{} :Expr (:at 1505725057558) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |fn)
                            |j $ %{} :Expr (:at 1505725057558) (:by nil)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |chunk)
                            |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |let[])
                                |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode)
                                    |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |chunk)
                                |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121725761) (:by |wA2nX3K2f) (:text |case-default)
                                    |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |mode)
                                    |n $ %{} :Expr (:at 1624121728364) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |<>)
                                        |j $ %{} :Expr (:at 1624121728364) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |str)
                                            |j $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text ||Unknown:)
                                            |r $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |content)
                                        |r $ %{} :Leaf (:at 1624121728364) (:by |wA2nX3K2f) (:text |nil)
                                    |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:code)
                                        |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |code)
                                            |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |{})
                                            |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>)
                                                |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                                |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil)
                                    |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:url)
                                        |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |a)
                                            |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |{})
                                                |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:href)
                                                    |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                                |r $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:inner-text)
                                                    |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                                |v $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:target)
                                                    |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text ||_blank)
                                    |x $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:link)
                                        |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-link)
                                            |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                    |y $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:image)
                                        |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |comp-image)
                                            |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                    |yT $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |:text)
                                        |j $ %{} :Expr (:at 1624121024850) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |<>)
                                            |j $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |content)
                                            |r $ %{} :Leaf (:at 1624121024850) (:by |wA2nX3K2f) (:text |nil)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.md)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610732231554) (:by |wA2nX3K2f) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |hsl)
                  |v $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ui)
                  |x $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505727181444) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |create-element)
                  |y $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505726906010) (:by |root) (:text |=<)
                  |yj $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.util.core)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
                  |yv $ %{} :Expr (:at 1505727143181) (:by |root)
                    :data $ {}
                      |L $ %{} :Leaf (:at 1540917580026) (:by |root) (:text |respo.core)
                      |P $ %{} :Leaf (:at 1505727150077) (:by |root) (:text |:refer)
                      |T $ %{} :Expr (:at 1505726875499) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505726881037) (:by |root) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1510159464898) (:by |root) (:text |list->)
                          |r $ %{} :Leaf (:at 1505726883973) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1505726885309) (:by |root) (:text |pre)
                          |x $ %{} :Leaf (:at 1505726888827) (:by |root) (:text |code)
                          |xT $ %{} :Leaf (:at 1505727855954) (:by |root) (:text |span)
                          |y $ %{} :Leaf (:at 1505726889044) (:by |root) (:text |p)
                          |yT $ %{} :Leaf (:at 1505726892558) (:by |root) (:text |h1)
                          |yj $ %{} :Leaf (:at 1505726893138) (:by |root) (:text |h2)
                          |yn $ %{} :Leaf (:at 1610733131089) (:by |wA2nX3K2f) (:text |h3)
                          |yp $ %{} :Leaf (:at 1610733131590) (:by |wA2nX3K2f) (:text |h4)
                          |yr $ %{} :Leaf (:at 1505726894443) (:by |root) (:text |img)
                          |yv $ %{} :Leaf (:at 1505726894740) (:by |root) (:text |a)
                          |yx $ %{} :Leaf (:at 1505726913072) (:by |root) (:text |<>)
                          |yy $ %{} :Leaf (:at 1520787877469) (:by |root) (:text |style)
                          |yyT $ %{} :Leaf (:at 1612254669217) (:by |wA2nX3K2f) (:text |li)
                  |yx $ %{} :Expr (:at 1520787802718) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1520787809175) (:by |root) (:text |respo.util.list)
                      |r $ %{} :Leaf (:at 1520787811338) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1520787811550) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1520787816329) (:by |root) (:text |map-with-idx)
      |respo-md.config $ {}
        :defs $ {}
          |dev? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |def)
                |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |dev?)
                |r $ %{} :Leaf (:at 1610733445074) (:by |wA2nX3K2f) (:text |true)
          |site $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |def)
                |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |site)
                |r $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |{})
                    |j $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:dev-ui)
                        |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://localhost:8100/main-fonts.css")
                    |r $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:release-ui)
                        |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                    |v $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:cdn-url)
                        |j $ %{} :Leaf (:at 1574868988921) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/respo-markdown/")
                    |x $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:title)
                        |j $ %{} :Leaf (:at 1574868982235) (:by |wA2nX3K2f) (:text "|\"Markdown")
                    |y $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:icon)
                        |j $ %{} :Leaf (:at 1574868977564) (:by |wA2nX3K2f) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                    |yT $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1574868969123) (:by |wA2nX3K2f) (:text "|\"respo-markdown")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1574868941964) (:by |wA2nX3K2f)
            :data $ {}
              |T $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |ns)
              |j $ %{} :Leaf (:at 1574868941964) (:by |wA2nX3K2f) (:text |respo-md.config)
      |respo-md.main $ {}
        :defs $ {}
          |*store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1610732838513) (:by |wA2nX3K2f) (:text |defatom)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |*store)
                |r $ %{} :Leaf (:at 1505728403740) (:by |root) (:text |schema/store)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dispatch!)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |op)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |op-data)
                |v $ %{} :Expr (:at 1505731425162) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505731425844) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1505731471250) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1505731471836) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505731473585) (:by |root) (:text |next-store)
                            |j $ %{} :Expr (:at 1505731474525) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1505731475078) (:by |root) (:text |if)
                                |j $ %{} :Expr (:at 1505731475960) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1505731476076) (:by |root) (:text |=)
                                    |j $ %{} :Leaf (:at 1505731476494) (:by |root) (:text |op)
                                    |r $ %{} :Leaf (:at 1505731477596) (:by |root) (:text |:states)
                                |n $ %{} :Expr (:at 1604993512710) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1604993517507) (:by |wA2nX3K2f) (:text |update-states)
                                    |j $ %{} :Leaf (:at 1604993520837) (:by |wA2nX3K2f) (:text |@*store)
                                    |r $ %{} :Leaf (:at 1604993523414) (:by |wA2nX3K2f) (:text |op-data)
                                |v $ %{} :Leaf (:at 1505731497095) (:by |root) (:text |@*store)
                    |r $ %{} :Expr (:at 1505731498721) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505731500253) (:by |root) (:text |reset!)
                        |j $ %{} :Leaf (:at 1505731502135) (:by |root) (:text |*store)
                        |r $ %{} :Leaf (:at 1505731505514) (:by |root) (:text |next-store)
          |highligher $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505730957353) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505730957353) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505730957353) (:by |root) (:text |highligher)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |code)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |lang)
                |t $ %{} :Expr (:at 1610732783545) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732787182) (:by |wA2nX3K2f) (:text |js/console.warn)
                    |j $ %{} :Leaf (:at 1623590946570) (:by |wA2nX3K2f) (:text "|\"highligher not ready")
                |v $ %{} :Expr (:at 1610732781199) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text |str)
                    |j $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text ||<code>)
                    |r $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text |code)
                    |v $ %{} :Leaf (:at 1610732781199) (:by |wA2nX3K2f) (:text ||</code>)
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505730490269) (:by |root) (:text |main!)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                |s $ %{} :Expr (:at 1574869032003) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1574869033858) (:by |wA2nX3K2f) (:text |println)
                    |j $ %{} :Leaf (:at 1574869047631) (:by |wA2nX3K2f) (:text "|\"Running mode:")
                    |r $ %{} :Expr (:at 1574869053411) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1574869053744) (:by |wA2nX3K2f) (:text |if)
                        |j $ %{} :Leaf (:at 1574869055366) (:by |wA2nX3K2f) (:text |config/dev?)
                        |r $ %{} :Leaf (:at 1574869061226) (:by |wA2nX3K2f) (:text "|\"dev")
                        |v $ %{} :Leaf (:at 1574869062722) (:by |wA2nX3K2f) (:text "|\"release")
                |u $ %{} :Expr (:at 1650651406067) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650651407265) (:by |wA2nX3K2f) (:text |if)
                    |b $ %{} :Leaf (:at 1650651408874) (:by |wA2nX3K2f) (:text |config/dev?)
                    |h $ %{} :Expr (:at 1650651410562) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1650651417256) (:by |wA2nX3K2f) (:text |load-console-formatter!)
                |y $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
                |yj $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |*store)
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:changes)
                    |v $ %{} :Expr (:at 1505731195914) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1505731196579) (:by |root) (:text |fn)
                        |L $ %{} :Expr (:at 1505731205783) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612251648032) (:by |wA2nX3K2f) (:text |store)
                            |j $ %{} :Leaf (:at 1612251649006) (:by |wA2nX3K2f) (:text |prev)
                        |T $ %{} :Expr (:at 1505731203017) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
                |yv $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text "||App started!")
          |mount-target $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505727391585) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727392691) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1505727391585) (:by |root) (:text |mount-target)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610733473639) (:by |wA2nX3K2f) (:text |js/document.querySelector)
                    |r $ %{} :Leaf (:at 1505728789454) (:by |root) (:text ||.app)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |defn)
                |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |reload!)
                |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                  :data $ {}
                |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |if)
                    |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |nil?)
                        |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors)
                    |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |do)
                        |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |remove-watch)
                            |b $ %{} :Leaf (:at 1650651629562) (:by |wA2nX3K2f) (:text |*store)
                            |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes)
                        |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |clear-cache!)
                        |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |add-watch)
                            |b $ %{} :Leaf (:at 1650651630519) (:by |wA2nX3K2f) (:text |*store)
                            |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |:changes)
                            |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |fn)
                                |b $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |reel)
                                    |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |prev)
                                |h $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |render-app!)
                        |n $ %{} :Expr (:at 1650651855563) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651857249) (:by |wA2nX3K2f) (:text |render-app!)
                        |q $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!)
                            |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"ok~")
                            |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"Ok")
                    |l $ %{} :Expr (:at 1650651588719) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |hud!)
                        |b $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text "|\"error")
                        |h $ %{} :Leaf (:at 1650651588719) (:by |wA2nX3K2f) (:text |build-errors)
          |render-app! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render-app!)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650651657536) (:by |wA2nX3K2f) (:text |render!)
                    |b $ %{} :Leaf (:at 1505727385806) (:by |root) (:text |mount-target)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |@*store)
                        |r $ %{} :Leaf (:at 1505730956948) (:by |root) (:text |highligher)
                    |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |dispatch!)
          |ssr? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505727454126) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505727455518) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1505727454126) (:by |root) (:text |ssr?)
                |r $ %{} :Expr (:at 1505727454126) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505727459220) (:by |root) (:text |some?)
                    |j $ %{} :Expr (:at 1505727459505) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610733481502) (:by |wA2nX3K2f) (:text |js/document.querySelector)
                        |r $ %{} :Leaf (:at 1505731281859) (:by |root) (:text ||meta.respo-ssr)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.main)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |render!)
                          |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |clear-cache!)
                          |v $ %{} :Leaf (:at 1505727321639) (:by |root) (:text |realize-ssr!)
                  |r $ %{} :Expr (:at 1505725057558) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.comp.container)
                      |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505725057558) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |comp-container)
                  |x $ %{} :Expr (:at 1505728388653) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505728394020) (:by |root) (:text |respo-md.schema)
                      |r $ %{} :Leaf (:at 1505728395098) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1505728395889) (:by |root) (:text |schema)
                  |xD $ %{} :Expr (:at 1505731517463) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1505731523117) (:by |root) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1505731523899) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1505731524156) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1604993493280) (:by |wA2nX3K2f) (:text |update-states)
                  |ys $ %{} :Expr (:at 1574869015775) (:by |wA2nX3K2f)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1574869016607) (:by |wA2nX3K2f) (:text |respo-md.config)
                      |r $ %{} :Leaf (:at 1574869018310) (:by |wA2nX3K2f) (:text |:as)
                      |v $ %{} :Leaf (:at 1574869019033) (:by |wA2nX3K2f) (:text |config)
                  |z $ %{} :Expr (:at 1650651609517) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"./calcit.build-errors")
                      |b $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default)
                      |h $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |build-errors)
                  |zD $ %{} :Expr (:at 1650651609517) (:by |wA2nX3K2f)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text "|\"bottom-tip")
                      |b $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |:default)
                      |h $ %{} :Leaf (:at 1650651609517) (:by |wA2nX3K2f) (:text |hud!)
      |respo-md.schema $ {}
        :defs $ {}
          |store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505728371777) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505728374235) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1505728371777) (:by |root) (:text |store)
                |r $ %{} :Expr (:at 1505728371777) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505728375589) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1505728375898) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505728378070) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1505728378484) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1505728378975) (:by |root) (:text |{})
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505728367327) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1505728367327) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1505728367327) (:by |root) (:text |respo-md.schema)
      |respo-md.util.core $ {}
        :defs $ {}
          |get0 $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1633240307982) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1633240309352) (:by |wA2nX3K2f) (:text |defn)
                |j $ %{} :Leaf (:at 1633240307982) (:by |wA2nX3K2f) (:text |get0)
                |r $ %{} :Expr (:at 1633240307982) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1633240310512) (:by |wA2nX3K2f) (:text |xs)
                |v $ %{} :Expr (:at 1633240310881) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1633240311348) (:by |wA2nX3K2f) (:text |if)
                    |j $ %{} :Expr (:at 1633240312002) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1633240312293) (:by |wA2nX3K2f) (:text |nil?)
                        |j $ %{} :Leaf (:at 1633240313098) (:by |wA2nX3K2f) (:text |xs)
                    |r $ %{} :Leaf (:at 1633240313999) (:by |wA2nX3K2f) (:text |nil)
                    |v $ %{} :Expr (:at 1633240314521) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1633240316009) (:by |wA2nX3K2f) (:text |.-0)
                        |j $ %{} :Leaf (:at 1633240317040) (:by |wA2nX3K2f) (:text |xs)
          |split-block $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1610732182245) (:by |wA2nX3K2f) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-block)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732141925) (:by |wA2nX3K2f) (:text |split-block-iter)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732074961) (:by |wA2nX3K2f) (:text |split-lines)
                        |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |text)
                    |r $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                    |v $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                    |x $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:empty)
          |split-block-iter $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1610732143799) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1610732149389) (:by |wA2nX3K2f) (:text |defn)
                |j $ %{} :Leaf (:at 1610732143799) (:by |wA2nX3K2f) (:text |split-block-iter)
                |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                    |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                    |v $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                    |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?)
                        |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                    |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |empty?)
                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                        |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                        |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                            |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                                |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                    |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |let)
                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |first)
                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                            |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |rest)
                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |lines)
                        |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1650651735128) (:by |wA2nX3K2f) (:text |case-default)
                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                            |n $ %{} :Expr (:at 1650651732863) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |raise)
                                |b $ %{} :Expr (:at 1650651732863) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |str)
                                    |b $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text "||Strange splitting mode: ")
                                    |h $ %{} :Leaf (:at 1650651732863) (:by |wA2nX3K2f) (:text |mode)
                            |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond)
                                    |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |=)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text ||)
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                    |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732163573) (:by |wA2nX3K2f) (:text |starts-with?)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1623694281287) (:by |wA2nX3K2f) (:text |&str:slice)
                                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                                    |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |3)
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                                    |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1650651738578) (:by |wA2nX3K2f) (:text |true)
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cond)
                                    |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |=)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text ||)
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                                |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                                                    |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                    |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732165915) (:by |wA2nX3K2f) (:text |starts-with?)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                                |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                                                    |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1623694282723) (:by |wA2nX3K2f) (:text |&str:slice)
                                                    |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                                    |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |3)
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                                    |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1650651740525) (:by |wA2nX3K2f) (:text |true)
                                        |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                            |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                                |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                            |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:text)
                            |x $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
                                |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |if)
                                    |j $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732168365) (:by |wA2nX3K2f) (:text |starts-with?)
                                        |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                        |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text "||```")
                                    |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                        |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                        |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                            |r $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                                |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |mode)
                                                |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                        |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |[])
                                        |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:empty)
                                    |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |recur)
                                        |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |left)
                                        |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |acc)
                                        |v $ %{} :Expr (:at 1610732144881) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |conj)
                                            |j $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |buffer)
                                            |r $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |cursor)
                                        |x $ %{} :Leaf (:at 1610732144881) (:by |wA2nX3K2f) (:text |:code)
          |split-line $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1505725057558) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1610732553043) (:by |wA2nX3K2f) (:text |defn)
                |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |split-line)
                |r $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                |v $ %{} :Expr (:at 1505725057558) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732547789) (:by |wA2nX3K2f) (:text |split-line-iter)
                    |j $ %{} :Expr (:at 1505725057558) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |[])
                    |r $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |line)
                    |v $ %{} :Leaf (:at 1505725057558) (:by |root) (:text ||)
                    |x $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:text)
          |split-line-iter $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1610732555006) (:by |wA2nX3K2f)
              :data $ {}
                |T $ %{} :Leaf (:at 1610733935919) (:by |wA2nX3K2f) (:text |defn)
                |j $ %{} :Leaf (:at 1610732555006) (:by |wA2nX3K2f) (:text |split-line-iter)
                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                    |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
                |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                    |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                        |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                    |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |first)
                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1623694292775) (:by |wA2nX3K2f) (:text |&str:slice)
                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |1)
                        |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1633239190265) (:by |wA2nX3K2f) (:text |case-default)
                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |mode)
                            |n $ %{} :Expr (:at 1633239190994) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |raise)
                                |j $ %{} :Expr (:at 1633239190994) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |str)
                                    |j $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text "||Unknown mode:")
                                    |r $ %{} :Leaf (:at 1633239190994) (:by |wA2nX3K2f) (:text |mode)
                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624121246531) (:by |wA2nX3K2f) (:text |case-default)
                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                    |n $ %{} :Expr (:at 1624121247315) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |recur)
                                        |j $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |acc)
                                        |r $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |left)
                                        |v $ %{} :Expr (:at 1624121247315) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |str)
                                            |j $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |buffer)
                                            |r $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |cursor)
                                        |x $ %{} :Leaf (:at 1624121247315) (:by |wA2nX3K2f) (:text |:text)
                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`")
                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                            |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                            |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                                    |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h)
                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |or)
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||http://)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1623694293982) (:by |wA2nX3K2f) (:text |&str:slice)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |0)
                                                        |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |7)
                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||https://)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1623694294955) (:by |wA2nX3K2f) (:text |&str:slice)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |0)
                                                        |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |8)
                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |split)
                                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ")
                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                    |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                            |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                        |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:url)
                                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |first)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "|| ")
                                                        |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1624121329019) (:by |wA2nX3K2f) (:text |join-str)
                                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |rest)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |pieces)
                                                            |v $ %{} :Leaf (:at 1624120649742) (:by |wA2nX3K2f) (:text "|| ")
                                                    |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                    |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                            |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                                |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||h)
                                                |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                    |x $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[)
                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                    |j $ %{} :Expr (:at 1612251751745) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1633240305535) (:by |wA2nX3K2f) (:text |get0)
                                                        |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1633239106366) (:by |wA2nX3K2f) (:text |.!match)
                                                            |b $ %{} :Leaf (:at 1619548977892) (:by |wA2nX3K2f) (:text |line)
                                                            |j $ %{} :Expr (:at 1633239108699) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |D $ %{} :Leaf (:at 1633239110354) (:by |wA2nX3K2f) (:text |new)
                                                                |L $ %{} :Leaf (:at 1633239113235) (:by |wA2nX3K2f) (:text |js/RegExp)
                                                                |T $ %{} :Leaf (:at 1612251934577) (:by |wA2nX3K2f) (:text "|\"^\\[[^\\]]+\\]\\([^\\)]+\\)")
                                                                |j $ %{} :Leaf (:at 1633239115771) (:by |wA2nX3K2f) (:text "|\"g")
                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                    |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                            |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                        |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:link)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1624120684709) (:by |wA2nX3K2f) (:text |.!replace)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                        |r $ %{} :Leaf (:at 1612251802738) (:by |wA2nX3K2f) (:text |guess)
                                                        |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                    |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                    |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                                    |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||[)
                                                    |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                    |y $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!)
                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |let)
                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                    |j $ %{} :Expr (:at 1612251776491) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1633240307455) (:by |wA2nX3K2f) (:text |get0)
                                                        |T $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1633239126853) (:by |wA2nX3K2f) (:text |.!match)
                                                            |b $ %{} :Leaf (:at 1619548980755) (:by |wA2nX3K2f) (:text |line)
                                                            |j $ %{} :Expr (:at 1633239127991) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |D $ %{} :Leaf (:at 1633239129212) (:by |wA2nX3K2f) (:text |new)
                                                                |L $ %{} :Leaf (:at 1633239132777) (:by |wA2nX3K2f) (:text |js/RegExp)
                                                                |T $ %{} :Leaf (:at 1612251936699) (:by |wA2nX3K2f) (:text "|\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)")
                                                                |j $ %{} :Leaf (:at 1633240248438) (:by |wA2nX3K2f) (:text "|\"g")
                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |some?)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                    |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                                            |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                            |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                                |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                        |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:image)
                                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |guess)
                                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1623590485067) (:by |wA2nX3K2f) (:text |.replace)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |line)
                                                        |r $ %{} :Leaf (:at 1612251804395) (:by |wA2nX3K2f) (:text |guess)
                                                        |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                    |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                                    |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                                |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                                    |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                                    |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                                    |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||!)
                                                    |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                            |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                                |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |if)
                                    |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |=)
                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text "||`")
                                    |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                        |j $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |conj)
                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                            |r $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |[])
                                                |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
                                                |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                        |v $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text ||)
                                        |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:text)
                                    |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |recur)
                                        |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |acc)
                                        |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |left)
                                        |v $ %{} :Expr (:at 1610732556009) (:by |wA2nX3K2f)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |str)
                                            |j $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |buffer)
                                            |r $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |cursor)
                                        |x $ %{} :Leaf (:at 1610732556009) (:by |wA2nX3K2f) (:text |:code)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1505725057558) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |respo-md.util.core)
              |r $ %{} :Expr (:at 1505725057558) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1505725057558) (:by |root) (:text |:require)
  :users $ {}
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |wA2nX3K2f $ {} (:avatar nil) (:id |wA2nX3K2f) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
