(define (problem pfile-10-30) (:domain port)
  (:objects hoist6 - hoist
             level3 level2 level1 level0 - level
             crate29 crate28 crate27 crate26 crate25 crate24 crate23 crate22 crate21 crate20 crate19 crate18 crate17 crate16 crate15 crate14 crate13 crate12 crate11 crate10 crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet14 pallet13 pallet12 pallet11 pallet10 pallet9 pallet8 pallet7 pallet6 pallet5 pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet54 pallet53 pallet52 pallet51 pallet50 pallet49 pallet48 pallet47 pallet46 pallet45 pallet44 pallet43 pallet42 pallet41 pallet40 pallet39 pallet38 pallet37 pallet36 pallet35 pallet34 pallet33 pallet32 pallet31 pallet30 pallet29 pallet28 pallet27 pallet26 pallet25 pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 pallet17 pallet16 pallet15 - pallet-ship
             dock0 - dock
             ship9 ship8 ship7 ship6 ship5 ship4 ship3 ship2 ship1 ship0 - ship
            )
  (:init
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
       (clear crate22)
       (clear pallet1)
       (clear crate26)
       (clear crate16)
       (clear crate25)
       (clear crate28)
       (clear crate17)
       (clear crate29)
       (clear pallet8)
       (clear crate23)
       (clear crate10)
       (clear pallet11)
       (clear crate11)
       (clear crate21)
       (clear crate19)
       (height crate29 level3)
       (on-dock crate29 crate18)
       (at crate29 dock0)
       (height crate28 level3)
       (on-dock crate28 crate27)
       (at crate28 dock0)
       (height crate27 level2)
       (on-dock crate27 crate3)
       (at crate27 dock0)
       (height crate26 level2)
       (on-dock crate26 crate24)
       (at crate26 dock0)
       (height crate25 level2)
       (on-dock crate25 crate15)
       (at crate25 dock0)
       (height crate24 level1)
       (on-dock crate24 pallet2)
       (at crate24 dock0)
       (height crate23 level2)
       (on-dock crate23 crate14)
       (at crate23 dock0)
       (height crate22 level2)
       (on-dock crate22 crate20)
       (at crate22 dock0)
       (height crate21 level2)
       (on-dock crate21 crate1)
       (at crate21 dock0)
       (height crate20 level1)
       (on-dock crate20 pallet0)
       (at crate20 dock0)
       (height crate19 level3)
       (on-dock crate19 crate13)
       (at crate19 dock0)
       (height crate18 level2)
       (on-dock crate18 crate8)
       (at crate18 dock0)
       (height crate17 level3)
       (on-dock crate17 crate7)
       (at crate17 dock0)
       (height crate16 level2)
       (on-dock crate16 crate0)
       (at crate16 dock0)
       (height crate15 level1)
       (on-dock crate15 pallet4)
       (at crate15 dock0)
       (height crate14 level1)
       (on-dock crate14 pallet9)
       (at crate14 dock0)
       (height crate13 level2)
       (on-dock crate13 crate12)
       (at crate13 dock0)
       (height crate12 level1)
       (on-dock crate12 pallet14)
       (at crate12 dock0)
       (height crate11 level3)
       (on-dock crate11 crate9)
       (at crate11 dock0)
       (height crate10 level3)
       (on-dock crate10 crate6)
       (at crate10 dock0)
       (height crate9 level2)
       (on-dock crate9 crate5)
       (at crate9 dock0)
       (height crate8 level1)
       (on-dock crate8 pallet7)
       (at crate8 dock0)
       (height crate7 level2)
       (on-dock crate7 crate2)
       (at crate7 dock0)
       (height crate6 level2)
       (on-dock crate6 crate4)
       (at crate6 dock0)
       (height crate5 level1)
       (on-dock crate5 pallet12)
       (at crate5 dock0)
       (height crate4 level1)
       (on-dock crate4 pallet10)
       (at crate4 dock0)
       (height crate3 level1)
       (on-dock crate3 pallet5)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet6)
       (at crate2 dock0)
       (height crate1 level1)
       (on-dock crate1 pallet13)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet3)
       (at crate0 dock0)
       (height pallet54 level0)
       (at pallet54 ship9)
       (height pallet53 level0)
       (at pallet53 ship9)
       (height pallet52 level0)
       (at pallet52 ship9)
       (height pallet51 level0)
       (at pallet51 ship9)
       (height pallet50 level0)
       (at pallet50 ship8)
       (height pallet49 level0)
       (at pallet49 ship8)
       (height pallet48 level0)
       (at pallet48 ship8)
       (height pallet47 level0)
       (at pallet47 ship8)
       (height pallet46 level0)
       (at pallet46 ship7)
       (height pallet45 level0)
       (at pallet45 ship7)
       (height pallet44 level0)
       (at pallet44 ship7)
       (height pallet43 level0)
       (at pallet43 ship7)
       (height pallet42 level0)
       (at pallet42 ship6)
       (height pallet41 level0)
       (at pallet41 ship6)
       (height pallet40 level0)
       (at pallet40 ship6)
       (height pallet39 level0)
       (at pallet39 ship6)
       (available hoist6)
       (assigned hoist6 ship6)
       (height pallet38 level0)
       (at pallet38 ship5)
       (height pallet37 level0)
       (at pallet37 ship5)
       (height pallet36 level0)
       (at pallet36 ship5)
       (height pallet35 level0)
       (at pallet35 ship5)
       (height pallet34 level0)
       (at pallet34 ship4)
       (height pallet33 level0)
       (at pallet33 ship4)
       (height pallet32 level0)
       (at pallet32 ship4)
       (height pallet31 level0)
       (at pallet31 ship4)
       (height pallet30 level0)
       (at pallet30 ship3)
       (height pallet29 level0)
       (at pallet29 ship3)
       (height pallet28 level0)
       (at pallet28 ship3)
       (height pallet27 level0)
       (at pallet27 ship3)
       (height pallet26 level0)
       (at pallet26 ship2)
       (height pallet25 level0)
       (at pallet25 ship2)
       (height pallet24 level0)
       (at pallet24 ship2)
       (height pallet23 level0)
       (at pallet23 ship2)
       (height pallet22 level0)
       (at pallet22 ship1)
       (height pallet21 level0)
       (at pallet21 ship1)
       (height pallet20 level0)
       (at pallet20 ship1)
       (height pallet19 level0)
       (at pallet19 ship1)
       (height pallet18 level0)
       (at pallet18 ship0)
       (height pallet17 level0)
       (at pallet17 ship0)
       (height pallet16 level0)
       (at pallet16 ship0)
       (height pallet15 level0)
       (at pallet15 ship0)
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
       (on-ship crate9 pallet42 ship6)
       (on-ship crate19 pallet40 ship6))))