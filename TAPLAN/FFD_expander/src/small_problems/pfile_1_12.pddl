(define (problem tiny_problem) (:domain satellite)
(:objects
	phenomenon61 - direction
	planet67 - direction
	phenomenon47 - direction
	planet10 - direction
	instrument10 - instrument
	phenomenon57 - direction
	planet28 - direction
	star65 - direction
	phenomenon15 - direction
	phenomenon45 - direction
	satellite6 - satellite
	instrument11 - instrument
	satellite1 - satellite
	instrument5 - instrument
	star40 - direction
	phenomenon72 - direction
	phenomenon62 - direction
	planet3 - direction
	planet19 - direction
	star37 - direction
	instrument13 - instrument
	planet11 - direction
	planet12 - direction
	planet21 - direction
	instrument9 - instrument
	planet42 - direction
	planet5 - direction
	star38 - direction
	planet68 - direction
	phenomenon14 - direction
	star7 - direction
	phenomenon20 - direction
	phenomenon34 - direction
	star30 - direction
	star54 - direction
	planet56 - direction
	planet71 - direction
	satellite5 - satellite
	instrument3 - instrument
	star6 - direction
	groundstation1 - direction
	phenomenon26 - direction
	phenomenon13 - direction
	planet39 - direction
	instrument6 - instrument
	planet16 - direction
	star17 - direction
	phenomenon33 - direction
	star31 - direction
	planet32 - direction
	instrument1 - instrument
	instrument14 - instrument
	instrument0 - instrument
	phenomenon46 - direction
	instrument4 - instrument
	planet49 - direction
	phenomenon60 - direction
	star22 - direction
	star2 - direction
	star0 - direction
	satellite0 - satellite
	star35 - direction
	star53 - direction
	phenomenon55 - direction
	planet48 - direction
	planet18 - direction
	planet25 - direction
	phenomenon43 - direction
	planet36 - direction
	phenomenon51 - direction
	star23 - direction
	star59 - direction
	phenomenon52 - direction
	star4 - direction
	star27 - direction
	planet41 - direction
	phenomenon8 - direction
	thermograph2 - mode
	planet64 - direction
	infrared0 - mode
	instrument8 - instrument
	instrument12 - instrument
	phenomenon9 - direction
	satellite2 - satellite
	planet63 - direction
	planet50 - direction
	star66 - direction
	instrument2 - instrument
	planet24 - direction
	star70 - direction
	planet29 - direction
	instrument7 - instrument
	phenomenon69 - direction
	planet44 - direction
	satellite3 - satellite
	infrared1 - mode
	star58 - direction
	satellite4 - satellite
)(:init
	(calibration_target instrument13 star2)
	(calibration_target instrument6 groundstation1)
	(calibration_target instrument11 groundstation1)
	(pointing satellite6 planet24)
	(supports instrument3 thermograph2)
	(calibration_target instrument12 groundstation1)
	(on_board instrument6 satellite3)
	(calibration_target instrument10 star0)
	(calibration_target instrument3 star0)
	(supports instrument1 thermograph2)
	(on_board instrument8 satellite4)
	(on_board instrument4 satellite2)
	(pointing satellite4 planet24)
	(supports instrument11 thermograph2)
	(on_board instrument3 satellite1)
	(supports instrument6 infrared0)
	(supports instrument4 infrared1)
	(on_board instrument9 satellite5)
	(supports instrument1 infrared1)
	(supports instrument14 infrared1)
	(supports instrument14 thermograph2)
	(supports instrument2 infrared0)
	(power_avail satellite2)
	(supports instrument9 infrared0)
	(supports instrument11 infrared1)
	(on_board instrument0 satellite0)
	(supports instrument3 infrared1)
	(power_avail satellite4)
	(supports instrument0 infrared0)
	(calibration_target instrument8 star0)
	(power_avail satellite5)
	(pointing satellite5 planet5)
	(calibration_target instrument2 star0)
	(power_avail satellite1)
	(pointing satellite3 phenomenon8)
	(calibration_target instrument9 star0)
	(supports instrument6 infrared1)
	(supports instrument8 thermograph2)
	(supports instrument8 infrared0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite1)
	(calibration_target instrument1 star0)
	(calibration_target instrument4 star2)
	(on_board instrument5 satellite2)
	(on_board instrument14 satellite6)
	(pointing satellite1 planet10)
	(calibration_target instrument14 groundstation1)
	(supports instrument7 thermograph2)
	(supports instrument8 infrared1)
	(supports instrument0 infrared1)
	(on_board instrument13 satellite6)
	(supports instrument0 thermograph2)
	(supports instrument2 infrared1)
	(supports instrument9 infrared1)
	(power_avail satellite6)
	(on_board instrument7 satellite3)
	(on_board instrument12 satellite6)
	(calibration_target instrument0 star2)
	(supports instrument13 thermograph2)
	(supports instrument14 infrared0)
	(supports instrument5 thermograph2)
	(pointing satellite2 star17)
	(supports instrument11 infrared0)
	(supports instrument5 infrared1)
	(supports instrument10 infrared1)
	(on_board instrument11 satellite5)
	(power_avail satellite3)
	(supports instrument2 thermograph2)
	(calibration_target instrument7 groundstation1)
	(supports instrument5 infrared0)
	(supports instrument6 thermograph2)
	(supports instrument1 infrared0)
	(supports instrument9 thermograph2)
	(calibration_target instrument5 star2)
	(supports instrument10 infrared0)
	(on_board instrument10 satellite5)
	(supports instrument12 infrared0)
	(power_on instrument1)
	(calibrated instrument1)
	(have_image phenomenon8 thermograph2)
	(have_image planet10 infrared0)
	(have_image planet21 infrared0)
	(have_image planet24 infrared1)
	(have_image planet5 thermograph2)
	(have_image phenomenon9 infrared0)
	(have_image phenomenon14 infrared0)
	(have_image phenomenon15 infrared0)
	(have_image phenomenon20 infrared1)
	(have_image phenomenon26 thermograph2)
	(have_image phenomenon33 infrared0)
	(have_image phenomenon34 infrared1)
	(have_image phenomenon43 thermograph2)
	(have_image phenomenon45 thermograph2)
	(have_image phenomenon46 infrared0)
	(have_image phenomenon47 infrared0)
	(have_image phenomenon51 thermograph2)
	(have_image phenomenon52 infrared1)
	(have_image phenomenon55 thermograph2)
	(have_image phenomenon57 thermograph2)
	(have_image phenomenon60 infrared0)
	(have_image phenomenon61 thermograph2)
	(have_image phenomenon62 infrared0)
	(have_image phenomenon69 infrared0)
	(have_image phenomenon72 infrared0)
	(have_image planet11 infrared1)
	(have_image planet12 thermograph2)
	(have_image planet16 infrared1)
	(have_image planet18 infrared0)
	(have_image planet19 infrared0)
	(have_image planet25 infrared0)
	(have_image planet28 infrared0)
	(have_image planet29 infrared0)
	(have_image planet3 infrared1)
	(have_image planet32 thermograph2)
	(have_image planet36 infrared0)
	(have_image planet39 infrared1)
	(have_image planet41 thermograph2)
	(have_image planet42 infrared0)
	(have_image planet44 infrared1)
	(have_image planet48 thermograph2)
	(have_image planet49 thermograph2)
	(have_image planet50 thermograph2)
	(have_image planet56 thermograph2)
	(have_image planet63 thermograph2)
	(have_image planet64 infrared0)
	(have_image planet67 thermograph2)
	(have_image planet68 infrared0)
	(have_image planet71 infrared1)
	(have_image star22 infrared1)
	(have_image star23 thermograph2)
	(have_image star27 infrared0)
	(have_image star30 infrared1)
	(have_image star35 thermograph2)
	(have_image star37 thermograph2)
	(have_image star38 thermograph2)
	(have_image star4 infrared1)
	(have_image star40 thermograph2)
	(pointing satellite0 star53)
	(have_image star53 infrared1)
)(:goal (and 
	(have_image phenomenon14 infrared0)
	(have_image phenomenon15 infrared0)
	(have_image phenomenon20 infrared1)
	(have_image phenomenon26 thermograph2)
	(have_image phenomenon33 infrared0)
	(have_image phenomenon34 infrared1)
	(have_image phenomenon43 thermograph2)
	(have_image phenomenon45 thermograph2)
	(have_image phenomenon46 infrared0)
	(have_image phenomenon47 infrared0)
	(have_image phenomenon51 thermograph2)
	(have_image phenomenon52 infrared1)
	(have_image phenomenon55 thermograph2)
	(have_image phenomenon57 thermograph2)
	(have_image phenomenon60 infrared0)
	(have_image phenomenon61 thermograph2)
	(have_image phenomenon62 infrared0)
	(have_image phenomenon69 infrared0)
	(have_image phenomenon72 infrared0)
	(have_image phenomenon8 thermograph2)
	(have_image phenomenon9 infrared0)
	(have_image planet10 infrared0)
	(have_image planet11 infrared1)
	(have_image planet12 thermograph2)
	(have_image planet16 infrared1)
	(have_image planet18 infrared0)
	(have_image planet19 infrared0)
	(have_image planet21 infrared0)
	(have_image planet24 infrared1)
	(have_image planet25 infrared0)
	(have_image planet28 infrared0)
	(have_image planet29 infrared0)
	(have_image planet3 infrared1)
	(have_image planet32 thermograph2)
	(have_image planet36 infrared0)
	(have_image planet39 infrared1)
	(have_image planet41 thermograph2)
	(have_image planet42 infrared0)
	(have_image planet44 infrared1)
	(have_image planet48 thermograph2)
	(have_image planet49 thermograph2)
	(have_image planet5 thermograph2)
	(have_image planet50 thermograph2)
	(have_image planet56 thermograph2)
	(have_image planet63 thermograph2)
	(have_image planet64 infrared0)
	(have_image planet67 thermograph2)
	(have_image planet68 infrared0)
	(have_image planet71 infrared1)
	(have_image star22 infrared1)
	(have_image star23 thermograph2)
	(have_image star27 infrared0)
	(have_image star30 infrared1)
	(have_image star35 thermograph2)
	(have_image star37 thermograph2)
	(have_image star38 thermograph2)
	(have_image star4 infrared1)
	(have_image star40 thermograph2)
	(have_image star53 infrared1)
	(have_image star54 infrared0)
)))