(define (problem obfuscated-codmap-problem-uav3) (:domain floods)
  (:objects cdm2 cdm1 - cdm
             usv4store usv3store usv2store usv1store ugv4store ugv3store ugv2store ugv1store - store
             area20 area19 area18 area17 area16 area15 area14 area13 area12 area11 area10 area9 area8 area7 area6 area5 area4 area3 area2 area1 - area
             disaster6 disaster5 disaster4 disaster3 disaster2 disaster1 - disaster
             box3 box2 box1 - box
            )
  (:init
       (empty ugv1store)
       (empty ugv2store)
       (empty ugv3store)
       (empty ugv4store)
       (empty usv1store)
       (empty usv2store)
       (empty usv3store)
       (empty usv4store)
       (cdm_at cdm1 area1)
       (cdm_at cdm2 area13)
       (anon-at-uav3 area13)
       (box_at_cdm box1 cdm1)
       (box_at_cdm box2 cdm2)
       (box_at_cdm box3 cdm1)
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
       (visible_from disaster1 area11)
       (visible_from disaster2 area2)
       (visible_from disaster3 area17)
       (visible_from disaster4 area5)
       (visible_from disaster5 area9)
       (visible_from disaster6 area7)
       (in_range area2 area1)
       (in_range area3 area1)
       (in_range area1 area1)
       (in_range area9 area13)
       (in_range area10 area13)
       (in_range area13 area13))
  (:goal (and )))