(define (problem ZTRAVEL-41-63)
(:domain zenotravel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	plane6 - aircraft
	plane7 - aircraft
	plane8 - aircraft
	plane9 - aircraft
	plane10 - aircraft
	plane11 - aircraft
	plane12 - aircraft
	plane13 - aircraft
	plane14 - aircraft
	plane15 - aircraft
	plane16 - aircraft
	plane17 - aircraft
	plane18 - aircraft
	plane19 - aircraft
	plane20 - aircraft
	plane21 - aircraft
	plane22 - aircraft
	plane23 - aircraft
	plane24 - aircraft
	plane25 - aircraft
	plane26 - aircraft
	plane27 - aircraft
	plane28 - aircraft
	plane29 - aircraft
	plane30 - aircraft
	plane31 - aircraft
	plane32 - aircraft
	plane33 - aircraft
	plane34 - aircraft
	plane35 - aircraft
	plane36 - aircraft
	plane37 - aircraft
	plane38 - aircraft
	plane39 - aircraft
	plane40 - aircraft
	plane41 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
	person31 - person
	person32 - person
	person33 - person
	person34 - person
	person35 - person
	person36 - person
	person37 - person
	person38 - person
	person39 - person
	person40 - person
	person41 - person
	person42 - person
	person43 - person
	person44 - person
	person45 - person
	person46 - person
	person47 - person
	person48 - person
	person49 - person
	person50 - person
	person51 - person
	person52 - person
	person53 - person
	person54 - person
	person55 - person
	person56 - person
	person57 - person
	person58 - person
	person59 - person
	person60 - person
	person61 - person
	person62 - person
	person63 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	city10 - city
	city11 - city
	city12 - city
	city13 - city
	city14 - city
	city15 - city
	city16 - city
	city17 - city
	city18 - city
	city19 - city
	city20 - city
	city21 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at-airplane plane1 city11)
	(fuel-level plane1 fl2)
	(at-airplane plane2 city5)
	(fuel-level plane2 fl6)
	(at-airplane plane3 city19)
	(fuel-level plane3 fl4)
	(at-airplane plane4 city10)
	(fuel-level plane4 fl4)
	(at-airplane plane5 city8)
	(fuel-level plane5 fl2)
	(at-airplane plane6 city8)
	(fuel-level plane6 fl1)
	(at-airplane plane7 city4)
	(fuel-level plane7 fl5)
	(at-airplane plane8 city11)
	(fuel-level plane8 fl1)
	(at-airplane plane9 city11)
	(fuel-level plane9 fl1)
	(at-airplane plane10 city12)
	(fuel-level plane10 fl5)
	(at-airplane plane11 city7)
	(fuel-level plane11 fl6)
	(at-airplane plane12 city21)
	(fuel-level plane12 fl0)
	(at-airplane plane13 city18)
	(fuel-level plane13 fl2)
	(at-airplane plane14 city0)
	(fuel-level plane14 fl4)
	(at-airplane plane15 city20)
	(fuel-level plane15 fl5)
	(at-airplane plane16 city15)
	(fuel-level plane16 fl5)
	(at-airplane plane17 city16)
	(fuel-level plane17 fl0)
	(at-airplane plane18 city2)
	(fuel-level plane18 fl0)
	(at-airplane plane19 city14)
	(fuel-level plane19 fl3)
	(at-airplane plane20 city14)
	(fuel-level plane20 fl0)
	(at-airplane plane21 city18)
	(fuel-level plane21 fl3)
	(at-airplane plane22 city7)
	(fuel-level plane22 fl2)
	(at-airplane plane23 city20)
	(fuel-level plane23 fl6)
	(at-airplane plane24 city14)
	(fuel-level plane24 fl1)
	(at-airplane plane25 city2)
	(fuel-level plane25 fl4)
	(at-airplane plane26 city9)
	(fuel-level plane26 fl3)
	(at-airplane plane27 city16)
	(fuel-level plane27 fl1)
	(at-airplane plane28 city11)
	(fuel-level plane28 fl2)
	(at-airplane plane29 city11)
	(fuel-level plane29 fl1)
	(at-airplane plane30 city14)
	(fuel-level plane30 fl0)
	(at-airplane plane31 city9)
	(fuel-level plane31 fl5)
	(at-airplane plane32 city11)
	(fuel-level plane32 fl5)
	(at-airplane plane33 city12)
	(fuel-level plane33 fl6)
	(at-airplane plane34 city12)
	(fuel-level plane34 fl0)
	(at-airplane plane35 city16)
	(fuel-level plane35 fl2)
	(at-airplane plane36 city1)
	(fuel-level plane36 fl5)
	(at-airplane plane37 city0)
	(fuel-level plane37 fl0)
	(at-airplane plane38 city15)
	(fuel-level plane38 fl4)
	(at-airplane plane39 city3)
	(fuel-level plane39 fl1)
	(at-airplane plane40 city21)
	(fuel-level plane40 fl4)
	(at-airplane plane41 city16)
	(fuel-level plane41 fl4)
	(at person1 city19)
	(at person2 city11)
	(at person3 city0)
	(at person4 city21)
	(at person5 city6)
	(at person6 city12)
	(at person7 city11)
	(at person8 city18)
	(at person9 city6)
	(at person10 city19)
	(at person11 city8)
	(at person12 city8)
	(at person13 city3)
	(at person14 city21)
	(at person15 city1)
	(at person16 city5)
	(at person17 city6)
	(at person18 city0)
	(at person19 city12)
	(at person20 city12)
	(at person21 city6)
	(at person22 city14)
	(at person23 city15)
	(at person24 city8)
	(at person25 city7)
	(at person26 city21)
	(at person27 city3)
	(at person28 city0)
	(at person29 city4)
	(at person30 city20)
	(at person31 city16)
	(at person32 city13)
	(at person33 city0)
	(at person34 city20)
	(at person35 city10)
	(at person36 city18)
	(at person37 city12)
	(at person38 city5)
	(at person39 city15)
	(at person40 city5)
	(at person41 city16)
	(at person42 city14)
	(at person43 city6)
	(at person44 city19)
	(at person45 city7)
	(at person46 city16)
	(at person47 city7)
	(at person48 city10)
	(at person49 city2)
	(at person50 city18)
	(at person51 city4)
	(at person52 city11)
	(at person53 city10)
	(at person54 city17)
	(at person55 city17)
	(at person56 city17)
	(at person57 city19)
	(at person58 city2)
	(at person59 city12)
	(at person60 city8)
	(at person61 city11)
	(at person62 city16)
	(at person63 city14)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at-airplane plane2 city8)
	(at-airplane plane7 city12)
	(at-airplane plane15 city19)
	(at-airplane plane17 city17)
	(at-airplane plane22 city7)
	(at-airplane plane23 city12)
	(at-airplane plane25 city19)
	(at-airplane plane26 city14)
	(at-airplane plane36 city21)
	(at-airplane plane37 city6)
	(at person2 city14)
	(at person3 city14)
	(at person4 city6)
	(at person5 city15)
	(at person7 city14)
	(at person8 city7)
	(at person9 city11)
	(at person10 city2)
	(at person11 city0)
	(at person13 city12)
	(at person14 city12)
	(at person15 city18)
	(at person16 city8)
	(at person17 city20)
	(at person18 city17)
	(at person19 city1)
	(at person20 city21)
	(at person21 city8)
	(at person22 city16)
	(at person23 city20)
	(at person24 city19)
	(at person25 city20)
	(at person26 city4)
	(at person27 city10)
	(at person28 city11)
	(at person29 city1)
	(at person30 city14)
	(at person31 city20)
	(at person32 city13)
	(at person33 city7)
	(at person34 city15)
	(at person35 city0)
	(at person36 city0)
	(at person37 city4)
	(at person38 city4)
	(at person39 city8)
	(at person40 city6)
	(at person41 city1)
	(at person42 city15)
	(at person43 city15)
	(at person45 city2)
	(at person46 city20)
	(at person47 city11)
	(at person48 city16)
	(at person49 city10)
	(at person50 city15)
	(at person51 city10)
	(at person52 city2)
	(at person53 city8)
	(at person54 city6)
	(at person55 city13)
	(at person56 city7)
	(at person57 city15)
	(at person58 city3)
	(at person59 city6)
	(at person60 city2)
	(at person61 city7)
	(at person62 city18)
	(at person63 city7)
	))

)
