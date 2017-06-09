(define (problem p01-ma) (:domain transport)
  (:objects capacity-4 capacity-3 capacity-2 capacity-1 capacity-0 - capacity-number
             package-16 package-15 package-14 package-13 package-12 package-11 package-10 package-9 package-8 package-7 package-6 package-5 package-4 package-3 package-2 package-1 - package
             truck-1 - vehicle
             city-loc-40 city-loc-39 city-loc-38 city-loc-37 city-loc-36 city-loc-35 city-loc-34 city-loc-33 city-loc-32 city-loc-31 city-loc-30 city-loc-29 city-loc-28 city-loc-27 city-loc-26 city-loc-25 city-loc-24 city-loc-23 city-loc-22 city-loc-21 city-loc-20 city-loc-19 city-loc-18 city-loc-17 city-loc-16 city-loc-15 city-loc-14 city-loc-13 city-loc-12 city-loc-11 city-loc-10 city-loc-9 city-loc-8 city-loc-7 city-loc-6 city-loc-5 city-loc-4 city-loc-3 city-loc-2 city-loc-1 - location
            )
  (:init
       (= (total-cost) 0)
       (capacity-predecessor capacity-0 capacity-1)
       (capacity-predecessor capacity-1 capacity-2)
       (capacity-predecessor capacity-2 capacity-3)
       (capacity-predecessor capacity-3 capacity-4)
       (road city-loc-3 city-loc-1)
       (= (road-length city-loc-3 city-loc-1) 13)
       (road city-loc-1 city-loc-3)
       (= (road-length city-loc-1 city-loc-3) 13)
       (road city-loc-4 city-loc-3)
       (= (road-length city-loc-4 city-loc-3) 21)
       (road city-loc-3 city-loc-4)
       (= (road-length city-loc-3 city-loc-4) 21)
       (road city-loc-5 city-loc-1)
       (= (road-length city-loc-5 city-loc-1) 19)
       (road city-loc-1 city-loc-5)
       (= (road-length city-loc-1 city-loc-5) 19)
       (road city-loc-5 city-loc-3)
       (= (road-length city-loc-5 city-loc-3) 17)
       (road city-loc-3 city-loc-5)
       (= (road-length city-loc-3 city-loc-5) 17)
       (road city-loc-7 city-loc-2)
       (= (road-length city-loc-7 city-loc-2) 15)
       (road city-loc-2 city-loc-7)
       (= (road-length city-loc-2 city-loc-7) 15)
       (road city-loc-8 city-loc-2)
       (= (road-length city-loc-8 city-loc-2) 19)
       (road city-loc-2 city-loc-8)
       (= (road-length city-loc-2 city-loc-8) 19)
       (road city-loc-8 city-loc-7)
       (= (road-length city-loc-8 city-loc-7) 15)
       (road city-loc-7 city-loc-8)
       (= (road-length city-loc-7 city-loc-8) 15)
       (road city-loc-10 city-loc-9)
       (= (road-length city-loc-10 city-loc-9) 13)
       (road city-loc-9 city-loc-10)
       (= (road-length city-loc-9 city-loc-10) 13)
       (road city-loc-12 city-loc-9)
       (= (road-length city-loc-12 city-loc-9) 16)
       (road city-loc-9 city-loc-12)
       (= (road-length city-loc-9 city-loc-12) 16)
       (road city-loc-13 city-loc-1)
       (= (road-length city-loc-13 city-loc-1) 15)
       (road city-loc-1 city-loc-13)
       (= (road-length city-loc-1 city-loc-13) 15)
       (road city-loc-13 city-loc-5)
       (= (road-length city-loc-13 city-loc-5) 20)
       (road city-loc-5 city-loc-13)
       (= (road-length city-loc-5 city-loc-13) 20)
       (road city-loc-14 city-loc-6)
       (= (road-length city-loc-14 city-loc-6) 18)
       (road city-loc-6 city-loc-14)
       (= (road-length city-loc-6 city-loc-14) 18)
       (road city-loc-15 city-loc-5)
       (= (road-length city-loc-15 city-loc-5) 22)
       (road city-loc-5 city-loc-15)
       (= (road-length city-loc-5 city-loc-15) 22)
       (road city-loc-15 city-loc-6)
       (= (road-length city-loc-15 city-loc-6) 15)
       (road city-loc-6 city-loc-15)
       (= (road-length city-loc-6 city-loc-15) 15)
       (road city-loc-16 city-loc-11)
       (= (road-length city-loc-16 city-loc-11) 16)
       (road city-loc-11 city-loc-16)
       (= (road-length city-loc-11 city-loc-16) 16)
       (road city-loc-17 city-loc-2)
       (= (road-length city-loc-17 city-loc-2) 12)
       (road city-loc-2 city-loc-17)
       (= (road-length city-loc-2 city-loc-17) 12)
       (road city-loc-17 city-loc-7)
       (= (road-length city-loc-17 city-loc-7) 21)
       (road city-loc-7 city-loc-17)
       (= (road-length city-loc-7 city-loc-17) 21)
       (road city-loc-17 city-loc-8)
       (= (road-length city-loc-17 city-loc-8) 15)
       (road city-loc-8 city-loc-17)
       (= (road-length city-loc-8 city-loc-17) 15)
       (road city-loc-18 city-loc-5)
       (= (road-length city-loc-18 city-loc-5) 18)
       (road city-loc-5 city-loc-18)
       (= (road-length city-loc-5 city-loc-18) 18)
       (road city-loc-19 city-loc-6)
       (= (road-length city-loc-19 city-loc-6) 21)
       (road city-loc-6 city-loc-19)
       (= (road-length city-loc-6 city-loc-19) 21)
       (road city-loc-19 city-loc-11)
       (= (road-length city-loc-19 city-loc-11) 20)
       (road city-loc-11 city-loc-19)
       (= (road-length city-loc-11 city-loc-19) 20)
       (road city-loc-19 city-loc-14)
       (= (road-length city-loc-19 city-loc-14) 13)
       (road city-loc-14 city-loc-19)
       (= (road-length city-loc-14 city-loc-19) 13)
       (road city-loc-19 city-loc-16)
       (= (road-length city-loc-19 city-loc-16) 19)
       (road city-loc-16 city-loc-19)
       (= (road-length city-loc-16 city-loc-19) 19)
       (road city-loc-20 city-loc-6)
       (= (road-length city-loc-20 city-loc-6) 22)
       (road city-loc-6 city-loc-20)
       (= (road-length city-loc-6 city-loc-20) 22)
       (road city-loc-20 city-loc-15)
       (= (road-length city-loc-20 city-loc-15) 15)
       (road city-loc-15 city-loc-20)
       (= (road-length city-loc-15 city-loc-20) 15)
       (road city-loc-21 city-loc-13)
       (= (road-length city-loc-21 city-loc-13) 19)
       (road city-loc-13 city-loc-21)
       (= (road-length city-loc-13 city-loc-21) 19)
       (road city-loc-22 city-loc-9)
       (= (road-length city-loc-22 city-loc-9) 21)
       (road city-loc-9 city-loc-22)
       (= (road-length city-loc-9 city-loc-22) 21)
       (road city-loc-22 city-loc-10)
       (= (road-length city-loc-22 city-loc-10) 12)
       (road city-loc-10 city-loc-22)
       (= (road-length city-loc-10 city-loc-22) 12)
       (road city-loc-24 city-loc-2)
       (= (road-length city-loc-24 city-loc-2) 12)
       (road city-loc-2 city-loc-24)
       (= (road-length city-loc-2 city-loc-24) 12)
       (road city-loc-24 city-loc-4)
       (= (road-length city-loc-24 city-loc-4) 14)
       (road city-loc-4 city-loc-24)
       (= (road-length city-loc-4 city-loc-24) 14)
       (road city-loc-24 city-loc-17)
       (= (road-length city-loc-24 city-loc-17) 21)
       (road city-loc-17 city-loc-24)
       (= (road-length city-loc-17 city-loc-24) 21)
       (road city-loc-25 city-loc-14)
       (= (road-length city-loc-25 city-loc-14) 12)
       (road city-loc-14 city-loc-25)
       (= (road-length city-loc-14 city-loc-25) 12)
       (road city-loc-25 city-loc-19)
       (= (road-length city-loc-25 city-loc-19) 22)
       (road city-loc-19 city-loc-25)
       (= (road-length city-loc-19 city-loc-25) 22)
       (road city-loc-25 city-loc-21)
       (= (road-length city-loc-25 city-loc-21) 16)
       (road city-loc-21 city-loc-25)
       (= (road-length city-loc-21 city-loc-25) 16)
       (road city-loc-26 city-loc-6)
       (= (road-length city-loc-26 city-loc-6) 20)
       (road city-loc-6 city-loc-26)
       (= (road-length city-loc-6 city-loc-26) 20)
       (road city-loc-26 city-loc-13)
       (= (road-length city-loc-26 city-loc-13) 17)
       (road city-loc-13 city-loc-26)
       (= (road-length city-loc-13 city-loc-26) 17)
       (road city-loc-26 city-loc-14)
       (= (road-length city-loc-26 city-loc-14) 12)
       (road city-loc-14 city-loc-26)
       (= (road-length city-loc-14 city-loc-26) 12)
       (road city-loc-26 city-loc-21)
       (= (road-length city-loc-26 city-loc-21) 19)
       (road city-loc-21 city-loc-26)
       (= (road-length city-loc-21 city-loc-26) 19)
       (road city-loc-26 city-loc-25)
       (= (road-length city-loc-26 city-loc-25) 11)
       (road city-loc-25 city-loc-26)
       (= (road-length city-loc-25 city-loc-26) 11)
       (road city-loc-27 city-loc-21)
       (= (road-length city-loc-27 city-loc-21) 21)
       (road city-loc-21 city-loc-27)
       (= (road-length city-loc-21 city-loc-27) 21)
       (road city-loc-28 city-loc-3)
       (= (road-length city-loc-28 city-loc-3) 12)
       (road city-loc-3 city-loc-28)
       (= (road-length city-loc-3 city-loc-28) 12)
       (road city-loc-28 city-loc-4)
       (= (road-length city-loc-28 city-loc-4) 21)
       (road city-loc-4 city-loc-28)
       (= (road-length city-loc-4 city-loc-28) 21)
       (road city-loc-28 city-loc-5)
       (= (road-length city-loc-28 city-loc-5) 17)
       (road city-loc-5 city-loc-28)
       (= (road-length city-loc-5 city-loc-28) 17)
       (road city-loc-28 city-loc-18)
       (= (road-length city-loc-28 city-loc-18) 16)
       (road city-loc-18 city-loc-28)
       (= (road-length city-loc-18 city-loc-28) 16)
       (road city-loc-29 city-loc-7)
       (= (road-length city-loc-29 city-loc-7) 14)
       (road city-loc-7 city-loc-29)
       (= (road-length city-loc-7 city-loc-29) 14)
       (road city-loc-29 city-loc-8)
       (= (road-length city-loc-29 city-loc-8) 12)
       (road city-loc-8 city-loc-29)
       (= (road-length city-loc-8 city-loc-29) 12)
       (road city-loc-29 city-loc-23)
       (= (road-length city-loc-29 city-loc-23) 16)
       (road city-loc-23 city-loc-29)
       (= (road-length city-loc-23 city-loc-29) 16)
       (road city-loc-30 city-loc-20)
       (= (road-length city-loc-30 city-loc-20) 18)
       (road city-loc-20 city-loc-30)
       (= (road-length city-loc-20 city-loc-30) 18)
       (road city-loc-30 city-loc-22)
       (= (road-length city-loc-30 city-loc-22) 13)
       (road city-loc-22 city-loc-30)
       (= (road-length city-loc-22 city-loc-30) 13)
       (road city-loc-31 city-loc-1)
       (= (road-length city-loc-31 city-loc-1) 14)
       (road city-loc-1 city-loc-31)
       (= (road-length city-loc-1 city-loc-31) 14)
       (road city-loc-31 city-loc-3)
       (= (road-length city-loc-31 city-loc-3) 12)
       (road city-loc-3 city-loc-31)
       (= (road-length city-loc-3 city-loc-31) 12)
       (road city-loc-31 city-loc-4)
       (= (road-length city-loc-31 city-loc-4) 21)
       (road city-loc-4 city-loc-31)
       (= (road-length city-loc-4 city-loc-31) 21)
       (road city-loc-32 city-loc-20)
       (= (road-length city-loc-32 city-loc-20) 18)
       (road city-loc-20 city-loc-32)
       (= (road-length city-loc-20 city-loc-32) 18)
       (road city-loc-33 city-loc-9)
       (= (road-length city-loc-33 city-loc-9) 15)
       (road city-loc-9 city-loc-33)
       (= (road-length city-loc-9 city-loc-33) 15)
       (road city-loc-33 city-loc-10)
       (= (road-length city-loc-33 city-loc-10) 19)
       (road city-loc-10 city-loc-33)
       (= (road-length city-loc-10 city-loc-33) 19)
       (road city-loc-33 city-loc-12)
       (= (road-length city-loc-33 city-loc-12) 12)
       (road city-loc-12 city-loc-33)
       (= (road-length city-loc-12 city-loc-33) 12)
       (road city-loc-33 city-loc-22)
       (= (road-length city-loc-33 city-loc-22) 19)
       (road city-loc-22 city-loc-33)
       (= (road-length city-loc-22 city-loc-33) 19)
       (road city-loc-33 city-loc-30)
       (= (road-length city-loc-33 city-loc-30) 18)
       (road city-loc-30 city-loc-33)
       (= (road-length city-loc-30 city-loc-33) 18)
       (road city-loc-34 city-loc-11)
       (= (road-length city-loc-34 city-loc-11) 15)
       (road city-loc-11 city-loc-34)
       (= (road-length city-loc-11 city-loc-34) 15)
       (road city-loc-34 city-loc-32)
       (= (road-length city-loc-34 city-loc-32) 15)
       (road city-loc-32 city-loc-34)
       (= (road-length city-loc-32 city-loc-34) 15)
       (road city-loc-35 city-loc-15)
       (= (road-length city-loc-35 city-loc-15) 17)
       (road city-loc-15 city-loc-35)
       (= (road-length city-loc-15 city-loc-35) 17)
       (road city-loc-35 city-loc-18)
       (= (road-length city-loc-35 city-loc-18) 14)
       (road city-loc-18 city-loc-35)
       (= (road-length city-loc-18 city-loc-35) 14)
       (road city-loc-35 city-loc-20)
       (= (road-length city-loc-35 city-loc-20) 21)
       (road city-loc-20 city-loc-35)
       (= (road-length city-loc-20 city-loc-35) 21)
       (road city-loc-36 city-loc-12)
       (= (road-length city-loc-36 city-loc-12) 19)
       (road city-loc-12 city-loc-36)
       (= (road-length city-loc-12 city-loc-36) 19)
       (road city-loc-36 city-loc-30)
       (= (road-length city-loc-36 city-loc-30) 15)
       (road city-loc-30 city-loc-36)
       (= (road-length city-loc-30 city-loc-36) 15)
       (road city-loc-36 city-loc-33)
       (= (road-length city-loc-36 city-loc-33) 11)
       (road city-loc-33 city-loc-36)
       (= (road-length city-loc-33 city-loc-36) 11)
       (road city-loc-37 city-loc-1)
       (= (road-length city-loc-37 city-loc-1) 18)
       (road city-loc-1 city-loc-37)
       (= (road-length city-loc-1 city-loc-37) 18)
       (road city-loc-37 city-loc-27)
       (= (road-length city-loc-37 city-loc-27) 20)
       (road city-loc-27 city-loc-37)
       (= (road-length city-loc-27 city-loc-37) 20)
       (road city-loc-37 city-loc-31)
       (= (road-length city-loc-37 city-loc-31) 15)
       (road city-loc-31 city-loc-37)
       (= (road-length city-loc-31 city-loc-37) 15)
       (road city-loc-38 city-loc-10)
       (= (road-length city-loc-38 city-loc-10) 14)
       (road city-loc-10 city-loc-38)
       (= (road-length city-loc-10 city-loc-38) 14)
       (road city-loc-38 city-loc-22)
       (= (road-length city-loc-38 city-loc-22) 16)
       (road city-loc-22 city-loc-38)
       (= (road-length city-loc-22 city-loc-38) 16)
       (road city-loc-38 city-loc-23)
       (= (road-length city-loc-38 city-loc-23) 13)
       (road city-loc-23 city-loc-38)
       (= (road-length city-loc-23 city-loc-38) 13)
       (road city-loc-39 city-loc-2)
       (= (road-length city-loc-39 city-loc-2) 14)
       (road city-loc-2 city-loc-39)
       (= (road-length city-loc-2 city-loc-39) 14)
       (road city-loc-39 city-loc-4)
       (= (road-length city-loc-39 city-loc-4) 20)
       (road city-loc-4 city-loc-39)
       (= (road-length city-loc-4 city-loc-39) 20)
       (road city-loc-39 city-loc-7)
       (= (road-length city-loc-39 city-loc-7) 19)
       (road city-loc-7 city-loc-39)
       (= (road-length city-loc-7 city-loc-39) 19)
       (road city-loc-39 city-loc-18)
       (= (road-length city-loc-39 city-loc-18) 21)
       (road city-loc-18 city-loc-39)
       (= (road-length city-loc-18 city-loc-39) 21)
       (road city-loc-39 city-loc-24)
       (= (road-length city-loc-39 city-loc-24) 13)
       (road city-loc-24 city-loc-39)
       (= (road-length city-loc-24 city-loc-39) 13)
       (road city-loc-39 city-loc-28)
       (= (road-length city-loc-39 city-loc-28) 14)
       (road city-loc-28 city-loc-39)
       (= (road-length city-loc-28 city-loc-39) 14)
       (road city-loc-40 city-loc-22)
       (= (road-length city-loc-40 city-loc-22) 12)
       (road city-loc-22 city-loc-40)
       (= (road-length city-loc-22 city-loc-40) 12)
       (road city-loc-40 city-loc-30)
       (= (road-length city-loc-40 city-loc-30) 17)
       (road city-loc-30 city-loc-40)
       (= (road-length city-loc-30 city-loc-40) 17)
       (road city-loc-40 city-loc-35)
       (= (road-length city-loc-40 city-loc-35) 14)
       (road city-loc-35 city-loc-40)
       (= (road-length city-loc-35 city-loc-40) 14)
       (road city-loc-40 city-loc-38)
       (= (road-length city-loc-40 city-loc-38) 19)
       (road city-loc-38 city-loc-40)
       (= (road-length city-loc-38 city-loc-40) 19)
       (at package-1 city-loc-34)
       (at package-2 city-loc-33)
       (at package-3 city-loc-4)
       (at package-4 city-loc-33)
       (at package-5 city-loc-27)
       (at package-6 city-loc-32)
       (at package-7 city-loc-20)
       (at package-8 city-loc-33)
       (at package-9 city-loc-15)
       (at package-10 city-loc-12)
       (at package-11 city-loc-4)
       (at package-12 city-loc-18)
       (at package-13 city-loc-38)
       (at package-14 city-loc-35)
       (at package-15 city-loc-31)
       (at package-16 city-loc-33)
       (at-truck truck-1 city-loc-2)
       (capacity truck-1 capacity-4))
  (:goal (and 
       (at package-16 city-loc-31)
       (at package-15 city-loc-12)
       (at package-14 city-loc-36)
       (at package-13 city-loc-35)
       (at package-12 city-loc-32)
       (at package-11 city-loc-6)
       (at package-10 city-loc-28)
       (at package-9 city-loc-4)
       (at package-8 city-loc-26)
       (at package-7 city-loc-22)
       (at package-6 city-loc-36)
       (at package-5 city-loc-37)
       (at package-4 city-loc-4)
       (at package-3 city-loc-16)
       (at package-2 city-loc-6)
       (at package-1 city-loc-35))))