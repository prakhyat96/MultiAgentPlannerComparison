# Domain file: zeno.pddl
# Problem file: zeno232_2.pddl
10
REFUEL PLANE1 CITY2 FL0 FL1
BOARD PERSON1 PLANE1 CITY2
BOARD PERSON2 PLANE1 CITY2
BOARD PERSON3 PLANE1 CITY2
FLY PLANE1 CITY2 CITY1 FL1 FL0
REFUEL PLANE1 CITY1 FL0 FL1
DEBARK PERSON2 PLANE1 CITY1
DEBARK PERSON3 PLANE1 CITY1
FLY PLANE1 CITY1 CITY4 FL1 FL0
DEBARK PERSON1 PLANE1 CITY4
