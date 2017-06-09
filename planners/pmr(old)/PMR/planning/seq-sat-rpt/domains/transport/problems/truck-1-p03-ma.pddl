(define (problem p03-ma) (:domain transport)
  (:objects capacity-4 capacity-3 capacity-2 capacity-1 capacity-0 - capacity-number
             package-18 package-17 package-16 package-15 package-14 package-13 package-12 package-11 package-10 package-9 package-8 package-7 package-6 package-5 package-4 package-3 package-2 package-1 - package
             truck-1 - vehicle
             city-3-loc-18 city-2-loc-18 city-1-loc-18 city-3-loc-17 city-2-loc-17 city-1-loc-17 city-3-loc-16 city-2-loc-16 city-1-loc-16 city-3-loc-15 city-2-loc-15 city-1-loc-15 city-3-loc-14 city-2-loc-14 city-1-loc-14 city-3-loc-13 city-2-loc-13 city-1-loc-13 city-3-loc-12 city-2-loc-12 city-1-loc-12 city-3-loc-11 city-2-loc-11 city-1-loc-11 city-3-loc-10 city-2-loc-10 city-1-loc-10 city-3-loc-9 city-2-loc-9 city-1-loc-9 city-3-loc-8 city-2-loc-8 city-1-loc-8 city-3-loc-7 city-2-loc-7 city-1-loc-7 city-3-loc-6 city-2-loc-6 city-1-loc-6 city-3-loc-5 city-2-loc-5 city-1-loc-5 city-3-loc-4 city-2-loc-4 city-1-loc-4 city-3-loc-3 city-2-loc-3 city-1-loc-3 city-3-loc-2 city-2-loc-2 city-1-loc-2 city-3-loc-1 city-2-loc-1 city-1-loc-1 - location
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
       (road city-1-loc-7 city-1-loc-4)
       (= (road-length city-1-loc-7 city-1-loc-4) 31)
       (road city-1-loc-4 city-1-loc-7)
       (= (road-length city-1-loc-4 city-1-loc-7) 31)
       (road city-1-loc-8 city-1-loc-7)
       (= (road-length city-1-loc-8 city-1-loc-7) 30)
       (road city-1-loc-7 city-1-loc-8)
       (= (road-length city-1-loc-7 city-1-loc-8) 30)
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
       (road city-1-loc-10 city-1-loc-9)
       (= (road-length city-1-loc-10 city-1-loc-9) 32)
       (road city-1-loc-9 city-1-loc-10)
       (= (road-length city-1-loc-9 city-1-loc-10) 32)
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
       (road city-1-loc-15 city-1-loc-10)
       (= (road-length city-1-loc-15 city-1-loc-10) 31)
       (road city-1-loc-10 city-1-loc-15)
       (= (road-length city-1-loc-10 city-1-loc-15) 31)
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
       (road city-1-loc-17 city-1-loc-16)
       (= (road-length city-1-loc-17 city-1-loc-16) 31)
       (road city-1-loc-16 city-1-loc-17)
       (= (road-length city-1-loc-16 city-1-loc-17) 31)
       (road city-1-loc-18 city-1-loc-9)
       (= (road-length city-1-loc-18 city-1-loc-9) 25)
       (road city-1-loc-9 city-1-loc-18)
       (= (road-length city-1-loc-9 city-1-loc-18) 25)
       (road city-1-loc-18 city-1-loc-11)
       (= (road-length city-1-loc-18 city-1-loc-11) 31)
       (road city-1-loc-11 city-1-loc-18)
       (= (road-length city-1-loc-11 city-1-loc-18) 31)
       (road city-1-loc-18 city-1-loc-13)
       (= (road-length city-1-loc-18 city-1-loc-13) 24)
       (road city-1-loc-13 city-1-loc-18)
       (= (road-length city-1-loc-13 city-1-loc-18) 24)
       (road city-1-loc-18 city-1-loc-15)
       (= (road-length city-1-loc-18 city-1-loc-15) 31)
       (road city-1-loc-15 city-1-loc-18)
       (= (road-length city-1-loc-15 city-1-loc-18) 31)
       (road city-2-loc-4 city-2-loc-1)
       (= (road-length city-2-loc-4 city-2-loc-1) 16)
       (road city-2-loc-1 city-2-loc-4)
       (= (road-length city-2-loc-1 city-2-loc-4) 16)
       (road city-2-loc-6 city-2-loc-3)
       (= (road-length city-2-loc-6 city-2-loc-3) 17)
       (road city-2-loc-3 city-2-loc-6)
       (= (road-length city-2-loc-3 city-2-loc-6) 17)
       (road city-2-loc-6 city-2-loc-5)
       (= (road-length city-2-loc-6 city-2-loc-5) 29)
       (road city-2-loc-5 city-2-loc-6)
       (= (road-length city-2-loc-5 city-2-loc-6) 29)
       (road city-2-loc-7 city-2-loc-1)
       (= (road-length city-2-loc-7 city-2-loc-1) 29)
       (road city-2-loc-1 city-2-loc-7)
       (= (road-length city-2-loc-1 city-2-loc-7) 29)
       (road city-2-loc-7 city-2-loc-3)
       (= (road-length city-2-loc-7 city-2-loc-3) 31)
       (road city-2-loc-3 city-2-loc-7)
       (= (road-length city-2-loc-3 city-2-loc-7) 31)
       (road city-2-loc-7 city-2-loc-4)
       (= (road-length city-2-loc-7 city-2-loc-4) 14)
       (road city-2-loc-4 city-2-loc-7)
       (= (road-length city-2-loc-4 city-2-loc-7) 14)
       (road city-2-loc-8 city-2-loc-1)
       (= (road-length city-2-loc-8 city-2-loc-1) 28)
       (road city-2-loc-1 city-2-loc-8)
       (= (road-length city-2-loc-1 city-2-loc-8) 28)
       (road city-2-loc-8 city-2-loc-3)
       (= (road-length city-2-loc-8 city-2-loc-3) 12)
       (road city-2-loc-3 city-2-loc-8)
       (= (road-length city-2-loc-3 city-2-loc-8) 12)
       (road city-2-loc-8 city-2-loc-4)
       (= (road-length city-2-loc-8 city-2-loc-4) 29)
       (road city-2-loc-4 city-2-loc-8)
       (= (road-length city-2-loc-4 city-2-loc-8) 29)
       (road city-2-loc-8 city-2-loc-6)
       (= (road-length city-2-loc-8 city-2-loc-6) 27)
       (road city-2-loc-6 city-2-loc-8)
       (= (road-length city-2-loc-6 city-2-loc-8) 27)
       (road city-2-loc-8 city-2-loc-7)
       (= (road-length city-2-loc-8 city-2-loc-7) 29)
       (road city-2-loc-7 city-2-loc-8)
       (= (road-length city-2-loc-7 city-2-loc-8) 29)
       (road city-2-loc-9 city-2-loc-2)
       (= (road-length city-2-loc-9 city-2-loc-2) 20)
       (road city-2-loc-2 city-2-loc-9)
       (= (road-length city-2-loc-2 city-2-loc-9) 20)
       (road city-2-loc-10 city-2-loc-2)
       (= (road-length city-2-loc-10 city-2-loc-2) 20)
       (road city-2-loc-2 city-2-loc-10)
       (= (road-length city-2-loc-2 city-2-loc-10) 20)
       (road city-2-loc-10 city-2-loc-6)
       (= (road-length city-2-loc-10 city-2-loc-6) 30)
       (road city-2-loc-6 city-2-loc-10)
       (= (road-length city-2-loc-6 city-2-loc-10) 30)
       (road city-2-loc-10 city-2-loc-9)
       (= (road-length city-2-loc-10 city-2-loc-9) 21)
       (road city-2-loc-9 city-2-loc-10)
       (= (road-length city-2-loc-9 city-2-loc-10) 21)
       (road city-2-loc-11 city-2-loc-9)
       (= (road-length city-2-loc-11 city-2-loc-9) 21)
       (road city-2-loc-9 city-2-loc-11)
       (= (road-length city-2-loc-9 city-2-loc-11) 21)
       (road city-2-loc-11 city-2-loc-10)
       (= (road-length city-2-loc-11 city-2-loc-10) 23)
       (road city-2-loc-10 city-2-loc-11)
       (= (road-length city-2-loc-10 city-2-loc-11) 23)
       (road city-2-loc-12 city-2-loc-2)
       (= (road-length city-2-loc-12 city-2-loc-2) 30)
       (road city-2-loc-2 city-2-loc-12)
       (= (road-length city-2-loc-2 city-2-loc-12) 30)
       (road city-2-loc-13 city-2-loc-2)
       (= (road-length city-2-loc-13 city-2-loc-2) 22)
       (road city-2-loc-2 city-2-loc-13)
       (= (road-length city-2-loc-2 city-2-loc-13) 22)
       (road city-2-loc-13 city-2-loc-3)
       (= (road-length city-2-loc-13 city-2-loc-3) 17)
       (road city-2-loc-3 city-2-loc-13)
       (= (road-length city-2-loc-3 city-2-loc-13) 17)
       (road city-2-loc-13 city-2-loc-6)
       (= (road-length city-2-loc-13 city-2-loc-6) 19)
       (road city-2-loc-6 city-2-loc-13)
       (= (road-length city-2-loc-6 city-2-loc-13) 19)
       (road city-2-loc-13 city-2-loc-7)
       (= (road-length city-2-loc-13 city-2-loc-7) 32)
       (road city-2-loc-7 city-2-loc-13)
       (= (road-length city-2-loc-7 city-2-loc-13) 32)
       (road city-2-loc-13 city-2-loc-8)
       (= (road-length city-2-loc-13 city-2-loc-8) 28)
       (road city-2-loc-8 city-2-loc-13)
       (= (road-length city-2-loc-8 city-2-loc-13) 28)
       (road city-2-loc-13 city-2-loc-10)
       (= (road-length city-2-loc-13 city-2-loc-10) 31)
       (road city-2-loc-10 city-2-loc-13)
       (= (road-length city-2-loc-10 city-2-loc-13) 31)
       (road city-2-loc-14 city-2-loc-2)
       (= (road-length city-2-loc-14 city-2-loc-2) 25)
       (road city-2-loc-2 city-2-loc-14)
       (= (road-length city-2-loc-2 city-2-loc-14) 25)
       (road city-2-loc-14 city-2-loc-3)
       (= (road-length city-2-loc-14 city-2-loc-3) 30)
       (road city-2-loc-3 city-2-loc-14)
       (= (road-length city-2-loc-3 city-2-loc-14) 30)
       (road city-2-loc-14 city-2-loc-7)
       (= (road-length city-2-loc-14 city-2-loc-7) 24)
       (road city-2-loc-7 city-2-loc-14)
       (= (road-length city-2-loc-7 city-2-loc-14) 24)
       (road city-2-loc-14 city-2-loc-12)
       (= (road-length city-2-loc-14 city-2-loc-12) 22)
       (road city-2-loc-12 city-2-loc-14)
       (= (road-length city-2-loc-12 city-2-loc-14) 22)
       (road city-2-loc-14 city-2-loc-13)
       (= (road-length city-2-loc-14 city-2-loc-13) 18)
       (road city-2-loc-13 city-2-loc-14)
       (= (road-length city-2-loc-13 city-2-loc-14) 18)
       (road city-2-loc-15 city-2-loc-2)
       (= (road-length city-2-loc-15 city-2-loc-2) 24)
       (road city-2-loc-2 city-2-loc-15)
       (= (road-length city-2-loc-2 city-2-loc-15) 24)
       (road city-2-loc-15 city-2-loc-3)
       (= (road-length city-2-loc-15 city-2-loc-3) 32)
       (road city-2-loc-3 city-2-loc-15)
       (= (road-length city-2-loc-3 city-2-loc-15) 32)
       (road city-2-loc-15 city-2-loc-5)
       (= (road-length city-2-loc-15 city-2-loc-5) 31)
       (road city-2-loc-5 city-2-loc-15)
       (= (road-length city-2-loc-5 city-2-loc-15) 31)
       (road city-2-loc-15 city-2-loc-6)
       (= (road-length city-2-loc-15 city-2-loc-6) 18)
       (road city-2-loc-6 city-2-loc-15)
       (= (road-length city-2-loc-6 city-2-loc-15) 18)
       (road city-2-loc-15 city-2-loc-10)
       (= (road-length city-2-loc-15 city-2-loc-10) 13)
       (road city-2-loc-10 city-2-loc-15)
       (= (road-length city-2-loc-10 city-2-loc-15) 13)
       (road city-2-loc-15 city-2-loc-13)
       (= (road-length city-2-loc-15 city-2-loc-13) 24)
       (road city-2-loc-13 city-2-loc-15)
       (= (road-length city-2-loc-13 city-2-loc-15) 24)
       (road city-2-loc-16 city-2-loc-3)
       (= (road-length city-2-loc-16 city-2-loc-3) 16)
       (road city-2-loc-3 city-2-loc-16)
       (= (road-length city-2-loc-3 city-2-loc-16) 16)
       (road city-2-loc-16 city-2-loc-6)
       (= (road-length city-2-loc-16 city-2-loc-6) 20)
       (road city-2-loc-6 city-2-loc-16)
       (= (road-length city-2-loc-6 city-2-loc-16) 20)
       (road city-2-loc-16 city-2-loc-8)
       (= (road-length city-2-loc-16 city-2-loc-8) 16)
       (road city-2-loc-8 city-2-loc-16)
       (= (road-length city-2-loc-8 city-2-loc-16) 16)
       (road city-2-loc-16 city-2-loc-13)
       (= (road-length city-2-loc-16 city-2-loc-13) 31)
       (road city-2-loc-13 city-2-loc-16)
       (= (road-length city-2-loc-13 city-2-loc-16) 31)
       (road city-2-loc-17 city-2-loc-5)
       (= (road-length city-2-loc-17 city-2-loc-5) 15)
       (road city-2-loc-5 city-2-loc-17)
       (= (road-length city-2-loc-5 city-2-loc-17) 15)
       (road city-2-loc-17 city-2-loc-6)
       (= (road-length city-2-loc-17 city-2-loc-6) 19)
       (road city-2-loc-6 city-2-loc-17)
       (= (road-length city-2-loc-6 city-2-loc-17) 19)
       (road city-2-loc-17 city-2-loc-10)
       (= (road-length city-2-loc-17 city-2-loc-10) 27)
       (road city-2-loc-10 city-2-loc-17)
       (= (road-length city-2-loc-10 city-2-loc-17) 27)
       (road city-2-loc-17 city-2-loc-15)
       (= (road-length city-2-loc-17 city-2-loc-15) 17)
       (road city-2-loc-15 city-2-loc-17)
       (= (road-length city-2-loc-15 city-2-loc-17) 17)
       (road city-2-loc-18 city-2-loc-1)
       (= (road-length city-2-loc-18 city-2-loc-1) 15)
       (road city-2-loc-1 city-2-loc-18)
       (= (road-length city-2-loc-1 city-2-loc-18) 15)
       (road city-2-loc-18 city-2-loc-4)
       (= (road-length city-2-loc-18 city-2-loc-4) 28)
       (road city-2-loc-4 city-2-loc-18)
       (= (road-length city-2-loc-4 city-2-loc-18) 28)
       (road city-2-loc-18 city-2-loc-8)
       (= (road-length city-2-loc-18 city-2-loc-8) 23)
       (road city-2-loc-8 city-2-loc-18)
       (= (road-length city-2-loc-8 city-2-loc-18) 23)
       (road city-3-loc-2 city-3-loc-1)
       (= (road-length city-3-loc-2 city-3-loc-1) 25)
       (road city-3-loc-1 city-3-loc-2)
       (= (road-length city-3-loc-1 city-3-loc-2) 25)
       (road city-3-loc-4 city-3-loc-1)
       (= (road-length city-3-loc-4 city-3-loc-1) 25)
       (road city-3-loc-1 city-3-loc-4)
       (= (road-length city-3-loc-1 city-3-loc-4) 25)
       (road city-3-loc-7 city-3-loc-2)
       (= (road-length city-3-loc-7 city-3-loc-2) 14)
       (road city-3-loc-2 city-3-loc-7)
       (= (road-length city-3-loc-2 city-3-loc-7) 14)
       (road city-3-loc-7 city-3-loc-3)
       (= (road-length city-3-loc-7 city-3-loc-3) 19)
       (road city-3-loc-3 city-3-loc-7)
       (= (road-length city-3-loc-3 city-3-loc-7) 19)
       (road city-3-loc-8 city-3-loc-1)
       (= (road-length city-3-loc-8 city-3-loc-1) 15)
       (road city-3-loc-1 city-3-loc-8)
       (= (road-length city-3-loc-1 city-3-loc-8) 15)
       (road city-3-loc-8 city-3-loc-2)
       (= (road-length city-3-loc-8 city-3-loc-2) 31)
       (road city-3-loc-2 city-3-loc-8)
       (= (road-length city-3-loc-2 city-3-loc-8) 31)
       (road city-3-loc-8 city-3-loc-4)
       (= (road-length city-3-loc-8 city-3-loc-4) 11)
       (road city-3-loc-4 city-3-loc-8)
       (= (road-length city-3-loc-4 city-3-loc-8) 11)
       (road city-3-loc-9 city-3-loc-1)
       (= (road-length city-3-loc-9 city-3-loc-1) 15)
       (road city-3-loc-1 city-3-loc-9)
       (= (road-length city-3-loc-1 city-3-loc-9) 15)
       (road city-3-loc-9 city-3-loc-2)
       (= (road-length city-3-loc-9 city-3-loc-2) 32)
       (road city-3-loc-2 city-3-loc-9)
       (= (road-length city-3-loc-2 city-3-loc-9) 32)
       (road city-3-loc-9 city-3-loc-8)
       (= (road-length city-3-loc-9 city-3-loc-8) 30)
       (road city-3-loc-8 city-3-loc-9)
       (= (road-length city-3-loc-8 city-3-loc-9) 30)
       (road city-3-loc-10 city-3-loc-2)
       (= (road-length city-3-loc-10 city-3-loc-2) 30)
       (road city-3-loc-2 city-3-loc-10)
       (= (road-length city-3-loc-2 city-3-loc-10) 30)
       (road city-3-loc-11 city-3-loc-4)
       (= (road-length city-3-loc-11 city-3-loc-4) 25)
       (road city-3-loc-4 city-3-loc-11)
       (= (road-length city-3-loc-4 city-3-loc-11) 25)
       (road city-3-loc-11 city-3-loc-8)
       (= (road-length city-3-loc-11 city-3-loc-8) 26)
       (road city-3-loc-8 city-3-loc-11)
       (= (road-length city-3-loc-8 city-3-loc-11) 26)
       (road city-3-loc-11 city-3-loc-10)
       (= (road-length city-3-loc-11 city-3-loc-10) 28)
       (road city-3-loc-10 city-3-loc-11)
       (= (road-length city-3-loc-10 city-3-loc-11) 28)
       (road city-3-loc-12 city-3-loc-5)
       (= (road-length city-3-loc-12 city-3-loc-5) 12)
       (road city-3-loc-5 city-3-loc-12)
       (= (road-length city-3-loc-5 city-3-loc-12) 12)
       (road city-3-loc-13 city-3-loc-9)
       (= (road-length city-3-loc-13 city-3-loc-9) 30)
       (road city-3-loc-9 city-3-loc-13)
       (= (road-length city-3-loc-9 city-3-loc-13) 30)
       (road city-3-loc-13 city-3-loc-12)
       (= (road-length city-3-loc-13 city-3-loc-12) 29)
       (road city-3-loc-12 city-3-loc-13)
       (= (road-length city-3-loc-12 city-3-loc-13) 29)
       (road city-3-loc-14 city-3-loc-1)
       (= (road-length city-3-loc-14 city-3-loc-1) 15)
       (road city-3-loc-1 city-3-loc-14)
       (= (road-length city-3-loc-1 city-3-loc-14) 15)
       (road city-3-loc-14 city-3-loc-4)
       (= (road-length city-3-loc-14 city-3-loc-4) 15)
       (road city-3-loc-4 city-3-loc-14)
       (= (road-length city-3-loc-4 city-3-loc-14) 15)
       (road city-3-loc-14 city-3-loc-8)
       (= (road-length city-3-loc-14 city-3-loc-8) 12)
       (road city-3-loc-8 city-3-loc-14)
       (= (road-length city-3-loc-8 city-3-loc-14) 12)
       (road city-3-loc-14 city-3-loc-9)
       (= (road-length city-3-loc-14 city-3-loc-9) 24)
       (road city-3-loc-9 city-3-loc-14)
       (= (road-length city-3-loc-9 city-3-loc-14) 24)
       (road city-3-loc-14 city-3-loc-13)
       (= (road-length city-3-loc-14 city-3-loc-13) 32)
       (road city-3-loc-13 city-3-loc-14)
       (= (road-length city-3-loc-13 city-3-loc-14) 32)
       (road city-3-loc-15 city-3-loc-13)
       (= (road-length city-3-loc-15 city-3-loc-13) 28)
       (road city-3-loc-13 city-3-loc-15)
       (= (road-length city-3-loc-13 city-3-loc-15) 28)
       (road city-3-loc-16 city-3-loc-4)
       (= (road-length city-3-loc-16 city-3-loc-4) 31)
       (road city-3-loc-4 city-3-loc-16)
       (= (road-length city-3-loc-4 city-3-loc-16) 31)
       (road city-3-loc-16 city-3-loc-6)
       (= (road-length city-3-loc-16 city-3-loc-6) 21)
       (road city-3-loc-6 city-3-loc-16)
       (= (road-length city-3-loc-6 city-3-loc-16) 21)
       (road city-3-loc-17 city-3-loc-2)
       (= (road-length city-3-loc-17 city-3-loc-2) 18)
       (road city-3-loc-2 city-3-loc-17)
       (= (road-length city-3-loc-2 city-3-loc-17) 18)
       (road city-3-loc-17 city-3-loc-7)
       (= (road-length city-3-loc-17 city-3-loc-7) 22)
       (road city-3-loc-7 city-3-loc-17)
       (= (road-length city-3-loc-7 city-3-loc-17) 22)
       (road city-3-loc-17 city-3-loc-10)
       (= (road-length city-3-loc-17 city-3-loc-10) 16)
       (road city-3-loc-10 city-3-loc-17)
       (= (road-length city-3-loc-10 city-3-loc-17) 16)
       (road city-3-loc-18 city-3-loc-4)
       (= (road-length city-3-loc-18 city-3-loc-4) 19)
       (road city-3-loc-4 city-3-loc-18)
       (= (road-length city-3-loc-4 city-3-loc-18) 19)
       (road city-3-loc-18 city-3-loc-8)
       (= (road-length city-3-loc-18 city-3-loc-8) 23)
       (road city-3-loc-8 city-3-loc-18)
       (= (road-length city-3-loc-8 city-3-loc-18) 23)
       (road city-3-loc-18 city-3-loc-11)
       (= (road-length city-3-loc-18 city-3-loc-11) 10)
       (road city-3-loc-11 city-3-loc-18)
       (= (road-length city-3-loc-11 city-3-loc-18) 10)
       (road city-1-loc-12 city-2-loc-5)
       (= (road-length city-1-loc-12 city-2-loc-5) 128)
       (road city-2-loc-5 city-1-loc-12)
       (= (road-length city-2-loc-5 city-1-loc-12) 128)
       (road city-1-loc-4 city-3-loc-5)
       (= (road-length city-1-loc-4 city-3-loc-5) 134)
       (road city-3-loc-5 city-1-loc-4)
       (= (road-length city-3-loc-5 city-1-loc-4) 134)
       (road city-2-loc-12 city-3-loc-11)
       (= (road-length city-2-loc-12 city-3-loc-11) 159)
       (road city-3-loc-11 city-2-loc-12)
       (= (road-length city-3-loc-11 city-2-loc-12) 159)
       (at package-1 city-2-loc-3)
       (at package-2 city-1-loc-1)
       (at package-3 city-1-loc-9)
       (at package-4 city-1-loc-10)
       (at package-5 city-1-loc-5)
       (at package-6 city-1-loc-12)
       (at package-7 city-2-loc-5)
       (at package-8 city-1-loc-11)
       (at package-9 city-1-loc-17)
       (at package-10 city-3-loc-13)
       (at package-11 city-1-loc-10)
       (at package-12 city-3-loc-1)
       (at package-13 city-1-loc-8)
       (at package-14 city-1-loc-15)
       (at package-15 city-3-loc-4)
       (at package-16 city-3-loc-15)
       (at package-17 city-1-loc-7)
       (at package-18 city-3-loc-8)
       (at-truck truck-1 city-3-loc-15)
       (capacity truck-1 capacity-4))
  (:goal (and 
       (at package-18 city-2-loc-1)
       (at package-17 city-2-loc-17)
       (at package-16 city-1-loc-4)
       (at package-15 city-2-loc-2)
       (at package-14 city-3-loc-15)
       (at package-13 city-1-loc-17)
       (at package-12 city-3-loc-11)
       (at package-11 city-2-loc-18)
       (at package-10 city-3-loc-10)
       (at package-9 city-2-loc-7)
       (at package-8 city-3-loc-13)
       (at package-7 city-2-loc-2)
       (at package-6 city-3-loc-16)
       (at package-5 city-2-loc-11)
       (at package-4 city-2-loc-9)
       (at package-3 city-3-loc-6)
       (at package-2 city-1-loc-11)
       (at package-1 city-1-loc-9))))