
{}
  :configs $ {} (:reload-fn |respo-md.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.3.8)
    :modules $ [] |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |memof/compact.cirru |lilac/compact.cirru
    :init-fn |respo-md.main/main!
    :extension |.cljs
  :ir $ {} (:package |respo-md)
    :files $ {}
      |respo-md.comp.md $ {}
        :defs $ {}
          |render-inline $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |render-inline) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |->) (:type :leaf) (:at 1619548843573) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |split-line) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |map) (:type :leaf) (:at 1624121020878) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |j $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |let[]) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |mode) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                  |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1624121024850
                                :by |wA2nX3K2f
                              |r $ {} (:text |chunk) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                              |v $ {}
                                :data $ {}
                                  |yT $ {}
                                    :data $ {}
                                      |T $ {} (:text |:text) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |<>) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |r $ {} (:text |nil) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121024850
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121024850
                                    :by |wA2nX3K2f
                                  |T $ {} (:text |case-default) (:type :leaf) (:at 1624121725761) (:by |wA2nX3K2f)
                                  |j $ {} (:text |mode) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                  |n $ {}
                                    :data $ {}
                                      |T $ {} (:text |<>) (:type :leaf) (:at 1624121728364) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1624121728364) (:by |wA2nX3K2f)
                                          |j $ {} (:text ||Unknown:) (:type :leaf) (:at 1624121728364) (:by |wA2nX3K2f)
                                          |r $ {} (:text |content) (:type :leaf) (:at 1624121728364) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121728364
                                        :by |wA2nX3K2f
                                      |r $ {} (:text |nil) (:type :leaf) (:at 1624121728364) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1624121728364
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:code) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |code) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1624121024850
                                            :by |wA2nX3K2f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                              |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                              |r $ {} (:text |nil) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1624121024850
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1624121024850
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121024850
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:url) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |a) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:href) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121024850
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:inner-text) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121024850
                                                :by |wA2nX3K2f
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:target) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                  |j $ {} (:text ||_blank) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121024850
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1624121024850
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1624121024850
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121024850
                                    :by |wA2nX3K2f
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:link) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |comp-link) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121024850
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121024850
                                    :by |wA2nX3K2f
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:image) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |comp-image) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                          |j $ {} (:text |content) (:type :leaf) (:at 1624121024850) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121024850
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121024850
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1624121024850
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121024850
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-text-block $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1505727689097) (:by |root)
              |j $ {} (:text |comp-text-block) (:type :leaf) (:at 1505725057558) (:by |root)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |lines) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |r $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1612253185530) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:class-name) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {} (:text ||md-p) (:type :leaf) (:at 1519633028823) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {} (:text |&) (:type :leaf) (:at 1612253189178) (:by |wA2nX3K2f)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1619548895002) (:by |wA2nX3K2f)
                      |f $ {} (:text |lines) (:type :leaf) (:at 1624120989884) (:by |wA2nX3K2f)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |map) (:type :leaf) (:at 1624120987280) (:by |wA2nX3K2f)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-line) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-line $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1505727713665) (:by |root)
              |j $ {} (:text |comp-line) (:type :leaf) (:at 1505725057558) (:by |root)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |true) (:type :leaf) (:at 1610732572111) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1612253094691) (:by |wA2nX3K2f)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                          |n $ {} (:text |&) (:type :leaf) (:at 1612253103294) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121045270) (:by |wA2nX3K2f)
                              |j $ {} (:text |line) (:type :leaf) (:at 1624121045270) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1624121045270
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |T $ {} (:text |cond) (:type :leaf) (:at 1505725057558) (:by |root)
                  |a $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732235103) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||# ") (:type :leaf) (:at 1505725057558) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |h1) (:type :leaf) (:at 1610733156408) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734142835) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734142430
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733156408) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1610733156408) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694230810) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1610733156408) (:by |wA2nX3K2f)
                                  |r $ {} (:text |2) (:type :leaf) (:at 1610733156408) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610733156408
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610733156408
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733156408
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |h $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732238962) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||## ") (:type :leaf) (:at 1505725057558) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |h2) (:type :leaf) (:at 1610733162108) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734144909) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734144909
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733157934) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1610733157934) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694233087) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1610733157934) (:by |wA2nX3K2f)
                                  |r $ {} (:text |3) (:type :leaf) (:at 1610733164003) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610733157934
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610733157934
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733157934
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |v $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732240941) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||### ") (:type :leaf) (:at 1505725057558) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |h3) (:type :leaf) (:at 1610733170252) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734145994) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734145994
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733167793) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121037073) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1624121037073) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1624121037073) (:by |wA2nX3K2f)
                                  |r $ {} (:text |4) (:type :leaf) (:at 1624121037073) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1624121037073
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121037073
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733167793
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |w $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732242389) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||#### ") (:type :leaf) (:at 1604993366873) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |h4) (:type :leaf) (:at 1610733176874) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734147486) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734147486
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733174842) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121038809) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1624121038809) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1624121038809) (:by |wA2nX3K2f)
                                  |r $ {} (:text |5) (:type :leaf) (:at 1624121038809) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1624121038809
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121038809
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733174842
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |x $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732244014) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||> ") (:type :leaf) (:at 1505725057558) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |blockquote) (:type :leaf) (:at 1610733202609) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734148876) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734148876
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733198882) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121040551) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1624121040551) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1624121040551) (:by |wA2nX3K2f)
                                  |r $ {} (:text |2) (:type :leaf) (:at 1624121040551) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1624121040551
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121040551
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733198882
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |y $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732569696) (:by |wA2nX3K2f)
                          |j $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                          |r $ {} (:text "||* ") (:type :leaf) (:at 1505725057558) (:by |root)
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |li) (:type :leaf) (:at 1612254635649) (:by |wA2nX3K2f)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1610734150301) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610734150301
                            :by |wA2nX3K2f
                          |j $ {} (:text |&) (:type :leaf) (:at 1610733209022) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121043142) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1624121043142) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1624121043142) (:by |wA2nX3K2f)
                                  |r $ {} (:text |2) (:type :leaf) (:at 1624121043142) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1624121043142
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121043142
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610733209022
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1505725057558
                    :by nil
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-link $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505727764748) (:by |root)
              |j $ {} (:text |comp-link) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |useful) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694267639) (:by |wA2nX3K2f)
                              |j $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                              |r $ {} (:text |1) (:type :leaf) (:at 1505725057558) (:by |root)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |-) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |count) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {} (:text |1) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |let[]) (:type :leaf) (:at 1610732392388) (:by |wA2nX3K2f)
                      |L $ {}
                        :data $ {}
                          |j $ {} (:text |content) (:type :leaf) (:at 1610732396438) (:by |wA2nX3K2f)
                          |r $ {} (:text |url) (:type :leaf) (:at 1610732396438) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732396438
                        :by |wA2nX3K2f
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |split) (:type :leaf) (:at 1610732425420) (:by |wA2nX3K2f)
                          |j $ {} (:text |useful) (:type :leaf) (:at 1610732396438) (:by |wA2nX3K2f)
                          |r $ {} (:text "||](") (:type :leaf) (:at 1610732396438) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732396438
                        :by |wA2nX3K2f
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |and) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732406138) (:by |wA2nX3K2f)
                                  |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |r $ {} (:text "||`") (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |ends-with?) (:type :leaf) (:at 1610732408009) (:by |wA2nX3K2f)
                                  |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |r $ {} (:text "||`") (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:href) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |url) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:target) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text ||_blank) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |code) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:inner-text) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694269865) (:by |wA2nX3K2f)
                                              |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |r $ {} (:text |1) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |dec) (:type :leaf) (:at 1505725057558) (:by |root)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |count) (:type :leaf) (:at 1505725057558) (:by |root)
                                                      |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                                    :type :expr
                                                    :at 1505725057558
                                                    :by nil
                                                :type :expr
                                                :at 1505725057558
                                                :by nil
                                            :type :expr
                                            :at 1505725057558
                                            :by nil
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:href) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |url) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:inner-text) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:target) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text ||_blank) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1610732390750
                    :by |wA2nX3K2f
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |blockquote $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |blockquote) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |props) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |&) (:type :leaf) (:at 1505725057558) (:by |root)
                  |r $ {} (:text |children) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |create-element) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |:blockquote) (:type :leaf) (:at 1505725057558) (:by |root)
                  |r $ {} (:text |props) (:type :leaf) (:at 1505725057558) (:by |root)
                  |t $ {} (:text |&) (:type :leaf) (:at 1619549322828) (:by |wA2nX3K2f)
                  |v $ {} (:text |children) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-image $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |comp-image) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |useful) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694304398) (:by |wA2nX3K2f)
                              |j $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                              |r $ {} (:text |2) (:type :leaf) (:at 1505725057558) (:by |root)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |-) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |count) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |chunk) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {} (:text |1) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |let[]) (:type :leaf) (:at 1610732443683) (:by |wA2nX3K2f)
                      |L $ {}
                        :data $ {}
                          |j $ {} (:text |content) (:type :leaf) (:at 1610732444355) (:by |wA2nX3K2f)
                          |r $ {} (:text |url) (:type :leaf) (:at 1610732444355) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732444355
                        :by |wA2nX3K2f
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |split) (:type :leaf) (:at 1610732444355) (:by |wA2nX3K2f)
                          |j $ {} (:text |useful) (:type :leaf) (:at 1610732444355) (:by |wA2nX3K2f)
                          |r $ {} (:text "||](") (:type :leaf) (:at 1610732444355) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732444355
                        :by |wA2nX3K2f
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |img) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:src) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {} (:text |url) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:alt) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1610732442668
                    :by |wA2nX3K2f
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-code-block $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1505727949016) (:by |root)
              |j $ {} (:text |comp-code-block) (:type :leaf) (:at 1505725057558) (:by |root)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |lines) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |options) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |r $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |lang) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |first) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {} (:text |lines) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |join-str) (:type :leaf) (:at 1610732597144) (:by |wA2nX3K2f)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |rest) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {} (:text |lines) (:type :leaf) (:at 1505725057558) (:by |root)
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |v $ {} (:text |&newline) (:type :leaf) (:at 1619549157943) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |highlight-fn) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:highlight) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {} (:text |options) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |pre) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {} (:text ||md-code-block) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |code) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |and) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |not) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |blank?) (:type :leaf) (:at 1610732592096) (:by |wA2nX3K2f)
                                          |j $ {} (:text |lang) (:type :leaf) (:at 1505725057558) (:by |root)
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn?) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |highlight-fn) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:innerHTML) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |highlight-fn) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |r $ {} (:text |lang) (:type :leaf) (:at 1505725057558) (:by |root)
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:inner-text) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |content) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                    :type :expr
                    :at 1505725057558
                    :by nil
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-md-block $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1505727653494) (:by |root)
              |j $ {} (:text |comp-md-block) (:type :leaf) (:at 1505725057558) (:by |root)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |options) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |r $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |blocks) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |split-block) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |css) (:type :leaf) (:at 1520789031254) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:css) (:type :leaf) (:at 1520789035575) (:by |root)
                              |j $ {} (:text |options) (:type :leaf) (:at 1520789037456) (:by |root)
                            :type :expr
                            :at 1520789034981
                            :by |root
                        :type :expr
                        :at 1520789030602
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |class-name) (:type :leaf) (:at 1520789042450) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1520789045795) (:by |root)
                              |j $ {} (:text |options) (:type :leaf) (:at 1520789046690) (:by |root)
                            :type :expr
                            :at 1520789043515
                            :by |root
                        :type :expr
                        :at 1520789039052
                        :by |root
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1612253228060) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |if) (:type :leaf) (:at 1520789052543) (:by |root)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |nil?) (:type :leaf) (:at 1520789076862) (:by |root)
                                      |j $ {} (:text |class-name) (:type :leaf) (:at 1520789058375) (:by |root)
                                    :type :expr
                                    :at 1520789053460
                                    :by |root
                                  |P $ {} (:text ||md-block) (:type :leaf) (:at 1520789072603) (:by |root)
                                  |T $ {}
                                    :data $ {}
                                      |D $ {} (:text |str) (:type :leaf) (:at 1520789018183) (:by |root)
                                      |T $ {} (:text "||md-block ") (:type :leaf) (:at 1520789019136) (:by |root)
                                      |j $ {} (:text |class-name) (:type :leaf) (:at 1520789064083) (:by |root)
                                    :type :expr
                                    :at 1520789017375
                                    :by |root
                                :type :expr
                                :at 1520789052026
                                :by |root
                            :type :expr
                            :at 1505725057558
                            :by nil
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1519631968494) (:by |root)
                                  |j $ {} (:text |options) (:type :leaf) (:at 1519631971217) (:by |root)
                                :type :expr
                                :at 1519631967226
                                :by |root
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1624121619595) (:by |wA2nX3K2f)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |some?) (:type :leaf) (:at 1624121621285) (:by |wA2nX3K2f)
                              |j $ {} (:text |css) (:type :leaf) (:at 1624121625804) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1624121619861
                            :by |wA2nX3K2f
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |style) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:inner-text) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                                      |j $ {} (:text |css) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1624121633516
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:scoped) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                                      |j $ {} (:text |true) (:type :leaf) (:at 1624121633516) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1624121633516
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1624121633516
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121633516
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1624121619144
                        :by |wA2nX3K2f
                      |r $ {} (:text |&) (:type :leaf) (:at 1612253270752) (:by |wA2nX3K2f)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                          |j $ {} (:text |blocks) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |block) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1624121641310
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |let[]) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |mode) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                          |j $ {} (:text |lines) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121641310
                                        :by |wA2nX3K2f
                                      |r $ {} (:text |block) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |<>) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |pr-str) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                              |j $ {} (:text |mode) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1624121641310
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1624121641310
                                        :by |wA2nX3K2f
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |case-default) (:type :leaf) (:at 1624121660550) (:by |wA2nX3K2f)
                                          |j $ {} (:text |mode) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                          |n $ {}
                                            :data $ {}
                                              |D $ {} (:text |<>) (:type :leaf) (:at 1624121663711) (:by |wA2nX3K2f)
                                              |T $ {}
                                                :data $ {}
                                                  |D $ {} (:text |str) (:type :leaf) (:at 1624121668469) (:by |wA2nX3K2f)
                                                  |T $ {} (:text "||Unknown content: ") (:type :leaf) (:at 1624121673662) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |mode) (:type :leaf) (:at 1624121669701) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121667484
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1624121662637
                                            :by |wA2nX3K2f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:text) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |comp-text-block) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |lines) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121641310
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1624121641310
                                            :by |wA2nX3K2f
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:code) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |comp-code-block) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |lines) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |options) (:type :leaf) (:at 1624121641310) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1624121641310
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1624121641310
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1624121641310
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1624121641310
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1624121641310
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1624121641310
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1624121641310
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1612252836011
                    :by |wA2nX3K2f
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |comp-md $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1519632881248) (:by |root)
              |j $ {} (:text |comp-md) (:type :leaf) (:at 1519631928616) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |5 $ {} (:text |div) (:type :leaf) (:at 1612253159496) (:by |wA2nX3K2f)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1519636159183) (:by |root)
                    :type :expr
                    :at 1519636158892
                    :by |root
                  |P $ {} (:text |&) (:type :leaf) (:at 1612253164155) (:by |wA2nX3K2f)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |render-inline) (:type :leaf) (:at 1624121076956) (:by |wA2nX3K2f)
                      |j $ {} (:text |text) (:type :leaf) (:at 1624121076956) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1624121076956
                    :by |wA2nX3K2f
                :type :expr
                :at 1519636153860
                :by |root
            :type :expr
            :at 1519631928616
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1505725057558
          :by nil
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1505725057558) (:by |root)
            |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1505725057558) (:by |root)
            |r $ {}
              :data $ {}
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo-md.util.core) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |split-block) (:type :leaf) (:at 1505725057558) (:by |root)
                        |r $ {} (:text |split-line) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |yv $ {}
                  :data $ {}
                    |D $ {} (:text |[]) (:type :leaf) (:at 1505727147191) (:by |root)
                    |L $ {} (:text |respo.core) (:type :leaf) (:at 1540917580026) (:by |root)
                    |P $ {} (:text |:refer) (:type :leaf) (:at 1505727150077) (:by |root)
                    |T $ {}
                      :data $ {}
                        |yyT $ {} (:text |li) (:type :leaf) (:at 1612254669217) (:by |wA2nX3K2f)
                        |xT $ {} (:text |span) (:type :leaf) (:at 1505727855954) (:by |root)
                        |yT $ {} (:text |h1) (:type :leaf) (:at 1505726892558) (:by |root)
                        |yj $ {} (:text |h2) (:type :leaf) (:at 1505726893138) (:by |root)
                        |yn $ {} (:text |h3) (:type :leaf) (:at 1610733131089) (:by |wA2nX3K2f)
                        |yp $ {} (:text |h4) (:type :leaf) (:at 1610733131590) (:by |wA2nX3K2f)
                        |yr $ {} (:text |img) (:type :leaf) (:at 1505726894443) (:by |root)
                        |yv $ {} (:text |a) (:type :leaf) (:at 1505726894740) (:by |root)
                        |yx $ {} (:text |<>) (:type :leaf) (:at 1505726913072) (:by |root)
                        |yy $ {} (:text |style) (:type :leaf) (:at 1520787877469) (:by |root)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505726876202) (:by |root)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1505726881037) (:by |root)
                        |n $ {} (:text |list->) (:type :leaf) (:at 1510159464898) (:by |root)
                        |r $ {} (:text |div) (:type :leaf) (:at 1505726883973) (:by |root)
                        |v $ {} (:text |pre) (:type :leaf) (:at 1505726885309) (:by |root)
                        |x $ {} (:text |code) (:type :leaf) (:at 1505726888827) (:by |root)
                        |y $ {} (:text |p) (:type :leaf) (:at 1505726889044) (:by |root)
                      :type :expr
                      :at 1505726875499
                      :by |root
                  :type :expr
                  :at 1505727143181
                  :by |root
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1520787803583) (:by |root)
                    |j $ {} (:text |respo.util.list) (:type :leaf) (:at 1520787809175) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1520787811338) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1520787811697) (:by |root)
                        |j $ {} (:text |map-with-idx) (:type :leaf) (:at 1520787816329) (:by |root)
                      :type :expr
                      :at 1520787811550
                      :by |root
                  :type :expr
                  :at 1520787802718
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1505725057558) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.util.format) (:type :leaf) (:at 1610732231554) (:by |wA2nX3K2f)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1505725057558) (:by |root)
                  :type :expr
                  :at 1505725057558
                  :by nil
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1505727181444) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |r $ {} (:text |create-element) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1505726906010) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
              :type :expr
              :at 1505725057558
              :by nil
          :type :expr
          :at 1505725057558
          :by nil
      |respo-md.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
              |r $ {} (:text |true) (:type :leaf) (:at 1610733445074) (:by |wA2nX3K2f)
            :type :expr
            :at 1574868941964
            :by |wA2nX3K2f
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
              |j $ {} (:text |site) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"respo-markdown") (:type :leaf) (:at 1574868969123) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                  |T $ {} (:text |{}) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"http://cdn.tiye.me/respo-markdown/") (:type :leaf) (:at 1574868988921) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"Markdown") (:type :leaf) (:at 1574868982235) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/respo.png") (:type :leaf) (:at 1574868977564) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574868941964
                    :by |wA2nX3K2f
                :type :expr
                :at 1574868941964
                :by |wA2nX3K2f
            :type :expr
            :at 1574868941964
            :by |wA2nX3K2f
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1574868941964
          :by |wA2nX3K2f
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
            |j $ {} (:text |respo-md.config) (:type :leaf) (:at 1574868941964) (:by |wA2nX3K2f)
          :type :expr
          :at 1574868941964
          :by |wA2nX3K2f
      |respo-md.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1505728374235) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1505728371777) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1505728375589) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1505728378070) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1505728378975) (:by |root)
                        :type :expr
                        :at 1505728378484
                        :by |root
                    :type :expr
                    :at 1505728375898
                    :by |root
                :type :expr
                :at 1505728371777
                :by |root
            :type :expr
            :at 1505728371777
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1505728367327
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1505728367327) (:by |root)
            |j $ {} (:text |respo-md.schema) (:type :leaf) (:at 1505728367327) (:by |root)
          :type :expr
          :at 1505728367327
          :by |root
      |respo-md.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |renderer) (:type :leaf) (:at 1505727372790) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |renderer) (:type :leaf) (:at 1505727375830) (:by |root)
                  |b $ {} (:text |mount-target) (:type :leaf) (:at 1505727385806) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {} (:text |@*store) (:type :leaf) (:at 1505725057558) (:by |root)
                      |r $ {} (:text |highligher) (:type :leaf) (:at 1505730956948) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |ssr? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1505727455518) (:by |root)
              |j $ {} (:text |ssr?) (:type :leaf) (:at 1505727454126) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |some?) (:type :leaf) (:at 1505727459220) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1610733481502) (:by |wA2nX3K2f)
                      |r $ {} (:text ||meta.respo-ssr) (:type :leaf) (:at 1505731281859) (:by |root)
                    :type :expr
                    :at 1505727459505
                    :by |root
                :type :expr
                :at 1505727454126
                :by |root
            :type :expr
            :at 1505727454126
            :by |root
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1505727392691) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1505727391585) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1610733473639) (:by |wA2nX3K2f)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1505728789454) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505727391585
            :by |root
          |main! $ {}
            :data $ {}
              |yj $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |*store) (:type :leaf) (:at 1505725057558) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1505725057558) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1505731196579) (:by |root)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1612251648032) (:by |wA2nX3K2f)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612251649006) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1505731205783
                        :by |root
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {} (:text |render!) (:type :leaf) (:at 1505731202319) (:by |root)
                        :type :expr
                        :at 1505731203017
                        :by |root
                    :type :expr
                    :at 1505731195914
                    :by |root
                :type :expr
                :at 1505725057558
                :by nil
              |yv $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text "||App started!") (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1505730490269) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1505725057558
                :by nil
              |s $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1574869033858) (:by |wA2nX3K2f)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1574869047631) (:by |wA2nX3K2f)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1574869053744) (:by |wA2nX3K2f)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1574869055366) (:by |wA2nX3K2f)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1574869061226) (:by |wA2nX3K2f)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1574869062722) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1574869053411
                    :by |wA2nX3K2f
                :type :expr
                :at 1574869032003
                :by |wA2nX3K2f
              |x $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |ssr?) (:type :leaf) (:at 1505727417085) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |render-app!) (:type :leaf) (:at 1505727430747) (:by |root)
                      |j $ {} (:text |realize-ssr!) (:type :leaf) (:at 1505727438060) (:by |root)
                    :type :expr
                    :at 1505727427991
                    :by |root
                :type :expr
                :at 1505725057558
                :by nil
              |y $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |render!) (:type :leaf) (:at 1505727485486) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |*store $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610732838513) (:by |wA2nX3K2f)
              |j $ {} (:text |*store) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {} (:text |schema/store) (:type :leaf) (:at 1505728403740) (:by |root)
            :type :expr
            :at 1505725057558
            :by nil
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1505731425844) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |next-store) (:type :leaf) (:at 1505731473585) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1505731475078) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |=) (:type :leaf) (:at 1505731476076) (:by |root)
                                  |j $ {} (:text |op) (:type :leaf) (:at 1505731476494) (:by |root)
                                  |r $ {} (:text |:states) (:type :leaf) (:at 1505731477596) (:by |root)
                                :type :expr
                                :at 1505731475960
                                :by |root
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |update-states) (:type :leaf) (:at 1604993517507) (:by |wA2nX3K2f)
                                  |j $ {} (:text |@*store) (:type :leaf) (:at 1604993520837) (:by |wA2nX3K2f)
                                  |r $ {} (:text |op-data) (:type :leaf) (:at 1604993523414) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1604993512710
                                :by |wA2nX3K2f
                              |v $ {} (:text |@*store) (:type :leaf) (:at 1505731497095) (:by |root)
                            :type :expr
                            :at 1505731474525
                            :by |root
                        :type :expr
                        :at 1505731471836
                        :by |root
                    :type :expr
                    :at 1505731471250
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reset!) (:type :leaf) (:at 1505731500253) (:by |root)
                      |j $ {} (:text |*store) (:type :leaf) (:at 1505731502135) (:by |root)
                      |r $ {} (:text |next-store) (:type :leaf) (:at 1505731505514) (:by |root)
                    :type :expr
                    :at 1505731498721
                    :by |root
                :type :expr
                :at 1505731425162
                :by |root
            :type :expr
            :at 1505725057558
            :by nil
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505725057558) (:by |root)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |render!) (:type :leaf) (:at 1505727350330) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |y $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text "||Code update.") (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |highligher $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1505730957353) (:by |root)
              |j $ {} (:text |highligher) (:type :leaf) (:at 1505730957353) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |code) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {} (:text |lang) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |t $ {}
                :data $ {}
                  |T $ {} (:text |js/console.warn) (:type :leaf) (:at 1610732787182) (:by |wA2nX3K2f)
                  |j $ {} (:text "|\"highligher not ready") (:type :leaf) (:at 1623590946570) (:by |wA2nX3K2f)
                :type :expr
                :at 1610732783545
                :by |wA2nX3K2f
              |v $ {}
                :data $ {}
                  |T $ {} (:text |str) (:type :leaf) (:at 1610732781199) (:by |wA2nX3K2f)
                  |j $ {} (:text ||<code>) (:type :leaf) (:at 1610732781199) (:by |wA2nX3K2f)
                  |r $ {} (:text |code) (:type :leaf) (:at 1610732781199) (:by |wA2nX3K2f)
                  |v $ {} (:text ||</code>) (:type :leaf) (:at 1610732781199) (:by |wA2nX3K2f)
                :type :expr
                :at 1610732781199
                :by |wA2nX3K2f
            :type :expr
            :at 1505730957353
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1505725057558
          :by nil
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1505725057558) (:by |root)
            |j $ {} (:text |respo-md.main) (:type :leaf) (:at 1505725057558) (:by |root)
            |r $ {}
              :data $ {}
                |xD $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505731520274) (:by |root)
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1505731523117) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505731523899) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505731524294) (:by |root)
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1604993493280) (:by |wA2nX3K2f)
                      :type :expr
                      :at 1505731524156
                      :by |root
                  :type :expr
                  :at 1505731517463
                  :by |root
                |ys $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1574869016201) (:by |wA2nX3K2f)
                    |j $ {} (:text |respo-md.config) (:type :leaf) (:at 1574869016607) (:by |wA2nX3K2f)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1574869018310) (:by |wA2nX3K2f)
                    |v $ {} (:text |config) (:type :leaf) (:at 1574869019033) (:by |wA2nX3K2f)
                  :type :expr
                  :at 1574869015775
                  :by |wA2nX3K2f
                |T $ {} (:text |:require) (:type :leaf) (:at 1505725057558) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |render!) (:type :leaf) (:at 1505725057558) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1505725057558) (:by |root)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1505727321639) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo-md.comp.container) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505728389297) (:by |root)
                    |j $ {} (:text |respo-md.schema) (:type :leaf) (:at 1505728394020) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1505728395098) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1505728395889) (:by |root)
                  :type :expr
                  :at 1505728388653
                  :by |root
              :type :expr
              :at 1505725057558
              :by nil
          :type :expr
          :at 1505725057558
          :by nil
      |respo-md.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1505727501758) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1505725057558) (:by |root)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1505727504998) (:by |root)
                  |j $ {} (:text |highlighter) (:type :leaf) (:at 1505730982666) (:by |root)
                :type :expr
                :at 1505727504292
                :by |root
              |p $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1505727549043) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1505727551326) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1505727553338) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1505727554261) (:by |root)
                            :type :expr
                            :at 1505727551563
                            :by |root
                        :type :expr
                        :at 1505727549415
                        :by |root
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1604993450133) (:by |wA2nX3K2f)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |either) (:type :leaf) (:at 1610734068493) (:by |wA2nX3K2f)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1604993455203) (:by |wA2nX3K2f)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1604993458218) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1604993451171
                                :by |wA2nX3K2f
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1604993460387) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1604993460055
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1604993458643
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1604993448025
                        :by |wA2nX3K2f
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1505727555850) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1610734064857) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1505727561366) (:by |root)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1505727564864) (:by |root)
                                :type :expr
                                :at 1505727562987
                                :by |root
                              |r $ {} (:text |initial-state) (:type :leaf) (:at 1505727567606) (:by |root)
                            :type :expr
                            :at 1505727557133
                            :by |root
                        :type :expr
                        :at 1505727555091
                        :by |root
                    :type :expr
                    :at 1505727549265
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1505725057558) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1519666232286) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1519666233841) (:by |root)
                                          |j $ {} (:text ||80%) (:type :leaf) (:at 1519666237039) (:by |root)
                                        :type :expr
                                        :at 1519666232551
                                        :by |root
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin) (:type :leaf) (:at 1519666242626) (:by |root)
                                          |j $ {} (:text "||0 auto") (:type :leaf) (:at 1519666245079) (:by |root)
                                        :type :expr
                                        :at 1519666237536
                                        :by |root
                                    :type :expr
                                    :at 1519666231707
                                    :by |root
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1505725057558
                            :by nil
                        :type :expr
                        :at 1505725057558
                        :by nil
                      |l $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1519667209559) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1519667210149) (:by |root)
                            :type :expr
                            :at 1519667209799
                            :by |root
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |a) (:type :leaf) (:at 1519668146639) (:by |root)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519668147826) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:href) (:type :leaf) (:at 1519668150003) (:by |root)
                                      |j $ {} (:text ||https://github.com/Respo/respo-markdown) (:type :leaf) (:at 1519668150849) (:by |root)
                                    :type :expr
                                    :at 1519668148235
                                    :by |root
                                :type :expr
                                :at 1519668147383
                                :by |root
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1519667211837) (:by |root)
                                  |j $ {} (:text ||respo-markdown) (:type :leaf) (:at 1519667215929) (:by |root)
                                :type :expr
                                :at 1519667210771
                                :by |root
                            :type :expr
                            :at 1519668146091
                            :by |root
                        :type :expr
                        :at 1519667208341
                        :by |root
                      |m $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1519667222564) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1519667223215) (:by |root)
                            :type :expr
                            :at 1519667222866
                            :by |root
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-md-block) (:type :leaf) (:at 1519667368528) (:by |root)
                              |j $ {} (:text "||Respo Markdown component renders Markdown text to virtual DOM in Respo. Require the code with\n\n```clojure\n(require '[respo-md.comp.md :refer [comp-md comp-md-block]]\n\n(comp-md \"content\")\n\n(comp-md-block \"content\\nnew line\" {})\n```\n") (:type :leaf) (:at 1519667362824) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519667369745) (:by |root)
                                :type :expr
                                :at 1519667369384
                                :by |root
                            :type :expr
                            :at 1519667223732
                            :by |root
                        :type :expr
                        :at 1519667221229
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1519636083747) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1519636084293) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1519636089648) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1519636090304) (:by |root)
                                    :type :expr
                                    :at 1519636089874
                                    :by |root
                                :type :expr
                                :at 1519636084566
                                :by |root
                            :type :expr
                            :at 1519636083956
                            :by |root
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1519667389401) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519667389960) (:by |root)
                                :type :expr
                                :at 1519667389648
                                :by |root
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-md) (:type :leaf) (:at 1519667415609) (:by |root)
                                  |j $ {} (:text "||This is an example for using `comp-md`:") (:type :leaf) (:at 1519667411426) (:by |root)
                                :type :expr
                                :at 1519667392117
                                :by |root
                            :type :expr
                            :at 1519667388871
                            :by |root
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |div) (:type :leaf) (:at 1519667386674) (:by |root)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519667387320) (:by |root)
                                :type :expr
                                :at 1519667386967
                                :by |root
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |input) (:type :leaf) (:at 1519636092591) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1519636093109) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1519636096877) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |merge) (:type :leaf) (:at 1519636605434) (:by |root)
                                              |T $ {} (:text |ui/input) (:type :leaf) (:at 1519636099031) (:by |root)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519636606328) (:by |root)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:width) (:type :leaf) (:at 1519667538766) (:by |root)
                                                      |j $ {} (:text ||100%) (:type :leaf) (:at 1519667540089) (:by |root)
                                                    :type :expr
                                                    :at 1519667537765
                                                    :by |root
                                                :type :expr
                                                :at 1519636606008
                                                :by |root
                                            :type :expr
                                            :at 1519636603964
                                            :by |root
                                        :type :expr
                                        :at 1519636093657
                                        :by |root
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1519636211804) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:text) (:type :leaf) (:at 1519636213126) (:by |root)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1519636213706) (:by |root)
                                            :type :expr
                                            :at 1519636212409
                                            :by |root
                                        :type :expr
                                        :at 1519636210841
                                        :by |root
                                      |t $ {}
                                        :data $ {}
                                          |T $ {} (:text |:placeholder) (:type :leaf) (:at 1519667667363) (:by |root)
                                          |j $ {} (:text "||text inline") (:type :leaf) (:at 1519667671464) (:by |root)
                                        :type :expr
                                        :at 1519667663253
                                        :by |root
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on-input) (:type :leaf) (:at 1519636217004) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1604993439405) (:by |wA2nX3K2f)
                                              |b $ {}
                                                :data $ {}
                                                  |T $ {} (:text |e) (:type :leaf) (:at 1604993440585) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |d!) (:type :leaf) (:at 1604993441127) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1604993440300
                                                :by |wA2nX3K2f
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |d!) (:type :leaf) (:at 1604993444132) (:by |wA2nX3K2f)
                                                  |L $ {} (:text |cursor) (:type :leaf) (:at 1604993445125) (:by |wA2nX3K2f)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |assoc) (:type :leaf) (:at 1519636221572) (:by |root)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1519636222894) (:by |root)
                                                      |r $ {} (:text |:text) (:type :leaf) (:at 1519636224255) (:by |root)
                                                      |v $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:value) (:type :leaf) (:at 1519636226843) (:by |root)
                                                          |j $ {} (:text |e) (:type :leaf) (:at 1604993570363) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1519636224632
                                                        :by |root
                                                    :type :expr
                                                    :at 1519636220710
                                                    :by |root
                                                :type :expr
                                                :at 1604993442294
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1519636217402
                                            :by |root
                                        :type :expr
                                        :at 1519636214774
                                        :by |root
                                    :type :expr
                                    :at 1519636092805
                                    :by |root
                                :type :expr
                                :at 1519636091595
                                :by |root
                            :type :expr
                            :at 1519667385975
                            :by |root
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1519636103343) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519636106583) (:by |root)
                                :type :expr
                                :at 1519636103537
                                :by |root
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-md) (:type :leaf) (:at 1519636110292) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:text) (:type :leaf) (:at 1519636206830) (:by |root)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1519636208338) (:by |root)
                                    :type :expr
                                    :at 1519636204706
                                    :by |root
                                :type :expr
                                :at 1519636107040
                                :by |root
                            :type :expr
                            :at 1519636102692
                            :by |root
                        :type :expr
                        :at 1519636082578
                        :by |root
                      |p $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1519666282429) (:by |root)
                          |j $ {} (:text |nil) (:type :leaf) (:at 1519666283329) (:by |root)
                          |r $ {} (:text |40) (:type :leaf) (:at 1519667202122) (:by |root)
                        :type :expr
                        :at 1519666281442
                        :by |root
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1519635936391) (:by |root)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1519635936929) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1519635959461) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1519667467612) (:by |root)
                                    :type :expr
                                    :at 1519667467315
                                    :by |root
                                :type :expr
                                :at 1519635956527
                                :by |root
                            :type :expr
                            :at 1519635936607
                            :by |root
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1519667425624) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519667426566) (:by |root)
                                :type :expr
                                :at 1519667426253
                                :by |root
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-md) (:type :leaf) (:at 1519667429974) (:by |root)
                                  |j $ {} (:text "||Example For using `comp-md-block`:") (:type :leaf) (:at 1519667456866) (:by |root)
                                :type :expr
                                :at 1519667427072
                                :by |root
                            :type :expr
                            :at 1519667425064
                            :by |root
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |div) (:type :leaf) (:at 1519667421408) (:by |root)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519667423507) (:by |root)
                                :type :expr
                                :at 1519667423158
                                :by |root
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |textarea) (:type :leaf) (:at 1505725057558) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |b $ {}
                                        :data $ {}
                                          |T $ {} (:text |:placeholder) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {} (:text "||multi-line content") (:type :leaf) (:at 1519667681976) (:by |root)
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                      |f $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:draft) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1505725057558) (:by |root)
                                            :type :expr
                                            :at 1505725057558
                                            :by nil
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |merge) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |j $ {} (:text |ui/textarea) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519635981969) (:by |root)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:height) (:type :leaf) (:at 1519635983633) (:by |root)
                                                      |j $ {} (:text |240) (:type :leaf) (:at 1519635990207) (:by |root)
                                                    :type :expr
                                                    :at 1519635982219
                                                    :by |root
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:width) (:type :leaf) (:at 1519667538766) (:by |root)
                                                      |j $ {} (:text ||100%) (:type :leaf) (:at 1519667540089) (:by |root)
                                                    :type :expr
                                                    :at 1519667537765
                                                    :by |root
                                                :type :expr
                                                :at 1519635981594
                                                :by |root
                                            :type :expr
                                            :at 1505725057558
                                            :by nil
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on) (:type :leaf) (:at 1505727637212) (:by |root)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:input) (:type :leaf) (:at 1505725057558) (:by |root)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |fn) (:type :leaf) (:at 1505725057558) (:by |root)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |e) (:type :leaf) (:at 1505725057558) (:by |root)
                                                          |j $ {} (:text |d!) (:type :leaf) (:at 1604993544643) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1505725057558
                                                        :by nil
                                                      |n $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |;) (:type :leaf) (:at 1612254726351) (:by |wA2nX3K2f)
                                                          |T $ {} (:text |println) (:type :leaf) (:at 1505731398427) (:by |root)
                                                          |X $ {} (:text ||Editing:) (:type :leaf) (:at 1505731408053) (:by |root)
                                                          |b $ {} (:text |state) (:type :leaf) (:at 1505731403909) (:by |root)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:value) (:type :leaf) (:at 1505731400003) (:by |root)
                                                              |j $ {} (:text |e) (:type :leaf) (:at 1505731400407) (:by |root)
                                                            :type :expr
                                                            :at 1505731399317
                                                            :by |root
                                                        :type :expr
                                                        :at 1505731396007
                                                        :by |root
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |d!) (:type :leaf) (:at 1604993541453) (:by |wA2nX3K2f)
                                                          |f $ {} (:text |cursor) (:type :leaf) (:at 1604993543162) (:by |wA2nX3K2f)
                                                          |r $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |assoc) (:type :leaf) (:at 1505727591504) (:by |root)
                                                              |L $ {} (:text |state) (:type :leaf) (:at 1505727600077) (:by |root)
                                                              |P $ {} (:text |:draft) (:type :leaf) (:at 1505727602474) (:by |root)
                                                              |T $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:value) (:type :leaf) (:at 1505725057558) (:by |root)
                                                                  |j $ {} (:text |e) (:type :leaf) (:at 1505725057558) (:by |root)
                                                                :type :expr
                                                                :at 1505725057558
                                                                :by nil
                                                            :type :expr
                                                            :at 1505727589905
                                                            :by |root
                                                        :type :expr
                                                        :at 1505725057558
                                                        :by nil
                                                    :type :expr
                                                    :at 1505725057558
                                                    :by nil
                                                :type :expr
                                                :at 1505725057558
                                                :by nil
                                            :type :expr
                                            :at 1505725057558
                                            :by nil
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1519667420713
                            :by |root
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |div) (:type :leaf) (:at 1519635996530) (:by |root)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519635997097) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1519635999712) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |merge) (:type :leaf) (:at 1519636014079) (:by |root)
                                          |L $ {} (:text |ui/flex) (:type :leaf) (:at 1519636015308) (:by |root)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1519636000224) (:by |root)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1519636002766) (:by |root)
                                                  |j $ {} (:text |8) (:type :leaf) (:at 1519636003541) (:by |root)
                                                :type :expr
                                                :at 1519636000475
                                                :by |root
                                            :type :expr
                                            :at 1519635999950
                                            :by |root
                                        :type :expr
                                        :at 1519636013166
                                        :by |root
                                    :type :expr
                                    :at 1519635998824
                                    :by |root
                                :type :expr
                                :at 1519635996781
                                :by |root
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-md-block) (:type :leaf) (:at 1519632143897) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:draft) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1505725057558) (:by |root)
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:highlight) (:type :leaf) (:at 1505725057558) (:by |root)
                                          |j $ {} (:text |highlighter) (:type :leaf) (:at 1505730937250) (:by |root)
                                        :type :expr
                                        :at 1505725057558
                                        :by nil
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:css) (:type :leaf) (:at 1520787970268) (:by |root)
                                          |j $ {} (:text "||.md-p code {\n  background-color: #edf;\n  padding: 0 8px;\n}") (:type :leaf) (:at 1520789321927) (:by |root)
                                        :type :expr
                                        :at 1520787968976
                                        :by |root
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:class-name) (:type :leaf) (:at 1520789006749) (:by |root)
                                          |j $ {} (:text ||demo) (:type :leaf) (:at 1520789008066) (:by |root)
                                        :type :expr
                                        :at 1520789005245
                                        :by |root
                                    :type :expr
                                    :at 1505725057558
                                    :by nil
                                :type :expr
                                :at 1505725057558
                                :by nil
                            :type :expr
                            :at 1519635994848
                            :by |root
                        :type :expr
                        :at 1519635935661
                        :by |root
                    :type :expr
                    :at 1505725057558
                    :by nil
                :type :expr
                :at 1505727548387
                :by |root
            :type :expr
            :at 1505725057558
            :by nil
          |initial-state $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1505727568736) (:by |root)
              |j $ {} (:text |initial-state) (:type :leaf) (:at 1505727567989) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1505725057558) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:draft) (:type :leaf) (:at 1505725057558) (:by |root)
                      |j $ {} (:text ||) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:text) (:type :leaf) (:at 1519636199835) (:by |root)
                      |j $ {} (:text ||) (:type :leaf) (:at 1519636200127) (:by |root)
                    :type :expr
                    :at 1519636197599
                    :by |root
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505727567989
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1505725057558
          :by nil
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1505725057558) (:by |root)
            |j $ {} (:text |respo-md.comp.container) (:type :leaf) (:at 1505725057558) (:by |root)
            |r $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519632066189) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519632128446) (:by |root)
                        |r $ {} (:text |comp-md-block) (:type :leaf) (:at 1519632309109) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505726927670) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540917574411) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505726931244) (:by |root)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |a) (:type :leaf) (:at 1519668159416) (:by |root)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505726931807) (:by |root)
                        |b $ {} (:text |defcomp) (:type :leaf) (:at 1505726936654) (:by |root)
                        |j $ {} (:text |<>) (:type :leaf) (:at 1505726934044) (:by |root)
                        |r $ {} (:text |div) (:type :leaf) (:at 1505726942621) (:by |root)
                        |v $ {} (:text |span) (:type :leaf) (:at 1505726943769) (:by |root)
                        |x $ {} (:text |textarea) (:type :leaf) (:at 1505726945290) (:by |root)
                        |y $ {} (:text |input) (:type :leaf) (:at 1519636123858) (:by |root)
                      :type :expr
                      :at 1505726931520
                      :by |root
                  :type :expr
                  :at 1505726927139
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1505725057558) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.util.format) (:type :leaf) (:at 1610732016720) (:by |wA2nX3K2f)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1505725057558) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1505725057558) (:by |root)
                  :type :expr
                  :at 1505725057558
                  :by nil
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1505725057558) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1505725057558) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1505726952691) (:by |root)
                      :type :expr
                      :at 1505725057558
                      :by nil
                  :type :expr
                  :at 1505725057558
                  :by nil
              :type :expr
              :at 1505725057558
              :by nil
          :type :expr
          :at 1505725057558
          :by nil
      |respo-md.util.core $ {}
        :defs $ {}
          |split-line-iter $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610733935919) (:by |wA2nX3K2f)
              |j $ {} (:text |split-line-iter) (:type :leaf) (:at 1610732555006) (:by |wA2nX3K2f)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                  |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                  |v $ {} (:text |mode) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                :type :expr
                :at 1610732556009
                :by |wA2nX3K2f
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                      |j $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                      |r $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1610732556009
                    :by |wA2nX3K2f
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                          |j $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                          |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732556009
                        :by |wA2nX3K2f
                      |r $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                          |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |j $ {} (:text |mode) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610732556009
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732556009
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1610732556009
                    :by |wA2nX3K2f
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |let) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |cursor) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |first) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610732556009
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732556009
                            :by |wA2nX3K2f
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694292775) (:by |wA2nX3K2f)
                                  |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                  |r $ {} (:text |1) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610732556009
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732556009
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732556009
                        :by |wA2nX3K2f
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |case-default) (:type :leaf) (:at 1633239190265) (:by |wA2nX3K2f)
                          |j $ {} (:text |mode) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                          |n $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |wA2nX3K2f) (:at 1633239190994) (:text |raise)
                              |j $ {} (:type :expr) (:by |wA2nX3K2f) (:at 1633239190994)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |wA2nX3K2f) (:at 1633239190994) (:text |str)
                                  |j $ {} (:type :leaf) (:by |wA2nX3K2f) (:at 1633239190994) (:text "||Unknown mode:")
                                  |r $ {} (:type :leaf) (:by |wA2nX3K2f) (:at 1633239190994) (:text |mode)
                            :type :expr
                            :at 1633239190994
                            :by |wA2nX3K2f
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |case-default) (:type :leaf) (:at 1624121246531) (:by |wA2nX3K2f)
                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                  |n $ {}
                                    :data $ {}
                                      |T $ {} (:text |recur) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                      |j $ {} (:text |acc) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                      |r $ {} (:text |left) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                          |j $ {} (:text |buffer) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                          |r $ {} (:text |cursor) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1624121247315
                                        :by |wA2nX3K2f
                                      |x $ {} (:text |:text) (:type :leaf) (:at 1624121247315) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1624121247315
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text "||`") (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |some?) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |v $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                          |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |x $ {} (:text |:code) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text ||h) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |or) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text ||http://) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694293982) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |v $ {} (:text |7) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text ||https://) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694294955) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |v $ {} (:text |8) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |let) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |pieces) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |split) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |r $ {} (:text "|| ") (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |j $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :type :expr
                                                                :at 1610732556009
                                                                :by |wA2nX3K2f
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {} (:text |:url) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |first) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text |pieces) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |str) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {} (:text "|| ") (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |join-str) (:type :leaf) (:at 1624121329019) (:by |wA2nX3K2f)
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |rest) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text |pieces) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                          |v $ {} (:text "|| ") (:type :leaf) (:at 1624120649742) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {} (:text ||h) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text ||[) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |let) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |.-0) (:type :leaf) (:at 1633239119590) (:by |wA2nX3K2f)
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.!match) (:type :leaf) (:at 1633239106366) (:by |wA2nX3K2f)
                                                          |b $ {} (:text |line) (:type :leaf) (:at 1619548977892) (:by |wA2nX3K2f)
                                                          |j $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |new) (:type :leaf) (:at 1633239110354) (:by |wA2nX3K2f)
                                                              |L $ {} (:text |js/RegExp) (:type :leaf) (:at 1633239113235) (:by |wA2nX3K2f)
                                                              |T $ {} (:text "|\"^\\[[^\\]]+\\]\\([^\\)]+\\)") (:type :leaf) (:at 1612251934577) (:by |wA2nX3K2f)
                                                              |j $ {} (:text "|\"g") (:type :leaf) (:at 1633239115771) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1633239108699
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1612251751745
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |some?) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |j $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :type :expr
                                                                :at 1610732556009
                                                                :by |wA2nX3K2f
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {} (:text |:link) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |r $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.!replace) (:type :leaf) (:at 1624120684709) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text |guess) (:type :leaf) (:at 1612251802738) (:by |wA2nX3K2f)
                                                      |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |str) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text ||[) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text ||!) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |let) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {}
                                            :data $ {}
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |.-0) (:type :leaf) (:at 1633239123707) (:by |wA2nX3K2f)
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.!match) (:type :leaf) (:at 1633239126853) (:by |wA2nX3K2f)
                                                          |b $ {} (:text |line) (:type :leaf) (:at 1619548980755) (:by |wA2nX3K2f)
                                                          |j $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |new) (:type :leaf) (:at 1633239129212) (:by |wA2nX3K2f)
                                                              |L $ {} (:text |js/RegExp) (:type :leaf) (:at 1633239132777) (:by |wA2nX3K2f)
                                                              |T $ {} (:text "|\"^\\!\\[[^\\]]*\\]\\([^\\)]+\\)") (:type :leaf) (:at 1612251936699) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1633239127991
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1612251776491
                                                    :by |wA2nX3K2f
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |some?) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |j $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                                :type :expr
                                                                :at 1610732556009
                                                                :by |wA2nX3K2f
                                                            :type :expr
                                                            :at 1610732556009
                                                            :by |wA2nX3K2f
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |j $ {} (:text |:image) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                          |r $ {} (:text |guess) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                        :type :expr
                                                        :at 1610732556009
                                                        :by |wA2nX3K2f
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.replace) (:type :leaf) (:at 1623590485067) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |line) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text |guess) (:type :leaf) (:at 1612251804395) (:by |wA2nX3K2f)
                                                      |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |str) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |j $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                      |r $ {} (:text ||!) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                    :type :expr
                                                    :at 1610732556009
                                                    :by |wA2nX3K2f
                                                  |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732556009
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732556009
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732556009
                            :by |wA2nX3K2f
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:code) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |r $ {} (:text "||`") (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |conj) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |j $ {} (:text |:code) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732556009
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                      |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |v $ {} (:text ||) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |x $ {} (:text |:text) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |recur) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |j $ {} (:text |acc) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |r $ {} (:text |left) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |j $ {} (:text |buffer) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                          |r $ {} (:text |cursor) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732556009
                                        :by |wA2nX3K2f
                                      |x $ {} (:text |:code) (:type :leaf) (:at 1610732556009) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732556009
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732556009
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732556009
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732556009
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1610732556009
                    :by |wA2nX3K2f
                :type :expr
                :at 1610732556009
                :by |wA2nX3K2f
            :type :expr
            :at 1610732555006
            :by |wA2nX3K2f
          |split-block $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610732182245) (:by |wA2nX3K2f)
              |j $ {} (:text |split-block) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |split-block-iter) (:type :leaf) (:at 1610732141925) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |split-lines) (:type :leaf) (:at 1610732074961) (:by |wA2nX3K2f)
                      |j $ {} (:text |text) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |x $ {} (:text |:empty) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |split-line $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610732553043) (:by |wA2nX3K2f)
              |j $ {} (:text |split-line) (:type :leaf) (:at 1505725057558) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
              |v $ {}
                :data $ {}
                  |T $ {} (:text |split-line-iter) (:type :leaf) (:at 1610732547789) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1505725057558) (:by |root)
                    :type :expr
                    :at 1505725057558
                    :by nil
                  |r $ {} (:text |line) (:type :leaf) (:at 1505725057558) (:by |root)
                  |v $ {} (:text ||) (:type :leaf) (:at 1505725057558) (:by |root)
                  |x $ {} (:text |:text) (:type :leaf) (:at 1505725057558) (:by |root)
                :type :expr
                :at 1505725057558
                :by nil
            :type :expr
            :at 1505725057558
            :by nil
          |split-block-iter $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610732149389) (:by |wA2nX3K2f)
              |j $ {} (:text |split-block-iter) (:type :leaf) (:at 1610732143799) (:by |wA2nX3K2f)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |lines) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                  |j $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                  |v $ {} (:text |mode) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                :type :expr
                :at 1610732144881
                :by |wA2nX3K2f
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |empty?) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                      |j $ {} (:text |lines) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                    :type :expr
                    :at 1610732144881
                    :by |wA2nX3K2f
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |empty?) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                          |j $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                        :type :expr
                        :at 1610732144881
                        :by |wA2nX3K2f
                      |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                          |j $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {} (:text |mode) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732144881
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1610732144881
                    :by |wA2nX3K2f
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |let) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                      |j $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |first) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                  |j $ {} (:text |lines) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |rest) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                  |j $ {} (:text |lines) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732144881
                        :by |wA2nX3K2f
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |case) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                          |j $ {} (:text |mode) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:empty) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |cond) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |=) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text ||) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:empty) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732163573) (:by |wA2nX3K2f)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text "||```") (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694281287) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |3) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732144881
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:code) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:else) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:text) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:text) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |cond) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |=) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text ||) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |:text) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732144881
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:empty) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732165915) (:by |wA2nX3K2f)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text "||```") (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |:text) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732144881
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |&str:slice) (:type :leaf) (:at 1623694282723) (:by |wA2nX3K2f)
                                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                  |r $ {} (:text |3) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                                :type :expr
                                                :at 1610732144881
                                                :by |wA2nX3K2f
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:code) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:else) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |r $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                          |x $ {} (:text |:text) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |:code) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |starts-with?) (:type :leaf) (:at 1610732168365) (:by |wA2nX3K2f)
                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |r $ {} (:text "||```") (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |j $ {} (:text |mode) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                              |r $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                            :type :expr
                                            :at 1610732144881
                                            :by |wA2nX3K2f
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |x $ {} (:text |:empty) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |recur) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |j $ {} (:text |left) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |r $ {} (:text |acc) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |conj) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |j $ {} (:text |buffer) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                          |r $ {} (:text |cursor) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                        :type :expr
                                        :at 1610732144881
                                        :by |wA2nX3K2f
                                      |x $ {} (:text |:code) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                          |y $ {}
                            :data $ {}
                              |T $ {} (:text |mode) (:type :leaf) (:at 1610732153332) (:by |wA2nX3K2f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |raise) (:type :leaf) (:at 1610732155821) (:by |wA2nX3K2f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |str) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |j $ {} (:text "||Strange splitting mode: ") (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                      |r $ {} (:text |mode) (:type :leaf) (:at 1610732144881) (:by |wA2nX3K2f)
                                    :type :expr
                                    :at 1610732144881
                                    :by |wA2nX3K2f
                                :type :expr
                                :at 1610732144881
                                :by |wA2nX3K2f
                            :type :expr
                            :at 1610732144881
                            :by |wA2nX3K2f
                        :type :expr
                        :at 1610732144881
                        :by |wA2nX3K2f
                    :type :expr
                    :at 1610732144881
                    :by |wA2nX3K2f
                :type :expr
                :at 1610732144881
                :by |wA2nX3K2f
            :type :expr
            :at 1610732143799
            :by |wA2nX3K2f
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1505725057558
          :by nil
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1505725057558) (:by |root)
            |j $ {} (:text |respo-md.util.core) (:type :leaf) (:at 1505725057558) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1505725057558) (:by |root)
              :type :expr
              :at 1505725057558
              :by nil
          :type :expr
          :at 1505725057558
          :by nil
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |wA2nX3K2f $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |wA2nX3K2f) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
