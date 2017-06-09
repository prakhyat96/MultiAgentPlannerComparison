(define (problem p02-ma) (:domain transport)
  (:objects capacity-4 capacity-3 capacity-2 capacity-1 capacity-0 - capacity-number
             package-18 package-17 package-16 package-15 package-14 package-13 package-12 package-11 package-10 package-9 package-8 package-7 package-6 package-5 package-4 package-3 package-2 package-1 - package
             truck-2 - vehicle
             city-loc-45 city-loc-44 city-loc-43 city-loc-42 city-loc-41 city-loc-40 city-loc-39 city-loc-38 city-loc-37 city-loc-36 city-loc-35 city-loc-34 city-loc-33 city-loc-32 city-loc-31 city-loc-30 city-loc-29 city-loc-28 city-loc-27 city-loc-26 city-loc-25 city-loc-24 city-loc-23 city-loc-22 city-loc-21 city-loc-20 city-loc-19 city-loc-18 city-loc-17 city-loc-16 city-loc-15 city-loc-14 city-loc-13 city-loc-12 city-loc-11 city-loc-10 city-loc-9 city-loc-8 city-loc-7 city-loc-6 city-loc-5 city-loc-4 city-loc-3 city-loc-2 city-loc-1 - location
            )
  (:init
       (= (total-cost) 0)
       (capacity-predecessor capacity-0 capacity-1)
       (capacity-predecessor capacity-1 capacity-2)
       (capacity-predecessor capacity-2 capacity-3)
       (capacity-predecessor capacity-3 capacity-4)
       (road city-loc-5 city-loc-4)
       (= (road-length city-loc-5 city-loc-4) 12)
       (road city-loc-4 city-loc-5)
       (= (road-length city-loc-4 city-loc-5) 12)
       (road city-loc-6 city-loc-2)
       (= (road-length city-loc-6 city-loc-2) 19)
       (road city-loc-2 city-loc-6)
       (= (road-length city-loc-2 city-loc-6) 19)
       (road city-loc-7 city-loc-1)
       (= (road-length city-loc-7 city-loc-1) 15)
       (road city-loc-1 city-loc-7)
       (= (road-length city-loc-1 city-loc-7) 15)
       (road city-loc-7 city-loc-3)
       (= (road-length city-loc-7 city-loc-3) 16)
       (road city-loc-3 city-loc-7)
       (= (road-length city-loc-3 city-loc-7) 16)
       (road city-loc-10 city-loc-7)
       (= (road-length city-loc-10 city-loc-7) 18)
       (road city-loc-7 city-loc-10)
       (= (road-length city-loc-7 city-loc-10) 18)
       (road city-loc-13 city-loc-11)
       (= (road-length city-loc-13 city-loc-11) 13)
       (road city-loc-11 city-loc-13)
       (= (road-length city-loc-11 city-loc-13) 13)
       (road city-loc-14 city-loc-4)
       (= (road-length city-loc-14 city-loc-4) 13)
       (road city-loc-4 city-loc-14)
       (= (road-length city-loc-4 city-loc-14) 13)
       (road city-loc-14 city-loc-5)
       (= (road-length city-loc-14 city-loc-5) 18)
       (road city-loc-5 city-loc-14)
       (= (road-length city-loc-5 city-loc-14) 18)
       (road city-loc-15 city-loc-9)
       (= (road-length city-loc-15 city-loc-9) 15)
       (road city-loc-9 city-loc-15)
       (= (road-length city-loc-9 city-loc-15) 15)
       (road city-loc-15 city-loc-11)
       (= (road-length city-loc-15 city-loc-11) 12)
       (road city-loc-11 city-loc-15)
       (= (road-length city-loc-11 city-loc-15) 12)
       (road city-loc-16 city-loc-11)
       (= (road-length city-loc-16 city-loc-11) 16)
       (road city-loc-11 city-loc-16)
       (= (road-length city-loc-11 city-loc-16) 16)
       (road city-loc-16 city-loc-13)
       (= (road-length city-loc-16 city-loc-13) 20)
       (road city-loc-13 city-loc-16)
       (= (road-length city-loc-13 city-loc-16) 20)
       (road city-loc-17 city-loc-8)
       (= (road-length city-loc-17 city-loc-8) 16)
       (road city-loc-8 city-loc-17)
       (= (road-length city-loc-8 city-loc-17) 16)
       (road city-loc-21 city-loc-9)
       (= (road-length city-loc-21 city-loc-9) 12)
       (road city-loc-9 city-loc-21)
       (= (road-length city-loc-9 city-loc-21) 12)
       (road city-loc-21 city-loc-15)
       (= (road-length city-loc-21 city-loc-15) 19)
       (road city-loc-15 city-loc-21)
       (= (road-length city-loc-15 city-loc-21) 19)
       (road city-loc-22 city-loc-16)
       (= (road-length city-loc-22 city-loc-16) 14)
       (road city-loc-16 city-loc-22)
       (= (road-length city-loc-16 city-loc-22) 14)
       (road city-loc-23 city-loc-19)
       (= (road-length city-loc-23 city-loc-19) 13)
       (road city-loc-19 city-loc-23)
       (= (road-length city-loc-19 city-loc-23) 13)
       (road city-loc-24 city-loc-1)
       (= (road-length city-loc-24 city-loc-1) 14)
       (road city-loc-1 city-loc-24)
       (= (road-length city-loc-1 city-loc-24) 14)
       (road city-loc-25 city-loc-17)
       (= (road-length city-loc-25 city-loc-17) 17)
       (road city-loc-17 city-loc-25)
       (= (road-length city-loc-17 city-loc-25) 17)
       (road city-loc-25 city-loc-22)
       (= (road-length city-loc-25 city-loc-22) 14)
       (road city-loc-22 city-loc-25)
       (= (road-length city-loc-22 city-loc-25) 14)
       (road city-loc-26 city-loc-20)
       (= (road-length city-loc-26 city-loc-20) 15)
       (road city-loc-20 city-loc-26)
       (= (road-length city-loc-20 city-loc-26) 15)
       (road city-loc-27 city-loc-2)
       (= (road-length city-loc-27 city-loc-2) 14)
       (road city-loc-2 city-loc-27)
       (= (road-length city-loc-2 city-loc-27) 14)
       (road city-loc-27 city-loc-20)
       (= (road-length city-loc-27 city-loc-20) 16)
       (road city-loc-20 city-loc-27)
       (= (road-length city-loc-20 city-loc-27) 16)
       (road city-loc-28 city-loc-2)
       (= (road-length city-loc-28 city-loc-2) 11)
       (road city-loc-2 city-loc-28)
       (= (road-length city-loc-2 city-loc-28) 11)
       (road city-loc-28 city-loc-6)
       (= (road-length city-loc-28 city-loc-6) 14)
       (road city-loc-6 city-loc-28)
       (= (road-length city-loc-6 city-loc-28) 14)
       (road city-loc-28 city-loc-27)
       (= (road-length city-loc-28 city-loc-27) 17)
       (road city-loc-27 city-loc-28)
       (= (road-length city-loc-27 city-loc-28) 17)
       (road city-loc-29 city-loc-6)
       (= (road-length city-loc-29 city-loc-6) 17)
       (road city-loc-6 city-loc-29)
       (= (road-length city-loc-6 city-loc-29) 17)
       (road city-loc-29 city-loc-10)
       (= (road-length city-loc-29 city-loc-10) 19)
       (road city-loc-10 city-loc-29)
       (= (road-length city-loc-10 city-loc-29) 19)
       (road city-loc-29 city-loc-21)
       (= (road-length city-loc-29 city-loc-21) 15)
       (road city-loc-21 city-loc-29)
       (= (road-length city-loc-21 city-loc-29) 15)
       (road city-loc-30 city-loc-3)
       (= (road-length city-loc-30 city-loc-3) 15)
       (road city-loc-3 city-loc-30)
       (= (road-length city-loc-3 city-loc-30) 15)
       (road city-loc-31 city-loc-6)
       (= (road-length city-loc-31 city-loc-6) 10)
       (road city-loc-6 city-loc-31)
       (= (road-length city-loc-6 city-loc-31) 10)
       (road city-loc-31 city-loc-9)
       (= (road-length city-loc-31 city-loc-9) 18)
       (road city-loc-9 city-loc-31)
       (= (road-length city-loc-9 city-loc-31) 18)
       (road city-loc-31 city-loc-21)
       (= (road-length city-loc-31 city-loc-21) 16)
       (road city-loc-21 city-loc-31)
       (= (road-length city-loc-21 city-loc-31) 16)
       (road city-loc-31 city-loc-28)
       (= (road-length city-loc-31 city-loc-28) 14)
       (road city-loc-28 city-loc-31)
       (= (road-length city-loc-28 city-loc-31) 14)
       (road city-loc-31 city-loc-29)
       (= (road-length city-loc-31 city-loc-29) 18)
       (road city-loc-29 city-loc-31)
       (= (road-length city-loc-29 city-loc-31) 18)
       (road city-loc-32 city-loc-7)
       (= (road-length city-loc-32 city-loc-7) 17)
       (road city-loc-7 city-loc-32)
       (= (road-length city-loc-7 city-loc-32) 17)
       (road city-loc-32 city-loc-8)
       (= (road-length city-loc-32 city-loc-8) 14)
       (road city-loc-8 city-loc-32)
       (= (road-length city-loc-8 city-loc-32) 14)
       (road city-loc-32 city-loc-10)
       (= (road-length city-loc-32 city-loc-10) 14)
       (road city-loc-10 city-loc-32)
       (= (road-length city-loc-10 city-loc-32) 14)
       (road city-loc-33 city-loc-12)
       (= (road-length city-loc-33 city-loc-12) 14)
       (road city-loc-12 city-loc-33)
       (= (road-length city-loc-12 city-loc-33) 14)
       (road city-loc-33 city-loc-19)
       (= (road-length city-loc-33 city-loc-19) 14)
       (road city-loc-19 city-loc-33)
       (= (road-length city-loc-19 city-loc-33) 14)
       (road city-loc-33 city-loc-30)
       (= (road-length city-loc-33 city-loc-30) 18)
       (road city-loc-30 city-loc-33)
       (= (road-length city-loc-30 city-loc-33) 18)
       (road city-loc-34 city-loc-22)
       (= (road-length city-loc-34 city-loc-22) 11)
       (road city-loc-22 city-loc-34)
       (= (road-length city-loc-22 city-loc-34) 11)
       (road city-loc-35 city-loc-8)
       (= (road-length city-loc-35 city-loc-8) 12)
       (road city-loc-8 city-loc-35)
       (= (road-length city-loc-8 city-loc-35) 12)
       (road city-loc-36 city-loc-10)
       (= (road-length city-loc-36 city-loc-10) 14)
       (road city-loc-10 city-loc-36)
       (= (road-length city-loc-10 city-loc-36) 14)
       (road city-loc-36 city-loc-15)
       (= (road-length city-loc-36 city-loc-15) 18)
       (road city-loc-15 city-loc-36)
       (= (road-length city-loc-15 city-loc-36) 18)
       (road city-loc-36 city-loc-17)
       (= (road-length city-loc-36 city-loc-17) 11)
       (road city-loc-17 city-loc-36)
       (= (road-length city-loc-17 city-loc-36) 11)
       (road city-loc-36 city-loc-21)
       (= (road-length city-loc-36 city-loc-21) 18)
       (road city-loc-21 city-loc-36)
       (= (road-length city-loc-21 city-loc-36) 18)
       (road city-loc-37 city-loc-1)
       (= (road-length city-loc-37 city-loc-1) 14)
       (road city-loc-1 city-loc-37)
       (= (road-length city-loc-1 city-loc-37) 14)
       (road city-loc-37 city-loc-4)
       (= (road-length city-loc-37 city-loc-4) 19)
       (road city-loc-4 city-loc-37)
       (= (road-length city-loc-4 city-loc-37) 19)
       (road city-loc-37 city-loc-7)
       (= (road-length city-loc-37 city-loc-7) 13)
       (road city-loc-7 city-loc-37)
       (= (road-length city-loc-7 city-loc-37) 13)
       (road city-loc-37 city-loc-32)
       (= (road-length city-loc-37 city-loc-32) 17)
       (road city-loc-32 city-loc-37)
       (= (road-length city-loc-32 city-loc-37) 17)
       (road city-loc-38 city-loc-22)
       (= (road-length city-loc-38 city-loc-22) 14)
       (road city-loc-22 city-loc-38)
       (= (road-length city-loc-22 city-loc-38) 14)
       (road city-loc-38 city-loc-25)
       (= (road-length city-loc-38 city-loc-25) 11)
       (road city-loc-25 city-loc-38)
       (= (road-length city-loc-25 city-loc-38) 11)
       (road city-loc-38 city-loc-34)
       (= (road-length city-loc-38 city-loc-34) 14)
       (road city-loc-34 city-loc-38)
       (= (road-length city-loc-34 city-loc-38) 14)
       (road city-loc-39 city-loc-8)
       (= (road-length city-loc-39 city-loc-8) 18)
       (road city-loc-8 city-loc-39)
       (= (road-length city-loc-8 city-loc-39) 18)
       (road city-loc-39 city-loc-25)
       (= (road-length city-loc-39 city-loc-25) 12)
       (road city-loc-25 city-loc-39)
       (= (road-length city-loc-25 city-loc-39) 12)
       (road city-loc-39 city-loc-35)
       (= (road-length city-loc-39 city-loc-35) 10)
       (road city-loc-35 city-loc-39)
       (= (road-length city-loc-35 city-loc-39) 10)
       (road city-loc-39 city-loc-38)
       (= (road-length city-loc-39 city-loc-38) 13)
       (road city-loc-38 city-loc-39)
       (= (road-length city-loc-38 city-loc-39) 13)
       (road city-loc-40 city-loc-11)
       (= (road-length city-loc-40 city-loc-11) 13)
       (road city-loc-11 city-loc-40)
       (= (road-length city-loc-11 city-loc-40) 13)
       (road city-loc-40 city-loc-15)
       (= (road-length city-loc-40 city-loc-15) 15)
       (road city-loc-15 city-loc-40)
       (= (road-length city-loc-15 city-loc-40) 15)
       (road city-loc-40 city-loc-16)
       (= (road-length city-loc-40 city-loc-16) 18)
       (road city-loc-16 city-loc-40)
       (= (road-length city-loc-16 city-loc-40) 18)
       (road city-loc-40 city-loc-17)
       (= (road-length city-loc-40 city-loc-17) 15)
       (road city-loc-17 city-loc-40)
       (= (road-length city-loc-17 city-loc-40) 15)
       (road city-loc-40 city-loc-22)
       (= (road-length city-loc-40 city-loc-22) 18)
       (road city-loc-22 city-loc-40)
       (= (road-length city-loc-22 city-loc-40) 18)
       (road city-loc-40 city-loc-25)
       (= (road-length city-loc-40 city-loc-25) 18)
       (road city-loc-25 city-loc-40)
       (= (road-length city-loc-25 city-loc-40) 18)
       (road city-loc-40 city-loc-36)
       (= (road-length city-loc-40 city-loc-36) 19)
       (road city-loc-36 city-loc-40)
       (= (road-length city-loc-36 city-loc-40) 19)
       (road city-loc-41 city-loc-9)
       (= (road-length city-loc-41 city-loc-9) 17)
       (road city-loc-9 city-loc-41)
       (= (road-length city-loc-9 city-loc-41) 17)
       (road city-loc-41 city-loc-18)
       (= (road-length city-loc-41 city-loc-18) 20)
       (road city-loc-18 city-loc-41)
       (= (road-length city-loc-18 city-loc-41) 20)
       (road city-loc-41 city-loc-20)
       (= (road-length city-loc-41 city-loc-20) 18)
       (road city-loc-20 city-loc-41)
       (= (road-length city-loc-20 city-loc-41) 18)
       (road city-loc-41 city-loc-28)
       (= (road-length city-loc-41 city-loc-28) 19)
       (road city-loc-28 city-loc-41)
       (= (road-length city-loc-28 city-loc-41) 19)
       (road city-loc-41 city-loc-31)
       (= (road-length city-loc-41 city-loc-31) 18)
       (road city-loc-31 city-loc-41)
       (= (road-length city-loc-31 city-loc-41) 18)
       (road city-loc-42 city-loc-3)
       (= (road-length city-loc-42 city-loc-3) 16)
       (road city-loc-3 city-loc-42)
       (= (road-length city-loc-3 city-loc-42) 16)
       (road city-loc-42 city-loc-6)
       (= (road-length city-loc-42 city-loc-6) 18)
       (road city-loc-6 city-loc-42)
       (= (road-length city-loc-6 city-loc-42) 18)
       (road city-loc-42 city-loc-29)
       (= (road-length city-loc-42 city-loc-29) 12)
       (road city-loc-29 city-loc-42)
       (= (road-length city-loc-29 city-loc-42) 12)
       (road city-loc-42 city-loc-30)
       (= (road-length city-loc-42 city-loc-30) 13)
       (road city-loc-30 city-loc-42)
       (= (road-length city-loc-30 city-loc-42) 13)
       (road city-loc-43 city-loc-8)
       (= (road-length city-loc-43 city-loc-8) 16)
       (road city-loc-8 city-loc-43)
       (= (road-length city-loc-8 city-loc-43) 16)
       (road city-loc-43 city-loc-14)
       (= (road-length city-loc-43 city-loc-14) 16)
       (road city-loc-14 city-loc-43)
       (= (road-length city-loc-14 city-loc-43) 16)
       (road city-loc-43 city-loc-35)
       (= (road-length city-loc-43 city-loc-35) 10)
       (road city-loc-35 city-loc-43)
       (= (road-length city-loc-35 city-loc-43) 10)
       (road city-loc-43 city-loc-39)
       (= (road-length city-loc-43 city-loc-39) 20)
       (road city-loc-39 city-loc-43)
       (= (road-length city-loc-39 city-loc-43) 20)
       (road city-loc-44 city-loc-12)
       (= (road-length city-loc-44 city-loc-12) 16)
       (road city-loc-12 city-loc-44)
       (= (road-length city-loc-12 city-loc-44) 16)
       (road city-loc-44 city-loc-19)
       (= (road-length city-loc-44 city-loc-19) 19)
       (road city-loc-19 city-loc-44)
       (= (road-length city-loc-19 city-loc-44) 19)
       (road city-loc-44 city-loc-33)
       (= (road-length city-loc-44 city-loc-33) 12)
       (road city-loc-33 city-loc-44)
       (= (road-length city-loc-33 city-loc-44) 12)
       (road city-loc-45 city-loc-6)
       (= (road-length city-loc-45 city-loc-6) 17)
       (road city-loc-6 city-loc-45)
       (= (road-length city-loc-6 city-loc-45) 17)
       (road city-loc-45 city-loc-23)
       (= (road-length city-loc-45 city-loc-23) 15)
       (road city-loc-23 city-loc-45)
       (= (road-length city-loc-23 city-loc-45) 15)
       (road city-loc-45 city-loc-30)
       (= (road-length city-loc-45 city-loc-30) 17)
       (road city-loc-30 city-loc-45)
       (= (road-length city-loc-30 city-loc-45) 17)
       (road city-loc-45 city-loc-42)
       (= (road-length city-loc-45 city-loc-42) 18)
       (road city-loc-42 city-loc-45)
       (= (road-length city-loc-42 city-loc-45) 18)
       (at package-1 city-loc-25)
       (at package-2 city-loc-20)
       (at package-3 city-loc-28)
       (at package-4 city-loc-10)
       (at package-5 city-loc-22)
       (at package-6 city-loc-22)
       (at package-7 city-loc-30)
       (at package-8 city-loc-6)
       (at package-9 city-loc-40)
       (at package-10 city-loc-1)
       (at package-11 city-loc-15)
       (at package-12 city-loc-22)
       (at package-13 city-loc-42)
       (at package-14 city-loc-44)
       (at package-15 city-loc-3)
       (at package-16 city-loc-39)
       (at package-17 city-loc-17)
       (at package-18 city-loc-26)
       (at-truck truck-2 city-loc-20)
       (capacity truck-2 capacity-3))
  (:goal (and 
       (at package-18 city-loc-3)
       (at package-17 city-loc-3)
       (at package-16 city-loc-24)
       (at package-15 city-loc-30)
       (at package-14 city-loc-45)
       (at package-13 city-loc-20)
       (at package-12 city-loc-25)
       (at package-11 city-loc-21)
       (at package-10 city-loc-36)
       (at package-9 city-loc-29)
       (at package-8 city-loc-39)
       (at package-7 city-loc-42)
       (at package-6 city-loc-12)
       (at package-5 city-loc-10)
       (at package-4 city-loc-3)
       (at package-3 city-loc-16)
       (at package-2 city-loc-1)
       (at package-1 city-loc-17))))