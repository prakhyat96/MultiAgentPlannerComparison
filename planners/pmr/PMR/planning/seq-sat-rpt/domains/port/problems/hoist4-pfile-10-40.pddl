(define (problem pfile-10-40) (:domain port)
  (:objects hoist4 - hoist
             level3 level2 level1 level0 - level
             crate39 crate38 crate37 crate36 crate35 crate34 crate33 crate32 crate31 crate30 crate29 crate28 crate27 crate26 crate25 crate24 crate23 crate22 crate21 crate20 crate19 crate18 crate17 crate16 crate15 crate14 crate13 crate12 crate11 crate10 crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet17 pallet16 pallet15 pallet14 pallet13 pallet12 pallet11 pallet10 pallet9 pallet8 pallet7 pallet6 pallet5 pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet127 pallet126 pallet125 pallet124 pallet123 pallet122 pallet121 pallet120 pallet119 pallet118 pallet117 pallet116 pallet115 pallet114 pallet113 pallet112 pallet111 pallet110 pallet109 pallet108 pallet107 pallet106 pallet105 pallet104 pallet103 pallet102 pallet101 pallet100 pallet99 pallet98 pallet97 pallet96 pallet95 pallet94 pallet93 pallet92 pallet91 pallet90 pallet89 pallet88 pallet87 pallet86 pallet85 pallet84 pallet83 pallet82 pallet81 pallet80 pallet79 pallet78 pallet77 pallet76 pallet75 pallet74 pallet73 pallet72 pallet71 pallet70 pallet69 pallet68 pallet67 pallet66 pallet65 pallet64 pallet63 pallet62 pallet61 pallet60 pallet59 pallet58 pallet57 pallet56 pallet55 pallet54 pallet53 pallet52 pallet51 pallet50 pallet49 pallet48 pallet47 pallet46 pallet45 pallet44 pallet43 pallet42 pallet41 pallet40 pallet39 pallet38 pallet37 pallet36 pallet35 pallet34 pallet33 pallet32 pallet31 pallet30 pallet29 pallet28 pallet27 pallet26 pallet25 pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 - pallet-ship
             dock0 - dock
             ship9 ship8 ship7 ship6 ship5 ship4 ship3 ship2 ship1 ship0 - ship
            )
  (:init
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
       (clear crate19)
       (clear crate7)
       (clear crate22)
       (clear crate25)
       (clear crate39)
       (clear crate24)
       (clear crate5)
       (clear crate34)
       (clear crate37)
       (clear crate21)
       (clear crate28)
       (clear pallet11)
       (clear crate26)
       (clear crate33)
       (clear crate36)
       (clear crate32)
       (clear crate38)
       (clear crate35)
       (height crate39 level3)
       (on-dock crate39 crate31)
       (at crate39 dock0)
       (height crate38 level1)
       (on-dock crate38 pallet16)
       (at crate38 dock0)
       (height crate37 level2)
       (on-dock crate37 crate30)
       (at crate37 dock0)
       (height crate36 level3)
       (on-dock crate36 crate29)
       (at crate36 dock0)
       (height crate35 level2)
       (on-dock crate35 crate0)
       (at crate35 dock0)
       (height crate34 level3)
       (on-dock crate34 crate14)
       (at crate34 dock0)
       (height crate33 level3)
       (on-dock crate33 crate13)
       (at crate33 dock0)
       (height crate32 level1)
       (on-dock crate32 pallet15)
       (at crate32 dock0)
       (height crate31 level2)
       (on-dock crate31 crate17)
       (at crate31 dock0)
       (height crate30 level1)
       (on-dock crate30 pallet8)
       (at crate30 dock0)
       (height crate29 level2)
       (on-dock crate29 crate8)
       (at crate29 dock0)
       (height crate28 level3)
       (on-dock crate28 crate27)
       (at crate28 dock0)
       (height crate27 level2)
       (on-dock crate27 crate18)
       (at crate27 dock0)
       (height crate26 level2)
       (on-dock crate26 crate11)
       (at crate26 dock0)
       (height crate25 level2)
       (on-dock crate25 crate16)
       (at crate25 dock0)
       (height crate24 level3)
       (on-dock crate24 crate23)
       (at crate24 dock0)
       (height crate23 level2)
       (on-dock crate23 crate20)
       (at crate23 dock0)
       (height crate22 level3)
       (on-dock crate22 crate3)
       (at crate22 dock0)
       (height crate21 level3)
       (on-dock crate21 crate10)
       (at crate21 dock0)
       (height crate20 level1)
       (on-dock crate20 pallet5)
       (at crate20 dock0)
       (height crate19 level3)
       (on-dock crate19 crate15)
       (at crate19 dock0)
       (height crate18 level1)
       (on-dock crate18 pallet10)
       (at crate18 dock0)
       (height crate17 level1)
       (on-dock crate17 pallet4)
       (at crate17 dock0)
       (height crate16 level1)
       (on-dock crate16 pallet3)
       (at crate16 dock0)
       (height crate15 level2)
       (on-dock crate15 crate6)
       (at crate15 dock0)
       (height crate14 level2)
       (on-dock crate14 crate12)
       (at crate14 dock0)
       (height crate13 level2)
       (on-dock crate13 crate9)
       (at crate13 dock0)
       (height crate12 level1)
       (on-dock crate12 pallet7)
       (at crate12 dock0)
       (height crate11 level1)
       (on-dock crate11 pallet12)
       (at crate11 dock0)
       (height crate10 level2)
       (on-dock crate10 crate4)
       (at crate10 dock0)
       (height crate9 level1)
       (on-dock crate9 pallet13)
       (at crate9 dock0)
       (height crate8 level1)
       (on-dock crate8 pallet14)
       (at crate8 dock0)
       (height crate7 level2)
       (on-dock crate7 crate1)
       (at crate7 dock0)
       (height crate6 level1)
       (on-dock crate6 pallet0)
       (at crate6 dock0)
       (height crate5 level1)
       (on-dock crate5 pallet6)
       (at crate5 dock0)
       (height crate4 level1)
       (on-dock crate4 pallet9)
       (at crate4 dock0)
       (height crate3 level2)
       (on-dock crate3 crate2)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet2)
       (at crate2 dock0)
       (height crate1 level1)
       (on-dock crate1 pallet1)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet17)
       (at crate0 dock0)
       (height pallet127 level0)
       (at pallet127 ship9)
       (height pallet126 level0)
       (at pallet126 ship9)
       (height pallet125 level0)
       (at pallet125 ship9)
       (height pallet124 level0)
       (at pallet124 ship9)
       (height pallet123 level0)
       (at pallet123 ship9)
       (height pallet122 level0)
       (at pallet122 ship9)
       (height pallet121 level0)
       (at pallet121 ship9)
       (height pallet120 level0)
       (at pallet120 ship9)
       (height pallet119 level0)
       (at pallet119 ship9)
       (height pallet118 level0)
       (at pallet118 ship9)
       (height pallet117 level0)
       (at pallet117 ship9)
       (height pallet116 level0)
       (at pallet116 ship8)
       (height pallet115 level0)
       (at pallet115 ship8)
       (height pallet114 level0)
       (at pallet114 ship8)
       (height pallet113 level0)
       (at pallet113 ship8)
       (height pallet112 level0)
       (at pallet112 ship8)
       (height pallet111 level0)
       (at pallet111 ship8)
       (height pallet110 level0)
       (at pallet110 ship8)
       (height pallet109 level0)
       (at pallet109 ship8)
       (height pallet108 level0)
       (at pallet108 ship8)
       (height pallet107 level0)
       (at pallet107 ship8)
       (height pallet106 level0)
       (at pallet106 ship8)
       (height pallet105 level0)
       (at pallet105 ship7)
       (height pallet104 level0)
       (at pallet104 ship7)
       (height pallet103 level0)
       (at pallet103 ship7)
       (height pallet102 level0)
       (at pallet102 ship7)
       (height pallet101 level0)
       (at pallet101 ship7)
       (height pallet100 level0)
       (at pallet100 ship7)
       (height pallet99 level0)
       (at pallet99 ship7)
       (height pallet98 level0)
       (at pallet98 ship7)
       (height pallet97 level0)
       (at pallet97 ship7)
       (height pallet96 level0)
       (at pallet96 ship7)
       (height pallet95 level0)
       (at pallet95 ship7)
       (height pallet94 level0)
       (at pallet94 ship6)
       (height pallet93 level0)
       (at pallet93 ship6)
       (height pallet92 level0)
       (at pallet92 ship6)
       (height pallet91 level0)
       (at pallet91 ship6)
       (height pallet90 level0)
       (at pallet90 ship6)
       (height pallet89 level0)
       (at pallet89 ship6)
       (height pallet88 level0)
       (at pallet88 ship6)
       (height pallet87 level0)
       (at pallet87 ship6)
       (height pallet86 level0)
       (at pallet86 ship6)
       (height pallet85 level0)
       (at pallet85 ship6)
       (height pallet84 level0)
       (at pallet84 ship6)
       (height pallet83 level0)
       (at pallet83 ship5)
       (height pallet82 level0)
       (at pallet82 ship5)
       (height pallet81 level0)
       (at pallet81 ship5)
       (height pallet80 level0)
       (at pallet80 ship5)
       (height pallet79 level0)
       (at pallet79 ship5)
       (height pallet78 level0)
       (at pallet78 ship5)
       (height pallet77 level0)
       (at pallet77 ship5)
       (height pallet76 level0)
       (at pallet76 ship5)
       (height pallet75 level0)
       (at pallet75 ship5)
       (height pallet74 level0)
       (at pallet74 ship5)
       (height pallet73 level0)
       (at pallet73 ship5)
       (height pallet72 level0)
       (at pallet72 ship4)
       (height pallet71 level0)
       (at pallet71 ship4)
       (height pallet70 level0)
       (at pallet70 ship4)
       (height pallet69 level0)
       (at pallet69 ship4)
       (height pallet68 level0)
       (at pallet68 ship4)
       (height pallet67 level0)
       (at pallet67 ship4)
       (height pallet66 level0)
       (at pallet66 ship4)
       (height pallet65 level0)
       (at pallet65 ship4)
       (height pallet64 level0)
       (at pallet64 ship4)
       (height pallet63 level0)
       (at pallet63 ship4)
       (height pallet62 level0)
       (at pallet62 ship4)
       (available hoist4)
       (assigned hoist4 ship4)
       (height pallet61 level0)
       (at pallet61 ship3)
       (height pallet60 level0)
       (at pallet60 ship3)
       (height pallet59 level0)
       (at pallet59 ship3)
       (height pallet58 level0)
       (at pallet58 ship3)
       (height pallet57 level0)
       (at pallet57 ship3)
       (height pallet56 level0)
       (at pallet56 ship3)
       (height pallet55 level0)
       (at pallet55 ship3)
       (height pallet54 level0)
       (at pallet54 ship3)
       (height pallet53 level0)
       (at pallet53 ship3)
       (height pallet52 level0)
       (at pallet52 ship3)
       (height pallet51 level0)
       (at pallet51 ship3)
       (height pallet50 level0)
       (at pallet50 ship2)
       (height pallet49 level0)
       (at pallet49 ship2)
       (height pallet48 level0)
       (at pallet48 ship2)
       (height pallet47 level0)
       (at pallet47 ship2)
       (height pallet46 level0)
       (at pallet46 ship2)
       (height pallet45 level0)
       (at pallet45 ship2)
       (height pallet44 level0)
       (at pallet44 ship2)
       (height pallet43 level0)
       (at pallet43 ship2)
       (height pallet42 level0)
       (at pallet42 ship2)
       (height pallet41 level0)
       (at pallet41 ship2)
       (height pallet40 level0)
       (at pallet40 ship2)
       (height pallet39 level0)
       (at pallet39 ship1)
       (height pallet38 level0)
       (at pallet38 ship1)
       (height pallet37 level0)
       (at pallet37 ship1)
       (height pallet36 level0)
       (at pallet36 ship1)
       (height pallet35 level0)
       (at pallet35 ship1)
       (height pallet34 level0)
       (at pallet34 ship1)
       (height pallet33 level0)
       (at pallet33 ship1)
       (height pallet32 level0)
       (at pallet32 ship1)
       (height pallet31 level0)
       (at pallet31 ship1)
       (height pallet30 level0)
       (at pallet30 ship1)
       (height pallet29 level0)
       (at pallet29 ship1)
       (height pallet28 level0)
       (at pallet28 ship0)
       (height pallet27 level0)
       (at pallet27 ship0)
       (height pallet26 level0)
       (at pallet26 ship0)
       (height pallet25 level0)
       (at pallet25 ship0)
       (height pallet24 level0)
       (at pallet24 ship0)
       (height pallet23 level0)
       (at pallet23 ship0)
       (height pallet22 level0)
       (at pallet22 ship0)
       (height pallet21 level0)
       (at pallet21 ship0)
       (height pallet20 level0)
       (at pallet20 ship0)
       (height pallet19 level0)
       (at pallet19 ship0)
       (height pallet18 level0)
       (at pallet18 ship0)
       (height pallet17 level0)
       (at pallet17 dock0)
       (height pallet16 level0)
       (at pallet16 dock0)
       (height pallet15 level0)
       (at pallet15 dock0)
       (height pallet14 level0)
       (at pallet14 dock0)
       (height pallet13 level0)
       (at pallet13 dock0)
       (height pallet12 level0)
       (at pallet12 dock0)
       (height pallet11 level0)
       (at pallet11 dock0)
       (height pallet10 level0)
       (at pallet10 dock0)
       (height pallet9 level0)
       (at pallet9 dock0)
       (height pallet8 level0)
       (at pallet8 dock0)
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
       (on-ship crate17 pallet64 ship4)
       (on-ship crate20 pallet71 ship4)
       (on-ship crate23 pallet66 ship4)
       (on-ship crate30 pallet72 ship4)
       (on-ship crate32 pallet63 ship4)
       (on-ship crate35 crate20 ship4)
       (on-ship crate38 pallet68 ship4))))