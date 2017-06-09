(define (problem pfile-02-10) (:domain port)
  (:objects hoist1 - hoist
             level3 level2 level1 level0 - level
             crate9 crate8 crate7 crate6 crate5 crate4 crate3 crate2 crate1 crate0 - crate
             pallet4 pallet3 pallet2 pallet1 pallet0 - pallet-dock
             pallet12 pallet11 pallet10 pallet9 pallet8 pallet7 pallet6 pallet5 - pallet-ship
             dock0 - dock
             ship1 ship0 - ship
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
       (clear pallet0)
       (clear crate4)
       (clear crate8)
       (clear crate9)
       (clear crate7)
       (height crate9 level2)
       (on-dock crate9 crate6)
       (at crate9 dock0)
       (height crate8 level2)
       (on-dock crate8 crate2)
       (at crate8 dock0)
       (height crate7 level3)
       (on-dock crate7 crate5)
       (at crate7 dock0)
       (height crate6 level1)
       (on-dock crate6 pallet3)
       (at crate6 dock0)
       (height crate5 level2)
       (on-dock crate5 crate3)
       (at crate5 dock0)
       (height crate4 level3)
       (on-dock crate4 crate1)
       (at crate4 dock0)
       (height crate3 level1)
       (on-dock crate3 pallet4)
       (at crate3 dock0)
       (height crate2 level1)
       (on-dock crate2 pallet2)
       (at crate2 dock0)
       (height crate1 level2)
       (on-dock crate1 crate0)
       (at crate1 dock0)
       (height crate0 level1)
       (on-dock crate0 pallet1)
       (at crate0 dock0)
       (height pallet12 level0)
       (at pallet12 ship1)
       (height pallet11 level0)
       (at pallet11 ship1)
       (height pallet10 level0)
       (at pallet10 ship1)
       (height pallet9 level0)
       (at pallet9 ship1)
       (available hoist1)
       (assigned hoist1 ship1)
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
       (on-ship crate2 pallet9 ship1)
       (on-ship crate8 pallet11 ship1)
       (on-ship crate9 pallet10 ship1))))