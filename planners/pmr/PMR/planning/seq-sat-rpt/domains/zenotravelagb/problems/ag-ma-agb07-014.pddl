(define (problem ZTRAVEL-53-75)
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
	plane42 - aircraft
	plane43 - aircraft
	plane44 - aircraft
	plane45 - aircraft
	plane46 - aircraft
	plane47 - aircraft
	plane48 - aircraft
	plane49 - aircraft
	plane50 - aircraft
	plane51 - aircraft
	plane52 - aircraft
	plane53 - aircraft
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
	person64 - person
	person65 - person
	person66 - person
	person67 - person
	person68 - person
	person69 - person
	person70 - person
	person71 - person
	person72 - person
	person73 - person
	person74 - person
	person75 - person
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
	(at-airplane plane1 city6)
	(fuel-level plane1 fl2)
	(at-airplane plane2 city0)
	(fuel-level plane2 fl3)
	(at-airplane plane3 city8)
	(fuel-level plane3 fl5)
	(at-airplane plane4 city8)
	(fuel-level plane4 fl3)
	(at-airplane plane5 city1)
	(fuel-level plane5 fl5)
	(at-airplane plane6 city20)
	(fuel-level plane6 fl2)
	(at-airplane plane7 city17)
	(fuel-level plane7 fl4)
	(at-airplane plane8 city12)
	(fuel-level plane8 fl3)
	(at-airplane plane9 city18)
	(fuel-level plane9 fl0)
	(at-airplane plane10 city10)
	(fuel-level plane10 fl2)
	(at-airplane plane11 city9)
	(fuel-level plane11 fl4)
	(at-airplane plane12 city7)
	(fuel-level plane12 fl4)
	(at-airplane plane13 city5)
	(fuel-level plane13 fl0)
	(at-airplane plane14 city2)
	(fuel-level plane14 fl6)
	(at-airplane plane15 city6)
	(fuel-level plane15 fl2)
	(at-airplane plane16 city7)
	(fuel-level plane16 fl3)
	(at-airplane plane17 city13)
	(fuel-level plane17 fl2)
	(at-airplane plane18 city1)
	(fuel-level plane18 fl5)
	(at-airplane plane19 city11)
	(fuel-level plane19 fl6)
	(at-airplane plane20 city18)
	(fuel-level plane20 fl3)
	(at-airplane plane21 city3)
	(fuel-level plane21 fl1)
	(at-airplane plane22 city20)
	(fuel-level plane22 fl1)
	(at-airplane plane23 city21)
	(fuel-level plane23 fl0)
	(at-airplane plane24 city21)
	(fuel-level plane24 fl0)
	(at-airplane plane25 city3)
	(fuel-level plane25 fl5)
	(at-airplane plane26 city1)
	(fuel-level plane26 fl6)
	(at-airplane plane27 city11)
	(fuel-level plane27 fl6)
	(at-airplane plane28 city18)
	(fuel-level plane28 fl3)
	(at-airplane plane29 city16)
	(fuel-level plane29 fl2)
	(at-airplane plane30 city11)
	(fuel-level plane30 fl4)
	(at-airplane plane31 city1)
	(fuel-level plane31 fl1)
	(at-airplane plane32 city13)
	(fuel-level plane32 fl2)
	(at-airplane plane33 city19)
	(fuel-level plane33 fl3)
	(at-airplane plane34 city16)
	(fuel-level plane34 fl3)
	(at-airplane plane35 city3)
	(fuel-level plane35 fl2)
	(at-airplane plane36 city3)
	(fuel-level plane36 fl4)
	(at-airplane plane37 city6)
	(fuel-level plane37 fl1)
	(at-airplane plane38 city1)
	(fuel-level plane38 fl6)
	(at-airplane plane39 city15)
	(fuel-level plane39 fl6)
	(at-airplane plane40 city21)
	(fuel-level plane40 fl4)
	(at-airplane plane41 city16)
	(fuel-level plane41 fl6)
	(at-airplane plane42 city2)
	(fuel-level plane42 fl4)
	(at-airplane plane43 city21)
	(fuel-level plane43 fl5)
	(at-airplane plane44 city2)
	(fuel-level plane44 fl5)
	(at-airplane plane45 city10)
	(fuel-level plane45 fl5)
	(at-airplane plane46 city18)
	(fuel-level plane46 fl0)
	(at-airplane plane47 city1)
	(fuel-level plane47 fl4)
	(at-airplane plane48 city17)
	(fuel-level plane48 fl1)
	(at-airplane plane49 city13)
	(fuel-level plane49 fl6)
	(at-airplane plane50 city5)
	(fuel-level plane50 fl0)
	(at-airplane plane51 city7)
	(fuel-level plane51 fl2)
	(at-airplane plane52 city8)
	(fuel-level plane52 fl4)
	(at-airplane plane53 city17)
	(fuel-level plane53 fl3)
	(at person1 city5)
	(at person2 city3)
	(at person3 city16)
	(at person4 city3)
	(at person5 city13)
	(at person6 city12)
	(at person7 city17)
	(at person8 city14)
	(at person9 city10)
	(at person10 city21)
	(at person11 city18)
	(at person12 city2)
	(at person13 city17)
	(at person14 city15)
	(at person15 city20)
	(at person16 city19)
	(at person17 city8)
	(at person18 city14)
	(at person19 city15)
	(at person20 city11)
	(at person21 city10)
	(at person22 city9)
	(at person23 city19)
	(at person24 city16)
	(at person25 city16)
	(at person26 city14)
	(at person27 city7)
	(at person28 city9)
	(at person29 city10)
	(at person30 city4)
	(at person31 city3)
	(at person32 city11)
	(at person33 city12)
	(at person34 city21)
	(at person35 city20)
	(at person36 city2)
	(at person37 city21)
	(at person38 city9)
	(at person39 city0)
	(at person40 city5)
	(at person41 city3)
	(at person42 city10)
	(at person43 city7)
	(at person44 city11)
	(at person45 city17)
	(at person46 city0)
	(at person47 city3)
	(at person48 city11)
	(at person49 city17)
	(at person50 city15)
	(at person51 city16)
	(at person52 city9)
	(at person53 city2)
	(at person54 city16)
	(at person55 city0)
	(at person56 city15)
	(at person57 city9)
	(at person58 city11)
	(at person59 city10)
	(at person60 city16)
	(at person61 city10)
	(at person62 city20)
	(at person63 city11)
	(at person64 city19)
	(at person65 city0)
	(at person66 city18)
	(at person67 city10)
	(at person68 city18)
	(at person69 city9)
	(at person70 city4)
	(at person71 city10)
	(at person72 city7)
	(at person73 city5)
	(at person74 city12)
	(at person75 city17)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at-airplane plane5 city7)
	(at-airplane plane11 city1)
	(at-airplane plane12 city16)
	(at-airplane plane13 city19)
	(at-airplane plane16 city14)
	(at-airplane plane18 city10)
	(at-airplane plane19 city21)
	(at-airplane plane23 city7)
	(at-airplane plane25 city8)
	(at-airplane plane28 city6)
	(at-airplane plane29 city4)
	(at-airplane plane32 city10)
	(at-airplane plane33 city4)
	(at-airplane plane36 city3)
	(at-airplane plane37 city2)
	(at-airplane plane39 city18)
	(at-airplane plane42 city6)
	(at-airplane plane44 city0)
	(at-airplane plane45 city7)
	(at-airplane plane49 city17)
	(at-airplane plane50 city14)
	(at-airplane plane53 city19)
	(at person1 city1)
	(at person2 city9)
	(at person3 city9)
	(at person4 city3)
	(at person5 city19)
	(at person6 city17)
	(at person7 city7)
	(at person8 city21)
	(at person9 city15)
	(at person10 city4)
	(at person11 city10)
	(at person12 city13)
	(at person13 city8)
	(at person15 city3)
	(at person16 city16)
	(at person17 city11)
	(at person18 city4)
	(at person19 city14)
	(at person20 city13)
	(at person21 city9)
	(at person23 city7)
	(at person24 city1)
	(at person25 city21)
	(at person26 city19)
	(at person27 city5)
	(at person28 city20)
	(at person29 city13)
	(at person30 city3)
	(at person31 city13)
	(at person32 city1)
	(at person33 city20)
	(at person34 city14)
	(at person35 city8)
	(at person36 city1)
	(at person37 city8)
	(at person38 city18)
	(at person39 city6)
	(at person40 city11)
	(at person41 city14)
	(at person42 city4)
	(at person43 city16)
	(at person44 city16)
	(at person45 city15)
	(at person46 city17)
	(at person47 city17)
	(at person48 city4)
	(at person49 city4)
	(at person50 city10)
	(at person51 city13)
	(at person52 city1)
	(at person53 city8)
	(at person54 city20)
	(at person55 city15)
	(at person56 city16)
	(at person57 city19)
	(at person58 city8)
	(at person59 city4)
	(at person60 city20)
	(at person61 city15)
	(at person62 city2)
	(at person63 city5)
	(at person64 city21)
	(at person65 city0)
	(at person66 city15)
	(at person67 city2)
	(at person68 city14)
	(at person69 city3)
	(at person70 city20)
	(at person71 city8)
	(at person72 city7)
	(at person73 city18)
	(at person74 city16)
	(at person75 city17)
	))

)
