# Domain file: zeno.pddl
# Problem file: zeno94_1.pddl
9
REFUEL PLANE2 CITY1 FL0 FL1
BOARD PERSON2 PLANE3 CITY2
FLY PLANE2 CITY1 CITY2 FL1 FL0
FLY PLANE3 CITY2 CITY1 FL2 FL1
DEBARK PERSON2 PLANE3 CITY1
FLY PLANE1 CITY2 CITY3 FL6 FL5
BOARD PERSON1 PLANE1 CITY3
FLY PLANE1 CITY3 CITY2 FL5 FL4
DEBARK PERSON1 PLANE1 CITY2
