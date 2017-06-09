(define (problem obfuscated-codmap-problem-ugv3) (:domain floods)
  (:objects cdm5 cdm4 cdm3 cdm2 cdm1 - cdm
             usv10store usv9store usv8store usv7store usv6store usv5store usv4store usv3store usv2store usv1store ugv10store ugv9store ugv8store ugv7store ugv6store ugv5store ugv4store ugv3store ugv2store ugv1store - store
             area50 area49 area48 area47 area46 area45 area44 area43 area42 area41 area40 area39 area38 area37 area36 area35 area34 area33 area32 area31 area30 area29 area28 area27 area26 area25 area24 area23 area22 area21 area20 area19 area18 area17 area16 area15 area14 area13 area12 area11 area10 area9 area8 area7 area6 area5 area4 area3 area2 area1 - area
             disaster12 disaster11 disaster10 disaster9 disaster8 disaster7 disaster6 disaster5 disaster4 disaster3 disaster2 disaster1 - disaster
             box9 box8 box7 box6 box5 box4 box3 box2 box1 - box
            )
  (:init
       (anon-store_of-ugv3 ugv3store)
       (empty ugv1store)
       (empty ugv2store)
       (empty ugv3store)
       (empty ugv4store)
       (empty ugv5store)
       (empty ugv6store)
       (empty ugv7store)
       (empty ugv8store)
       (empty ugv9store)
       (empty ugv10store)
       (empty usv1store)
       (empty usv2store)
       (empty usv3store)
       (empty usv4store)
       (empty usv5store)
       (empty usv6store)
       (empty usv7store)
       (empty usv8store)
       (empty usv9store)
       (empty usv10store)
       (cdm_at cdm1 area1)
       (cdm_at cdm2 area13)
       (cdm_at cdm3 area21)
       (cdm_at cdm4 area33)
       (cdm_at cdm5 area41)
       (anon-at-ugv3 area13)
       (box_at_cdm box1 cdm1)
       (box_at_cdm box2 cdm2)
       (box_at_cdm box3 cdm1)
       (box_at_cdm box4 cdm4)
       (box_at_cdm box5 cdm3)
       (box_at_cdm box6 cdm4)
       (box_at_cdm box7 cdm5)
       (box_at_cdm box8 cdm5)
       (box_at_cdm box9 cdm5)
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
       (water_path area50 area46)
       (water_path area46 area50)
       (water_path area33 area50)
       (water_path area50 area33)
       (water_path area13 area50)
       (water_path area50 area13)
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
       (ground_path area49 area45)
       (ground_path area45 area49)
       (ground_path area33 area49)
       (ground_path area49 area33)
       (ground_path area13 area49)
       (ground_path area49 area13)
       (visible_from disaster1 area36)
       (visible_from disaster2 area22)
       (visible_from disaster3 area32)
       (visible_from disaster4 area2)
       (visible_from disaster5 area4)
       (visible_from disaster6 area5)
       (visible_from disaster7 area6)
       (visible_from disaster8 area26)
       (visible_from disaster9 area25)
       (visible_from disaster10 area15)
       (visible_from disaster11 area34)
       (visible_from disaster12 area47)
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
       (in_range area41 area41))
  (:goal (and )))