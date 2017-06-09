(define (problem depotprob278) (:domain depots)
(:objects
	depot0 depot1 depot2 depot3 - Depot
	distributor0 distributor1 distributor2 distributor3 - Distributor
	truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 truck10 truck11 truck12 truck13 truck14 truck15 truck16 truck17 truck18 truck19 truck20 truck21 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate11)
	(at pallet1 depot1)
	(clear crate3)
	(at pallet2 depot2)
	(clear crate9)
	(at pallet3 depot3)
	(clear crate0)
	(at pallet4 distributor0)
	(clear pallet4)
	(at pallet5 distributor1)
	(clear crate14)
	(at pallet6 distributor2)
	(clear crate4)
	(at pallet7 distributor3)
	(clear crate2)
	(at pallet8 depot3)
	(clear crate12)
	(at pallet9 distributor1)
	(clear crate6)
	(at-truck truck0 distributor1)
	(at-truck truck1 distributor2)
	(at-truck truck2 depot3)
	(at-truck truck3 depot3)
	(at-truck truck4 distributor1)
	(at-truck truck5 depot2)
	(at-truck truck6 depot3)
	(at-truck truck7 depot1)
	(at-truck truck8 distributor1)
	(at-truck truck9 depot2)
	(at-truck truck10 distributor3)
	(at-truck truck11 depot1)
	(at-truck truck12 distributor0)
	(at-truck truck13 depot0)
	(at-truck truck14 distributor1)
	(at-truck truck15 depot1)
	(at-truck truck16 depot1)
	(at-truck truck17 distributor3)
	(at-truck truck18 distributor1)
	(at-truck truck19 depot0)
	(at-truck truck20 depot2)
	(at-truck truck21 distributor2)
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
	(at crate0 depot3)
	(on crate0 pallet3)
	(at crate1 distributor3)
	(on crate1 pallet7)
	(at crate2 distributor3)
	(on crate2 crate1)
	(at crate3 depot1)
	(on crate3 pallet1)
	(at crate4 distributor2)
	(on crate4 pallet6)
	(at crate5 depot0)
	(on crate5 pallet0)
	(at crate6 distributor1)
	(on crate6 pallet9)
	(at crate7 depot0)
	(on crate7 crate5)
	(at crate8 distributor1)
	(on crate8 pallet5)
	(at crate9 depot2)
	(on crate9 pallet2)
	(at crate10 depot0)
	(on crate10 crate7)
	(at crate11 depot0)
	(on crate11 crate10)
	(at crate12 depot3)
	(on crate12 pallet8)
	(at crate13 distributor1)
	(on crate13 crate8)
	(at crate14 distributor1)
	(on crate14 crate13)
)

(:goal (and
		(on crate0 crate4)
		(on crate1 pallet7)
		(on crate2 crate7)
		(on crate3 pallet5)
		(on crate4 pallet9)
		(on crate5 pallet3)
		(on crate6 pallet0)
		(on crate7 pallet8)
		(on crate8 pallet1)
		(on crate9 pallet2)
		(on crate10 crate6)
		(on crate11 crate9)
		(on crate12 crate13)
		(on crate13 pallet6)
	)
))
