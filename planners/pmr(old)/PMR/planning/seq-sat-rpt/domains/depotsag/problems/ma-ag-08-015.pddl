(define (problem depotprob259) (:domain depots)
(:objects
	depot0 depot1 depot2 depot3 - Depot
	distributor0 distributor1 distributor2 distributor3 - Distributor
	truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 truck10 truck11 truck12 truck13 truck14 truck15 truck16 truck17 truck18 truck19 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate14)
	(at pallet1 depot1)
	(clear crate10)
	(at pallet2 depot2)
	(clear crate11)
	(at pallet3 depot3)
	(clear crate3)
	(at pallet4 distributor0)
	(clear crate13)
	(at pallet5 distributor1)
	(clear pallet5)
	(at pallet6 distributor2)
	(clear pallet6)
	(at pallet7 distributor3)
	(clear crate12)
	(at pallet8 depot1)
	(clear crate6)
	(at pallet9 distributor3)
	(clear pallet9)
	(at-truck truck0 depot2)
	(at-truck truck1 depot2)
	(at-truck truck2 depot3)
	(at-truck truck3 depot3)
	(at-truck truck4 distributor1)
	(at-truck truck5 distributor2)
	(at-truck truck6 distributor0)
	(at-truck truck7 depot3)
	(at-truck truck8 depot0)
	(at-truck truck9 distributor2)
	(at-truck truck10 depot2)
	(at-truck truck11 distributor1)
	(at-truck truck12 depot0)
	(at-truck truck13 depot2)
	(at-truck truck14 depot1)
	(at-truck truck15 distributor1)
	(at-truck truck16 depot2)
	(at-truck truck17 depot3)
	(at-truck truck18 distributor0)
	(at-truck truck19 distributor2)
	(at-hoist hoist0 depot0)
	(available hoist0)
	(at-hoist hoist1 depot1)
	(available hoist1)
	(at-hoist hoist2 depot2)
	(available hoist2)
	(at-hoist hoist3 depot3)
	(available hoist3)
	(at-hoist hoist4 distributor0)
	(available hoist4)
	(at-hoist hoist5 distributor1)
	(available hoist5)
	(at-hoist hoist6 distributor2)
	(available hoist6)
	(at-hoist hoist7 distributor3)
	(available hoist7)
	(at crate0 depot1)
	(on crate0 pallet1)
	(at crate1 distributor3)
	(on crate1 pallet7)
	(at crate2 depot2)
	(on crate2 pallet2)
	(at crate3 depot3)
	(on crate3 pallet3)
	(at crate4 depot0)
	(on crate4 pallet0)
	(at crate5 distributor0)
	(on crate5 pallet4)
	(at crate6 depot1)
	(on crate6 pallet8)
	(at crate7 distributor0)
	(on crate7 crate5)
	(at crate8 depot0)
	(on crate8 crate4)
	(at crate9 depot1)
	(on crate9 crate0)
	(at crate10 depot1)
	(on crate10 crate9)
	(at crate11 depot2)
	(on crate11 crate2)
	(at crate12 distributor3)
	(on crate12 crate1)
	(at crate13 distributor0)
	(on crate13 crate7)
	(at crate14 depot0)
	(on crate14 crate8)
)

(:goal (and
		(on crate0 pallet8)
		(on crate1 crate13)
		(on crate2 crate3)
		(on crate3 pallet1)
		(on crate4 crate0)
		(on crate5 crate11)
		(on crate6 pallet9)
		(on crate7 pallet2)
		(on crate8 pallet4)
		(on crate9 crate10)
		(on crate10 pallet6)
		(on crate11 crate14)
		(on crate12 pallet7)
		(on crate13 crate6)
		(on crate14 pallet3)
	)
))
