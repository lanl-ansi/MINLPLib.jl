using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, -213.063116318789*b[1]-273.266269308957*b[2]-273.974174702314*b[3]-254.150135436057*b[4]-185.731929048522*b[5]-179.664347941509*b[6]-237.750329788273*b[7]-537.121468653771*b[8]-599.064322370087*b[9]-647.139474601933*b[10]-334.656278986919*b[11]-367.358296540833*b[12]-141.411637746466*b[13]-360.746107012962*b[14]-413.406755015334*b[15]-817.814884544082*b[16]-787.879729353984*b[17]-659.790734814134*b[18]-129.467626164413*b[19]-463.197432726166*b[20]-76.2798654732459*b[21]-92.6304041963229*b[22]-656.979544503091*b[23]-545.816761705456*b[24]-779.467483878278*b[25]-292.944834031572*b[26]-643.908868487291*b[27]-454.262570558583*b[28]-359.628418050031*b[29]-249.165614018324*b[30]-309.573510482173*b[31]-26.8704357917498*b[32]-307.455902574816*b[33]-110.240019364815*b[34]-292.719299621857*b[35]-380.498814693536*b[36]-111.547475796566*b[37]-170.24780915301*b[38]-317.139662731513*b[39]-436.631726254781*b[40]-333.125123720727*b[41]-505.763223945112*b[42]-213.446130466938*b[43]-218.592717682533*b[44]-241.362859574739*b[45]-110.767723212745*b[46]-153.929916757254*b[47]-42.1931799968048*b[48]-150.970037415173*b[49]-708.798337464944*b[50]-603.674904724189*b[51]-704.764096387507*b[52]-147.392997602376*b[53]-549.30947955643*b[54]-71.2061442568205*b[55]-506.349076214288*b[56]-55.8566864444488*b[57]-372.553396170802*b[58]-316.282148724127*b[59]-422.527547001739*b[60]-136.475370007946*b[61]-342.037721074908*b[62]-226.669260720425*b[63]-425.796044889891*b[64]-352.066307741805*b[65]-178.075578035487*b[66]-770.923567714452*b[67]-658.958002502518*b[68]-745.698256364226*b[69]-808.051498329816*b[70]-43.2977732665271*b[71]-355.089484484089*b[72]-294.923700002902*b[73]-421.41698205632*b[74]-156.07903905941*b[75]-347.015757251517*b[76]-245.511452101303*b[77]-86.3864296201078*b[78]-335.699293512738*b[79]-297.182031615534*b[80]-345.872125504266*b[81]-80.1774101234563*b[82]-270.842757092031*b[83]-149.362369607845*b[84]-348.763184821689*b[85]-137.967314173634*b[86]-49.4525994536456*b[87]-450.867970954852*b[88]-471.47080669281*b[89]-461.24773668693*b[90]-556.405313819934*b[91]-34.374298528587*b[92]-613.459413261482*b[93]-492.553739135761*b[94]-781.49028155613*b[95]-330.510227759565*b[96]-646.855838755768*b[97]-515.360830627384*b[98]-463.500876655565*b[99]-367.830152731938*b[100]-421.957579253695*b[101]-300.884945465719*b[102]-424.273071696965*b[103]-241.069021571292*b[104]-479.327877226618*b[105]-249.164006992026*b[106]-420.579677379549*b[107]-339.215571195438*b[108]-611.532890240341*b[109]-394.081036970694*b[110]-515.338037680354*b[111]-547.401615707871*b[112]-272.18661225*b[113]-99.714661105525*b[114]-64.0133197333671*b[115]-378.143072*b[116]-122.880274343504*b[117]-74.2950034949714*b[118]-423.23534075*b[119]-129.143042829026*b[120]-75.6623059288464*b[121]-452.32349625*b[122]-144.695478742473*b[123]-86.8004922924363*b[124]-435.074808*b[125]-143.488032005532*b[126]-87.3989206979294*b[127]-289.71387775*b[128]-101.536870281553*b[129]-63.7552459028209*b[130]-407.39804875*b[131]-136.635688397713*b[132]-83.9269383442227*b[133]-81781.4884544082*x[134]-81781.4884544082*x[135]-81781.4884544082*x[136]-81781.4884544082*x[137]-81781.4884544082*x[138]-81781.4884544082*x[139]-81781.4884544082*x[140]+objvar == 0.0)
@constraint(m, e2, 0.758108132*b[1]+1.33888976*b[8]+1.20095942*b[15]+1.132281133*b[22]+0.540135431*b[29]+0.914702055*b[36]+0.504999442*b[43]+1.289521543*b[50]+0.637213608*b[57]+1.164412792*b[64]+0.624195834*b[71]+0.531968424*b[78]+0.766940956*b[85]+1.287734319*b[92]+1.226844689*b[99]+1.318512368*b[106]-1.67275151142857*x[141]-3.34550302285714*x[142]-5.01825453428571*x[143] == 0.0)
@constraint(m, e3, 0.758108132*b[2]+1.33888976*b[9]+1.20095942*b[16]+1.132281133*b[23]+0.540135431*b[30]+0.914702055*b[37]+0.504999442*b[44]+1.289521543*b[51]+0.637213608*b[58]+1.164412792*b[65]+0.624195834*b[72]+0.531968424*b[79]+0.766940956*b[86]+1.287734319*b[93]+1.226844689*b[100]+1.318512368*b[107]-1.621886868*x[144]-3.243773736*x[145]-4.865660604*x[146] == 0.0)
@constraint(m, e4, 0.758108132*b[3]+1.33888976*b[10]+1.20095942*b[17]+1.132281133*b[24]+0.540135431*b[31]+0.914702055*b[38]+0.504999442*b[45]+1.289521543*b[52]+0.637213608*b[59]+1.164412792*b[66]+0.624195834*b[73]+0.531968424*b[80]+0.766940956*b[87]+1.287734319*b[94]+1.226844689*b[101]+1.318512368*b[108]-1.50291601314286*x[147]-3.00583202628571*x[148]-4.50874803942857*x[149] == 0.0)
@constraint(m, e5, 0.758108132*b[4]+1.33888976*b[11]+1.20095942*b[18]+1.132281133*b[25]+0.540135431*b[32]+0.914702055*b[39]+0.504999442*b[46]+1.289521543*b[53]+0.637213608*b[60]+1.164412792*b[67]+0.624195834*b[74]+0.531968424*b[81]+0.766940956*b[88]+1.287734319*b[95]+1.226844689*b[102]+1.318512368*b[109]-1.85077114171429*x[150]-3.70154228342857*x[151]-5.55231342514286*x[152] == 0.0)
@constraint(m, e6, 0.758108132*b[5]+1.33888976*b[12]+1.20095942*b[19]+1.132281133*b[26]+0.540135431*b[33]+0.914702055*b[40]+0.504999442*b[47]+1.289521543*b[54]+0.637213608*b[61]+1.164412792*b[68]+0.624195834*b[75]+0.531968424*b[82]+0.766940956*b[89]+1.287734319*b[96]+1.226844689*b[103]+1.318512368*b[110]-1.950768312*x[153]-3.901536624*x[154]-5.852304936*x[155] == 0.0)
@constraint(m, e7, 0.758108132*b[6]+1.33888976*b[13]+1.20095942*b[20]+1.132281133*b[27]+0.540135431*b[34]+0.914702055*b[41]+0.504999442*b[48]+1.289521543*b[55]+0.637213608*b[62]+1.164412792*b[69]+0.624195834*b[76]+0.531968424*b[83]+0.766940956*b[90]+1.287734319*b[97]+1.226844689*b[104]+1.318512368*b[111]-1.55890640628571*x[156]-3.11781281257143*x[157]-4.67671921885714*x[158] == 0.0)
@constraint(m, e8, 0.758108132*b[7]+1.33888976*b[14]+1.20095942*b[21]+1.132281133*b[28]+0.540135431*b[35]+0.914702055*b[42]+0.504999442*b[49]+1.289521543*b[56]+0.637213608*b[63]+1.164412792*b[70]+0.624195834*b[77]+0.531968424*b[84]+0.766940956*b[91]+1.287734319*b[98]+1.226844689*b[105]+1.318512368*b[112]-1.92106166914286*x[159]-3.84212333828571*x[160]-5.76318500742857*x[161] == 0.0)
@constraint(m, e9, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7] == 1.0)
@constraint(m, e10, b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[14] == 1.0)
@constraint(m, e11, b[15]+b[16]+b[17]+b[18]+b[19]+b[20]+b[21] == 1.0)
@constraint(m, e12, b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28] == 1.0)
@constraint(m, e13, b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35] == 1.0)
@constraint(m, e14, b[36]+b[37]+b[38]+b[39]+b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45]+b[46]+b[47]+b[48]+b[49] == 1.0)
@constraint(m, e16, b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56] == 1.0)
@constraint(m, e17, b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63] == 1.0)
@constraint(m, e18, b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70] == 1.0)
@constraint(m, e19, b[71]+b[72]+b[73]+b[74]+b[75]+b[76]+b[77] == 1.0)
@constraint(m, e20, b[78]+b[79]+b[80]+b[81]+b[82]+b[83]+b[84] == 1.0)
@constraint(m, e21, b[85]+b[86]+b[87]+b[88]+b[89]+b[90]+b[91] == 1.0)
@constraint(m, e22, b[92]+b[93]+b[94]+b[95]+b[96]+b[97]+b[98] == 1.0)
@constraint(m, e23, b[99]+b[100]+b[101]+b[102]+b[103]+b[104]+b[105] == 1.0)
@constraint(m, e24, b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112] == 1.0)
@constraint(m, e25, b[113]+b[114]+b[115] <= 1.0)
@constraint(m, e26, b[116]+b[117]+b[118] <= 1.0)
@constraint(m, e27, b[119]+b[120]+b[121] <= 1.0)
@constraint(m, e28, b[122]+b[123]+b[124] <= 1.0)
@constraint(m, e29, b[125]+b[126]+b[127] <= 1.0)
@constraint(m, e30, b[128]+b[129]+b[130] <= 1.0)
@constraint(m, e31, b[131]+b[132]+b[133] <= 1.0)
@constraint(m, e32, -b[113]+x[141] <= 0.0)
@constraint(m, e33, -b[114]+x[142] <= 0.0)
@constraint(m, e34, -b[115]+x[143] <= 0.0)
@constraint(m, e35, -b[116]+x[144] <= 0.0)
@constraint(m, e36, -b[117]+x[145] <= 0.0)
@constraint(m, e37, -b[118]+x[146] <= 0.0)
@constraint(m, e38, -b[119]+x[147] <= 0.0)
@constraint(m, e39, -b[120]+x[148] <= 0.0)
@constraint(m, e40, -b[121]+x[149] <= 0.0)
@constraint(m, e41, -b[122]+x[150] <= 0.0)
@constraint(m, e42, -b[123]+x[151] <= 0.0)
@constraint(m, e43, -b[124]+x[152] <= 0.0)
@constraint(m, e44, -b[125]+x[153] <= 0.0)
@constraint(m, e45, -b[126]+x[154] <= 0.0)
@constraint(m, e46, -b[127]+x[155] <= 0.0)
@constraint(m, e47, -b[128]+x[156] <= 0.0)
@constraint(m, e48, -b[129]+x[157] <= 0.0)
@constraint(m, e49, -b[130]+x[158] <= 0.0)
@constraint(m, e50, -b[131]+x[159] <= 0.0)
@constraint(m, e51, -b[132]+x[160] <= 0.0)
@constraint(m, e52, -b[133]+x[161] <= 0.0)
@NLconstraint(m, e53, -x[134]/(1+x[134])+x[141] <= 0.0)
@NLconstraint(m, e54, -x[134]/(1+x[134])+x[142] <= 0.0)
@NLconstraint(m, e55, -x[134]/(1+x[134])+x[143] <= 0.0)
@NLconstraint(m, e56, -x[135]/(1+x[135])+x[144] <= 0.0)
@NLconstraint(m, e57, -x[135]/(1+x[135])+x[145] <= 0.0)
@NLconstraint(m, e58, -x[135]/(1+x[135])+x[146] <= 0.0)
@NLconstraint(m, e59, -x[136]/(1+x[136])+x[147] <= 0.0)
@NLconstraint(m, e60, -x[136]/(1+x[136])+x[148] <= 0.0)
@NLconstraint(m, e61, -x[136]/(1+x[136])+x[149] <= 0.0)
@NLconstraint(m, e62, -x[137]/(1+x[137])+x[150] <= 0.0)
@NLconstraint(m, e63, -x[137]/(1+x[137])+x[151] <= 0.0)
@NLconstraint(m, e64, -x[137]/(1+x[137])+x[152] <= 0.0)
@NLconstraint(m, e65, -x[138]/(1+x[138])+x[153] <= 0.0)
@NLconstraint(m, e66, -x[138]/(1+x[138])+x[154] <= 0.0)
@NLconstraint(m, e67, -x[138]/(1+x[138])+x[155] <= 0.0)
@NLconstraint(m, e68, -x[139]/(1+x[139])+x[156] <= 0.0)
@NLconstraint(m, e69, -x[139]/(1+x[139])+x[157] <= 0.0)
@NLconstraint(m, e70, -x[139]/(1+x[139])+x[158] <= 0.0)
@NLconstraint(m, e71, -x[140]/(1+x[140])+x[159] <= 0.0)
@NLconstraint(m, e72, -x[140]/(1+x[140])+x[160] <= 0.0)
@NLconstraint(m, e73, -x[140]/(1+x[140])+x[161] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
