(define (problem pfile20) (:domain satellite)
  (:objects star24 star23 planet22 phenomenon21 star20 phenomenon19 planet18 planet17 star16 planet15 phenomenon14 planet13 phenomenon12 star11 star10 planet9 phenomenon8 planet7 star6 phenomenon5 groundstation1 groundstation3 star4 star2 star0 - direction
             spectrograph0 image4 thermograph7 image2 infrared9 image3 infrared5 thermograph8 infrared1 spectrograph6 - mode
             instrument21 instrument20 - instrument
             satellite3 - satellite
            )
  (:init
       (supports instrument20 image2)
       (supports instrument20 image3)
       (supports instrument20 image4)
       (calibration_target instrument20 groundstation1)
       (supports instrument21 image3)
       (supports instrument21 thermograph8)
       (supports instrument21 infrared5)
       (calibration_target instrument21 star2)
       (on_board instrument20 satellite3)
       (on_board instrument21 satellite3)
       (power_avail satellite3)
       (pointing satellite3 star10))
  (:goal (and 
       (have_image star24 infrared5)
       (have_image star23 image2)
       (have_image planet22 image2)
       (have_image phenomenon21 image2)
       (have_image phenomenon21 image4)
       (have_image phenomenon19 image4)
       (have_image phenomenon19 image2)
       (have_image planet18 infrared5)
       (have_image star16 image4)
       (have_image star16 image3)
       (have_image planet15 image3)
       (have_image planet13 image2)
       (have_image planet13 infrared5)
       (have_image phenomenon12 image4)
       (have_image star11 image3)
       (have_image star11 image4)
       (have_image phenomenon8 infrared5)
       (have_image planet7 image2)
       (have_image planet7 infrared5)
       (have_image star6 image3)
       (have_image phenomenon5 image3)
       (have_image phenomenon5 thermograph8))))