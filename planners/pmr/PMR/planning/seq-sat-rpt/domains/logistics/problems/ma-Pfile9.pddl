(define (problem logistics-12-0) (:domain logistics)
  (:objects apn1 - airplane
             apt4 apt3 apt2 apt1 - airport
             pos4 pos3 pos2 pos1 - location
             cit4 cit3 cit2 cit1 - city
             tru4 tru3 tru2 tru1 - truck
             obj43 obj42 obj41 obj33 obj32 obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package
            )
  (:init
       (at tru4 pos4)
       (at tru3 pos3)
       (at tru2 pos2)
       (at tru1 pos1)
       (in-city pos1 cit1)
       (in-city pos2 cit2)
       (in-city pos3 cit3)
       (in-city pos4 cit4)
       (in-city apt1 cit1)
       (in-city apt2 cit2)
       (in-city apt3 cit3)
       (in-city apt4 cit4)
       (at-pkg obj11 pos1)
       (at-pkg obj12 pos1)
       (at-pkg obj13 pos1)
       (at-pkg obj21 pos2)
       (at-pkg obj22 pos2)
       (at-pkg obj23 pos2)
       (at-pkg obj31 pos3)
       (at-pkg obj32 pos3)
       (at-pkg obj33 pos3)
       (at-pkg obj41 pos4)
       (at-pkg obj42 pos4)
       (at-pkg obj43 pos4)
       (at apn1 apt1))
  (:goal (and 
       (at-pkg obj23 pos4)
       (at-pkg obj12 apt4)
       (at-pkg obj41 apt1)
       (at-pkg obj22 pos2)
       (at-pkg obj11 apt4)
       (at-pkg obj21 apt2)
       (at-pkg obj32 apt4)
       (at-pkg obj43 pos4)
       (at-pkg obj33 pos2)
       (at-pkg obj31 pos3)
       (at-pkg obj42 pos4)
       (at-pkg obj13 apt1))))
