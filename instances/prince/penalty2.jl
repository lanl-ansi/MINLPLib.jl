using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-0.2)+x[1])^2+1e-5* ((-2.32657367623582)+exp(0.1*x[2])+exp(0.1*x[1]))^2+1e-5* ((-2.57126156573617)+exp(0.1*x[3])+exp(0.1*x[2]))^2+1e-5* ((-2.84168350521727)+exp(0.1*x[4])+exp(0.1*x[3]))^2+1e-5* ((-3.1405459683414)+exp(0.1*x[5])+exp(0.1*x[4]))^2+1e-5* ((-3.47084007109064)+exp(0.1*x[6])+exp(0.1*x[5]))^2+1e-5* ((-3.83587150786099)+exp(0.1*x[7])+exp(0.1*x[6]))^2+1e-5* ((-4.23929363596294)+exp(0.1*x[8])+exp(0.1*x[7]))^2+1e-5* ((-4.68514403964942)+exp(0.1*x[9])+exp(0.1*x[8]))^2+1e-5* ((-5.17788493961599)+exp(0.1*x[10])+exp(0.1*x[9]))^2+1e-5* ((-5.72244785240548)+exp(0.1*x[11])+exp(0.1*x[10]))^2+1e-5* ((-6.32428294668298)+exp(0.1*x[12])+exp(0.1*x[11]))^2+1e-5* ((-6.98941359035579)+exp(0.1*x[13])+exp(0.1*x[12]))^2+1e-5* ((-7.72449663446392)+exp(0.1*x[14])+exp(0.1*x[13]))^2+1e-5* ((-8.53688903718274)+exp(0.1*x[15])+exp(0.1*x[14]))^2+1e-5* ((-9.43472149473318)+exp(0.1*x[16])+exp(0.1*x[15]))^2+1e-5* ((-10.4269798161223)+exp(0.1*x[17])+exp(0.1*x[16]))^2+1e-5* ((-11.5235948561401)+exp(0.1*x[18])+exp(0.1*x[17]))^2+1e-5* ((-12.7355419066922)+exp(0.1*x[19])+exp(0.1*x[18]))^2+1e-5* ((-14.0749505412099)+exp(0.1*x[20])+exp(0.1*x[19]))^2+1e-5* ((-15.5552260114983)+exp(0.1*x[21])+exp(0.1*x[20]))^2+1e-5* ((-17.1911834120018)+exp(0.1*x[22])+exp(0.1*x[21]))^2+1e-5* ((-18.9991959542488)+exp(0.1*x[23])+exp(0.1*x[22]))^2+1e-5* ((-20.9973588354563)+exp(0.1*x[24])+exp(0.1*x[23]))^2+1e-5* ((-23.2056703413451)+exp(0.1*x[25])+exp(0.1*x[24]))^2+1e-5* ((-25.6462319957052)+exp(0.1*x[26])+exp(0.1*x[25]))^2+1e-5* ((-28.3434697598745)+exp(0.1*x[27])+exp(0.1*x[26]))^2+1e-5* ((-31.3243784959699)+exp(0.1*x[28])+exp(0.1*x[27]))^2+1e-5* ((-34.6187921405401)+exp(0.1*x[29])+exp(0.1*x[28]))^2+1e-5* ((-38.2596822926307)+exp(0.1*x[30])+exp(0.1*x[29]))^2+1e-5* ((-42.2834882046293)+exp(0.1*x[31])+exp(0.1*x[30]))^2+1e-5* ((-46.730481478551)+exp(0.1*x[32])+exp(0.1*x[31]))^2+1e-5* ((-51.6451691177672)+exp(0.1*x[33])+exp(0.1*x[32]))^2+1e-5* ((-57.0767389680549)+exp(0.1*x[34])+exp(0.1*x[33]))^2+1e-5* ((-63.0795520060893)+exp(0.1*x[35])+exp(0.1*x[34]))^2+1e-5* ((-69.7136864023703)+exp(0.1*x[36])+exp(0.1*x[35]))^2+1e-5* ((-77.0455388037454)+exp(0.1*x[37])+exp(0.1*x[36]))^2+1e-5* ((-85.1484888533682)+exp(0.1*x[38])+exp(0.1*x[37]))^2+1e-5* ((-94.103633598831)+exp(0.1*x[39])+exp(0.1*x[38]))^2+1e-5* ((-104.000599138674)+exp(0.1*x[40])+exp(0.1*x[39]))^2+1e-5* ((-114.938437630506)+exp(0.1*x[41])+exp(0.1*x[40]))^2+1e-5* ((-127.026618638287)+exp(0.1*x[42])+exp(0.1*x[41]))^2+1e-5* ((-140.386124740521)+exp(0.1*x[43])+exp(0.1*x[42]))^2+1e-5* ((-155.150662364564)+exp(0.1*x[44])+exp(0.1*x[43]))^2+1e-5* ((-171.46799996549)+exp(0.1*x[45])+exp(0.1*x[44]))^2+1e-5* ((-189.501446942456)+exp(0.1*x[46])+exp(0.1*x[45]))^2+1e-5* ((-209.431488094057)+exp(0.1*x[47])+exp(0.1*x[46]))^2+1e-5* ((-231.457589970858)+exp(0.1*x[48])+exp(0.1*x[47]))^2+1e-5* ((-255.80019720367)+exp(0.1*x[49])+exp(0.1*x[48]))^2+1e-5* ((-282.702938787512)+exp(0.1*x[50])+exp(0.1*x[49]))^2+1e-5* ((-312.435066402478)+exp(0.1*x[51])+exp(0.1*x[50]))^2+1e-5* ((-345.294149175053)+exp(0.1*x[52])+exp(0.1*x[51]))^2+1e-5* ((-381.609051849943)+exp(0.1*x[53])+exp(0.1*x[52]))^2+1e-5* ((-421.743226178979)+exp(0.1*x[54])+exp(0.1*x[53]))^2+1e-5* ((-466.098348468408)+exp(0.1*x[55])+exp(0.1*x[54]))^2+1e-5* ((-515.118339690373)+exp(0.1*x[56])+exp(0.1*x[55]))^2+1e-5* ((-569.293808393213)+exp(0.1*x[57])+exp(0.1*x[56]))^2+1e-5* ((-629.166960876709)+exp(0.1*x[58])+exp(0.1*x[57]))^2+1e-5* ((-695.337027774978)+exp(0.1*x[59])+exp(0.1*x[58]))^2+1e-5* ((-768.466261358064)+exp(0.1*x[60])+exp(0.1*x[59]))^2+1e-5* ((-849.286563575252)+exp(0.1*x[61])+exp(0.1*x[60]))^2+1e-5* ((-938.606811175773)+exp(0.1*x[62])+exp(0.1*x[61]))^2+1e-5* ((-1037.32095121919)+exp(0.1*x[63])+exp(0.1*x[62]))^2+1e-5* ((-1146.41694799801)+exp(0.1*x[64])+exp(0.1*x[63]))^2+1e-5* ((-1266.98667091644)+exp(0.1*x[65])+exp(0.1*x[64]))^2+1e-5* ((-1400.23682228633)+exp(0.1*x[66])+exp(0.1*x[65]))^2+1e-5* ((-1547.50101440952)+exp(0.1*x[67])+exp(0.1*x[66]))^2+1e-5* ((-1710.25311681796)+exp(0.1*x[68])+exp(0.1*x[67]))^2+1e-5* ((-1890.12200725544)+exp(0.1*x[69])+exp(0.1*x[68]))^2+1e-5* ((-2088.90787403348)+exp(0.1*x[70])+exp(0.1*x[69]))^2+1e-5* ((-2308.60023292104)+exp(0.1*x[71])+exp(0.1*x[70]))^2+1e-5* ((-2551.39783888699)+exp(0.1*x[72])+exp(0.1*x[71]))^2+1e-5* ((-2819.73069197896)+exp(0.1*x[73])+exp(0.1*x[72]))^2+1e-5* ((-3116.28435758047)+exp(0.1*x[74])+exp(0.1*x[73]))^2+1e-5* ((-3444.02684445199)+exp(0.1*x[75])+exp(0.1*x[74]))^2+1e-5* ((-3806.23830956018)+exp(0.1*x[76])+exp(0.1*x[75]))^2+1e-5* ((-4206.54388699133)+exp(0.1*x[77])+exp(0.1*x[76]))^2+1e-5* ((-4648.94996951171)+exp(0.1*x[78])+exp(0.1*x[77]))^2+1e-5* ((-5137.88430589301)+exp(0.1*x[79])+exp(0.1*x[78]))^2+1e-5* ((-5678.24031531024)+exp(0.1*x[80])+exp(0.1*x[79]))^2+1e-5* ((-6275.42606232557)+exp(0.1*x[81])+exp(0.1*x[80]))^2+1e-5* ((-6935.41838261619)+exp(0.1*x[82])+exp(0.1*x[81]))^2+1e-5* ((-7664.82270115467)+exp(0.1*x[83])+exp(0.1*x[82]))^2+1e-5* ((-8470.93914152217)+exp(0.1*x[84])+exp(0.1*x[83]))^2+1e-5* ((-9361.83558799899)+exp(0.1*x[85])+exp(0.1*x[84]))^2+1e-5* ((-10346.4284316621)+exp(0.1*x[86])+exp(0.1*x[85]))^2+1e-5* ((-11434.571808624)+exp(0.1*x[87])+exp(0.1*x[86]))^2+1e-5* ((-12637.1562235389)+exp(0.1*x[88])+exp(0.1*x[87]))^2+1e-5* ((-13966.2175454339)+exp(0.1*x[89])+exp(0.1*x[88]))^2+1e-5* ((-15435.0574667314)+exp(0.1*x[90])+exp(0.1*x[89]))^2+1e-5* ((-17058.3766310579)+exp(0.1*x[91])+exp(0.1*x[90]))^2+1e-5* ((-18852.4217622264)+exp(0.1*x[92])+exp(0.1*x[91]))^2+1e-5* ((-20835.1482669091)+exp(0.1*x[93])+exp(0.1*x[92]))^2+1e-5* ((-23026.3999383822)+exp(0.1*x[94])+exp(0.1*x[93]))^2+1e-5* ((-25448.1075598789)+exp(0.1*x[95])+exp(0.1*x[94]))^2+1e-5* ((-28124.5083952391)+exp(0.1*x[96])+exp(0.1*x[95]))^2+1e-5* ((-31082.3887635927)+exp(0.1*x[97])+exp(0.1*x[96]))^2+1e-5* ((-34351.3521258439)+exp(0.1*x[98])+exp(0.1*x[97]))^2+1e-5* ((-37964.1153660588)+exp(0.1*x[99])+exp(0.1*x[98]))^2+1e-5* ((-41956.836233037)+exp(0.1*x[100])+exp(0.1*x[99]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[2]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[3]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[4]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[5]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[6]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[7]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[8]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[9]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[10]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[11]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[12]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[13]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[14]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[15]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[16]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[17]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[18]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[19]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[20]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[21]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[22]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[23]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[24]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[25]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[26]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[27]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[28]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[29]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[30]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[31]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[32]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[33]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[34]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[35]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[36]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[37]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[38]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[39]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[40]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[41]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[42]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[43]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[44]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[45]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[46]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[47]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[48]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[49]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[50]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[51]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[52]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[53]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[54]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[55]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[56]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[57]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[58]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[59]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[60]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[61]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[62]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[63]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[64]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[65]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[66]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[67]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[68]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[69]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[70]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[71]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[72]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[73]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[74]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[75]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[76]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[77]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[78]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[79]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[80]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[81]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[82]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[83]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[84]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[85]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[86]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[87]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[88]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[89]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[90]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[91]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[92]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[93]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[94]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[95]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[96]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[97]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[98]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[99]))^2+1e-5* ((-0.90483741803596)+exp(0.1*x[100]))^2+ ((-1)+100*x[1]*x[1]+99*x[2]*x[2]+98*x[3]*x[3]+97*x[4]*x[4]+96*x[5]*x[5]+95*x[6]*x[6]+94*x[7]*x[7]+93*x[8]*x[8]+92*x[9]*x[9]+91*x[10]*x[10]+90*x[11]*x[11]+89*x[12]*x[12]+88*x[13]*x[13]+87*x[14]*x[14]+86*x[15]*x[15]+85*x[16]*x[16]+84*x[17]*x[17]+83*x[18]*x[18]+82*x[19]*x[19]+81*x[20]*x[20]+80*x[21]*x[21]+79*x[22]*x[22]+78*x[23]*x[23]+77*x[24]*x[24]+76*x[25]*x[25]+75*x[26]*x[26]+74*x[27]*x[27]+73*x[28]*x[28]+72*x[29]*x[29]+71*x[30]*x[30]+70*x[31]*x[31]+69*x[32]*x[32]+68*x[33]*x[33]+67*x[34]*x[34]+66*x[35]*x[35]+65*x[36]*x[36]+64*x[37]*x[37]+63*x[38]*x[38]+62*x[39]*x[39]+61*x[40]*x[40]+60*x[41]*x[41]+59*x[42]*x[42]+58*x[43]*x[43]+57*x[44]*x[44]+56*x[45]*x[45]+55*x[46]*x[46]+54*x[47]*x[47]+53*x[48]*x[48]+52*x[49]*x[49]+51*x[50]*x[50]+50*x[51]*x[51]+49*x[52]*x[52]+48*x[53]*x[53]+47*x[54]*x[54]+46*x[55]*x[55]+45*x[56]*x[56]+44*x[57]*x[57]+43*x[58]*x[58]+42*x[59]*x[59]+41*x[60]*x[60]+40*x[61]*x[61]+39*x[62]*x[62]+38*x[63]*x[63]+37*x[64]*x[64]+36*x[65]*x[65]+35*x[66]*x[66]+34*x[67]*x[67]+33*x[68]*x[68]+32*x[69]*x[69]+31*x[70]*x[70]+30*x[71]*x[71]+29*x[72]*x[72]+28*x[73]*x[73]+27*x[74]*x[74]+26*x[75]*x[75]+25*x[76]*x[76]+24*x[77]*x[77]+23*x[78]*x[78]+22*x[79]*x[79]+21*x[80]*x[80]+20*x[81]*x[81]+19*x[82]*x[82]+18*x[83]*x[83]+17*x[84]*x[84]+16*x[85]*x[85]+15*x[86]*x[86]+14*x[87]*x[87]+13*x[88]*x[88]+12*x[89]*x[89]+11*x[90]*x[90]+10*x[91]*x[91]+9*x[92]*x[92]+8*x[93]*x[93]+7*x[94]*x[94]+6*x[95]*x[95]+5*x[96]*x[96]+4*x[97]*x[97]+3*x[98]*x[98]+2*x[99]*x[99]+x[100]*x[100])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
