(define (problem tiny_problem) (:domain floods)
(:objects
	ugv3store - store
	ugv4store - store
	area35 - area
	disaster2 - disaster
	area52 - area
	usv6store - store
	box5 - box
	usv4store - store
	disaster8 - disaster
	cdm2 - cdm
	area15 - area
	disaster3 - disaster
	disaster9 - disaster
	ugv9 - ugv
	area46 - area
	usv1 - usv
	ugv5 - ugv
	area56 - area
	area23 - area
	ugv12 - ugv
	area5 - area
	area28 - area
	cdm5 - cdm
	usv9store - store
	usv10 - usv
	uav10 - uav
	area19 - area
	area57 - area
	area53 - area
	box1 - box
	area16 - area
	usv2store - store
	area42 - area
	area58 - area
	ugv1store - store
	uav8 - uav
	usv2 - usv
	ugv12store - store
	area18 - area
	ugv11store - store
	area43 - area
	uav12 - uav
	usv11store - store
	area40 - area
	area11 - area
	area55 - area
	disaster6 - disaster
	usv3store - store
	area12 - area
	ugv6 - ugv
	area51 - area
	disaster1 - disaster
	uav9 - uav
	area41 - area
	disaster12 - disaster
	box8 - box
	cdm3 - cdm
	uav5 - uav
	area50 - area
	area31 - area
	usv12 - usv
	usv4 - usv
	area54 - area
	uav7 - uav
	area9 - area
	disaster13 - disaster
	area45 - area
	area21 - area
	ugv1 - ugv
	area20 - area
	uav11 - uav
	ugv8store - store
	box4 - box
	usv8 - usv
	area34 - area
	area29 - area
	usv9 - usv
	area13 - area
	area2 - area
	area47 - area
	area14 - area
	area59 - area
	area49 - area
	cdm4 - cdm
	area36 - area
	area44 - area
	usv8store - store
	ugv10 - ugv
	ugv2 - ugv
	usv7 - usv
	area3 - area
	area17 - area
	disaster4 - disaster
	ugv8 - ugv
	area4 - area
	disaster5 - disaster
	area10 - area
	area26 - area
	uav1 - uav
	usv5store - store
	area22 - area
	usv6 - usv
	usv10store - store
	disaster16 - disaster
	uav4 - uav
	ugv7store - store
	box9 - box
	area48 - area
	cdm1 - cdm
	ugv5store - store
	disaster10 - disaster
	area27 - area
	usv7store - store
	area32 - area
	area37 - area
	area60 - area
	uav6 - uav
	area33 - area
	ugv2store - store
	usv12store - store
	area38 - area
	ugv9store - store
	area1 - area
	usv5 - usv
	area8 - area
	box6 - box
	area24 - area
	uav2 - uav
	area30 - area
	area39 - area
	box3 - box
	ugv7 - ugv
	area6 - area
	disaster7 - disaster
	disaster14 - disaster
	ugv3 - ugv
	usv3 - usv
	box7 - box
	usv11 - usv
	area7 - area
	disaster15 - disaster
	box2 - box
	usv1store - store
	disaster11 - disaster
	box10 - box
	ugv10store - store
	area25 - area
	cdm6 - cdm
	ugv6store - store
	ugv11 - ugv
	ugv4 - ugv
	uav3 - uav
)(:init
	(ground_path area48 area47)
	(ground_path area30 area27)
	(ground_path area20 area19)
	(water_path area60 area59)
	(ground_path area15 area3)
	(ground_path area23 area35)
	(ground_path area3 area1)
	(visible_from disaster11 area24)
	(ground_path area1 area16)
	(in_range area53 area53)
	(ground_path area41 area43)
	(ground_path area7 area28)
	(visible_from disaster14 area38)
	(store_of usv2store usv2)
	(water_path area18 area15)
	(ground_path area46 area44)
	(ground_path area30 area33)
	(visible_from disaster15 area20)
	(water_path area41 area42)
	(ground_path area4 area6)
	(empty usv10store)
	(water_path area4 area5)
	(box_at_cdm box6 cdm4)
	(ground_path area43 area41)
	(at uav10 area41)
	(water_path area56 area41)
	(water_path area29 area33)
	(store_of ugv1store ugv1)
	(ground_path area45 area43)
	(water_path area26 area32)
	(ground_path area4 area3)
	(ground_path area31 area25)
	(ground_path area8 area7)
	(ground_path area60 area58)
	(ground_path area27 area30)
	(water_path area20 area18)
	(at uav5 area21)
	(ground_path area29 area31)
	(ground_path area13 area10)
	(ground_path area14 area17)
	(empty usv9store)
	(visible_from disaster6 area7)
	(in_range area1 area1)
	(ground_path area51 area45)
	(ground_path area47 area48)
	(water_path area33 area53)
	(ground_path area50 area47)
	(water_path area1 area2)
	(ground_path area40 area38)
	(store_of ugv4store ugv4)
	(ground_path area36 area37)
	(water_path area39 area37)
	(store_of usv8store usv8)
	(water_path area50 area52)
	(water_path area44 area45)
	(ground_path area55 area58)
	(ground_path area18 area20)
	(water_path area9 area4)
	(water_path area4 area9)
	(ground_path area19 area20)
	(water_path area6 area2)
	(ground_path area58 area60)
	(visible_from disaster3 area49)
	(box_at_cdm box4 cdm4)
	(water_path area59 area57)
	(water_path area40 area39)
	(water_path area52 area46)
	(ground_path area36 area21)
	(water_path area57 area59)
	(ground_path area10 area13)
	(water_path area14 area16)
	(ground_path area24 area30)
	(visible_from disaster8 area11)
	(store_of usv12store usv12)
	(water_path area9 area8)
	(ground_path area35 area38)
	(water_path area33 area29)
	(water_path area17 area38)
	(water_path area22 area34)
	(water_path area9 area13)
	(ground_path area26 area24)
	(in_range area21 area21)
	(at uav7 area33)
	(water_path area53 area13)
	(water_path area19 area17)
	(store_of usv1store usv1)
	(empty ugv6store)
	(water_path area42 area44)
	(water_path area47 area48)
	(visible_from disaster4 area36)
	(at uav3 area13)
	(water_path area55 area58)
	(water_path area25 area24)
	(store_of usv7store usv7)
	(water_path area42 area46)
	(ground_path area44 area50)
	(visible_from disaster7 area55)
	(water_path area16 area1)
	(ground_path area47 area50)
	(ground_path area57 area56)
	(water_path area39 area40)
	(store_of usv5store usv5)
	(ground_path area33 area30)
	(ground_path area21 area23)
	(water_path area53 area49)
	(ground_path area35 area36)
	(water_path area1 area16)
	(ground_path area3 area5)
	(store_of ugv10store ugv10)
	(ground_path area37 area18)
	(ground_path area9 area11)
	(ground_path area43 area44)
	(water_path area19 area20)
	(box_at_cdm box5 cdm3)
	(ground_path area56 area55)
	(ground_path area18 area15)
	(water_path area28 area27)
	(water_path area45 area44)
	(water_path area40 area38)
	(store_of usv6store usv6)
	(ground_path area17 area14)
	(ground_path area15 area16)
	(water_path area30 area32)
	(water_path area13 area53)
	(ground_path area5 area11)
	(ground_path area55 area43)
	(water_path area27 area28)
	(visible_from disaster5 area13)
	(water_path area32 area26)
	(visible_from disaster12 area30)
	(empty ugv5store)
	(ground_path area13 area53)
	(water_path area28 area29)
	(ground_path area59 area60)
	(empty ugv8store)
	(water_path area7 area8)
	(ground_path area10 area4)
	(ground_path area16 area15)
	(store_of ugv6store ugv6)
	(water_path area24 area25)
	(water_path area38 area36)
	(water_path area8 area27)
	(ground_path area10 area7)
	(ground_path area20 area18)
	(water_path area53 area33)
	(in_range area43 area41)
	(ground_path area37 area36)
	(water_path area2 area14)
	(ground_path area18 area37)
	(water_path area34 area22)
	(water_path area49 area44)
	(water_path area46 area42)
	(water_path area27 area8)
	(ground_path area28 area27)
	(ground_path area44 area43)
	(cdm_at cdm2 area13)
	(water_path area22 area26)
	(ground_path area1 area3)
	(at uav1 area1)
	(ground_path area58 area55)
	(ground_path area50 area44)
	(store_of ugv12store ugv12)
	(water_path area44 area49)
	(in_range area23 area21)
	(store_of ugv7store ugv7)
	(water_path area58 area60)
	(visible_from disaster9 area41)
	(water_path area8 area7)
	(empty usv12store)
	(ground_path area16 area17)
	(at usv9 area41)
	(water_path area13 area9)
	(water_path area38 area35)
	(ground_path area27 area28)
	(ground_path area6 area4)
	(water_path area32 area30)
	(ground_path area3 area15)
	(ground_path area3 area4)
	(water_path area59 area60)
	(water_path area24 area29)
	(water_path area8 area9)
	(ground_path area38 area35)
	(empty ugv7store)
	(empty usv11store)
	(cdm_at cdm4 area33)
	(in_range area2 area1)
	(ground_path area51 area49)
	(ground_path area33 area53)
	(ground_path area21 area36)
	(water_path area58 area55)
	(at uav12 area53)
	(in_range area13 area13)
	(ground_path area30 area24)
	(at uav6 area21)
	(empty ugv11store)
	(in_range area33 area33)
	(water_path area16 area18)
	(ground_path area56 area57)
	(ground_path area23 area24)
	(in_range area3 area1)
	(water_path area20 area19)
	(ground_path area23 area21)
	(ground_path area34 area37)
	(store_of ugv9store ugv9)
	(water_path area52 area50)
	(water_path area36 area34)
	(ground_path area44 area46)
	(water_path area38 area17)
	(in_range area22 area21)
	(empty usv1store)
	(empty usv7store)
	(water_path area38 area40)
	(ground_path area37 area34)
	(visible_from disaster2 area27)
	(water_path area48 area49)
	(cdm_at cdm5 area41)
	(ground_path area23 area25)
	(store_of usv9store usv9)
	(ground_path area11 area9)
	(store_of usv11store usv11)
	(store_of ugv2store ugv2)
	(water_path area35 area38)
	(store_of usv3store usv3)
	(water_path area21 area36)
	(ground_path area53 area50)
	(water_path area12 area6)
	(ground_path area5 area3)
	(store_of usv4store usv4)
	(water_path area48 area47)
	(ground_path area55 area56)
	(water_path area18 area20)
	(water_path area12 area10)
	(store_of ugv5store ugv5)
	(water_path area6 area12)
	(at uav4 area13)
	(water_path area49 area48)
	(ground_path area40 area39)
	(store_of ugv3store ugv3)
	(ground_path area57 area54)
	(ground_path area54 area57)
	(water_path area41 area56)
	(ground_path area53 area33)
	(ground_path area35 area23)
	(water_path area42 area54)
	(water_path area56 area58)
	(ground_path area56 area41)
	(ground_path area24 area26)
	(water_path area42 area41)
	(in_range area9 area13)
	(water_path area24 area22)
	(store_of ugv8store ugv8)
	(in_range area29 area33)
	(in_range area10 area13)
	(water_path area29 area24)
	(ground_path area53 area13)
	(ground_path area24 area23)
	(water_path area21 area22)
	(store_of usv10store usv10)
	(water_path area2 area6)
	(ground_path area25 area23)
	(water_path area44 area42)
	(water_path area56 area54)
	(at uav2 area1)
	(cdm_at cdm6 area53)
	(ground_path area28 area7)
	(water_path area16 area14)
	(ground_path area31 area29)
	(at ugv9 area41)
	(ground_path area17 area16)
	(ground_path area16 area1)
	(water_path area54 area42)
	(cdm_at cdm1 area1)
	(empty ugv9store)
	(ground_path area15 area18)
	(store_of ugv11store ugv11)
	(water_path area10 area12)
	(water_path area60 area58)
	(water_path area36 area21)
	(at uav8 area33)
	(ground_path area60 area59)
	(water_path area14 area2)
	(ground_path area7 area10)
	(water_path area18 area16)
	(in_range area50 area53)
	(cdm_at cdm3 area21)
	(ground_path area25 area31)
	(visible_from disaster16 area28)
	(water_path area54 area56)
	(water_path area2 area1)
	(ground_path area49 area51)
	(water_path area4 area2)
	(water_path area29 area28)
	(in_range area30 area33)
	(water_path area5 area4)
	(in_range area49 area53)
	(water_path area36 area38)
	(water_path area34 area36)
	(ground_path area43 area55)
	(visible_from disaster13 area44)
	(water_path area2 area4)
	(water_path area49 area53)
	(ground_path area7 area8)
	(water_path area46 area52)
	(empty ugv3store)
	(water_path area22 area21)
	(ground_path area50 area53)
	(ground_path area4 area10)
	(in_range area41 area41)
	(water_path area22 area24)
	(water_path area58 area56)
	(ground_path area36 area35)
	(ground_path area11 area5)
	(in_range area42 area41)
	(ground_path area41 area56)
	(visible_from disaster10 area37)
	(ground_path area38 area40)
	(at uav9 area41)
	(water_path area26 area22)
	(at usv10 area41)
	(water_path area17 area19)
	(water_path area37 area39)
	(water_path area15 area18)
	(ground_path area43 area45)
	(ground_path area45 area51)
	(ground_path area39 area40)
	(visible_from disaster1 area58)
	(communicated_data disaster5)
	(empty ugv4store)
	(box_at_area box2 area33)
	(communicated_data disaster9)
	(at ugv3 area41)
	(at ugv11 area41)
	(empty ugv10store)
	(box_at_area box8 area21)
	(at usv8 area41)
	(empty usv8store)
	(have_water_sample_cdm cdm5 area33)
	(communicated_data disaster16)
	(communicated_data disaster10)
	(empty usv5store)
	(have_water_sample_cdm cdm1 area37)
	(communicated_data disaster8)
	(communicated_data disaster4)
	(at ugv10 area40)
	(at ugv6 area40)
	(at ugv5 area40)
	(at ugv4 area40)
	(at ugv7 area40)
	(at ugv8 area40)
	(at ugv1 area39)
	(empty ugv1store)
	(box_at_area box3 area39)
	(communicated_data disaster11)
	(box_at_area box1 area3)
	(at ugv2 area18)
	(empty ugv2store)
	(box_at_area box10 area18)
	(communicated_data disaster13)
	(empty usv3store)
	(have_water_sample_cdm cdm6 area4)
	(at uav11 area53)
	(communicated_data disaster6)
	(box_at_area box7 area7)
	(at ugv12 area15)
	(empty ugv12store)
	(box_at_area box9 area15)
	(at usv6 area21)
	(empty usv6store)
	(have_water_sample_cdm cdm3 area17)
	(empty usv4store)
	(have_water_sample_cdm cdm4 area8)
	(at usv1 area2)
	(at usv5 area2)
	(at usv12 area22)
	(at usv7 area22)
	(at usv11 area22)
	(at usv3 area22)
	(at usv4 area22)
	(at usv2 area21)
	(empty usv2store)
	(have_water_sample_cdm cdm3 area2)
)(:goal (and 
	(box_at_area box1 area29)
	(box_at_area box10 area18)
	(box_at_area box2 area33)
	(box_at_area box3 area39)
	(box_at_area box7 area7)
	(box_at_area box8 area21)
	(box_at_area box9 area15)
	(communicated_data disaster1)
	(communicated_data disaster10)
	(communicated_data disaster11)
	(communicated_data disaster12)
	(communicated_data disaster13)
	(communicated_data disaster15)
	(communicated_data disaster16)
	(communicated_data disaster2)
	(communicated_data disaster4)
	(communicated_data disaster5)
	(communicated_data disaster6)
	(communicated_data disaster8)
	(communicated_data disaster9)
	(have_water_sample_cdm cdm1 area37)
	(have_water_sample_cdm cdm3 area17)
	(have_water_sample_cdm cdm3 area2)
	(have_water_sample_cdm cdm4 area8)
	(have_water_sample_cdm cdm5 area33)
	(have_water_sample_cdm cdm6 area4)
)))