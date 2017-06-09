(define (problem pfile-05-5) (:domain port)
  (:objects hoist2 - hoist
             level3 level2 level1 level0 - level
             crate4 crate3 crate2 crate1 crate0 - crate
             pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet24 pallet23 pallet22 pallet21 pallet20 pallet19 pallet18 pallet17 pallet16 pallet15 pallet14 pallet13 pallet12 pallet11 pallet10 pallet9 pallet8 pallet7 pallet6 pallet5 - pallet-ship
             dock0 - dock
             ship4 ship3 ship2 ship1 ship0 - ship
            )
  (:init
       (clear pallet5)
       (clear pallet6)
       (clear pallet7)
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
       (clear crate0)
       (clear pallet1)
       (clear pallet2)
       (clear crate4)
       (clear crate2)
       (height crate4 level3)
       (on-dock crate4 crate3)
       (at crate4 dock0)
       (height crate3 level2)
       (on-dock crate3 crate1)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet4)
       (at crate2 dock0)
       (height crate1 level1)
       (on-dock crate1 pallet3)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet0)
       (at crate0 dock0)
       (height pallet24 level0)
       (at pallet24 ship4)
       (height pallet23 level0)
       (at pallet23 ship4)
       (height pallet22 level0)
       (at pallet22 ship4)
       (height pallet21 level0)
       (at pallet21 ship4)
       (height pallet20 level0)
       (at pallet20 ship3)
       (height pallet19 level0)
       (at pallet19 ship3)
       (height pallet18 level0)
       (at pallet18 ship3)
       (height pallet17 level0)
       (at pallet17 ship3)
       (height pallet16 level0)
       (at pallet16 ship2)
       (height pallet15 level0)
       (at pallet15 ship2)
       (height pallet14 level0)
       (at pallet14 ship2)
       (height pallet13 level0)
       (at pallet13 ship2)
       (available hoist2)
       (assigned hoist2 ship2)
       (height pallet12 level0)
       (at pallet12 ship1)
       (height pallet11 level0)
       (at pallet11 ship1)
       (height pallet10 level0)
       (at pallet10 ship1)
       (height pallet9 level0)
       (at pallet9 ship1)
       (height pallet8 level0)
       (at pallet8 ship0)
       (height pallet7 level0)
       (at pallet7 ship0)
       (height pallet6 level0)
       (at pallet6 ship0)
       (height pallet5 level0)
       (at pallet5 ship0)
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
       (on-ship crate4 pallet6 ship0)
       (on-ship crate3 crate1 ship1)
       (on-ship crate2 pallet9 ship1)
       (on-ship crate1 pallet11 ship1)
       (on-ship crate0 pallet20 ship3))))