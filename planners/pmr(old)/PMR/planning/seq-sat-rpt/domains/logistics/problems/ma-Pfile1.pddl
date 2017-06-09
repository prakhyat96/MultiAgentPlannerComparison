(define (problem logistics-4-0) (:domain logistics)
  (:objects apn1 - airplane
             apt1 apt2 - airport
             pos2 pos1 - location
             cit2 cit1 - city
             tru2 tru1 - truck
             obj23 obj22 obj21 obj13 obj12 obj11 - package
            )
  (:init
       (at tru2 pos2)
       (at tru1 pos1)
       (in-city pos1 cit1)
       (in-city pos2 cit2)
       (in-city apt2 cit2)
       (in-city apt1 cit1)
       (at-pkg obj11 pos1)
       (at-pkg obj12 pos1)
       (at-pkg obj13 pos1)
       (at-pkg obj21 pos2)
       (at-pkg obj22 pos2)
       (at-pkg obj23 pos2)
       (at apn1 apt2))
  (:goal (and 
       (at-pkg obj21 pos1)
       (at-pkg obj13 apt1)
       (at-pkg obj23 pos1)
       (at-pkg obj11 apt1))))
