(define (problem tiny_problem) (:domain satellite)
(:objects
	star56 - direction
	instrument0 - instrument
	star21 - direction
	instrument2 - instrument
	phenomenon28 - direction
	planet16 - direction
	instrument15 - instrument
	star47 - direction
	image2 - mode
	planet61 - direction
	instrument12 - instrument
	star69 - direction
	planet62 - direction
	planet67 - direction
	planet72 - direction
	planet27 - direction
	star45 - direction
	planet31 - direction
	satellite0 - satellite
	groundstation2 - direction
	instrument6 - instrument
	phenomenon40 - direction
	instrument10 - instrument
	satellite2 - satellite
	instrument11 - instrument
	planet68 - direction
	instrument14 - instrument
	planet60 - direction
	satellite5 - satellite
	star52 - direction
	phenomenon22 - direction
	star50 - direction
	star48 - direction
	star25 - direction
	phenomenon43 - direction
	star46 - direction
	instrument7 - instrument
	planet51 - direction
	phenomenon10 - direction
	thermograph0 - mode
	star65 - direction
	instrument5 - instrument
	satellite6 - satellite
	star44 - direction
	phenomenon5 - direction
	star59 - direction
	planet53 - direction
	planet63 - direction
	phenomenon49 - direction
	star34 - direction
	star54 - direction
	phenomenon29 - direction
	phenomenon26 - direction
	star64 - direction
	planet32 - direction
	phenomenon8 - direction
	instrument8 - instrument
	satellite4 - satellite
	satellite1 - satellite
	phenomenon6 - direction
	phenomenon55 - direction
	star4 - direction
	spectrograph1 - mode
	instrument13 - instrument
	star20 - direction
	planet9 - direction
	star7 - direction
	planet66 - direction
	planet39 - direction
	groundstation0 - direction
	instrument3 - instrument
	phenomenon42 - direction
	star11 - direction
	phenomenon70 - direction
	star14 - direction
	star23 - direction
	star37 - direction
	satellite7 - satellite
	phenomenon13 - direction
	planet57 - direction
	star3 - direction
	star24 - direction
	star38 - direction
	phenomenon58 - direction
	satellite3 - satellite
	instrument9 - instrument
	planet18 - direction
	phenomenon71 - direction
	star41 - direction
	phenomenon15 - direction
	instrument1 - instrument
	groundstation1 - direction
	instrument16 - instrument
	star19 - direction
	phenomenon33 - direction
	star12 - direction
	star17 - direction
	instrument4 - instrument
	planet35 - direction
	planet36 - direction
	planet30 - direction
)(:init
	(supports instrument1 spectrograph1)
	(supports instrument8 spectrograph1)
	(supports instrument8 image2)
	(calibration_target instrument14 groundstation2)
	(pointing satellite7 star34)
	(calibration_target instrument3 groundstation2)
	(on_board instrument1 satellite1)
	(supports instrument11 spectrograph1)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 groundstation1)
	(on_board instrument5 satellite2)
	(calibration_target instrument0 groundstation2)
	(supports instrument7 thermograph0)
	(supports instrument6 thermograph0)
	(on_board instrument9 satellite4)
	(supports instrument14 spectrograph1)
	(on_board instrument16 satellite7)
	(supports instrument15 image2)
	(on_board instrument2 satellite1)
	(on_board instrument6 satellite3)
	(on_board instrument10 satellite4)
	(supports instrument1 image2)
	(supports instrument5 image2)
	(power_avail satellite7)
	(supports instrument15 thermograph0)
	(calibration_target instrument9 groundstation2)
	(calibration_target instrument2 groundstation1)
	(supports instrument6 image2)
	(supports instrument3 thermograph0)
	(power_avail satellite1)
	(on_board instrument15 satellite7)
	(power_avail satellite2)
	(supports instrument0 spectrograph1)
	(supports instrument4 image2)
	(supports instrument0 image2)
	(supports instrument4 spectrograph1)
	(supports instrument11 image2)
	(calibration_target instrument8 groundstation0)
	(calibration_target instrument1 groundstation0)
	(supports instrument8 thermograph0)
	(calibration_target instrument12 groundstation1)
	(supports instrument1 thermograph0)
	(supports instrument9 thermograph0)
	(calibration_target instrument11 groundstation1)
	(pointing satellite2 phenomenon58)
	(calibration_target instrument15 groundstation2)
	(on_board instrument11 satellite5)
	(supports instrument7 spectrograph1)
	(calibration_target instrument6 groundstation2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite4)
	(supports instrument3 image2)
	(pointing satellite3 phenomenon15)
	(calibration_target instrument4 groundstation1)
	(on_board instrument0 satellite0)
	(supports instrument0 thermograph0)
	(supports instrument2 spectrograph1)
	(pointing satellite1 star7)
	(supports instrument3 spectrograph1)
	(supports instrument14 image2)
	(pointing satellite0 star44)
	(pointing satellite5 planet27)
	(supports instrument13 spectrograph1)
	(supports instrument2 image2)
	(supports instrument4 thermograph0)
	(calibration_target instrument13 groundstation1)
	(calibration_target instrument7 groundstation0)
	(supports instrument10 thermograph0)
	(supports instrument16 thermograph0)
	(on_board instrument12 satellite6)
	(supports instrument14 thermograph0)
	(supports instrument9 image2)
	(calibration_target instrument10 groundstation2)
	(calibration_target instrument16 groundstation2)
	(power_avail satellite5)
	(supports instrument11 thermograph0)
	(supports instrument12 image2)
	(power_avail satellite3)
	(pointing satellite4 planet31)
	(supports instrument10 spectrograph1)
	(supports instrument16 spectrograph1)
	(power_avail satellite4)
	(on_board instrument3 satellite1)
	(supports instrument7 image2)
	(on_board instrument13 satellite6)
	(on_board instrument14 satellite6)
	(on_board instrument4 satellite2)
	(supports instrument10 image2)
	(supports instrument16 image2)
	(supports instrument5 thermograph0)
	(power_on instrument0)
	(power_on instrument14)
	(calibrated instrument14)
	(have_image phenomenon22 spectrograph1)
	(have_image planet27 spectrograph1)
	(have_image planet31 thermograph0)
	(have_image star34 thermograph0)
	(have_image star44 thermograph0)
	(have_image star7 thermograph0)
	(have_image phenomenon10 thermograph0)
	(have_image phenomenon13 thermograph0)
	(have_image phenomenon15 spectrograph1)
	(have_image phenomenon26 spectrograph1)
	(have_image phenomenon33 spectrograph1)
	(have_image phenomenon42 spectrograph1)
	(have_image phenomenon43 thermograph0)
	(have_image planet32 thermograph0)
	(have_image planet35 image2)
	(have_image phenomenon49 image2)
	(have_image phenomenon5 image2)
	(have_image phenomenon55 thermograph0)
	(have_image phenomenon6 image2)
	(have_image phenomenon70 spectrograph1)
	(have_image phenomenon71 spectrograph1)
	(have_image phenomenon8 image2)
	(have_image planet16 image2)
	(have_image planet18 image2)
	(have_image planet36 thermograph0)
	(have_image planet39 image2)
	(have_image planet51 spectrograph1)
	(have_image planet53 thermograph0)
	(have_image planet57 thermograph0)
	(have_image planet60 thermograph0)
	(have_image planet61 thermograph0)
	(have_image planet62 thermograph0)
	(have_image planet63 image2)
	(have_image planet66 thermograph0)
	(have_image planet67 image2)
	(have_image planet68 thermograph0)
	(have_image planet72 image2)
	(have_image planet9 spectrograph1)
	(have_image star11 spectrograph1)
	(have_image star12 spectrograph1)
	(have_image star14 image2)
	(have_image star17 spectrograph1)
	(have_image star19 thermograph0)
	(pointing satellite6 star20)
	(have_image star20 thermograph0)
)(:goal (and 
	(have_image phenomenon10 thermograph0)
	(have_image phenomenon13 thermograph0)
	(have_image phenomenon15 spectrograph1)
	(have_image phenomenon22 spectrograph1)
	(have_image phenomenon26 spectrograph1)
	(have_image phenomenon33 spectrograph1)
	(have_image phenomenon42 spectrograph1)
	(have_image phenomenon43 thermograph0)
	(have_image phenomenon49 image2)
	(have_image phenomenon5 image2)
	(have_image phenomenon55 thermograph0)
	(have_image phenomenon6 image2)
	(have_image phenomenon70 spectrograph1)
	(have_image phenomenon71 spectrograph1)
	(have_image phenomenon8 image2)
	(have_image planet16 image2)
	(have_image planet18 image2)
	(have_image planet27 spectrograph1)
	(have_image planet31 thermograph0)
	(have_image planet32 thermograph0)
	(have_image planet35 image2)
	(have_image planet36 thermograph0)
	(have_image planet39 image2)
	(have_image planet51 spectrograph1)
	(have_image planet53 thermograph0)
	(have_image planet57 thermograph0)
	(have_image planet60 thermograph0)
	(have_image planet61 thermograph0)
	(have_image planet62 thermograph0)
	(have_image planet63 image2)
	(have_image planet66 thermograph0)
	(have_image planet67 image2)
	(have_image planet68 thermograph0)
	(have_image planet72 image2)
	(have_image planet9 spectrograph1)
	(have_image star11 spectrograph1)
	(have_image star12 spectrograph1)
	(have_image star14 image2)
	(have_image star17 spectrograph1)
	(have_image star19 thermograph0)
	(have_image star20 thermograph0)
	(have_image star23 image2)
	(have_image star34 thermograph0)
	(have_image star44 thermograph0)
	(have_image star7 thermograph0)
)))