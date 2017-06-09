(define (problem pfile-05-20) (:domain port)
  (:objects hoist3 - hoist
             level3 level2 level1 level0 - level
             crate19 crate18 crate17 crate16 crate15 crate14 crate13 crate12 crate11 crate10 crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet9 pallet8 pallet7 pallet6 pallet5 pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet29 pallet28 pallet27 pallet26 pallet25 pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 pallet17 pallet16 pallet15 pallet14 pallet13 pallet12 pallet11 pallet10 - pallet-ship
             dock0 - dock
             ship4 ship3 ship2 ship1 ship0 - ship
            )
  (:init
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
       (clear crate13)
       (clear crate5)
       (clear crate19)
       (clear crate4)
       (clear crate17)
       (clear crate14)
       (clear crate16)
       (clear pallet7)
       (clear crate15)
       (clear crate18)
       (height crate19 level1)
       (on-dock crate19 pallet2)
       (at crate19 dock0)
       (height crate18 level3)
       (on-dock crate18 crate6)
       (at crate18 dock0)
       (height crate17 level2)
       (on-dock crate17 crate1)
       (at crate17 dock0)
       (height crate16 level3)
       (on-dock crate16 crate11)
       (at crate16 dock0)
       (height crate15 level3)
       (on-dock crate15 crate12)
       (at crate15 dock0)
       (height crate14 level2)
       (on-dock crate14 crate10)
       (at crate14 dock0)
       (height crate13 level3)
       (on-dock crate13 crate7)
       (at crate13 dock0)
       (height crate12 level2)
       (on-dock crate12 crate8)
       (at crate12 dock0)
       (height crate11 level2)
       (on-dock crate11 crate9)
       (at crate11 dock0)
       (height crate10 level1)
       (on-dock crate10 pallet5)
       (at crate10 dock0)
       (height crate9 level1)
       (on-dock crate9 pallet6)
       (at crate9 dock0)
       (height crate8 level1)
       (on-dock crate8 pallet8)
       (at crate8 dock0)
       (height crate7 level2)
       (on-dock crate7 crate3)
       (at crate7 dock0)
       (height crate6 level2)
       (on-dock crate6 crate0)
       (at crate6 dock0)
       (height crate5 level2)
       (on-dock crate5 crate2)
       (at crate5 dock0)
       (height crate4 level1)
       (on-dock crate4 pallet3)
       (at crate4 dock0)
       (height crate3 level1)
       (on-dock crate3 pallet0)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet1)
       (at crate2 dock0)
       (height crate1 level1)
       (on-dock crate1 pallet4)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet9)
       (at crate0 dock0)
       (height pallet29 level0)
       (at pallet29 ship4)
       (height pallet28 level0)
       (at pallet28 ship4)
       (height pallet27 level0)
       (at pallet27 ship4)
       (height pallet26 level0)
       (at pallet26 ship4)
       (height pallet25 level0)
       (at pallet25 ship3)
       (height pallet24 level0)
       (at pallet24 ship3)
       (height pallet23 level0)
       (at pallet23 ship3)
       (height pallet22 level0)
       (at pallet22 ship3)
       (available hoist3)
       (assigned hoist3 ship3)
       (height pallet21 level0)
       (at pallet21 ship2)
       (height pallet20 level0)
       (at pallet20 ship2)
       (height pallet19 level0)
       (at pallet19 ship2)
       (height pallet18 level0)
       (at pallet18 ship2)
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
       (on-ship crate0 pallet22 ship3)
       (on-ship crate5 crate0 ship3)
       (on-ship crate15 crate5 ship3))))