(define (problem pfile21-ma) (:domain depots)
  (:objects hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 - hoist
             crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
             pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 - pallet
             truck0 - truck
             distributor0 distributor1 distributor2 distributor3 distributor4 distributor5 - distributor
             depot0 depot1 depot2 depot3 depot4 depot5 - depot
            )
  (:init
       (at pallet0 depot0)
       (clear crate1)
       (at pallet1 depot1)
       (clear crate5)
       (at pallet2 depot2)
       (clear pallet2)
       (at pallet3 depot3)
       (clear pallet3)
       (at pallet4 depot4)
       (clear crate6)
       (at pallet5 depot5)
       (clear pallet5)
       (at pallet6 distributor0)
       (clear pallet6)
       (at pallet7 distributor1)
       (clear crate8)
       (at pallet8 distributor2)
       (clear crate4)
       (at pallet9 distributor3)
       (clear pallet9)
       (at pallet10 distributor4)
       (clear pallet10)
       (at pallet11 distributor5)
       (clear pallet11)
       (at pallet12 distributor1)
       (clear pallet12)
       (at pallet13 distributor5)
       (clear crate2)
       (at pallet14 depot2)
       (clear pallet14)
       (at pallet15 depot1)
       (clear crate3)
       (at pallet16 depot1)
       (clear crate0)
       (at pallet17 distributor2)
       (clear pallet17)
       (at pallet18 depot4)
       (clear crate7)
       (at pallet19 depot1)
       (clear crate9)
       (at-truck truck0 distributor2)
       (at-hoist hoist0 depot0)
       (available hoist0)
       (at-hoist hoist1 depot1)
       (available hoist1)
       (at-hoist hoist2 depot2)
       (available hoist2)
       (at-hoist hoist3 depot3)
       (available hoist3)
       (at-hoist hoist4 depot4)
       (available hoist4)
       (at-hoist hoist5 depot5)
       (available hoist5)
       (at-hoist hoist6 distributor0)
       (available hoist6)
       (at-hoist hoist7 distributor1)
       (available hoist7)
       (at-hoist hoist8 distributor2)
       (available hoist8)
       (at-hoist hoist9 distributor3)
       (available hoist9)
       (at-hoist hoist10 distributor4)
       (available hoist10)
       (at-hoist hoist11 distributor5)
       (available hoist11)
       (at-hoist hoist12 depot5)
       (available hoist12)
       (at-hoist hoist13 depot1)
       (available hoist13)
       (at-hoist hoist14 depot4)
       (available hoist14)
       (at crate0 depot1)
       (on crate0 pallet16)
       (at crate1 depot0)
       (on crate1 pallet0)
       (at crate2 distributor5)
       (on crate2 pallet13)
       (at crate3 depot1)
       (on crate3 pallet15)
       (at crate4 distributor2)
       (on crate4 pallet8)
       (at crate5 depot1)
       (on crate5 pallet1)
       (at crate6 depot4)
       (on crate6 pallet4)
       (at crate7 depot4)
       (on crate7 pallet18)
       (at crate8 distributor1)
       (on crate8 pallet7)
       (at crate9 depot1)
       (on crate9 pallet19))
  (:goal (and 
       (on crate0 pallet2)
       (on crate1 pallet7)
       (on crate2 pallet11)
       (on crate3 pallet3)
       (on crate5 pallet5)
       (on crate6 pallet12)
       (on crate8 pallet15)
       (on crate7 pallet18))))