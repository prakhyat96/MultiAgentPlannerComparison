# Domain file: zeno.pddl
# Problem file: zeno103_1.pddl
15
REFUEL PLANE3 CITY3 FL0 FL1
BOARD PERSON1 PLANE3 CITY3
FLY PLANE1 CITY2 CITY3 FL6 FL5
FLY PLANE2 CITY2 CITY3 FL5 FL4
FLY PLANE3 CITY3 CITY2 FL1 FL0
REFUEL PLANE3 CITY2 FL0 FL1
FLY PLANE2 CITY3 CITY1 FL4 FL3
BOARD PERSON2 PLANE2 CITY1
BOARD PERSON3 PLANE2 CITY1
FLY PLANE2 CITY1 CITY2 FL3 FL2
DEBARK PERSON2 PLANE2 CITY2
FLY PLANE2 CITY2 CITY3 FL2 FL1
DEBARK PERSON3 PLANE2 CITY3
FLY PLANE3 CITY2 CITY1 FL1 FL0
DEBARK PERSON1 PLANE3 CITY1
