(define (problem pfile-10-10) (:domain port)
  (:objects hoist7 - hoist
             level3 level2 level1 level0 - level
             crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet7 pallet6 pallet5 pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet67 pallet66 pallet65 pallet64 pallet63 pallet62 pallet61 pallet60 pallet59 pallet58 pallet57 pallet56 pallet55 pallet54 pallet53 pallet52 pallet51 pallet50 pallet49 pallet48 pallet47 pallet46 pallet45 pallet44 pallet43 pallet42 pallet41 pallet40 pallet39 pallet38 pallet37 pallet36 pallet35 pallet34 pallet33 pallet32 pallet31 pallet30 pallet29 pallet28 pallet27 pallet26 pallet25 pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 pallet17 pallet16 pallet15 pallet14 pallet13 pallet12 pallet11 pallet10 pallet9 pallet8 - pallet-ship
             dock0 - dock
             ship9 ship8 ship7 ship6 ship5 ship4 ship3 ship2 ship1 ship0 - ship
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
       (clear pallet0)
       (clear pallet1)
       (clear crate8)
       (clear crate9)
       (clear crate4)
       (clear crate7)
       (clear crate2)
       (clear crate3)
       (height crate9 level2)
       (on-dock crate9 crate6)
       (at crate9 dock0)
       (height crate8 level1)
       (on-dock crate8 pallet2)
       (at crate8 dock0)
       (height crate7 level2)
       (on-dock crate7 crate5)
       (at crate7 dock0)
       (height crate6 level1)
       (on-dock crate6 pallet3)
       (at crate6 dock0)
       (height crate5 level1)
       (on-dock crate5 pallet5)
       (at crate5 dock0)
       (height crate4 level1)
       (on-dock crate4 pallet4)
       (at crate4 dock0)
       (height crate3 level3)
       (on-dock crate3 crate1)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet6)
       (at crate2 dock0)
       (height crate1 level2)
       (on-dock crate1 crate0)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet7)
       (at crate0 dock0)
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
       (available hoist7)
       (assigned hoist7 ship7)
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
       (on-ship crate7 pallet52 ship7)
       (on-ship crate8 pallet51 ship7))))