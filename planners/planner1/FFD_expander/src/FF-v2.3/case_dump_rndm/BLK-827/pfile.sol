# Domain file: zeno.pddl
# Problem file: zeno230_2.pddl
25
BOARD PERSON1 PLANE12 CITY3
BOARD PERSON5 PLANE5 CITY1
BOARD PERSON6 PLANE6 CITY4
BOARD PERSON8 PLANE4 CITY10
FLY PLANE5 CITY1 CITY11 FL4 FL3
DEBARK PERSON5 PLANE5 CITY11
FLY PLANE6 CITY4 CITY10 FL5 FL4
DEBARK PERSON6 PLANE6 CITY10
FLY PLANE4 CITY10 CITY8 FL1 FL0
DEBARK PERSON8 PLANE4 CITY8
FLY PLANE1 CITY4 CITY5 FL5 FL4
FLY PLANE12 CITY3 CITY7 FL3 FL2
BOARD PERSON3 PLANE12 CITY7
BOARD PERSON7 PLANE12 CITY7
FLY PLANE12 CITY7 CITY2 FL2 FL1
DEBARK PERSON1 PLANE12 CITY2
FLY PLANE12 CITY2 CITY3 FL1 FL0
REFUEL PLANE12 CITY3 FL0 FL1
DEBARK PERSON3 PLANE12 CITY3
FLY PLANE12 CITY3 CITY9 FL1 FL0
REFUEL PLANE12 CITY9 FL0 FL1
BOARD PERSON2 PLANE12 CITY9
DEBARK PERSON7 PLANE12 CITY9
FLY PLANE12 CITY9 CITY12 FL1 FL0
DEBARK PERSON2 PLANE12 CITY12
