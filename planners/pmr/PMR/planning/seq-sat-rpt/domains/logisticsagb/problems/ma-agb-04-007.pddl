


(define (problem logistics-c58-s2-p68-a48)
(:domain logistics)
(:objects airplane0 airplane1 airplane2 airplane3 airplane4 airplane5 airplane6 airplane7 airplane8 airplane9 airplane10 airplane11 airplane12 airplane13 airplane14 airplane15 airplane16 airplane17 airplane18 airplane19 airplane20 airplane21 airplane22 airplane23 airplane24 airplane25 airplane26 airplane27 airplane28 airplane29 airplane30 airplane31 airplane32 airplane33 airplane34 airplane35 airplane36 airplane37 airplane38 airplane39 airplane40 airplane41 airplane42 airplane43 airplane44 airplane45 airplane46 airplane47  - airplane
          city0 city1 city2 city3 city4 city5 city6 city7 city8 city9 city10 city11 city12 city13 city14 city15 city16 city17 city18 city19 city20 city21 city22 city23 city24 city25 city26 city27 city28 city29 city30 city31 city32 city33 city34 city35 city36 city37 city38 city39 city40 city41 city42 city43 city44 city45 city46 city47 city48 city49 city50 city51 city52 city53 city54 city55 city56 city57  - city
          truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 truck10 truck11 truck12 truck13 truck14 truck15 truck16 truck17 truck18 truck19 truck20 truck21 truck22 truck23 truck24 truck25 truck26 truck27 truck28 truck29 truck30 truck31 truck32 truck33 truck34 truck35 truck36 truck37 truck38 truck39 truck40 truck41 truck42 truck43 truck44 truck45 truck46 truck47 truck48 truck49 truck50 truck51 truck52 truck53 truck54 truck55 truck56 truck57  - truck
          loc0-0 loc1-0 loc2-0 loc3-0 loc4-0 loc5-0 loc6-0 loc7-0 loc8-0 loc9-0 loc10-0 loc11-0 loc12-0 loc13-0 loc14-0 loc15-0 loc16-0 loc17-0 loc18-0 loc19-0 loc20-0 loc21-0 loc22-0 loc23-0 loc24-0 loc25-0 loc26-0 loc27-0 loc28-0 loc29-0 loc30-0 loc31-0 loc32-0 loc33-0 loc34-0 loc35-0 loc36-0 loc37-0 loc38-0 loc39-0 loc40-0 loc41-0 loc42-0 loc43-0 loc44-0 loc45-0 loc46-0 loc47-0 loc48-0 loc49-0 loc50-0 loc51-0 loc52-0 loc53-0 loc54-0 loc55-0 loc56-0 loc57-0  - airport
          loc0-1 loc1-1 loc2-1 loc3-1 loc4-1 loc5-1 loc6-1 loc7-1 loc8-1 loc9-1 loc10-1 loc11-1 loc12-1 loc13-1 loc14-1 loc15-1 loc16-1 loc17-1 loc18-1 loc19-1 loc20-1 loc21-1 loc22-1 loc23-1 loc24-1 loc25-1 loc26-1 loc27-1 loc28-1 loc29-1 loc30-1 loc31-1 loc32-1 loc33-1 loc34-1 loc35-1 loc36-1 loc37-1 loc38-1 loc39-1 loc40-1 loc41-1 loc42-1 loc43-1 loc44-1 loc45-1 loc46-1 loc47-1 loc48-1 loc49-1 loc50-1 loc51-1 loc52-1 loc53-1 loc54-1 loc55-1 loc56-1 loc57-1  - location
          p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67  - package
)
(:init
(in-city  loc0-0 city0)
(in-city  loc0-1 city0)
(in-city  loc1-0 city1)
(in-city  loc1-1 city1)
(in-city  loc2-0 city2)
(in-city  loc2-1 city2)
(in-city  loc3-0 city3)
(in-city  loc3-1 city3)
(in-city  loc4-0 city4)
(in-city  loc4-1 city4)
(in-city  loc5-0 city5)
(in-city  loc5-1 city5)
(in-city  loc6-0 city6)
(in-city  loc6-1 city6)
(in-city  loc7-0 city7)
(in-city  loc7-1 city7)
(in-city  loc8-0 city8)
(in-city  loc8-1 city8)
(in-city  loc9-0 city9)
(in-city  loc9-1 city9)
(in-city  loc10-0 city10)
(in-city  loc10-1 city10)
(in-city  loc11-0 city11)
(in-city  loc11-1 city11)
(in-city  loc12-0 city12)
(in-city  loc12-1 city12)
(in-city  loc13-0 city13)
(in-city  loc13-1 city13)
(in-city  loc14-0 city14)
(in-city  loc14-1 city14)
(in-city  loc15-0 city15)
(in-city  loc15-1 city15)
(in-city  loc16-0 city16)
(in-city  loc16-1 city16)
(in-city  loc17-0 city17)
(in-city  loc17-1 city17)
(in-city  loc18-0 city18)
(in-city  loc18-1 city18)
(in-city  loc19-0 city19)
(in-city  loc19-1 city19)
(in-city  loc20-0 city20)
(in-city  loc20-1 city20)
(in-city  loc21-0 city21)
(in-city  loc21-1 city21)
(in-city  loc22-0 city22)
(in-city  loc22-1 city22)
(in-city  loc23-0 city23)
(in-city  loc23-1 city23)
(in-city  loc24-0 city24)
(in-city  loc24-1 city24)
(in-city  loc25-0 city25)
(in-city  loc25-1 city25)
(in-city  loc26-0 city26)
(in-city  loc26-1 city26)
(in-city  loc27-0 city27)
(in-city  loc27-1 city27)
(in-city  loc28-0 city28)
(in-city  loc28-1 city28)
(in-city  loc29-0 city29)
(in-city  loc29-1 city29)
(in-city  loc30-0 city30)
(in-city  loc30-1 city30)
(in-city  loc31-0 city31)
(in-city  loc31-1 city31)
(in-city  loc32-0 city32)
(in-city  loc32-1 city32)
(in-city  loc33-0 city33)
(in-city  loc33-1 city33)
(in-city  loc34-0 city34)
(in-city  loc34-1 city34)
(in-city  loc35-0 city35)
(in-city  loc35-1 city35)
(in-city  loc36-0 city36)
(in-city  loc36-1 city36)
(in-city  loc37-0 city37)
(in-city  loc37-1 city37)
(in-city  loc38-0 city38)
(in-city  loc38-1 city38)
(in-city  loc39-0 city39)
(in-city  loc39-1 city39)
(in-city  loc40-0 city40)
(in-city  loc40-1 city40)
(in-city  loc41-0 city41)
(in-city  loc41-1 city41)
(in-city  loc42-0 city42)
(in-city  loc42-1 city42)
(in-city  loc43-0 city43)
(in-city  loc43-1 city43)
(in-city  loc44-0 city44)
(in-city  loc44-1 city44)
(in-city  loc45-0 city45)
(in-city  loc45-1 city45)
(in-city  loc46-0 city46)
(in-city  loc46-1 city46)
(in-city  loc47-0 city47)
(in-city  loc47-1 city47)
(in-city  loc48-0 city48)
(in-city  loc48-1 city48)
(in-city  loc49-0 city49)
(in-city  loc49-1 city49)
(in-city  loc50-0 city50)
(in-city  loc50-1 city50)
(in-city  loc51-0 city51)
(in-city  loc51-1 city51)
(in-city  loc52-0 city52)
(in-city  loc52-1 city52)
(in-city  loc53-0 city53)
(in-city  loc53-1 city53)
(in-city  loc54-0 city54)
(in-city  loc54-1 city54)
(in-city  loc55-0 city55)
(in-city  loc55-1 city55)
(in-city  loc56-0 city56)
(in-city  loc56-1 city56)
(in-city  loc57-0 city57)
(in-city  loc57-1 city57)
(at truck0 loc0-1)
(at truck1 loc1-0)
(at truck2 loc2-1)
(at truck3 loc3-0)
(at truck4 loc4-1)
(at truck5 loc5-1)
(at truck6 loc6-1)
(at truck7 loc7-0)
(at truck8 loc8-0)
(at truck9 loc9-1)
(at truck10 loc10-0)
(at truck11 loc11-0)
(at truck12 loc12-0)
(at truck13 loc13-0)
(at truck14 loc14-0)
(at truck15 loc15-1)
(at truck16 loc16-1)
(at truck17 loc17-0)
(at truck18 loc18-0)
(at truck19 loc19-0)
(at truck20 loc20-1)
(at truck21 loc21-0)
(at truck22 loc22-1)
(at truck23 loc23-0)
(at truck24 loc24-0)
(at truck25 loc25-0)
(at truck26 loc26-0)
(at truck27 loc27-1)
(at truck28 loc28-1)
(at truck29 loc29-0)
(at truck30 loc30-0)
(at truck31 loc31-0)
(at truck32 loc32-0)
(at truck33 loc33-1)
(at truck34 loc34-1)
(at truck35 loc35-1)
(at truck36 loc36-0)
(at truck37 loc37-0)
(at truck38 loc38-0)
(at truck39 loc39-0)
(at truck40 loc40-1)
(at truck41 loc41-0)
(at truck42 loc42-0)
(at truck43 loc43-1)
(at truck44 loc44-1)
(at truck45 loc45-1)
(at truck46 loc46-1)
(at truck47 loc47-0)
(at truck48 loc48-1)
(at truck49 loc49-1)
(at truck50 loc50-0)
(at truck51 loc51-0)
(at truck52 loc52-1)
(at truck53 loc53-1)
(at truck54 loc54-0)
(at truck55 loc55-1)
(at truck56 loc56-1)
(at truck57 loc57-0)
(at-pkg p0 loc0-1)
(at-pkg p1 loc11-0)
(at-pkg p2 loc41-1)
(at-pkg p3 loc36-0)
(at-pkg p4 loc43-0)
(at-pkg p5 loc57-1)
(at-pkg p6 loc29-0)
(at-pkg p7 loc39-1)
(at-pkg p8 loc46-0)
(at-pkg p9 loc6-1)
(at-pkg p10 loc12-1)
(at-pkg p11 loc36-1)
(at-pkg p12 loc34-0)
(at-pkg p13 loc52-0)
(at-pkg p14 loc39-0)
(at-pkg p15 loc5-0)
(at-pkg p16 loc51-0)
(at-pkg p17 loc36-0)
(at-pkg p18 loc13-0)
(at-pkg p19 loc7-0)
(at-pkg p20 loc1-0)
(at-pkg p21 loc55-0)
(at-pkg p22 loc28-1)
(at-pkg p23 loc11-0)
(at-pkg p24 loc51-0)
(at-pkg p25 loc43-0)
(at-pkg p26 loc51-0)
(at-pkg p27 loc11-1)
(at-pkg p28 loc56-1)
(at-pkg p29 loc32-1)
(at-pkg p30 loc37-1)
(at-pkg p31 loc3-0)
(at-pkg p32 loc53-0)
(at-pkg p33 loc57-0)
(at-pkg p34 loc38-0)
(at-pkg p35 loc49-1)
(at-pkg p36 loc46-0)
(at-pkg p37 loc53-0)
(at-pkg p38 loc17-1)
(at-pkg p39 loc17-1)
(at-pkg p40 loc9-0)
(at-pkg p41 loc1-0)
(at-pkg p42 loc16-0)
(at-pkg p43 loc22-0)
(at-pkg p44 loc9-0)
(at-pkg p45 loc36-1)
(at-pkg p46 loc25-1)
(at-pkg p47 loc11-0)
(at-pkg p48 loc13-0)
(at-pkg p49 loc12-0)
(at-pkg p50 loc0-1)
(at-pkg p51 loc25-0)
(at-pkg p52 loc34-1)
(at-pkg p53 loc55-1)
(at-pkg p54 loc20-0)
(at-pkg p55 loc46-1)
(at-pkg p56 loc8-1)
(at-pkg p57 loc23-1)
(at-pkg p58 loc51-1)
(at-pkg p59 loc31-1)
(at-pkg p60 loc25-1)
(at-pkg p61 loc42-0)
(at-pkg p62 loc41-1)
(at-pkg p63 loc4-0)
(at-pkg p64 loc48-1)
(at-pkg p65 loc32-0)
(at-pkg p66 loc4-0)
(at-pkg p67 loc29-0)
(at airplane0 loc14-0)
(at airplane1 loc15-0)
(at airplane2 loc56-0)
(at airplane3 loc6-0)
(at airplane4 loc24-0)
(at airplane5 loc22-0)
(at airplane6 loc3-0)
(at airplane7 loc6-0)
(at airplane8 loc53-0)
(at airplane9 loc31-0)
(at airplane10 loc43-0)
(at airplane11 loc20-0)
(at airplane12 loc22-0)
(at airplane13 loc23-0)
(at airplane14 loc9-0)
(at airplane15 loc5-0)
(at airplane16 loc19-0)
(at airplane17 loc15-0)
(at airplane18 loc47-0)
(at airplane19 loc6-0)
(at airplane20 loc32-0)
(at airplane21 loc20-0)
(at airplane22 loc10-0)
(at airplane23 loc51-0)
(at airplane24 loc30-0)
(at airplane25 loc20-0)
(at airplane26 loc31-0)
(at airplane27 loc18-0)
(at airplane28 loc52-0)
(at airplane29 loc57-0)
(at airplane30 loc17-0)
(at airplane31 loc8-0)
(at airplane32 loc6-0)
(at airplane33 loc7-0)
(at airplane34 loc14-0)
(at airplane35 loc22-0)
(at airplane36 loc22-0)
(at airplane37 loc9-0)
(at airplane38 loc28-0)
(at airplane39 loc17-0)
(at airplane40 loc40-0)
(at airplane41 loc6-0)
(at airplane42 loc29-0)
(at airplane43 loc55-0)
(at airplane44 loc29-0)
(at airplane45 loc38-0)
(at airplane46 loc52-0)
(at airplane47 loc49-0)
)
(:goal
(and
(at-pkg p0 loc13-0)
(at-pkg p1 loc16-1)
(at-pkg p2 loc32-0)
(at-pkg p3 loc46-0)
(at-pkg p4 loc44-1)
(at-pkg p5 loc57-1)
(at-pkg p6 loc33-1)
(at-pkg p7 loc32-0)
(at-pkg p8 loc32-0)
(at-pkg p9 loc51-1)
(at-pkg p10 loc46-1)
(at-pkg p11 loc54-0)
(at-pkg p12 loc6-0)
(at-pkg p13 loc18-1)
(at-pkg p14 loc20-1)
(at-pkg p15 loc33-1)
(at-pkg p16 loc7-1)
(at-pkg p17 loc50-1)
(at-pkg p18 loc46-0)
(at-pkg p19 loc6-0)
(at-pkg p20 loc26-1)
(at-pkg p21 loc11-1)
(at-pkg p22 loc20-0)
(at-pkg p23 loc1-1)
(at-pkg p24 loc44-0)
(at-pkg p25 loc52-0)
(at-pkg p26 loc42-0)
(at-pkg p27 loc2-0)
(at-pkg p28 loc3-1)
(at-pkg p29 loc43-1)
(at-pkg p30 loc2-1)
(at-pkg p31 loc41-0)
(at-pkg p32 loc52-1)
(at-pkg p33 loc33-0)
(at-pkg p34 loc56-1)
(at-pkg p35 loc14-0)
(at-pkg p36 loc29-0)
(at-pkg p37 loc17-1)
(at-pkg p38 loc54-0)
(at-pkg p39 loc36-0)
(at-pkg p40 loc5-1)
(at-pkg p41 loc7-1)
(at-pkg p42 loc5-1)
(at-pkg p43 loc21-0)
(at-pkg p44 loc22-1)
(at-pkg p45 loc16-1)
(at-pkg p46 loc2-1)
(at-pkg p47 loc27-0)
(at-pkg p48 loc16-0)
(at-pkg p49 loc37-0)
(at-pkg p50 loc26-1)
(at-pkg p51 loc30-1)
(at-pkg p52 loc3-1)
(at-pkg p53 loc38-1)
(at-pkg p54 loc50-1)
(at-pkg p55 loc32-1)
(at-pkg p56 loc40-1)
(at-pkg p57 loc36-1)
(at-pkg p58 loc32-1)
(at-pkg p59 loc46-1)
(at-pkg p60 loc48-0)
(at-pkg p61 loc6-0)
(at-pkg p62 loc45-1)
(at-pkg p63 loc39-1)
(at-pkg p64 loc19-0)
(at-pkg p65 loc18-1)
(at-pkg p66 loc53-0)
(at-pkg p67 loc34-1)
)
)
)


