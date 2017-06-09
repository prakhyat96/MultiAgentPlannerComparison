(define (problem pfile14-ma) (:domain depots)
  (:objects hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist
             crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
             pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
             truck0 - truck
             distributor0 distributor1 distributor2 - distributor
             depot0 depot1 depot2 - depot
            )
  (:init
       (at pallet0 depot0)
       (clear crate4)
       (at pallet1 depot1)
       (clear crate8)
       (at pallet2 depot2)
       (clear pallet2)
       (at pallet3 distributor0)
       (clear crate9)
       (at pallet4 distributor1)
       (clear crate7)
       (at pallet5 distributor2)
       (clear pallet5)
       (at pallet6 distributor2)
       (clear crate3)
       (at pallet7 depot1)
       (clear pallet7)
       (at pallet8 distributor1)
       (clear crate0)
       (at pallet9 depot0)
       (clear crate5)
       (at-truck truck0 depot1)
       (at-hoist hoist0 depot0)
       (available hoist0)
       (at-hoist hoist1 depot1)
       (available hoist1)
       (at-hoist hoist2 depot2)
       (available hoist2)
       (at-hoist hoist3 distributor0)
       (available hoist3)
       (at-hoist hoist4 distributor1)
       (available hoist4)
       (at-hoist hoist5 distributor2)
       (available hoist5)
       (at crate0 distributor1)
       (on crate0 pallet8)
       (at crate1 depot0)
       (on crate1 pallet9)
       (at crate2 distributor0)
       (on crate2 pallet3)
       (at crate3 distributor2)
       (on crate3 pallet6)
       (at crate4 depot0)
       (on crate4 pallet0)
       (at crate5 depot0)
       (on crate5 crate1)
       (at crate6 distributor1)
       (on crate6 pallet4)
       (at crate7 distributor1)
       (on crate7 crate6)
       (at crate8 depot1)
       (on crate8 pallet1)
       (at crate9 distributor0)
       (on crate9 crate2))
  (:goal (and 
       (on crate1 pallet8)
       (on crate5 pallet5)
       (on crate6 pallet1)
       (on crate9 crate7)
       (on crate2 pallet3)
       (on crate4 pallet0)
       (on crate7 crate6))))