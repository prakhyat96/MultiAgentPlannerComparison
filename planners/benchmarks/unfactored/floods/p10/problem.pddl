(define (problem floodsp10) (:domain Floods)
(:objects
	cdm1 cdm2 cdm3 cdm4 cdm5 cdm6 - cdm
	ugv1Store ugv2Store ugv3Store ugv4Store ugv5Store ugv6Store ugv7Store ugv8Store ugv9Store ugv10Store ugv11Store ugv12Store usv1Store usv2Store usv3Store usv4Store usv5Store usv6Store usv7Store usv8Store usv9Store usv10Store usv11Store usv12Store - store
	area1 area2 area3 area4 area5 area6 area7 area8 area9 area10 area11 area12 area13 area14 area15 area16 area17 area18 area19 area20 area21 area22 area23 area24 area25 area26 area27 area28 area29 area30 area31 area32 area33 area34 area35 area36 area37 area38 area39 area40 area41 area42 area43 area44 area45 area46 area47 area48 area49 area50 area51 area52 area53 area54 area55 area56 area57 area58 area59 area60 - area
	disaster1 disaster2 disaster3 disaster4 disaster5 disaster6 disaster7 disaster8 disaster9 disaster10 disaster11 disaster12 disaster13 disaster14 disaster15 disaster16 - disaster
	box1 box2 box3 box4 box5 box6 box7 box8 box9 box10 - box

	(:private uav1
		uav1 - uav
	)

	(:private uav2
		uav2 - uav
	)

	(:private uav3
		uav3 - uav
	)

	(:private uav4
		uav4 - uav
	)

	(:private uav5
		uav5 - uav
	)

	(:private uav6
		uav6 - uav
	)

	(:private uav7
		uav7 - uav
	)

	(:private uav8
		uav8 - uav
	)

	(:private uav9
		uav9 - uav
	)

	(:private uav10
		uav10 - uav
	)

	(:private uav11
		uav11 - uav
	)

	(:private uav12
		uav12 - uav
	)

	(:private ugv1
		ugv1 - ugv
	)

	(:private ugv2
		ugv2 - ugv
	)

	(:private ugv3
		ugv3 - ugv
	)

	(:private ugv4
		ugv4 - ugv
	)

	(:private ugv51
		ugv5 - ugv
	)

	(:private ugv6
		ugv6 - ugv
	)

	(:private ugv7
		ugv7 - ugv
	)

	(:private ugv8
		ugv8 - ugv
	)

	(:private ugv9
		ugv9 - ugv
	)

	(:private ugv10
		ugv10 - ugv
	)

	(:private ugv11
		ugv11 - ugv
	)

	(:private ugv12
		ugv12 - ugv
	)

	(:private usv1
		usv1 - usv
	)

	(:private usv2
		usv2 - usv
	)

	(:private usv3
		usv3 - usv
	)

	(:private usv4
		usv4 - usv
	)

	(:private usv5
		usv5 - usv
	)

	(:private usv6
		usv6 - usv
	)

	(:private usv7
		usv7 - usv
	)

	(:private usv8
		usv8 - usv
	)

	(:private usv9
		usv9 - usv
	)

	(:private usv10
		usv10 - usv
	)

	(:private usv11
		usv11 - usv
	)

	(:private usv12
		usv12 - usv
	)

	)
(:init
	(store_of ugv1Store ugv1)
	(store_of ugv2Store ugv2)
	(store_of ugv3Store ugv3)
	(store_of ugv4Store ugv4)
	(store_of ugv5Store ugv5)
	(store_of ugv6Store ugv6)
	(store_of ugv7Store ugv7)
	(store_of ugv8Store ugv8)
	(store_of ugv9Store ugv9)
	(store_of ugv10Store ugv10)
	(store_of ugv11Store ugv11)
	(store_of ugv12Store ugv12)
	(store_of usv1Store usv1)
	(store_of usv2Store usv2)
	(store_of usv3Store usv3)
	(store_of usv4Store usv4)
	(store_of usv5Store usv5)
	(store_of usv6Store usv6)
	(store_of usv7Store usv7)
	(store_of usv8Store usv8)
	(store_of usv9Store usv9)
	(store_of usv10Store usv10)
	(store_of usv11Store usv11)
	(store_of usv12Store usv12)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty ugv4Store)
	(empty ugv5Store)
	(empty ugv6Store)
	(empty ugv7Store)
	(empty ugv8Store)
	(empty ugv9Store)
	(empty ugv10Store)
	(empty ugv11Store)
	(empty ugv12Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)
	(empty usv4Store)
	(empty usv5Store)
	(empty usv6Store)
	(empty usv7Store)
	(empty usv8Store)
	(empty usv9Store)
	(empty usv10Store)
	(empty usv11Store)
	(empty usv12Store)
	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(cdm_at cdm3 area21)
	(cdm_at cdm4 area33)
	(cdm_at cdm5 area41)
	(cdm_at cdm6 area53)
	(at uav1 area1)
	(at uav2 area1)
	(at uav3 area13)
	(at uav4 area13)
	(at uav5 area21)
	(at uav6 area21)
	(at uav7 area33)
	(at uav8 area33)
	(at uav9 area41)
	(at uav10 area41)
	(at uav11 area53)
	(at uav12 area53)
	(at usv1 area1)
	(at usv2 area1)
	(at usv3 area13)
	(at usv4 area13)
	(at usv5 area21)
	(at usv6 area21)
	(at usv7 area33)
	(at usv8 area33)
	(at usv9 area41)
	(at usv10 area41)
	(at usv11 area53)
	(at usv12 area53)
	(at ugv1 area1)
	(at ugv2 area1)
	(at ugv3 area13)
	(at ugv4 area13)
	(at ugv5 area21)
	(at ugv6 area21)
	(at ugv7 area33)
	(at ugv8 area33)
	(at ugv9 area41)
	(at ugv10 area41)
	(at ugv11 area53)
	(at ugv12 area53)
	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(box_at_cdm box3 cdm1)
	(box_at_cdm box4 cdm4)
	(box_at_cdm box5 cdm3)
	(box_at_cdm box6 cdm4)
	(box_at_cdm box7 cdm5)
	(box_at_cdm box8 cdm5)
	(box_at_cdm box9 cdm6)
	(box_at_cdm box10 cdm6)
	(water_path area1 area2)
	(water_path area2 area1)
	(water_path area2 area4)
	(water_path area4 area2)
	(water_path area2 area6)
	(water_path area6 area2)
	(water_path area4 area5)
	(water_path area5 area4)
	(water_path area4 area9)
	(water_path area9 area4)
	(water_path area9 area8)
	(water_path area8 area9)
	(water_path area8 area7)
	(water_path area7 area8)
	(water_path area6 area12)
	(water_path area12 area6)
	(water_path area12 area10)
	(water_path area10 area12)
	(water_path area9 area13)
	(water_path area13 area9)
	(water_path area1 area16)
	(water_path area16 area1)
	(water_path area2 area14)
	(water_path area14 area2)
	(water_path area14 area16)
	(water_path area16 area14)
	(water_path area16 area18)
	(water_path area18 area16)
	(water_path area18 area15)
	(water_path area15 area18)
	(water_path area18 area20)
	(water_path area20 area18)
	(water_path area20 area19)
	(water_path area19 area20)
	(water_path area19 area17)
	(water_path area17 area19)

	(water_path area21 area22)
	(water_path area22 area21)
	(water_path area22 area24)
	(water_path area24 area22)
	(water_path area22 area26)
	(water_path area26 area22)
	(water_path area24 area25)
	(water_path area25 area24)
	(water_path area24 area29)
	(water_path area29 area24)
	(water_path area29 area28)
	(water_path area28 area29)
	(water_path area28 area27)
	(water_path area27 area28)
	(water_path area26 area32)
	(water_path area32 area26)
	(water_path area32 area30)
	(water_path area30 area32)
	(water_path area29 area33)
	(water_path area33 area29)
	(water_path area21 area36)
	(water_path area36 area21)
	(water_path area22 area34)
	(water_path area34 area22)
	(water_path area34 area36)
	(water_path area36 area34)
	(water_path area36 area38)
	(water_path area38 area36)
	(water_path area38 area35)
	(water_path area35 area38)
	(water_path area38 area40)
	(water_path area40 area38)
	(water_path area40 area39)
	(water_path area39 area40)
	(water_path area39 area37)
	(water_path area37 area39)

	(water_path area27 area8)
	(water_path area8 area27)
	(water_path area38 area17)
	(water_path area17 area38)

	(water_path area41 area42)
	(water_path area42 area41)
	(water_path area42 area44)
	(water_path area44 area42)
	(water_path area42 area46)
	(water_path area46 area42)
	(water_path area44 area45)
	(water_path area45 area44)
	(water_path area44 area49)
	(water_path area49 area44)
	(water_path area49 area48)
	(water_path area48 area49)
	(water_path area48 area47)
	(water_path area47 area48)
	(water_path area46 area52)
	(water_path area52 area46)
	(water_path area52 area50)
	(water_path area50 area52)
	(water_path area49 area53)
	(water_path area53 area49)
	(water_path area41 area56)
	(water_path area56 area41)
	(water_path area42 area54)
	(water_path area54 area42)
	(water_path area54 area56)
	(water_path area56 area54)
	(water_path area56 area58)
	(water_path area58 area56)
	(water_path area58 area55)
	(water_path area55 area58)
	(water_path area58 area60)
	(water_path area60 area58)
	(water_path area60 area59)
	(water_path area59 area60)
	(water_path area59 area57)
	(water_path area57 area59)

	(water_path area33 area53)
	(water_path area53 area33)
	(water_path area13 area53)
	(water_path area53 area13)

	(ground_path area1 area3)
	(ground_path area3 area1)
	(ground_path area3 area4)
	(ground_path area4 area3)
	(ground_path area3 area5)
	(ground_path area5 area3)
	(ground_path area4 area6)
	(ground_path area6 area4)
	(ground_path area4 area10)
	(ground_path area10 area4)
	(ground_path area10 area7)
	(ground_path area7 area10)
	(ground_path area7 area8)
	(ground_path area8 area7)
	(ground_path area5 area11)
	(ground_path area11 area5)
	(ground_path area11 area9)
	(ground_path area9 area11)
	(ground_path area10 area13)
	(ground_path area13 area10)
	(ground_path area1 area16)
	(ground_path area16 area1)
	(ground_path area3 area15)
	(ground_path area15 area3)
	(ground_path area15 area16)
	(ground_path area16 area15)
	(ground_path area16 area17)
	(ground_path area17 area16)
	(ground_path area14 area17)
	(ground_path area17 area14)	
	(ground_path area18 area20)
	(ground_path area20 area18)
	(ground_path area20 area19)
	(ground_path area19 area20)
	(ground_path area15 area18)
	(ground_path area18 area15)

	(ground_path area21 area23)
	(ground_path area23 area21)
	(ground_path area23 area24)
	(ground_path area24 area23)
	(ground_path area23 area25)
	(ground_path area25 area23)
	(ground_path area24 area26)
	(ground_path area26 area24)
	(ground_path area24 area30)
	(ground_path area30 area24)
	(ground_path area30 area27)
	(ground_path area27 area30)
	(ground_path area27 area28)
	(ground_path area28 area27)
	(ground_path area25 area31)
	(ground_path area31 area25)
	(ground_path area31 area29)
	(ground_path area29 area31)
	(ground_path area30 area33)
	(ground_path area33 area30)
	(ground_path area21 area36)
	(ground_path area36 area21)
	(ground_path area23 area35)
	(ground_path area35 area23)
	(ground_path area35 area36)
	(ground_path area36 area35)
	(ground_path area36 area37)
	(ground_path area37 area36)
	(ground_path area34 area37)
	(ground_path area37 area34)	
	(ground_path area38 area40)
	(ground_path area40 area38)
	(ground_path area40 area39)
	(ground_path area39 area40)
	(ground_path area35 area38)
	(ground_path area38 area35)

	(ground_path area28 area7)
	(ground_path area7 area28)
	(ground_path area37 area18)
	(ground_path area18 area37)

	(ground_path area41 area43)
	(ground_path area43 area41)
	(ground_path area43 area44)
	(ground_path area44 area43)
	(ground_path area43 area45)
	(ground_path area45 area43)
	(ground_path area44 area46)
	(ground_path area46 area44)
	(ground_path area44 area50)
	(ground_path area50 area44)
	(ground_path area50 area47)
	(ground_path area47 area50)
	(ground_path area47 area48)
	(ground_path area48 area47)
	(ground_path area45 area51)
	(ground_path area51 area45)
	(ground_path area51 area49)
	(ground_path area49 area51)
	(ground_path area50 area53)
	(ground_path area53 area50)
	(ground_path area41 area56)
	(ground_path area56 area41)
	(ground_path area43 area55)
	(ground_path area55 area43)
	(ground_path area55 area56)
	(ground_path area56 area55)
	(ground_path area56 area57)
	(ground_path area57 area56)
	(ground_path area54 area57)
	(ground_path area57 area54)	
	(ground_path area58 area60)
	(ground_path area60 area58)
	(ground_path area60 area59)
	(ground_path area59 area60)
	(ground_path area55 area58)
	(ground_path area58 area55)

	(ground_path area33 area53)
	(ground_path area53 area33)
	(ground_path area13 area53)
	(ground_path area53 area13)

	(visible_from disaster1 area58)
	(visible_from disaster2 area27)
	(visible_from disaster3 area49)
	(visible_from disaster4 area36)
	(visible_from disaster5 area13)
	(visible_from disaster6 area7)
	(visible_from disaster7 area55)
	(visible_from disaster8 area11)
	(visible_from disaster9 area41)
	(visible_from disaster10 area37)
	(visible_from disaster11 area24)
	(visible_from disaster12 area30)
	(visible_from disaster13 area44)
	(visible_from disaster14 area38)
	(visible_from disaster15 area20)
	(visible_from disaster16 area28)

	(in_range area2 area1)
	(in_range area3 area1)
	(in_range area1 area1)
	(in_range area9 area13)
	(in_range area10 area13)
	(in_range area13 area13)

	(in_range area22 area21)
	(in_range area23 area21)
	(in_range area21 area21)
	(in_range area29 area33)
	(in_range area30 area33)
	(in_range area33 area33)

	(in_range area42 area41)
	(in_range area43 area41)
	(in_range area41 area41)
	(in_range area49 area53)
	(in_range area50 area53)
	(in_range area53 area53)
)

(:goal (and
(communicated_data disaster1)
(communicated_data disaster2)
(communicated_data disaster3)
(communicated_data disaster4)
(communicated_data disaster5)
(communicated_data disaster6)
(communicated_data disaster7)
(communicated_data disaster8)
(communicated_data disaster9)
(communicated_data disaster10)
(communicated_data disaster11)
(communicated_data disaster12)
(communicated_data disaster13)
(communicated_data disaster14)
(communicated_data disaster15)
(communicated_data disaster16)
(box_at_area box1 area29)
(box_at_area box2 area33)
(box_at_area box3 area39)
(box_at_area box4 area54)
(box_at_area box5 area6)
(box_at_area box6 area31)
(box_at_area box7 area7)
(box_at_area box8 area21)
(box_at_area box9 area15)
(box_at_area box10 area18)
(have_water_sample_cdm cdm2 area35)
(have_water_sample_cdm cdm1 area40)
(have_water_sample_cdm cdm3 area2)
(have_water_sample_cdm cdm3 area17)
(have_water_sample_cdm cdm4 area8)
(have_water_sample_cdm cdm5 area28)
(have_water_sample_cdm cdm6 area4)
(have_water_sample_cdm cdm6 area56)
(have_water_sample_cdm cdm5 area33)
(have_water_sample_cdm cdm1 area37)
	)
)

)
