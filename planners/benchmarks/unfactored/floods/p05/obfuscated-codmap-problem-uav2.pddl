(define (problem obfuscated-codmap-problem-uav2) (:domain floods)
  (:objects cdm4 cdm3 cdm2 cdm1 - cdm
             usv7store usv6store usv5store usv4store usv3store usv2store usv1store ugv7store ugv6store ugv5store ugv4store ugv3store ugv2store ugv1store - store
             area35 area34 area33 area32 area31 area30 area29 area28 area27 area26 area25 area24 area23 area22 area21 area20 area19 area18 area17 area16 area15 area14 area13 area12 area11 area10 area9 area8 area7 area6 area5 area4 area3 area2 area1 - area
             disaster9 disaster8 disaster7 disaster6 disaster5 disaster4 disaster3 disaster2 disaster1 - disaster
             box6 box5 box4 box3 box2 box1 - box
            )
  (:init
       (empty ugv1store)
       (empty ugv2store)
       (empty ugv3store)
       (empty ugv4store)
       (empty ugv5store)
       (empty ugv6store)
       (empty ugv7store)
       (empty usv1store)
       (empty usv2store)
       (empty usv3store)
       (empty usv4store)
       (empty usv5store)
       (empty usv6store)
       (empty usv7store)
       (cdm_at cdm1 area1)
       (cdm_at cdm2 area13)
       (cdm_at cdm3 area21)
       (cdm_at cdm4 area33)
       (anon-at-uav2 area1)
       (box_at_cdm box1 cdm1)
       (box_at_cdm box2 cdm2)
       (box_at_cdm box3 cdm1)
       (box_at_cdm box4 cdm4)
       (box_at_cdm box5 cdm3)
       (box_at_cdm box6 cdm4)
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
       (water_path area22 area34)
       (water_path area34 area22)
       (water_path area27 area8)
       (water_path area8 area27)
       (water_path area28 area7)
       (water_path area7 area28)
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
       (ground_path area23 area35)
       (ground_path area35 area23)
       (ground_path area28 area7)
       (ground_path area7 area28)
       (ground_path area27 area8)
       (ground_path area8 area27)
       (visible_from disaster1 area21)
       (visible_from disaster2 area32)
       (visible_from disaster3 area23)
       (visible_from disaster4 area2)
       (visible_from disaster5 area5)
       (visible_from disaster6 area20)
       (visible_from disaster7 area24)
       (visible_from disaster8 area29)
       (visible_from disaster9 area34)
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
       (in_range area33 area33))
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
           (box_at_area box1 area10)
           (box_at_area box2 area35)
           (box_at_area box3 area6)
           (box_at_area box4 area31)
           (box_at_area box5 area8)
           (box_at_area box6 area7)
           (have_water_sample_cdm cdm2 area10)
           (have_water_sample_cdm cdm1 area22)
           (have_water_sample_cdm cdm3 area32)
           (have_water_sample_cdm cdm3 area17)
           (have_water_sample_cdm cdm4 area25)
           (have_water_sample_cdm cdm1 area9))))