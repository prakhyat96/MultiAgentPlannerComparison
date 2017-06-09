(define (problem pfile19) (:domain satellite)
  (:objects phenomenon24 star23 planet22 planet21 phenomenon20 star19 star18 planet17 star16 planet15 star14 phenomenon13 star12 phenomenon11 star10 planet9 phenomenon8 phenomenon7 star6 phenomenon5 groundstation0 star3 star2 groundstation4 star1 - direction
             infrared3 spectrograph0 infrared7 thermograph1 image5 infrared2 spectrograph6 image4 - mode
             instrument24 instrument23 instrument22 - instrument
             satellite4 - satellite
            )
  (:init
       (supports instrument22 thermograph1)
       (supports instrument22 image5)
       (calibration_target instrument22 star2)
       (supports instrument23 infrared7)
       (supports instrument23 thermograph1)
       (calibration_target instrument23 star3)
       (supports instrument24 infrared3)
       (supports instrument24 spectrograph0)
       (calibration_target instrument24 groundstation0)
       (on_board instrument22 satellite4)
       (on_board instrument23 satellite4)
       (on_board instrument24 satellite4)
       (power_avail satellite4)
       (pointing satellite4 star14))
  (:goal (and 
       (have_image phenomenon24 image5)
       (have_image planet21 image5)
       (have_image planet21 infrared3)
       (have_image phenomenon20 spectrograph0)
       (have_image star19 thermograph1)
       (have_image star19 infrared3)
       (have_image planet17 image5)
       (have_image phenomenon13 infrared7)
       (have_image star12 thermograph1)
       (have_image star10 infrared3)
       (have_image planet9 spectrograph0)
       (have_image phenomenon7 thermograph1)
       (have_image phenomenon5 infrared7))))