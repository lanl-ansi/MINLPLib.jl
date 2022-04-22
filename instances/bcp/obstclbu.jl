using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[3], 0.0)
set_lower_bound(x[4], 0.0)
set_upper_bound(x[4], 0.0)
set_lower_bound(x[5], 0.0)
set_upper_bound(x[5], 0.0)
set_lower_bound(x[6], 0.0)
set_upper_bound(x[6], 0.0)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[8], 0.0)
set_lower_bound(x[9], 0.0)
set_upper_bound(x[9], 0.0)
set_lower_bound(x[10], 0.393779336635683)
set_upper_bound(x[10], 0.557240340085779)
set_lower_bound(x[11], 0.446718164607601)
set_upper_bound(x[11], 0.604371564257258)
set_lower_bound(x[12], 0.000265872388652867)
set_upper_bound(x[12], 0.0241347458970552)
set_lower_bound(x[13], 0.284731206337994)
set_upper_bound(x[13], 0.45280278371302)
set_lower_bound(x[14], 0.540091619559498)
set_upper_bound(x[14], 0.683200674155107)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_upper_bound(x[16], 0.0)
set_lower_bound(x[17], 0.422714108654355)
set_upper_bound(x[17], 0.583245627320611)
set_lower_bound(x[18], 0.479542863739741)
set_upper_bound(x[18], 0.632658253186744)
set_lower_bound(x[19], 0.00028540860154168)
set_upper_bound(x[19], 0.024334889569585)
set_lower_bound(x[20], 0.305653158750173)
set_upper_bound(x[20], 0.473752738261658)
set_lower_bound(x[21], 0.579777368473255)
set_upper_bound(x[21], 0.71530311088386)
set_lower_bound(x[22], 0.0)
set_upper_bound(x[22], 0.0)
set_lower_bound(x[23], 0.0)
set_upper_bound(x[23], 0.0)
set_lower_bound(x[24], 4.46613701041805e-5)
set_upper_bound(x[24], 0.02125879408843)
set_lower_bound(x[25], 5.06655464764993e-5)
set_upper_bound(x[25], 0.0213692260533082)
set_lower_bound(x[26], 3.01545156014471e-8)
set_upper_bound(x[26], 0.020009688017269)
set_lower_bound(x[27], 3.22934308720114e-5)
set_upper_bound(x[27], 0.0210140891235141)
set_lower_bound(x[28], 6.12557071109841e-5)
set_upper_bound(x[28], 0.0215539285228208)
set_lower_bound(x[29], 0.0)
set_upper_bound(x[29], 0.0)
set_lower_bound(x[30], 0.0)
set_upper_bound(x[30], 0.0)
set_lower_bound(x[31], 0.313729929736426)
set_upper_bound(x[31], 0.481711439422208)
set_lower_bound(x[32], 0.458894413944559)
set_upper_bound(x[32], 0.614942755737996)
set_lower_bound(x[33], 0.00195097862552384)
set_upper_bound(x[33], 0.0356135505717738)
set_lower_bound(x[34], 0.0)
set_upper_bound(x[34], 0.0)
set_lower_bound(x[35], 0.0)
set_upper_bound(x[35], 0.0)
set_lower_bound(x[36], 0.388220695333013)
set_upper_bound(x[36], 0.552172532801311)
set_lower_bound(x[37], 0.567852447535572)
set_upper_bound(x[37], 0.705736081369553)
set_lower_bound(x[38], 0.0024142110993906)
set_upper_bound(x[38], 0.0379963112116094)
set_lower_bound(x[39], 0.0)
set_upper_bound(x[39], 0.0)
set_lower_bound(x[40], 0.0)
set_upper_bound(x[40], 0.0)
set_lower_bound(x[41], 0.00030693606948697)
set_upper_bound(x[41], 0.0245502153543299)
set_lower_bound(x[42], 0.00044895699891943)
set_upper_bound(x[42], 0.0258632241503354)
set_lower_bound(x[43], 1.90872994321731e-6)
set_upper_bound(x[43], 0.0201538732019207)
set_lower_bound(x[44], 0.0)
set_upper_bound(x[44], 0.0)
set_lower_bound(x[45], 0.0)
set_upper_bound(x[45], 0.0)
set_lower_bound(x[46], 0.334451435972091)
set_upper_bound(x[46], 0.501824312019127)
set_lower_bound(x[47], 0.379414351459624)
set_upper_bound(x[47], 0.544093977877458)
set_lower_bound(x[48], 0.000225815307959009)
set_upper_bound(x[48], 0.0237082492668075)
set_lower_bound(x[49], 0.241832803212606)
set_upper_bound(x[49], 0.408159428737598)
set_lower_bound(x[50], 0.458719899478336)
set_upper_bound(x[50], 0.614791911017674)
set_lower_bound(x[51], 0.0)
set_upper_bound(x[51], 0.0)
set_lower_bound(x[52], 0.0)
set_upper_bound(x[52], 0.0)
set_lower_bound(x[53], 0.477541853399075)
set_upper_bound(x[53], 0.630952754382422)
set_lower_bound(x[54], 0.541741529904379)
set_upper_bound(x[54], 0.684550649172644)
set_lower_bound(x[55], 0.000322427261749376)
set_upper_bound(x[55], 0.0247020564279926)
set_lower_bound(x[56], 0.345297620634162)
set_upper_bound(x[56], 0.512185774381034)
set_lower_bound(x[57], 0.654976858900979)
set_upper_bound(x[57], 0.774195558953462)
set_lower_bound(x[58], 0.0)
set_upper_bound(x[58], 0.0)
set_lower_bound(x[59], 0.0)
set_upper_bound(x[59], 0.0)
set_lower_bound(x[60], 0.0)
set_upper_bound(x[60], 0.0)
set_lower_bound(x[61], 0.0)
set_upper_bound(x[61], 0.0)
set_lower_bound(x[62], 0.0)
set_upper_bound(x[62], 0.0)
set_lower_bound(x[63], 0.0)
set_upper_bound(x[63], 0.0)
set_lower_bound(x[64], 0.0)
set_upper_bound(x[64], 0.0)
set_lower_bound(x[65], 0.0)
set_upper_bound(x[65], 0.0)
set_lower_bound(x[66], 0.0)
set_upper_bound(x[66], 0.0)
set_lower_bound(x[67], -0.339161156354068)
set_upper_bound(x[67], 0.506337104572388)
set_lower_bound(x[68], -0.496092802521634)
set_upper_bound(x[68], 0.646674395535926)
set_lower_bound(x[69], -0.00210912668488674)
set_upper_bound(x[69], 0.0364463089471501)
set_lower_bound(x[70], -0.364082603021477)
set_upper_bound(x[70], 0.529878404719995)
set_lower_bound(x[71], -0.532545533291374)
set_upper_bound(x[71], 0.677008766287058)
set_lower_bound(x[72], -0.00226410459791562)
set_upper_bound(x[72], 0.0372423976921895)
set_lower_bound(x[73], -3.84667262084016e-5)
set_upper_bound(x[73], 0.0211395240203335)
set_lower_bound(x[74], -5.62654822082178e-5)
set_upper_bound(x[74], 0.0214683447343979)
set_lower_bound(x[75], -2.39211351908692e-7)
set_upper_bound(x[75], 0.020038534925497)
set_lower_bound(x[76], -0.364252690203117)
set_upper_bound(x[76], 0.530037191085347)
set_lower_bound(x[77], -0.413222020767081)
set_upper_bound(x[77], 0.574781927091204)
set_lower_bound(x[78], -0.000245936553311669)
set_upper_bound(x[78], 0.023925383158772)
set_lower_bound(x[79], -0.263381285517649)
set_upper_bound(x[79], 0.430887827343088)
set_lower_bound(x[80], -0.499594079926841)
set_upper_bound(x[80], 0.649619527301265)
set_lower_bound(x[81], -0.450739375699278)
set_upper_bound(x[81], 0.607873205269559)
set_lower_bound(x[82], -0.511335786049752)
set_upper_bound(x[82], 0.659446368627957)
set_lower_bound(x[83], -0.000304330733808772)
set_upper_bound(x[83], 0.0245244300215596)
set_lower_bound(x[84], -0.325917472672333)
set_upper_bound(x[84], 0.493592805168607)
set_lower_bound(x[85], -0.618215677593785)
set_upper_bound(x[85], 0.745704823264472)
set_lower_bound(x[86], -0.000356364753356265)
set_upper_bound(x[86], 0.0250264707780689)
set_lower_bound(x[87], -0.000404273647038607)
set_upper_bound(x[87], 0.0254674349115417)
set_lower_bound(x[88], -2.40610766974242e-7)
set_upper_bound(x[88], 0.0200386850686286)
set_lower_bound(x[89], -0.000257677731356806)
set_upper_bound(x[89], 0.0240493432504585)
set_lower_bound(x[90], -0.000488775308624626)
set_upper_bound(x[90], 0.0262049674231537)
set_lower_bound(x[91], -0.288062184109774)
set_upper_bound(x[91], 0.456171715591109)
set_lower_bound(x[92], -0.421350067772307)
set_upper_bound(x[92], 0.582033296756697)
set_lower_bound(x[93], -0.00179135973571932)
set_upper_bound(x[93], 0.0347498817613908)
set_lower_bound(x[94], -0.411305602244286)
set_upper_bound(x[94], 0.573065306952623)
set_lower_bound(x[95], -0.601618861970156)
set_upper_bound(x[95], 0.732657668246734)
set_lower_bound(x[96], -0.0025577682027691)
set_upper_bound(x[96], 0.0387028355858038)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((0.25*x[11]-0.25*x[10])*(x[11]-x[10])+(0.25*x[17]-0.25*x[10])*(x[17]-x[10])+(0.25*x[9]-0.25*x[10])*(x[9]-x[10])+(0.25*x[1]-0.25*x[10])*(x[1]-x[10])-0.0123456790123457*x[10]+(0.25*x[18]-0.25*x[17])*(x[18]-x[17])+(0.25*x[24]-0.25*x[17])*(x[24]-x[17])+(0.25*x[16]-0.25*x[17])*(x[16]-x[17])+(0.25*x[10]-0.25*x[17])*(x[10]-x[17])-0.0123456790123457*x[17]+(0.25*x[25]-0.25*x[24])*(x[25]-x[24])+(0.25*x[76]-0.25*x[24])*(x[76]-x[24])+(0.25*x[23]-0.25*x[24])*(x[23]-x[24])+(0.25*x[17]-0.25*x[24])*(x[17]-x[24])-0.0123456790123457*x[24]+(0.25*x[77]-0.25*x[76])*(x[77]-x[76])+(0.25*x[81]-0.25*x[76])*(x[81]-x[76])+(0.25*x[30]-0.25*x[76])*(x[30]-x[76])+(0.25*x[24]-0.25*x[76])*(x[24]-x[76])-0.0123456790123457*x[76]+(0.25*x[82]-0.25*x[81])*(x[82]-x[81])+(0.25*x[86]-0.25*x[81])*(x[86]-x[81])+(0.25*x[35]-0.25*x[81])*(x[35]-x[81])+(0.25*x[76]-0.25*x[81])*(x[76]-x[81])-0.0123456790123457*x[81]+(0.25*x[87]-0.25*x[86])*(x[87]-x[86])+(0.25*x[46]-0.25*x[86])*(x[46]-x[86])+(0.25*x[40]-0.25*x[86])*(x[40]-x[86])+(0.25*x[81]-0.25*x[86])*(x[81]-x[86])-0.0123456790123457*x[86]+(0.25*x[47]-0.25*x[46])*(x[47]-x[46])+(0.25*x[53]-0.25*x[46])*(x[53]-x[46])+(0.25*x[45]-0.25*x[46])*(x[45]-x[46])+(0.25*x[86]-0.25*x[46])*(x[86]-x[46])-0.0123456790123457*x[46]+(0.25*x[54]-0.25*x[53])*(x[54]-x[53])+(0.25*x[59]-0.25*x[53])*(x[59]-x[53])+(0.25*x[52]-0.25*x[53])*(x[52]-x[53])+(0.25*x[46]-0.25*x[53])*(x[46]-x[53])-0.0123456790123457*x[53]+(0.25*x[12]-0.25*x[11])*(x[12]-x[11])+(0.25*x[18]-0.25*x[11])*(x[18]-x[11])+(0.25*x[10]-0.25*x[11])*(x[10]-x[11])+(0.25*x[2]-0.25*x[11])*(x[2]-x[11])-0.0123456790123457*x[11]+(0.25*x[19]-0.25*x[18])*(x[19]-x[18])+(0.25*x[25]-0.25*x[18])*(x[25]-x[18])+(0.25*x[17]-0.25*x[18])*(x[17]-x[18])+(0.25*x[11]-0.25*x[18])*(x[11]-x[18])-0.0123456790123457*x[18]+(0.25*x[26]-0.25*x[25])*(x[26]-x[25])+(0.25*x[77]-0.25*x[25])*(x[77]-x[25])+(0.25*x[24]-0.25*x[25])*(x[24]-x[25])+(0.25*x[18]-0.25*x[25])*(x[18]-x[25])-0.0123456790123457*x[25]+(0.25*x[78]-0.25*x[77])*(x[78]-x[77])+(0.25*x[82]-0.25*x[77])*(x[82]-x[77])+(0.25*x[76]-0.25*x[77])*(x[76]-x[77])+(0.25*x[25]-0.25*x[77])*(x[25]-x[77])-0.0123456790123457*x[77]+(0.25*x[83]-0.25*x[82])*(x[83]-x[82])+(0.25*x[87]-0.25*x[82])*(x[87]-x[82])+(0.25*x[81]-0.25*x[82])*(x[81]-x[82])+(0.25*x[77]-0.25*x[82])*(x[77]-x[82])-0.0123456790123457*x[82]+(0.25*x[88]-0.25*x[87])*(x[88]-x[87])+(0.25*x[47]-0.25*x[87])*(x[47]-x[87])+(0.25*x[86]-0.25*x[87])*(x[86]-x[87])+(0.25*x[82]-0.25*x[87])*(x[82]-x[87])-0.0123456790123457*x[87]+(0.25*x[48]-0.25*x[47])*(x[48]-x[47])+(0.25*x[54]-0.25*x[47])*(x[54]-x[47])+(0.25*x[46]-0.25*x[47])*(x[46]-x[47])+(0.25*x[87]-0.25*x[47])*(x[87]-x[47])-0.0123456790123457*x[47]+(0.25*x[55]-0.25*x[54])*(x[55]-x[54])+(0.25*x[60]-0.25*x[54])*(x[60]-x[54])+(0.25*x[53]-0.25*x[54])*(x[53]-x[54])+(0.25*x[47]-0.25*x[54])*(x[47]-x[54])-0.0123456790123457*x[54]+(0.25*x[67]-0.25*x[12])*(x[67]-x[12])+(0.25*x[19]-0.25*x[12])*(x[19]-x[12])+(0.25*x[11]-0.25*x[12])*(x[11]-x[12])+(0.25*x[3]-0.25*x[12])*(x[3]-x[12])-0.0123456790123457*x[12]+(0.25*x[70]-0.25*x[19])*(x[70]-x[19])+(0.25*x[26]-0.25*x[19])*(x[26]-x[19])+(0.25*x[18]-0.25*x[19])*(x[18]-x[19])+(0.25*x[12]-0.25*x[19])*(x[12]-x[19])-0.0123456790123457*x[19]+(0.25*x[73]-0.25*x[26])*(x[73]-x[26])+(0.25*x[78]-0.25*x[26])*(x[78]-x[26])+(0.25*x[25]-0.25*x[26])*(x[25]-x[26])+(0.25*x[19]-0.25*x[26])*(x[19]-x[26])-0.0123456790123457*x[26]+(0.25*x[31]-0.25*x[78])*(x[31]-x[78])+(0.25*x[83]-0.25*x[78])*(x[83]-x[78])+(0.25*x[77]-0.25*x[78])*(x[77]-x[78])+(0.25*x[26]-0.25*x[78])*(x[26]-x[78])-0.0123456790123457*x[78]+(0.25*x[36]-0.25*x[83])*(x[36]-x[83])+(0.25*x[88]-0.25*x[83])*(x[88]-x[83])+(0.25*x[82]-0.25*x[83])*(x[82]-x[83])+(0.25*x[78]-0.25*x[83])*(x[78]-x[83])-0.0123456790123457*x[83]+(0.25*x[41]-0.25*x[88])*(x[41]-x[88])+(0.25*x[48]-0.25*x[88])*(x[48]-x[88])+(0.25*x[87]-0.25*x[88])*(x[87]-x[88])+(0.25*x[83]-0.25*x[88])*(x[83]-x[88])-0.0123456790123457*x[88]+(0.25*x[91]-0.25*x[48])*(x[91]-x[48])+(0.25*x[55]-0.25*x[48])*(x[55]-x[48])+(0.25*x[47]-0.25*x[48])*(x[47]-x[48])+(0.25*x[88]-0.25*x[48])*(x[88]-x[48])-0.0123456790123457*x[48]+(0.25*x[94]-0.25*x[55])*(x[94]-x[55])+(0.25*x[61]-0.25*x[55])*(x[61]-x[55])+(0.25*x[54]-0.25*x[55])*(x[54]-x[55])+(0.25*x[48]-0.25*x[55])*(x[48]-x[55])-0.0123456790123457*x[55]+(0.25*x[68]-0.25*x[67])*(x[68]-x[67])+(0.25*x[70]-0.25*x[67])*(x[70]-x[67])+(0.25*x[12]-0.25*x[67])*(x[12]-x[67])+(0.25*x[4]-0.25*x[67])*(x[4]-x[67])-0.0123456790123457*x[67]+(0.25*x[71]-0.25*x[70])*(x[71]-x[70])+(0.25*x[73]-0.25*x[70])*(x[73]-x[70])+(0.25*x[19]-0.25*x[70])*(x[19]-x[70])+(0.25*x[67]-0.25*x[70])*(x[67]-x[70])-0.0123456790123457*x[70]+(0.25*x[74]-0.25*x[73])*(x[74]-x[73])+(0.25*x[31]-0.25*x[73])*(x[31]-x[73])+(0.25*x[26]-0.25*x[73])*(x[26]-x[73])+(0.25*x[70]-0.25*x[73])*(x[70]-x[73])-0.0123456790123457*x[73]+(0.25*x[32]-0.25*x[31])*(x[32]-x[31])+(0.25*x[36]-0.25*x[31])*(x[36]-x[31])+(0.25*x[78]-0.25*x[31])*(x[78]-x[31])+(0.25*x[73]-0.25*x[31])*(x[73]-x[31])-0.0123456790123457*x[31]+(0.25*x[37]-0.25*x[36])*(x[37]-x[36])+(0.25*x[41]-0.25*x[36])*(x[41]-x[36])+(0.25*x[83]-0.25*x[36])*(x[83]-x[36])+(0.25*x[31]-0.25*x[36])*(x[31]-x[36])-0.0123456790123457*x[36]+(0.25*x[42]-0.25*x[41])*(x[42]-x[41])+(0.25*x[91]-0.25*x[41])*(x[91]-x[41])+(0.25*x[88]-0.25*x[41])*(x[88]-x[41])+(0.25*x[36]-0.25*x[41])*(x[36]-x[41])-0.0123456790123457*x[41]+(0.25*x[92]-0.25*x[91])*(x[92]-x[91])+(0.25*x[94]-0.25*x[91])*(x[94]-x[91])+(0.25*x[48]-0.25*x[91])*(x[48]-x[91])+(0.25*x[41]-0.25*x[91])*(x[41]-x[91])-0.0123456790123457*x[91]+(0.25*x[95]-0.25*x[94])*(x[95]-x[94])+(0.25*x[62]-0.25*x[94])*(x[62]-x[94])+(0.25*x[55]-0.25*x[94])*(x[55]-x[94])+(0.25*x[91]-0.25*x[94])*(x[91]-x[94])-0.0123456790123457*x[94]+(0.25*x[69]-0.25*x[68])*(x[69]-x[68])+(0.25*x[71]-0.25*x[68])*(x[71]-x[68])+(0.25*x[67]-0.25*x[68])*(x[67]-x[68])+(0.25*x[5]-0.25*x[68])*(x[5]-x[68])-0.0123456790123457*x[68]+(0.25*x[72]-0.25*x[71])*(x[72]-x[71])+(0.25*x[74]-0.25*x[71])*(x[74]-x[71])+(0.25*x[70]-0.25*x[71])*(x[70]-x[71])+(0.25*x[68]-0.25*x[71])*(x[68]-x[71])-0.0123456790123457*x[71]+(0.25*x[75]-0.25*x[74])*(x[75]-x[74])+(0.25*x[32]-0.25*x[74])*(x[32]-x[74])+(0.25*x[73]-0.25*x[74])*(x[73]-x[74])+(0.25*x[71]-0.25*x[74])*(x[71]-x[74])-0.0123456790123457*x[74]+(0.25*x[33]-0.25*x[32])*(x[33]-x[32])+(0.25*x[37]-0.25*x[32])*(x[37]-x[32])+(0.25*x[31]-0.25*x[32])*(x[31]-x[32])+(0.25*x[74]-0.25*x[32])*(x[74]-x[32])-0.0123456790123457*x[32]+(0.25*x[38]-0.25*x[37])*(x[38]-x[37])+(0.25*x[42]-0.25*x[37])*(x[42]-x[37])+(0.25*x[36]-0.25*x[37])*(x[36]-x[37])+(0.25*x[32]-0.25*x[37])*(x[32]-x[37])-0.0123456790123457*x[37]+(0.25*x[43]-0.25*x[42])*(x[43]-x[42])+(0.25*x[92]-0.25*x[42])*(x[92]-x[42])+(0.25*x[41]-0.25*x[42])*(x[41]-x[42])+(0.25*x[37]-0.25*x[42])*(x[37]-x[42])-0.0123456790123457*x[42]+(0.25*x[93]-0.25*x[92])*(x[93]-x[92])+(0.25*x[95]-0.25*x[92])*(x[95]-x[92])+(0.25*x[91]-0.25*x[92])*(x[91]-x[92])+(0.25*x[42]-0.25*x[92])*(x[42]-x[92])-0.0123456790123457*x[92]+(0.25*x[96]-0.25*x[95])*(x[96]-x[95])+(0.25*x[63]-0.25*x[95])*(x[63]-x[95])+(0.25*x[94]-0.25*x[95])*(x[94]-x[95])+(0.25*x[92]-0.25*x[95])*(x[92]-x[95])-0.0123456790123457*x[95]+(0.25*x[13]-0.25*x[69])*(x[13]-x[69])+(0.25*x[72]-0.25*x[69])*(x[72]-x[69])+(0.25*x[68]-0.25*x[69])*(x[68]-x[69])+(0.25*x[6]-0.25*x[69])*(x[6]-x[69])-0.0123456790123457*x[69]+(0.25*x[20]-0.25*x[72])*(x[20]-x[72])+(0.25*x[75]-0.25*x[72])*(x[75]-x[72])+(0.25*x[71]-0.25*x[72])*(x[71]-x[72])+(0.25*x[69]-0.25*x[72])*(x[69]-x[72])-0.0123456790123457*x[72]+(0.25*x[27]-0.25*x[75])*(x[27]-x[75])+(0.25*x[33]-0.25*x[75])*(x[33]-x[75])+(0.25*x[74]-0.25*x[75])*(x[74]-x[75])+(0.25*x[72]-0.25*x[75])*(x[72]-x[75])-0.0123456790123457*x[75]+(0.25*x[79]-0.25*x[33])*(x[79]-x[33])+(0.25*x[38]-0.25*x[33])*(x[38]-x[33])+(0.25*x[32]-0.25*x[33])*(x[32]-x[33])+(0.25*x[75]-0.25*x[33])*(x[75]-x[33])-0.0123456790123457*x[33]+(0.25*x[84]-0.25*x[38])*(x[84]-x[38])+(0.25*x[43]-0.25*x[38])*(x[43]-x[38])+(0.25*x[37]-0.25*x[38])*(x[37]-x[38])+(0.25*x[33]-0.25*x[38])*(x[33]-x[38])-0.0123456790123457*x[38]+(0.25*x[89]-0.25*x[43])*(x[89]-x[43])+(0.25*x[93]-0.25*x[43])*(x[93]-x[43])+(0.25*x[42]-0.25*x[43])*(x[42]-x[43])+(0.25*x[38]-0.25*x[43])*(x[38]-x[43])-0.0123456790123457*x[43]+(0.25*x[49]-0.25*x[93])*(x[49]-x[93])+(0.25*x[96]-0.25*x[93])*(x[96]-x[93])+(0.25*x[92]-0.25*x[93])*(x[92]-x[93])+(0.25*x[43]-0.25*x[93])*(x[43]-x[93])-0.0123456790123457*x[93]+(0.25*x[56]-0.25*x[96])*(x[56]-x[96])+(0.25*x[64]-0.25*x[96])*(x[64]-x[96])+(0.25*x[95]-0.25*x[96])*(x[95]-x[96])+(0.25*x[93]-0.25*x[96])*(x[93]-x[96])-0.0123456790123457*x[96]+(0.25*x[14]-0.25*x[13])*(x[14]-x[13])+(0.25*x[20]-0.25*x[13])*(x[20]-x[13])+(0.25*x[69]-0.25*x[13])*(x[69]-x[13])+(0.25*x[7]-0.25*x[13])*(x[7]-x[13])-0.0123456790123457*x[13]+(0.25*x[21]-0.25*x[20])*(x[21]-x[20])+(0.25*x[27]-0.25*x[20])*(x[27]-x[20])+(0.25*x[72]-0.25*x[20])*(x[72]-x[20])+(0.25*x[13]-0.25*x[20])*(x[13]-x[20])-0.0123456790123457*x[20]+(0.25*x[28]-0.25*x[27])*(x[28]-x[27])+(0.25*x[79]-0.25*x[27])*(x[79]-x[27])+(0.25*x[75]-0.25*x[27])*(x[75]-x[27])+(0.25*x[20]-0.25*x[27])*(x[20]-x[27])-0.0123456790123457*x[27]+(0.25*x[80]-0.25*x[79])*(x[80]-x[79])+(0.25*x[84]-0.25*x[79])*(x[84]-x[79])+(0.25*x[33]-0.25*x[79])*(x[33]-x[79])+(0.25*x[27]-0.25*x[79])*(x[27]-x[79])-0.0123456790123457*x[79]+(0.25*x[85]-0.25*x[84])*(x[85]-x[84])+(0.25*x[89]-0.25*x[84])*(x[89]-x[84])+(0.25*x[38]-0.25*x[84])*(x[38]-x[84])+(0.25*x[79]-0.25*x[84])*(x[79]-x[84])-0.0123456790123457*x[84]+(0.25*x[90]-0.25*x[89])*(x[90]-x[89])+(0.25*x[49]-0.25*x[89])*(x[49]-x[89])+(0.25*x[43]-0.25*x[89])*(x[43]-x[89])+(0.25*x[84]-0.25*x[89])*(x[84]-x[89])-0.0123456790123457*x[89]+(0.25*x[50]-0.25*x[49])*(x[50]-x[49])+(0.25*x[56]-0.25*x[49])*(x[56]-x[49])+(0.25*x[93]-0.25*x[49])*(x[93]-x[49])+(0.25*x[89]-0.25*x[49])*(x[89]-x[49])-0.0123456790123457*x[49]+(0.25*x[57]-0.25*x[56])*(x[57]-x[56])+(0.25*x[65]-0.25*x[56])*(x[65]-x[56])+(0.25*x[96]-0.25*x[56])*(x[96]-x[56])+(0.25*x[49]-0.25*x[56])*(x[49]-x[56])-0.0123456790123457*x[56]+(0.25*x[15]-0.25*x[14])*(x[15]-x[14])+(0.25*x[21]-0.25*x[14])*(x[21]-x[14])+(0.25*x[13]-0.25*x[14])*(x[13]-x[14])+(0.25*x[8]-0.25*x[14])*(x[8]-x[14])-0.0123456790123457*x[14]+(0.25*x[22]-0.25*x[21])*(x[22]-x[21])+(0.25*x[28]-0.25*x[21])*(x[28]-x[21])+(0.25*x[20]-0.25*x[21])*(x[20]-x[21])+(0.25*x[14]-0.25*x[21])*(x[14]-x[21])-0.0123456790123457*x[21]+(0.25*x[29]-0.25*x[28])*(x[29]-x[28])+(0.25*x[80]-0.25*x[28])*(x[80]-x[28])+(0.25*x[27]-0.25*x[28])*(x[27]-x[28])+(0.25*x[21]-0.25*x[28])*(x[21]-x[28])-0.0123456790123457*x[28]+(0.25*x[34]-0.25*x[80])*(x[34]-x[80])+(0.25*x[85]-0.25*x[80])*(x[85]-x[80])+(0.25*x[79]-0.25*x[80])*(x[79]-x[80])+(0.25*x[28]-0.25*x[80])*(x[28]-x[80])-0.0123456790123457*x[80]+(0.25*x[39]-0.25*x[85])*(x[39]-x[85])+(0.25*x[90]-0.25*x[85])*(x[90]-x[85])+(0.25*x[84]-0.25*x[85])*(x[84]-x[85])+(0.25*x[80]-0.25*x[85])*(x[80]-x[85])-0.0123456790123457*x[85]+(0.25*x[44]-0.25*x[90])*(x[44]-x[90])+(0.25*x[50]-0.25*x[90])*(x[50]-x[90])+(0.25*x[89]-0.25*x[90])*(x[89]-x[90])+(0.25*x[85]-0.25*x[90])*(x[85]-x[90])-0.0123456790123457*x[90]+(0.25*x[51]-0.25*x[50])*(x[51]-x[50])+(0.25*x[57]-0.25*x[50])*(x[57]-x[50])+(0.25*x[49]-0.25*x[50])*(x[49]-x[50])+(0.25*x[90]-0.25*x[50])*(x[90]-x[50])-0.0123456790123457*x[50]+(0.25*x[58]-0.25*x[57])*(x[58]-x[57])+(0.25*x[66]-0.25*x[57])*(x[66]-x[57])+(0.25*x[56]-0.25*x[57])*(x[56]-x[57])+(0.25*x[50]-0.25*x[57])*(x[50]-x[57])-0.0123456790123457*x[57])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
