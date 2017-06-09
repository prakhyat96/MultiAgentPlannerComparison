(define (problem p11-ma) (:domain transport)
  (:objects capacity-4 capacity-3 capacity-2 capacity-1 capacity-0 - capacity-number
             package-22 package-21 package-20 package-19 package-18 package-17 package-16 package-15 package-14 package-13 package-12 package-11 package-10 package-9 package-8 package-7 package-6 package-5 package-4 package-3 package-2 package-1 - package
             truck-1 - vehicle
             city-loc-50 city-loc-49 city-loc-48 city-loc-47 city-loc-46 city-loc-45 city-loc-44 city-loc-43 city-loc-42 city-loc-41 city-loc-40 city-loc-39 city-loc-38 city-loc-37 city-loc-36 city-loc-35 city-loc-34 city-loc-33 city-loc-32 city-loc-31 city-loc-30 city-loc-29 city-loc-28 city-loc-27 city-loc-26 city-loc-25 city-loc-24 city-loc-23 city-loc-22 city-loc-21 city-loc-20 city-loc-19 city-loc-18 city-loc-17 city-loc-16 city-loc-15 city-loc-14 city-loc-13 city-loc-12 city-loc-11 city-loc-10 city-loc-9 city-loc-8 city-loc-7 city-loc-6 city-loc-5 city-loc-4 city-loc-3 city-loc-2 city-loc-1 - location
            )
  (:init
       (= (total-cost) 0)
       (capacity-predecessor capacity-0 capacity-1)
       (capacity-predecessor capacity-1 capacity-2)
       (capacity-predecessor capacity-2 capacity-3)
       (capacity-predecessor capacity-3 capacity-4)
       (road city-loc-5 city-loc-4)
       (= (road-length city-loc-5 city-loc-4) 17)
       (road city-loc-4 city-loc-5)
       (= (road-length city-loc-4 city-loc-5) 17)
       (road city-loc-9 city-loc-3)
       (= (road-length city-loc-9 city-loc-3) 18)
       (road city-loc-3 city-loc-9)
       (= (road-length city-loc-3 city-loc-9) 18)
       (road city-loc-9 city-loc-5)
       (= (road-length city-loc-9 city-loc-5) 15)
       (road city-loc-5 city-loc-9)
       (= (road-length city-loc-5 city-loc-9) 15)
       (road city-loc-12 city-loc-9)
       (= (road-length city-loc-12 city-loc-9) 14)
       (road city-loc-9 city-loc-12)
       (= (road-length city-loc-9 city-loc-12) 14)
       (road city-loc-12 city-loc-10)
       (= (road-length city-loc-12 city-loc-10) 16)
       (road city-loc-10 city-loc-12)
       (= (road-length city-loc-10 city-loc-12) 16)
       (road city-loc-13 city-loc-3)
       (= (road-length city-loc-13 city-loc-3) 18)
       (road city-loc-3 city-loc-13)
       (= (road-length city-loc-3 city-loc-13) 18)
       (road city-loc-14 city-loc-2)
       (= (road-length city-loc-14 city-loc-2) 11)
       (road city-loc-2 city-loc-14)
       (= (road-length city-loc-2 city-loc-14) 11)
       (road city-loc-15 city-loc-5)
       (= (road-length city-loc-15 city-loc-5) 11)
       (road city-loc-5 city-loc-15)
       (= (road-length city-loc-5 city-loc-15) 11)
       (road city-loc-15 city-loc-9)
       (= (road-length city-loc-15 city-loc-9) 12)
       (road city-loc-9 city-loc-15)
       (= (road-length city-loc-9 city-loc-15) 12)
       (road city-loc-16 city-loc-6)
       (= (road-length city-loc-16 city-loc-6) 16)
       (road city-loc-6 city-loc-16)
       (= (road-length city-loc-6 city-loc-16) 16)
       (road city-loc-16 city-loc-10)
       (= (road-length city-loc-16 city-loc-10) 18)
       (road city-loc-10 city-loc-16)
       (= (road-length city-loc-10 city-loc-16) 18)
       (road city-loc-17 city-loc-7)
       (= (road-length city-loc-17 city-loc-7) 16)
       (road city-loc-7 city-loc-17)
       (= (road-length city-loc-7 city-loc-17) 16)
       (road city-loc-18 city-loc-1)
       (= (road-length city-loc-18 city-loc-1) 15)
       (road city-loc-1 city-loc-18)
       (= (road-length city-loc-1 city-loc-18) 15)
       (road city-loc-19 city-loc-6)
       (= (road-length city-loc-19 city-loc-6) 15)
       (road city-loc-6 city-loc-19)
       (= (road-length city-loc-6 city-loc-19) 15)
       (road city-loc-20 city-loc-11)
       (= (road-length city-loc-20 city-loc-11) 13)
       (road city-loc-11 city-loc-20)
       (= (road-length city-loc-11 city-loc-20) 13)
       (road city-loc-20 city-loc-17)
       (= (road-length city-loc-20 city-loc-17) 15)
       (road city-loc-17 city-loc-20)
       (= (road-length city-loc-17 city-loc-20) 15)
       (road city-loc-21 city-loc-20)
       (= (road-length city-loc-21 city-loc-20) 19)
       (road city-loc-20 city-loc-21)
       (= (road-length city-loc-20 city-loc-21) 19)
       (road city-loc-22 city-loc-13)
       (= (road-length city-loc-22 city-loc-13) 11)
       (road city-loc-13 city-loc-22)
       (= (road-length city-loc-13 city-loc-22) 11)
       (road city-loc-23 city-loc-9)
       (= (road-length city-loc-23 city-loc-9) 18)
       (road city-loc-9 city-loc-23)
       (= (road-length city-loc-9 city-loc-23) 18)
       (road city-loc-23 city-loc-10)
       (= (road-length city-loc-23 city-loc-10) 13)
       (road city-loc-10 city-loc-23)
       (= (road-length city-loc-10 city-loc-23) 13)
       (road city-loc-23 city-loc-12)
       (= (road-length city-loc-23 city-loc-12) 11)
       (road city-loc-12 city-loc-23)
       (= (road-length city-loc-12 city-loc-23) 11)
       (road city-loc-24 city-loc-11)
       (= (road-length city-loc-24 city-loc-11) 12)
       (road city-loc-11 city-loc-24)
       (= (road-length city-loc-11 city-loc-24) 12)
       (road city-loc-24 city-loc-20)
       (= (road-length city-loc-24 city-loc-20) 16)
       (road city-loc-20 city-loc-24)
       (= (road-length city-loc-20 city-loc-24) 16)
       (road city-loc-26 city-loc-4)
       (= (road-length city-loc-26 city-loc-4) 17)
       (road city-loc-4 city-loc-26)
       (= (road-length city-loc-4 city-loc-26) 17)
       (road city-loc-27 city-loc-3)
       (= (road-length city-loc-27 city-loc-3) 18)
       (road city-loc-3 city-loc-27)
       (= (road-length city-loc-3 city-loc-27) 18)
       (road city-loc-27 city-loc-13)
       (= (road-length city-loc-27 city-loc-13) 13)
       (road city-loc-13 city-loc-27)
       (= (road-length city-loc-13 city-loc-27) 13)
       (road city-loc-27 city-loc-22)
       (= (road-length city-loc-27 city-loc-22) 14)
       (road city-loc-22 city-loc-27)
       (= (road-length city-loc-22 city-loc-27) 14)
       (road city-loc-28 city-loc-2)
       (= (road-length city-loc-28 city-loc-2) 18)
       (road city-loc-2 city-loc-28)
       (= (road-length city-loc-2 city-loc-28) 18)
       (road city-loc-28 city-loc-19)
       (= (road-length city-loc-28 city-loc-19) 14)
       (road city-loc-19 city-loc-28)
       (= (road-length city-loc-19 city-loc-28) 14)
       (road city-loc-29 city-loc-8)
       (= (road-length city-loc-29 city-loc-8) 18)
       (road city-loc-8 city-loc-29)
       (= (road-length city-loc-8 city-loc-29) 18)
       (road city-loc-31 city-loc-26)
       (= (road-length city-loc-31 city-loc-26) 19)
       (road city-loc-26 city-loc-31)
       (= (road-length city-loc-26 city-loc-31) 19)
       (road city-loc-31 city-loc-29)
       (= (road-length city-loc-31 city-loc-29) 11)
       (road city-loc-29 city-loc-31)
       (= (road-length city-loc-29 city-loc-31) 11)
       (road city-loc-32 city-loc-24)
       (= (road-length city-loc-32 city-loc-24) 12)
       (road city-loc-24 city-loc-32)
       (= (road-length city-loc-24 city-loc-32) 12)
       (road city-loc-32 city-loc-26)
       (= (road-length city-loc-32 city-loc-26) 14)
       (road city-loc-26 city-loc-32)
       (= (road-length city-loc-26 city-loc-32) 14)
       (road city-loc-32 city-loc-31)
       (= (road-length city-loc-32 city-loc-31) 19)
       (road city-loc-31 city-loc-32)
       (= (road-length city-loc-31 city-loc-32) 19)
       (road city-loc-33 city-loc-11)
       (= (road-length city-loc-33 city-loc-11) 16)
       (road city-loc-11 city-loc-33)
       (= (road-length city-loc-11 city-loc-33) 16)
       (road city-loc-33 city-loc-20)
       (= (road-length city-loc-33 city-loc-20) 17)
       (road city-loc-20 city-loc-33)
       (= (road-length city-loc-20 city-loc-33) 17)
       (road city-loc-33 city-loc-21)
       (= (road-length city-loc-33 city-loc-21) 12)
       (road city-loc-21 city-loc-33)
       (= (road-length city-loc-21 city-loc-33) 12)
       (road city-loc-34 city-loc-8)
       (= (road-length city-loc-34 city-loc-8) 12)
       (road city-loc-8 city-loc-34)
       (= (road-length city-loc-8 city-loc-34) 12)
       (road city-loc-35 city-loc-27)
       (= (road-length city-loc-35 city-loc-27) 11)
       (road city-loc-27 city-loc-35)
       (= (road-length city-loc-27 city-loc-35) 11)
       (road city-loc-36 city-loc-16)
       (= (road-length city-loc-36 city-loc-16) 13)
       (road city-loc-16 city-loc-36)
       (= (road-length city-loc-16 city-loc-36) 13)
       (road city-loc-37 city-loc-4)
       (= (road-length city-loc-37 city-loc-4) 11)
       (road city-loc-4 city-loc-37)
       (= (road-length city-loc-4 city-loc-37) 11)
       (road city-loc-37 city-loc-24)
       (= (road-length city-loc-37 city-loc-24) 17)
       (road city-loc-24 city-loc-37)
       (= (road-length city-loc-24 city-loc-37) 17)
       (road city-loc-37 city-loc-26)
       (= (road-length city-loc-37 city-loc-26) 15)
       (road city-loc-26 city-loc-37)
       (= (road-length city-loc-26 city-loc-37) 15)
       (road city-loc-37 city-loc-32)
       (= (road-length city-loc-37 city-loc-32) 17)
       (road city-loc-32 city-loc-37)
       (= (road-length city-loc-32 city-loc-37) 17)
       (road city-loc-38 city-loc-1)
       (= (road-length city-loc-38 city-loc-1) 13)
       (road city-loc-1 city-loc-38)
       (= (road-length city-loc-1 city-loc-38) 13)
       (road city-loc-38 city-loc-18)
       (= (road-length city-loc-38 city-loc-18) 10)
       (road city-loc-18 city-loc-38)
       (= (road-length city-loc-18 city-loc-38) 10)
       (road city-loc-39 city-loc-22)
       (= (road-length city-loc-39 city-loc-22) 19)
       (road city-loc-22 city-loc-39)
       (= (road-length city-loc-22 city-loc-39) 19)
       (road city-loc-39 city-loc-27)
       (= (road-length city-loc-39 city-loc-27) 16)
       (road city-loc-27 city-loc-39)
       (= (road-length city-loc-27 city-loc-39) 16)
       (road city-loc-39 city-loc-30)
       (= (road-length city-loc-39 city-loc-30) 14)
       (road city-loc-30 city-loc-39)
       (= (road-length city-loc-30 city-loc-39) 14)
       (road city-loc-39 city-loc-35)
       (= (road-length city-loc-39 city-loc-35) 11)
       (road city-loc-35 city-loc-39)
       (= (road-length city-loc-35 city-loc-39) 11)
       (road city-loc-40 city-loc-14)
       (= (road-length city-loc-40 city-loc-14) 17)
       (road city-loc-14 city-loc-40)
       (= (road-length city-loc-14 city-loc-40) 17)
       (road city-loc-40 city-loc-26)
       (= (road-length city-loc-40 city-loc-26) 15)
       (road city-loc-26 city-loc-40)
       (= (road-length city-loc-26 city-loc-40) 15)
       (road city-loc-40 city-loc-31)
       (= (road-length city-loc-40 city-loc-31) 13)
       (road city-loc-31 city-loc-40)
       (= (road-length city-loc-31 city-loc-40) 13)
       (road city-loc-41 city-loc-22)
       (= (road-length city-loc-41 city-loc-22) 12)
       (road city-loc-22 city-loc-41)
       (= (road-length city-loc-22 city-loc-41) 12)
       (road city-loc-41 city-loc-30)
       (= (road-length city-loc-41 city-loc-30) 12)
       (road city-loc-30 city-loc-41)
       (= (road-length city-loc-30 city-loc-41) 12)
       (road city-loc-41 city-loc-39)
       (= (road-length city-loc-41 city-loc-39) 14)
       (road city-loc-39 city-loc-41)
       (= (road-length city-loc-39 city-loc-41) 14)
       (road city-loc-42 city-loc-2)
       (= (road-length city-loc-42 city-loc-2) 19)
       (road city-loc-2 city-loc-42)
       (= (road-length city-loc-2 city-loc-42) 19)
       (road city-loc-42 city-loc-14)
       (= (road-length city-loc-42 city-loc-14) 10)
       (road city-loc-14 city-loc-42)
       (= (road-length city-loc-14 city-loc-42) 10)
       (road city-loc-42 city-loc-31)
       (= (road-length city-loc-42 city-loc-31) 18)
       (road city-loc-31 city-loc-42)
       (= (road-length city-loc-31 city-loc-42) 18)
       (road city-loc-42 city-loc-34)
       (= (road-length city-loc-42 city-loc-34) 15)
       (road city-loc-34 city-loc-42)
       (= (road-length city-loc-34 city-loc-42) 15)
       (road city-loc-42 city-loc-40)
       (= (road-length city-loc-42 city-loc-40) 12)
       (road city-loc-40 city-loc-42)
       (= (road-length city-loc-40 city-loc-42) 12)
       (road city-loc-43 city-loc-8)
       (= (road-length city-loc-43 city-loc-8) 17)
       (road city-loc-8 city-loc-43)
       (= (road-length city-loc-8 city-loc-43) 17)
       (road city-loc-43 city-loc-34)
       (= (road-length city-loc-43 city-loc-34) 14)
       (road city-loc-34 city-loc-43)
       (= (road-length city-loc-34 city-loc-43) 14)
       (road city-loc-44 city-loc-13)
       (= (road-length city-loc-44 city-loc-13) 16)
       (road city-loc-13 city-loc-44)
       (= (road-length city-loc-13 city-loc-44) 16)
       (road city-loc-44 city-loc-18)
       (= (road-length city-loc-44 city-loc-18) 17)
       (road city-loc-18 city-loc-44)
       (= (road-length city-loc-18 city-loc-44) 17)
       (road city-loc-44 city-loc-22)
       (= (road-length city-loc-44 city-loc-22) 14)
       (road city-loc-22 city-loc-44)
       (= (road-length city-loc-22 city-loc-44) 14)
       (road city-loc-44 city-loc-38)
       (= (road-length city-loc-44 city-loc-38) 11)
       (road city-loc-38 city-loc-44)
       (= (road-length city-loc-38 city-loc-44) 11)
       (road city-loc-45 city-loc-2)
       (= (road-length city-loc-45 city-loc-2) 14)
       (road city-loc-2 city-loc-45)
       (= (road-length city-loc-2 city-loc-45) 14)
       (road city-loc-45 city-loc-14)
       (= (road-length city-loc-45 city-loc-14) 15)
       (road city-loc-14 city-loc-45)
       (= (road-length city-loc-14 city-loc-45) 15)
       (road city-loc-45 city-loc-19)
       (= (road-length city-loc-45 city-loc-19) 11)
       (road city-loc-19 city-loc-45)
       (= (road-length city-loc-19 city-loc-45) 11)
       (road city-loc-45 city-loc-28)
       (= (road-length city-loc-45 city-loc-28) 14)
       (road city-loc-28 city-loc-45)
       (= (road-length city-loc-28 city-loc-45) 14)
       (road city-loc-46 city-loc-6)
       (= (road-length city-loc-46 city-loc-6) 12)
       (road city-loc-6 city-loc-46)
       (= (road-length city-loc-6 city-loc-46) 12)
       (road city-loc-46 city-loc-19)
       (= (road-length city-loc-46 city-loc-19) 13)
       (road city-loc-19 city-loc-46)
       (= (road-length city-loc-19 city-loc-46) 13)
       (road city-loc-46 city-loc-28)
       (= (road-length city-loc-46 city-loc-28) 13)
       (road city-loc-28 city-loc-46)
       (= (road-length city-loc-28 city-loc-46) 13)
       (road city-loc-47 city-loc-13)
       (= (road-length city-loc-47 city-loc-13) 12)
       (road city-loc-13 city-loc-47)
       (= (road-length city-loc-13 city-loc-47) 12)
       (road city-loc-47 city-loc-18)
       (= (road-length city-loc-47 city-loc-18) 11)
       (road city-loc-18 city-loc-47)
       (= (road-length city-loc-18 city-loc-47) 11)
       (road city-loc-47 city-loc-22)
       (= (road-length city-loc-47 city-loc-22) 17)
       (road city-loc-22 city-loc-47)
       (= (road-length city-loc-22 city-loc-47) 17)
       (road city-loc-47 city-loc-38)
       (= (road-length city-loc-47 city-loc-38) 13)
       (road city-loc-38 city-loc-47)
       (= (road-length city-loc-38 city-loc-47) 13)
       (road city-loc-47 city-loc-44)
       (= (road-length city-loc-47 city-loc-44) 11)
       (road city-loc-44 city-loc-47)
       (= (road-length city-loc-44 city-loc-47) 11)
       (road city-loc-48 city-loc-4)
       (= (road-length city-loc-48 city-loc-4) 14)
       (road city-loc-4 city-loc-48)
       (= (road-length city-loc-4 city-loc-48) 14)
       (road city-loc-48 city-loc-13)
       (= (road-length city-loc-48 city-loc-13) 19)
       (road city-loc-13 city-loc-48)
       (= (road-length city-loc-13 city-loc-48) 19)
       (road city-loc-48 city-loc-18)
       (= (road-length city-loc-48 city-loc-18) 13)
       (road city-loc-18 city-loc-48)
       (= (road-length city-loc-18 city-loc-48) 13)
       (road city-loc-48 city-loc-37)
       (= (road-length city-loc-48 city-loc-37) 16)
       (road city-loc-37 city-loc-48)
       (= (road-length city-loc-37 city-loc-48) 16)
       (road city-loc-48 city-loc-47)
       (= (road-length city-loc-48 city-loc-47) 13)
       (road city-loc-47 city-loc-48)
       (= (road-length city-loc-47 city-loc-48) 13)
       (road city-loc-49 city-loc-3)
       (= (road-length city-loc-49 city-loc-3) 16)
       (road city-loc-3 city-loc-49)
       (= (road-length city-loc-3 city-loc-49) 16)
       (road city-loc-49 city-loc-25)
       (= (road-length city-loc-49 city-loc-25) 13)
       (road city-loc-25 city-loc-49)
       (= (road-length city-loc-25 city-loc-49) 13)
       (road city-loc-49 city-loc-27)
       (= (road-length city-loc-49 city-loc-27) 14)
       (road city-loc-27 city-loc-49)
       (= (road-length city-loc-27 city-loc-49) 14)
       (road city-loc-49 city-loc-35)
       (= (road-length city-loc-49 city-loc-35) 13)
       (road city-loc-35 city-loc-49)
       (= (road-length city-loc-35 city-loc-49) 13)
       (road city-loc-50 city-loc-2)
       (= (road-length city-loc-50 city-loc-2) 15)
       (road city-loc-2 city-loc-50)
       (= (road-length city-loc-2 city-loc-50) 15)
       (road city-loc-50 city-loc-34)
       (= (road-length city-loc-50 city-loc-34) 18)
       (road city-loc-34 city-loc-50)
       (= (road-length city-loc-34 city-loc-50) 18)
       (road city-loc-50 city-loc-43)
       (= (road-length city-loc-50 city-loc-43) 12)
       (road city-loc-43 city-loc-50)
       (= (road-length city-loc-43 city-loc-50) 12)
       (at package-1 city-loc-14)
       (at package-2 city-loc-46)
       (at package-3 city-loc-34)
       (at package-4 city-loc-15)
       (at package-5 city-loc-14)
       (at package-6 city-loc-31)
       (at package-7 city-loc-42)
       (at package-8 city-loc-3)
       (at package-9 city-loc-20)
       (at package-10 city-loc-5)
       (at package-11 city-loc-24)
       (at package-12 city-loc-10)
       (at package-13 city-loc-41)
       (at package-14 city-loc-19)
       (at package-15 city-loc-6)
       (at package-16 city-loc-18)
       (at package-17 city-loc-45)
       (at package-18 city-loc-6)
       (at package-19 city-loc-15)
       (at package-20 city-loc-42)
       (at package-21 city-loc-49)
       (at package-22 city-loc-9)
       (at-truck truck-1 city-loc-21)
       (capacity truck-1 capacity-2))
  (:goal (and 
       (at package-22 city-loc-31)
       (at package-21 city-loc-11)
       (at package-20 city-loc-11)
       (at package-19 city-loc-29)
       (at package-18 city-loc-28)
       (at package-17 city-loc-26)
       (at package-16 city-loc-4)
       (at package-15 city-loc-4)
       (at package-14 city-loc-6)
       (at package-13 city-loc-13)
       (at package-12 city-loc-3)
       (at package-11 city-loc-25)
       (at package-10 city-loc-6)
       (at package-9 city-loc-34)
       (at package-8 city-loc-15)
       (at package-7 city-loc-11)
       (at package-6 city-loc-1)
       (at package-5 city-loc-36)
       (at package-4 city-loc-16)
       (at package-3 city-loc-45)
       (at package-2 city-loc-41)
       (at package-1 city-loc-6))))