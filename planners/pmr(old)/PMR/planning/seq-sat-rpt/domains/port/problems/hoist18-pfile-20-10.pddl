(define (problem pfile-20-10) (:domain port)
  (:objects hoist18 - hoist
             level3 level2 level1 level0 - level
             crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet7 pallet6 pallet5 pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet127 pallet126 pallet125 pallet124 pallet123 pallet122 pallet121 pallet120 pallet119 pallet118 pallet117 pallet116 pallet115 pallet114 pallet113 pallet112 pallet111 pallet110 pallet109 pallet108 pallet107 pallet106 pallet105 pallet104 pallet103 pallet102 pallet101 pallet100 pallet99 pallet98 pallet97 pallet96 pallet95 pallet94 pallet93 pallet92 pallet91 pallet90 pallet89 pallet88 pallet87 pallet86 pallet85 pallet84 pallet83 pallet82 pallet81 pallet80 pallet79 pallet78 pallet77 pallet76 pallet75 pallet74 pallet73 pallet72 pallet71 pallet70 pallet69 pallet68 pallet67 pallet66 pallet65 pallet64 pallet63 pallet62 pallet61 pallet60 pallet59 pallet58 pallet57 pallet56 pallet55 pallet54 pallet53 pallet52 pallet51 pallet50 pallet49 pallet48 pallet47 pallet46 pallet45 pallet44 pallet43 pallet42 pallet41 pallet40 pallet39 pallet38 pallet37 pallet36 pallet35 pallet34 pallet33 pallet32 pallet31 pallet30 pallet29 pallet28 pallet27 pallet26 pallet25 pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 pallet17 pallet16 pallet15 pallet14 pallet13 pallet12 pallet11 pallet10 pallet9 pallet8 - pallet-ship
             dock0 - dock
             ship19 ship18 ship17 ship16 ship15 ship14 ship13 ship12 ship11 ship10 ship9 ship8 ship7 ship6 ship5 ship4 ship3 ship2 ship1 ship0 - ship
            )
  (:init
       (clear pallet8)
       (clear pallet9)
       (clear pallet10)
       (clear pallet11)
       (clear pallet12)
       (clear pallet13)
       (clear pallet14)
       (clear pallet15)
       (clear pallet16)
       (clear pallet17)
       (clear pallet18)
       (clear pallet19)
       (clear pallet20)
       (clear pallet21)
       (clear pallet22)
       (clear pallet23)
       (clear pallet24)
       (clear pallet25)
       (clear pallet26)
       (clear pallet27)
       (clear pallet28)
       (clear pallet29)
       (clear pallet30)
       (clear pallet31)
       (clear pallet32)
       (clear pallet33)
       (clear pallet34)
       (clear pallet35)
       (clear pallet36)
       (clear pallet37)
       (clear pallet38)
       (clear pallet39)
       (clear pallet40)
       (clear pallet41)
       (clear pallet42)
       (clear pallet43)
       (clear pallet44)
       (clear pallet45)
       (clear pallet46)
       (clear pallet47)
       (clear pallet48)
       (clear pallet49)
       (clear pallet50)
       (clear pallet51)
       (clear pallet52)
       (clear pallet53)
       (clear pallet54)
       (clear pallet55)
       (clear pallet56)
       (clear pallet57)
       (clear pallet58)
       (clear pallet59)
       (clear pallet60)
       (clear pallet61)
       (clear pallet62)
       (clear pallet63)
       (clear pallet64)
       (clear pallet65)
       (clear pallet66)
       (clear pallet67)
       (clear pallet68)
       (clear pallet69)
       (clear pallet70)
       (clear pallet71)
       (clear pallet72)
       (clear pallet73)
       (clear pallet74)
       (clear pallet75)
       (clear pallet76)
       (clear pallet77)
       (clear pallet78)
       (clear pallet79)
       (clear pallet80)
       (clear pallet81)
       (clear pallet82)
       (clear pallet83)
       (clear pallet84)
       (clear pallet85)
       (clear pallet86)
       (clear pallet87)
       (clear pallet88)
       (clear pallet89)
       (clear pallet90)
       (clear pallet91)
       (clear pallet92)
       (clear pallet93)
       (clear pallet94)
       (clear pallet95)
       (clear pallet96)
       (clear pallet97)
       (clear pallet98)
       (clear pallet99)
       (clear pallet100)
       (clear pallet101)
       (clear pallet102)
       (clear pallet103)
       (clear pallet104)
       (clear pallet105)
       (clear pallet106)
       (clear pallet107)
       (clear pallet108)
       (clear pallet109)
       (clear pallet110)
       (clear pallet111)
       (clear pallet112)
       (clear pallet113)
       (clear pallet114)
       (clear pallet115)
       (clear pallet116)
       (clear pallet117)
       (clear pallet118)
       (clear pallet119)
       (clear pallet120)
       (clear pallet121)
       (clear pallet122)
       (clear pallet123)
       (clear pallet124)
       (clear pallet125)
       (clear pallet126)
       (clear pallet127)
       (clear crate9)
       (clear crate4)
       (clear crate2)
       (clear crate6)
       (clear pallet4)
       (clear pallet5)
       (clear crate5)
       (clear crate7)
       (height crate9 level2)
       (on-dock crate9 crate8)
       (at crate9 dock0)
       (height crate8 level1)
       (on-dock crate8 pallet0)
       (at crate8 dock0)
       (height crate7 level2)
       (on-dock crate7 crate3)
       (at crate7 dock0)
       (height crate6 level3)
       (on-dock crate6 crate1)
       (at crate6 dock0)
       (height crate5 level1)
       (on-dock crate5 pallet6)
       (at crate5 dock0)
       (height crate4 level1)
       (on-dock crate4 pallet1)
       (at crate4 dock0)
       (height crate3 level1)
       (on-dock crate3 pallet7)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet2)
       (at crate2 dock0)
       (height crate1 level2)
       (on-dock crate1 crate0)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet3)
       (at crate0 dock0)
       (height pallet127 level0)
       (at pallet127 ship19)
       (height pallet126 level0)
       (at pallet126 ship19)
       (height pallet125 level0)
       (at pallet125 ship19)
       (height pallet124 level0)
       (at pallet124 ship19)
       (height pallet123 level0)
       (at pallet123 ship19)
       (height pallet122 level0)
       (at pallet122 ship19)
       (height pallet121 level0)
       (at pallet121 ship18)
       (height pallet120 level0)
       (at pallet120 ship18)
       (height pallet119 level0)
       (at pallet119 ship18)
       (height pallet118 level0)
       (at pallet118 ship18)
       (height pallet117 level0)
       (at pallet117 ship18)
       (height pallet116 level0)
       (at pallet116 ship18)
       (available hoist18)
       (assigned hoist18 ship18)
       (height pallet115 level0)
       (at pallet115 ship17)
       (height pallet114 level0)
       (at pallet114 ship17)
       (height pallet113 level0)
       (at pallet113 ship17)
       (height pallet112 level0)
       (at pallet112 ship17)
       (height pallet111 level0)
       (at pallet111 ship17)
       (height pallet110 level0)
       (at pallet110 ship17)
       (height pallet109 level0)
       (at pallet109 ship16)
       (height pallet108 level0)
       (at pallet108 ship16)
       (height pallet107 level0)
       (at pallet107 ship16)
       (height pallet106 level0)
       (at pallet106 ship16)
       (height pallet105 level0)
       (at pallet105 ship16)
       (height pallet104 level0)
       (at pallet104 ship16)
       (height pallet103 level0)
       (at pallet103 ship15)
       (height pallet102 level0)
       (at pallet102 ship15)
       (height pallet101 level0)
       (at pallet101 ship15)
       (height pallet100 level0)
       (at pallet100 ship15)
       (height pallet99 level0)
       (at pallet99 ship15)
       (height pallet98 level0)
       (at pallet98 ship15)
       (height pallet97 level0)
       (at pallet97 ship14)
       (height pallet96 level0)
       (at pallet96 ship14)
       (height pallet95 level0)
       (at pallet95 ship14)
       (height pallet94 level0)
       (at pallet94 ship14)
       (height pallet93 level0)
       (at pallet93 ship14)
       (height pallet92 level0)
       (at pallet92 ship14)
       (height pallet91 level0)
       (at pallet91 ship13)
       (height pallet90 level0)
       (at pallet90 ship13)
       (height pallet89 level0)
       (at pallet89 ship13)
       (height pallet88 level0)
       (at pallet88 ship13)
       (height pallet87 level0)
       (at pallet87 ship13)
       (height pallet86 level0)
       (at pallet86 ship13)
       (height pallet85 level0)
       (at pallet85 ship12)
       (height pallet84 level0)
       (at pallet84 ship12)
       (height pallet83 level0)
       (at pallet83 ship12)
       (height pallet82 level0)
       (at pallet82 ship12)
       (height pallet81 level0)
       (at pallet81 ship12)
       (height pallet80 level0)
       (at pallet80 ship12)
       (height pallet79 level0)
       (at pallet79 ship11)
       (height pallet78 level0)
       (at pallet78 ship11)
       (height pallet77 level0)
       (at pallet77 ship11)
       (height pallet76 level0)
       (at pallet76 ship11)
       (height pallet75 level0)
       (at pallet75 ship11)
       (height pallet74 level0)
       (at pallet74 ship11)
       (height pallet73 level0)
       (at pallet73 ship10)
       (height pallet72 level0)
       (at pallet72 ship10)
       (height pallet71 level0)
       (at pallet71 ship10)
       (height pallet70 level0)
       (at pallet70 ship10)
       (height pallet69 level0)
       (at pallet69 ship10)
       (height pallet68 level0)
       (at pallet68 ship10)
       (height pallet67 level0)
       (at pallet67 ship9)
       (height pallet66 level0)
       (at pallet66 ship9)
       (height pallet65 level0)
       (at pallet65 ship9)
       (height pallet64 level0)
       (at pallet64 ship9)
       (height pallet63 level0)
       (at pallet63 ship9)
       (height pallet62 level0)
       (at pallet62 ship9)
       (height pallet61 level0)
       (at pallet61 ship8)
       (height pallet60 level0)
       (at pallet60 ship8)
       (height pallet59 level0)
       (at pallet59 ship8)
       (height pallet58 level0)
       (at pallet58 ship8)
       (height pallet57 level0)
       (at pallet57 ship8)
       (height pallet56 level0)
       (at pallet56 ship8)
       (height pallet55 level0)
       (at pallet55 ship7)
       (height pallet54 level0)
       (at pallet54 ship7)
       (height pallet53 level0)
       (at pallet53 ship7)
       (height pallet52 level0)
       (at pallet52 ship7)
       (height pallet51 level0)
       (at pallet51 ship7)
       (height pallet50 level0)
       (at pallet50 ship7)
       (height pallet49 level0)
       (at pallet49 ship6)
       (height pallet48 level0)
       (at pallet48 ship6)
       (height pallet47 level0)
       (at pallet47 ship6)
       (height pallet46 level0)
       (at pallet46 ship6)
       (height pallet45 level0)
       (at pallet45 ship6)
       (height pallet44 level0)
       (at pallet44 ship6)
       (height pallet43 level0)
       (at pallet43 ship5)
       (height pallet42 level0)
       (at pallet42 ship5)
       (height pallet41 level0)
       (at pallet41 ship5)
       (height pallet40 level0)
       (at pallet40 ship5)
       (height pallet39 level0)
       (at pallet39 ship5)
       (height pallet38 level0)
       (at pallet38 ship5)
       (height pallet37 level0)
       (at pallet37 ship4)
       (height pallet36 level0)
       (at pallet36 ship4)
       (height pallet35 level0)
       (at pallet35 ship4)
       (height pallet34 level0)
       (at pallet34 ship4)
       (height pallet33 level0)
       (at pallet33 ship4)
       (height pallet32 level0)
       (at pallet32 ship4)
       (height pallet31 level0)
       (at pallet31 ship3)
       (height pallet30 level0)
       (at pallet30 ship3)
       (height pallet29 level0)
       (at pallet29 ship3)
       (height pallet28 level0)
       (at pallet28 ship3)
       (height pallet27 level0)
       (at pallet27 ship3)
       (height pallet26 level0)
       (at pallet26 ship3)
       (height pallet25 level0)
       (at pallet25 ship2)
       (height pallet24 level0)
       (at pallet24 ship2)
       (height pallet23 level0)
       (at pallet23 ship2)
       (height pallet22 level0)
       (at pallet22 ship2)
       (height pallet21 level0)
       (at pallet21 ship2)
       (height pallet20 level0)
       (at pallet20 ship2)
       (height pallet19 level0)
       (at pallet19 ship1)
       (height pallet18 level0)
       (at pallet18 ship1)
       (height pallet17 level0)
       (at pallet17 ship1)
       (height pallet16 level0)
       (at pallet16 ship1)
       (height pallet15 level0)
       (at pallet15 ship1)
       (height pallet14 level0)
       (at pallet14 ship1)
       (height pallet13 level0)
       (at pallet13 ship0)
       (height pallet12 level0)
       (at pallet12 ship0)
       (height pallet11 level0)
       (at pallet11 ship0)
       (height pallet10 level0)
       (at pallet10 ship0)
       (height pallet9 level0)
       (at pallet9 ship0)
       (height pallet8 level0)
       (at pallet8 ship0)
       (height pallet7 level0)
       (at pallet7 dock0)
       (height pallet6 level0)
       (at pallet6 dock0)
       (height pallet5 level0)
       (at pallet5 dock0)
       (height pallet4 level0)
       (at pallet4 dock0)
       (height pallet3 level0)
       (at pallet3 dock0)
       (height pallet2 level0)
       (at pallet2 dock0)
       (height pallet1 level0)
       (at pallet1 dock0)
       (height pallet0 level0)
       (at pallet0 dock0)
       (next level2 level3)
       (next level1 level2)
       (next level0 level1))
  (:goal (and 
       (on-ship crate9 crate3 ship12)
       (on-ship crate8 pallet97 ship14)
       (on-ship crate7 pallet14 ship1)
       (on-ship crate6 pallet60 ship8)
       (on-ship crate5 pallet53 ship7)
       (on-ship crate4 pallet33 ship4)
       (on-ship crate3 pallet80 ship12)
       (on-ship crate2 pallet25 ship2)
       (on-ship crate1 pallet44 ship6)
       (on-ship crate0 pallet59 ship8))))