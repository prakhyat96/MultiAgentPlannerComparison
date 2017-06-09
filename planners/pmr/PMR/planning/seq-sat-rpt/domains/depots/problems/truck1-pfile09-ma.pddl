(define (problem pfile09-ma) (:domain depots)
  (:objects hoist0 hoist1 hoist2 - hoist
             crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
             pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
             truck1 - truck
             distributor0 distributor1 - distributor
             depot0 - depot
            )
  (:init
       (at pallet0 depot0)
       (clear crate2)
       (at pallet1 distributor0)
       (clear crate14)
       (at pallet2 distributor1)
       (clear crate13)
       (at pallet3 distributor1)
       (clear crate10)
       (at pallet4 distributor0)
       (clear crate12)
       (at pallet5 depot0)
       (clear crate8)
       (at-truck truck1 distributor0)
       (at-hoist hoist0 depot0)
       (available hoist0)
       (at-hoist hoist1 distributor0)
       (available hoist1)
       (at-hoist hoist2 distributor1)
       (available hoist2)
       (at crate0 distributor1)
       (on crate0 pallet2)
       (at crate1 depot0)
       (on crate1 pallet0)
       (at crate2 depot0)
       (on crate2 crate1)
       (at crate3 distributor0)
       (on crate3 pallet1)
       (at crate4 distributor1)
       (on crate4 crate0)
       (at crate5 distributor1)
       (on crate5 pallet3)
       (at crate6 distributor0)
       (on crate6 crate3)
       (at crate7 distributor0)
       (on crate7 crate6)
       (at crate8 depot0)
       (on crate8 pallet5)
       (at crate9 distributor0)
       (on crate9 crate7)
       (at crate10 distributor1)
       (on crate10 crate5)
       (at crate11 distributor0)
       (on crate11 pallet4)
       (at crate12 distributor0)
       (on crate12 crate11)
       (at crate13 distributor1)
       (on crate13 crate4)
       (at crate14 distributor0)
       (on crate14 crate9))
  (:goal (and 
       (on crate0 crate5)
       (on crate1 crate2)
       (on crate2 crate10)
       (on crate3 pallet0)
       (on crate4 crate6)
       (on crate5 pallet5)
       (on crate6 pallet4)
       (on crate9 crate1)
       (on crate10 pallet2)
       (on crate11 pallet1)
       (on crate12 crate14)
       (on crate13 crate3)
       (on crate14 pallet3))))