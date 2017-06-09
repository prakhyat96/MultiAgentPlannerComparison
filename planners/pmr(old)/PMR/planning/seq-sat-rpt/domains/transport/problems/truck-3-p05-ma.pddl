(define (problem p05-ma) (:domain transport)
  (:objects capacity-4 capacity-3 capacity-2 capacity-1 capacity-0 - capacity-number
             package-14 package-13 package-12 package-11 package-10 package-9 package-8 package-7 package-6 package-5 package-4 package-3 package-2 package-1 - package
             truck-3 - vehicle
             city-2-loc-21 city-1-loc-21 city-2-loc-20 city-1-loc-20 city-2-loc-19 city-1-loc-19 city-2-loc-18 city-1-loc-18 city-2-loc-17 city-1-loc-17 city-2-loc-16 city-1-loc-16 city-2-loc-15 city-1-loc-15 city-2-loc-14 city-1-loc-14 city-2-loc-13 city-1-loc-13 city-2-loc-12 city-1-loc-12 city-2-loc-11 city-1-loc-11 city-2-loc-10 city-1-loc-10 city-2-loc-9 city-1-loc-9 city-2-loc-8 city-1-loc-8 city-2-loc-7 city-1-loc-7 city-2-loc-6 city-1-loc-6 city-2-loc-5 city-1-loc-5 city-2-loc-4 city-1-loc-4 city-2-loc-3 city-1-loc-3 city-2-loc-2 city-1-loc-2 city-2-loc-1 city-1-loc-1 - location
            )
  (:init
       (= (total-cost) 0)
       (capacity-predecessor capacity-0 capacity-1)
       (capacity-predecessor capacity-1 capacity-2)
       (capacity-predecessor capacity-2 capacity-3)
       (capacity-predecessor capacity-3 capacity-4)
       (road city-1-loc-3 city-1-loc-1)
       (= (road-length city-1-loc-3 city-1-loc-1) 22)
       (road city-1-loc-1 city-1-loc-3)
       (= (road-length city-1-loc-1 city-1-loc-3) 22)
       (road city-1-loc-4 city-1-loc-1)
       (= (road-length city-1-loc-4 city-1-loc-1) 26)
       (road city-1-loc-1 city-1-loc-4)
       (= (road-length city-1-loc-1 city-1-loc-4) 26)
       (road city-1-loc-5 city-1-loc-4)
       (= (road-length city-1-loc-5 city-1-loc-4) 12)
       (road city-1-loc-4 city-1-loc-5)
       (= (road-length city-1-loc-4 city-1-loc-5) 12)
       (road city-1-loc-6 city-1-loc-2)
       (= (road-length city-1-loc-6 city-1-loc-2) 19)
       (road city-1-loc-2 city-1-loc-6)
       (= (road-length city-1-loc-2 city-1-loc-6) 19)
       (road city-1-loc-7 city-1-loc-1)
       (= (road-length city-1-loc-7 city-1-loc-1) 15)
       (road city-1-loc-1 city-1-loc-7)
       (= (road-length city-1-loc-1 city-1-loc-7) 15)
       (road city-1-loc-7 city-1-loc-3)
       (= (road-length city-1-loc-7 city-1-loc-3) 16)
       (road city-1-loc-3 city-1-loc-7)
       (= (road-length city-1-loc-3 city-1-loc-7) 16)
       (road city-1-loc-9 city-1-loc-6)
       (= (road-length city-1-loc-9 city-1-loc-6) 28)
       (road city-1-loc-6 city-1-loc-9)
       (= (road-length city-1-loc-6 city-1-loc-9) 28)
       (road city-1-loc-10 city-1-loc-3)
       (= (road-length city-1-loc-10 city-1-loc-3) 25)
       (road city-1-loc-3 city-1-loc-10)
       (= (road-length city-1-loc-3 city-1-loc-10) 25)
       (road city-1-loc-10 city-1-loc-7)
       (= (road-length city-1-loc-10 city-1-loc-7) 18)
       (road city-1-loc-7 city-1-loc-10)
       (= (road-length city-1-loc-7 city-1-loc-10) 18)
       (road city-1-loc-10 city-1-loc-8)
       (= (road-length city-1-loc-10 city-1-loc-8) 24)
       (road city-1-loc-8 city-1-loc-10)
       (= (road-length city-1-loc-8 city-1-loc-10) 24)
       (road city-1-loc-11 city-1-loc-9)
       (= (road-length city-1-loc-11 city-1-loc-9) 24)
       (road city-1-loc-9 city-1-loc-11)
       (= (road-length city-1-loc-9 city-1-loc-11) 24)
       (road city-1-loc-12 city-1-loc-1)
       (= (road-length city-1-loc-12 city-1-loc-1) 29)
       (road city-1-loc-1 city-1-loc-12)
       (= (road-length city-1-loc-1 city-1-loc-12) 29)
       (road city-1-loc-12 city-1-loc-3)
       (= (road-length city-1-loc-12 city-1-loc-3) 23)
       (road city-1-loc-3 city-1-loc-12)
       (= (road-length city-1-loc-3 city-1-loc-12) 23)
       (road city-1-loc-13 city-1-loc-9)
       (= (road-length city-1-loc-13 city-1-loc-9) 29)
       (road city-1-loc-9 city-1-loc-13)
       (= (road-length city-1-loc-9 city-1-loc-13) 29)
       (road city-1-loc-13 city-1-loc-11)
       (= (road-length city-1-loc-13 city-1-loc-11) 13)
       (road city-1-loc-11 city-1-loc-13)
       (= (road-length city-1-loc-11 city-1-loc-13) 13)
       (road city-1-loc-14 city-1-loc-4)
       (= (road-length city-1-loc-14 city-1-loc-4) 13)
       (road city-1-loc-4 city-1-loc-14)
       (= (road-length city-1-loc-4 city-1-loc-14) 13)
       (road city-1-loc-14 city-1-loc-5)
       (= (road-length city-1-loc-14 city-1-loc-5) 18)
       (road city-1-loc-5 city-1-loc-14)
       (= (road-length city-1-loc-5 city-1-loc-14) 18)
       (road city-1-loc-14 city-1-loc-8)
       (= (road-length city-1-loc-14 city-1-loc-8) 25)
       (road city-1-loc-8 city-1-loc-14)
       (= (road-length city-1-loc-8 city-1-loc-14) 25)
       (road city-1-loc-15 city-1-loc-9)
       (= (road-length city-1-loc-15 city-1-loc-9) 15)
       (road city-1-loc-9 city-1-loc-15)
       (= (road-length city-1-loc-9 city-1-loc-15) 15)
       (road city-1-loc-15 city-1-loc-11)
       (= (road-length city-1-loc-15 city-1-loc-11) 12)
       (road city-1-loc-11 city-1-loc-15)
       (= (road-length city-1-loc-11 city-1-loc-15) 12)
       (road city-1-loc-15 city-1-loc-13)
       (= (road-length city-1-loc-15 city-1-loc-13) 22)
       (road city-1-loc-13 city-1-loc-15)
       (= (road-length city-1-loc-13 city-1-loc-15) 22)
       (road city-1-loc-16 city-1-loc-11)
       (= (road-length city-1-loc-16 city-1-loc-11) 16)
       (road city-1-loc-11 city-1-loc-16)
       (= (road-length city-1-loc-11 city-1-loc-16) 16)
       (road city-1-loc-16 city-1-loc-13)
       (= (road-length city-1-loc-16 city-1-loc-13) 20)
       (road city-1-loc-13 city-1-loc-16)
       (= (road-length city-1-loc-13 city-1-loc-16) 20)
       (road city-1-loc-16 city-1-loc-15)
       (= (road-length city-1-loc-16 city-1-loc-15) 27)
       (road city-1-loc-15 city-1-loc-16)
       (= (road-length city-1-loc-15 city-1-loc-16) 27)
       (road city-1-loc-17 city-1-loc-8)
       (= (road-length city-1-loc-17 city-1-loc-8) 16)
       (road city-1-loc-8 city-1-loc-17)
       (= (road-length city-1-loc-8 city-1-loc-17) 16)
       (road city-1-loc-17 city-1-loc-10)
       (= (road-length city-1-loc-17 city-1-loc-10) 21)
       (road city-1-loc-10 city-1-loc-17)
       (= (road-length city-1-loc-10 city-1-loc-17) 21)
       (road city-1-loc-17 city-1-loc-11)
       (= (road-length city-1-loc-17 city-1-loc-11) 26)
       (road city-1-loc-11 city-1-loc-17)
       (= (road-length city-1-loc-11 city-1-loc-17) 26)
       (road city-1-loc-17 city-1-loc-15)
       (= (road-length city-1-loc-17 city-1-loc-15) 22)
       (road city-1-loc-15 city-1-loc-17)
       (= (road-length city-1-loc-15 city-1-loc-17) 22)
       (road city-1-loc-18 city-1-loc-9)
       (= (road-length city-1-loc-18 city-1-loc-9) 25)
       (road city-1-loc-9 city-1-loc-18)
       (= (road-length city-1-loc-9 city-1-loc-18) 25)
       (road city-1-loc-18 city-1-loc-13)
       (= (road-length city-1-loc-18 city-1-loc-13) 24)
       (road city-1-loc-13 city-1-loc-18)
       (= (road-length city-1-loc-13 city-1-loc-18) 24)
       (road city-1-loc-19 city-1-loc-12)
       (= (road-length city-1-loc-19 city-1-loc-12) 28)
       (road city-1-loc-12 city-1-loc-19)
       (= (road-length city-1-loc-12 city-1-loc-19) 28)
       (road city-1-loc-20 city-1-loc-2)
       (= (road-length city-1-loc-20 city-1-loc-2) 26)
       (road city-1-loc-2 city-1-loc-20)
       (= (road-length city-1-loc-2 city-1-loc-20) 26)
       (road city-1-loc-20 city-1-loc-18)
       (= (road-length city-1-loc-20 city-1-loc-18) 28)
       (road city-1-loc-18 city-1-loc-20)
       (= (road-length city-1-loc-18 city-1-loc-20) 28)
       (road city-1-loc-21 city-1-loc-6)
       (= (road-length city-1-loc-21 city-1-loc-6) 23)
       (road city-1-loc-6 city-1-loc-21)
       (= (road-length city-1-loc-6 city-1-loc-21) 23)
       (road city-1-loc-21 city-1-loc-9)
       (= (road-length city-1-loc-21 city-1-loc-9) 12)
       (road city-1-loc-9 city-1-loc-21)
       (= (road-length city-1-loc-9 city-1-loc-21) 12)
       (road city-1-loc-21 city-1-loc-10)
       (= (road-length city-1-loc-21 city-1-loc-10) 22)
       (road city-1-loc-10 city-1-loc-21)
       (= (road-length city-1-loc-10 city-1-loc-21) 22)
       (road city-1-loc-21 city-1-loc-15)
       (= (road-length city-1-loc-21 city-1-loc-15) 19)
       (road city-1-loc-15 city-1-loc-21)
       (= (road-length city-1-loc-15 city-1-loc-21) 19)
       (road city-1-loc-21 city-1-loc-17)
       (= (road-length city-1-loc-21 city-1-loc-17) 28)
       (road city-1-loc-17 city-1-loc-21)
       (= (road-length city-1-loc-17 city-1-loc-21) 28)
       (road city-2-loc-6 city-2-loc-2)
       (= (road-length city-2-loc-6 city-2-loc-2) 21)
       (road city-2-loc-2 city-2-loc-6)
       (= (road-length city-2-loc-2 city-2-loc-6) 21)
       (road city-2-loc-7 city-2-loc-5)
       (= (road-length city-2-loc-7 city-2-loc-5) 26)
       (road city-2-loc-5 city-2-loc-7)
       (= (road-length city-2-loc-5 city-2-loc-7) 26)
       (road city-2-loc-8 city-2-loc-1)
       (= (road-length city-2-loc-8 city-2-loc-1) 28)
       (road city-2-loc-1 city-2-loc-8)
       (= (road-length city-2-loc-1 city-2-loc-8) 28)
       (road city-2-loc-9 city-2-loc-3)
       (= (road-length city-2-loc-9 city-2-loc-3) 15)
       (road city-2-loc-3 city-2-loc-9)
       (= (road-length city-2-loc-3 city-2-loc-9) 15)
       (road city-2-loc-10 city-2-loc-2)
       (= (road-length city-2-loc-10 city-2-loc-2) 14)
       (road city-2-loc-2 city-2-loc-10)
       (= (road-length city-2-loc-2 city-2-loc-10) 14)
       (road city-2-loc-10 city-2-loc-8)
       (= (road-length city-2-loc-10 city-2-loc-8) 26)
       (road city-2-loc-8 city-2-loc-10)
       (= (road-length city-2-loc-8 city-2-loc-10) 26)
       (road city-2-loc-11 city-2-loc-3)
       (= (road-length city-2-loc-11 city-2-loc-3) 24)
       (road city-2-loc-3 city-2-loc-11)
       (= (road-length city-2-loc-3 city-2-loc-11) 24)
       (road city-2-loc-11 city-2-loc-9)
       (= (road-length city-2-loc-11 city-2-loc-9) 11)
       (road city-2-loc-9 city-2-loc-11)
       (= (road-length city-2-loc-9 city-2-loc-11) 11)
       (road city-2-loc-12 city-2-loc-8)
       (= (road-length city-2-loc-12 city-2-loc-8) 27)
       (road city-2-loc-8 city-2-loc-12)
       (= (road-length city-2-loc-8 city-2-loc-12) 27)
       (road city-2-loc-13 city-2-loc-9)
       (= (road-length city-2-loc-13 city-2-loc-9) 26)
       (road city-2-loc-9 city-2-loc-13)
       (= (road-length city-2-loc-9 city-2-loc-13) 26)
       (road city-2-loc-13 city-2-loc-11)
       (= (road-length city-2-loc-13 city-2-loc-11) 26)
       (road city-2-loc-11 city-2-loc-13)
       (= (road-length city-2-loc-11 city-2-loc-13) 26)
       (road city-2-loc-14 city-2-loc-3)
       (= (road-length city-2-loc-14 city-2-loc-3) 24)
       (road city-2-loc-3 city-2-loc-14)
       (= (road-length city-2-loc-3 city-2-loc-14) 24)
       (road city-2-loc-14 city-2-loc-9)
       (= (road-length city-2-loc-14 city-2-loc-9) 28)
       (road city-2-loc-9 city-2-loc-14)
       (= (road-length city-2-loc-9 city-2-loc-14) 28)
       (road city-2-loc-15 city-2-loc-8)
       (= (road-length city-2-loc-15 city-2-loc-8) 20)
       (road city-2-loc-8 city-2-loc-15)
       (= (road-length city-2-loc-8 city-2-loc-15) 20)
       (road city-2-loc-15 city-2-loc-12)
       (= (road-length city-2-loc-15 city-2-loc-12) 13)
       (road city-2-loc-12 city-2-loc-15)
       (= (road-length city-2-loc-12 city-2-loc-15) 13)
       (road city-2-loc-16 city-2-loc-9)
       (= (road-length city-2-loc-16 city-2-loc-9) 30)
       (road city-2-loc-9 city-2-loc-16)
       (= (road-length city-2-loc-9 city-2-loc-16) 30)
       (road city-2-loc-16 city-2-loc-13)
       (= (road-length city-2-loc-16 city-2-loc-13) 17)
       (road city-2-loc-13 city-2-loc-16)
       (= (road-length city-2-loc-13 city-2-loc-16) 17)
       (road city-2-loc-16 city-2-loc-14)
       (= (road-length city-2-loc-16 city-2-loc-14) 23)
       (road city-2-loc-14 city-2-loc-16)
       (= (road-length city-2-loc-14 city-2-loc-16) 23)
       (road city-2-loc-17 city-2-loc-14)
       (= (road-length city-2-loc-17 city-2-loc-14) 16)
       (road city-2-loc-14 city-2-loc-17)
       (= (road-length city-2-loc-14 city-2-loc-17) 16)
       (road city-2-loc-17 city-2-loc-15)
       (= (road-length city-2-loc-17 city-2-loc-15) 24)
       (road city-2-loc-15 city-2-loc-17)
       (= (road-length city-2-loc-15 city-2-loc-17) 24)
       (road city-2-loc-18 city-2-loc-2)
       (= (road-length city-2-loc-18 city-2-loc-2) 19)
       (road city-2-loc-2 city-2-loc-18)
       (= (road-length city-2-loc-2 city-2-loc-18) 19)
       (road city-2-loc-18 city-2-loc-6)
       (= (road-length city-2-loc-18 city-2-loc-6) 13)
       (road city-2-loc-6 city-2-loc-18)
       (= (road-length city-2-loc-6 city-2-loc-18) 13)
       (road city-2-loc-18 city-2-loc-10)
       (= (road-length city-2-loc-18 city-2-loc-10) 25)
       (road city-2-loc-10 city-2-loc-18)
       (= (road-length city-2-loc-10 city-2-loc-18) 25)
       (road city-2-loc-18 city-2-loc-17)
       (= (road-length city-2-loc-18 city-2-loc-17) 29)
       (road city-2-loc-17 city-2-loc-18)
       (= (road-length city-2-loc-17 city-2-loc-18) 29)
       (road city-2-loc-19 city-2-loc-12)
       (= (road-length city-2-loc-19 city-2-loc-12) 19)
       (road city-2-loc-12 city-2-loc-19)
       (= (road-length city-2-loc-12 city-2-loc-19) 19)
       (road city-2-loc-19 city-2-loc-14)
       (= (road-length city-2-loc-19 city-2-loc-14) 28)
       (road city-2-loc-14 city-2-loc-19)
       (= (road-length city-2-loc-14 city-2-loc-19) 28)
       (road city-2-loc-19 city-2-loc-15)
       (= (road-length city-2-loc-19 city-2-loc-15) 20)
       (road city-2-loc-15 city-2-loc-19)
       (= (road-length city-2-loc-15 city-2-loc-19) 20)
       (road city-2-loc-19 city-2-loc-16)
       (= (road-length city-2-loc-19 city-2-loc-16) 29)
       (road city-2-loc-16 city-2-loc-19)
       (= (road-length city-2-loc-16 city-2-loc-19) 29)
       (road city-2-loc-19 city-2-loc-17)
       (= (road-length city-2-loc-19 city-2-loc-17) 21)
       (road city-2-loc-17 city-2-loc-19)
       (= (road-length city-2-loc-17 city-2-loc-19) 21)
       (road city-2-loc-20 city-2-loc-4)
       (= (road-length city-2-loc-20 city-2-loc-4) 24)
       (road city-2-loc-4 city-2-loc-20)
       (= (road-length city-2-loc-4 city-2-loc-20) 24)
       (road city-2-loc-20 city-2-loc-7)
       (= (road-length city-2-loc-20 city-2-loc-7) 28)
       (road city-2-loc-7 city-2-loc-20)
       (= (road-length city-2-loc-7 city-2-loc-20) 28)
       (road city-2-loc-20 city-2-loc-12)
       (= (road-length city-2-loc-20 city-2-loc-12) 27)
       (road city-2-loc-12 city-2-loc-20)
       (= (road-length city-2-loc-12 city-2-loc-20) 27)
       (road city-2-loc-20 city-2-loc-19)
       (= (road-length city-2-loc-20 city-2-loc-19) 24)
       (road city-2-loc-19 city-2-loc-20)
       (= (road-length city-2-loc-19 city-2-loc-20) 24)
       (road city-2-loc-21 city-2-loc-2)
       (= (road-length city-2-loc-21 city-2-loc-2) 12)
       (road city-2-loc-2 city-2-loc-21)
       (= (road-length city-2-loc-2 city-2-loc-21) 12)
       (road city-2-loc-21 city-2-loc-6)
       (= (road-length city-2-loc-21 city-2-loc-6) 11)
       (road city-2-loc-6 city-2-loc-21)
       (= (road-length city-2-loc-6 city-2-loc-21) 11)
       (road city-2-loc-21 city-2-loc-10)
       (= (road-length city-2-loc-21 city-2-loc-10) 25)
       (road city-2-loc-10 city-2-loc-21)
       (= (road-length city-2-loc-10 city-2-loc-21) 25)
       (road city-2-loc-21 city-2-loc-18)
       (= (road-length city-2-loc-21 city-2-loc-18) 16)
       (road city-2-loc-18 city-2-loc-21)
       (= (road-length city-2-loc-18 city-2-loc-21) 16)
       (road city-1-loc-12 city-2-loc-3)
       (= (road-length city-1-loc-12 city-2-loc-3) 109)
       (road city-2-loc-3 city-1-loc-12)
       (= (road-length city-2-loc-3 city-1-loc-12) 109)
       (at package-1 city-1-loc-8)
       (at package-2 city-1-loc-6)
       (at package-3 city-1-loc-4)
       (at package-4 city-1-loc-12)
       (at package-5 city-1-loc-8)
       (at package-6 city-1-loc-13)
       (at package-7 city-1-loc-9)
       (at package-8 city-1-loc-16)
       (at package-9 city-1-loc-14)
       (at package-10 city-1-loc-15)
       (at package-11 city-1-loc-7)
       (at package-12 city-1-loc-12)
       (at package-13 city-1-loc-8)
       (at package-14 city-1-loc-6)
       (at-truck truck-3 city-2-loc-19)
       (capacity truck-3 capacity-2))
  (:goal (and 
       (at package-14 city-2-loc-18)
       (at package-13 city-2-loc-4)
       (at package-12 city-2-loc-10)
       (at package-11 city-2-loc-8)
       (at package-10 city-2-loc-13)
       (at package-9 city-2-loc-12)
       (at package-8 city-2-loc-19)
       (at package-7 city-2-loc-21)
       (at package-6 city-2-loc-5)
       (at package-5 city-2-loc-8)
       (at package-4 city-2-loc-14)
       (at package-3 city-2-loc-6)
       (at package-2 city-2-loc-21)
       (at package-1 city-2-loc-5))))