using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, -111.366069033018*b[1]-173.736682895127*b[2]-206.584137827711*b[3]-311.192639215759*b[4]-391.096663187392*b[5]-412.724041015689*b[6]-362.90703724183*b[7]-412.238377551605*b[8]-202.33239914492*b[9]-206.873035263351*b[10]-459.424203486646*b[11]-436.382257935297*b[12]-595.212791352102*b[13]-554.589535228908*b[14]-561.749361850176*b[15]-581.529277658138*b[16]-530.881632918085*b[17]-536.948983658504*b[18]-325.467953593857*b[19]-315.525067375426*b[20]-76.225942040435*b[21]-254.905793105451*b[22]-113.004738070171*b[23]-177.189040572114*b[24]-173.894920684095*b[25]-152.600290074966*b[26]-204.409857240935*b[27]-16.5055441265287*b[28]-138.719762707452*b[29]-72.1288414712326*b[30]-120.847015325226*b[31]-99.571165171974*b[32]-151.849080781614*b[33]-145.681002740026*b[34]-319.104683215451*b[35]-286.753801045421*b[36]-393.925160475677*b[37]-359.934057246776*b[38]-372.757367428863*b[39]-380.320704273821*b[40]-209.897358368756*b[41]-176.903014825797*b[42]-484.441224042163*b[43]-386.398700662687*b[44]-569.816540558016*b[45]-500.146929279378*b[46]-536.081866783575*b[47]-538.164119624621*b[48]-472.75417976903*b[49]-394.671861667082*b[50]-661.778650400896*b[51]-311.233594837076*b[52]-537.233382862136*b[53]-352.610164566948*b[54]-508.430479292237*b[55]-433.246268236365*b[56]-240.434688571414*b[57]-247.573379889676*b[58]-140.125745864737*b[59]-129.619586841229*b[60]-95.259779915922*b[61]-157.318586867059*b[62]-70.3512639139942*b[63]-129.990055093272*b[64]-243.357134921591*b[65]-304.003791259259*b[66]-387.22826595551*b[67]-513.078195638243*b[68]-616.876803085642*b[69]-635.234357536375*b[70]-584.514585206566*b[71]-639.355553242285*b[72]-471.729855743646*b[73]-557.923885983252*b[74]-106.468143550206*b[75]-576.327451798806*b[76]-526.167479727853*b[77]-684.640492332848*b[78]-496.847481320222*b[79]-632.720138765642*b[80]-349.132941483343*b[81]-328.586110112758*b[82]-615.607044330971*b[83]-537.140113127724*b[84]-717.322415523131*b[85]-647.481188136546*b[86]-684.12778533852*b[87]-686.401242893627*b[88]-506.816284666641*b[89]-398.035848133399*b[90]-855.431776792172*b[91]-471.606942587939*b[92]-801.214873020304*b[93]-596.722224078614*b[94]-753.768882151975*b[95]-691.333659314473*b[96]-85.3675502274446*b[97]-158.379394593169*b[98]-257.300026361108*b[99]-320.704543355031*b[100]-448.126320657674*b[101]-457.763772256702*b[102]-408.83386135894*b[103]-463.255868286668*b[104]-237.144352702819*b[105]-177.481389098916*b[106]-528.418902427793*b[107]-367.481249017807*b[108]-581.69455257316*b[109]-486.218458446561*b[110]-545.202814571382*b[111]-534.842653535173*b[112]-273.315651326331*b[113]-294.736877404174*b[114]-91.5634612712189*b[115]-207.431742416254*b[116]-131.445214576321*b[117]-232.45283126314*b[118]-119.004267377741*b[119]-195.036716336294*b[120]-382.803613122328*b[121]-467.001607601617*b[122]-186.213458590968*b[123]-547.081668156355*b[124]-541.160249117729*b[125]-656.49566392312*b[126]-512.884098066802*b[127]-621.549425681682*b[128]-181.371452020713*b[129]-175.492124453316*b[130]-162.248252595624*b[131]-55.0280789945633*b[132]-114.798088119326*b[133]-107.382697687723*b[134]-90.3342797608636*b[135]-106.314336443356*b[136]-221.180367269329*b[137]-200.830918650843*b[138]-420.854797821172*b[139]-351.4013073243*b[140]-486.967847106279*b[141]-432.551908850222*b[142]-462.429481904519*b[143]-462.157040602356*b[144]-181.09388190356*b[145]-223.750754907429*b[146]-118.11570891131*b[147]-279.735432351987*b[148]-287.185185564983*b[149]-336.883342353846*b[150]-272.594688961982*b[151]-322.770119748047*b[152]-326.795248361408*b[153]-271.173036007453*b[154]-758.353052369709*b[155]-597.043789091874*b[156]-887.286114762329*b[157]-775.415492640821*b[158]-834.258761011951*b[159]-836.015790081594*b[160]-333.50853775*b[161]-114.488510347914*b[162]-71.1466014342705*b[163]-327.61554475*b[164]-115.456652447649*b[165]-72.6961052063678*b[166]-418.975572*b[167]-144.050104531568*b[168]-89.5861361571157*b[169]-441.6481805*b[170]-147.751509681552*b[171]-90.6409148587658*b[172]-284.85345325*b[173]-109.929987849219*b[174]-72.4317650925971*b[175]-364.98681475*b[176]-131.410153066893*b[177]-83.6314997177532*b[178]-261.83219775*b[179]-103.183186592188*b[180]-68.7017117455899*b[181]-481.55377575*b[182]-144.356933487536*b[183]-83.8297118343163*b[184]-88728.6114762329*x[185]-88728.6114762329*x[186]-88728.6114762329*x[187]-88728.6114762329*x[188]-88728.6114762329*x[189]-88728.6114762329*x[190]-88728.6114762329*x[191]-88728.6114762329*x[192]+objvar == 0.0)
@constraint(m, e2, 0.818476132*b[1]+0.870157536*b[9]+1.031851452*b[17]+0.557538685*b[25]+0.547431463*b[33]+0.875695399*b[41]+1.084580786*b[49]+0.730328391*b[57]+0.942474488*b[65]+1.428565416*b[73]+0.86023025*b[81]+1.427064072*b[89]+1.077855852*b[97]+0.966432495*b[105]+0.749586417*b[113]+1.20475136*b[121]+0.637168473*b[129]+0.637828387*b[137]+0.578555855*b[145]+1.377981994*b[153]-1.68639324125*x[193]-3.3727864825*x[194]-5.05917972375*x[195] == 0.0)
@constraint(m, e3, 0.818476132*b[2]+0.870157536*b[10]+1.031851452*b[18]+0.557538685*b[26]+0.547431463*b[34]+0.875695399*b[42]+1.084580786*b[50]+0.730328391*b[58]+0.942474488*b[66]+1.428565416*b[74]+0.86023025*b[82]+1.427064072*b[90]+1.077855852*b[98]+0.966432495*b[106]+0.749586417*b[114]+1.20475136*b[122]+0.637168473*b[130]+0.637828387*b[138]+0.578555855*b[146]+1.377981994*b[154]-1.792318871875*x[196]-3.58463774375*x[197]-5.376956615625*x[198] == 0.0)
@constraint(m, e4, 0.818476132*b[3]+0.870157536*b[11]+1.031851452*b[19]+0.557538685*b[27]+0.547431463*b[35]+0.875695399*b[43]+1.084580786*b[51]+0.730328391*b[59]+0.942474488*b[67]+1.428565416*b[75]+0.86023025*b[83]+1.427064072*b[91]+1.077855852*b[99]+0.966432495*b[107]+0.749586417*b[115]+1.20475136*b[123]+0.637168473*b[131]+0.637828387*b[139]+0.578555855*b[147]+1.377981994*b[155]-2.128386030625*x[199]-4.25677206125*x[200]-6.385158091875*x[201] == 0.0)
@constraint(m, e5, 0.818476132*b[4]+0.870157536*b[12]+1.031851452*b[20]+0.557538685*b[28]+0.547431463*b[36]+0.875695399*b[44]+1.084580786*b[52]+0.730328391*b[60]+0.942474488*b[68]+1.428565416*b[76]+0.86023025*b[84]+1.427064072*b[92]+1.077855852*b[100]+0.966432495*b[108]+0.749586417*b[116]+1.20475136*b[124]+0.637168473*b[132]+0.637828387*b[140]+0.578555855*b[148]+1.377981994*b[156]-2.066948260625*x[202]-4.13389652125*x[203]-6.200844781875*x[204] == 0.0)
@constraint(m, e6, 0.818476132*b[5]+0.870157536*b[13]+1.031851452*b[21]+0.557538685*b[29]+0.547431463*b[37]+0.875695399*b[45]+1.084580786*b[53]+0.730328391*b[61]+0.942474488*b[69]+1.428565416*b[77]+0.86023025*b[85]+1.427064072*b[93]+1.077855852*b[101]+0.966432495*b[109]+0.749586417*b[117]+1.20475136*b[125]+0.637168473*b[133]+0.637828387*b[141]+0.578555855*b[149]+1.377981994*b[157]-2.04641702*x[205]-4.09283404*x[206]-6.13925106*x[207] == 0.0)
@constraint(m, e7, 0.818476132*b[6]+0.870157536*b[14]+1.031851452*b[22]+0.557538685*b[30]+0.547431463*b[38]+0.875695399*b[46]+1.084580786*b[54]+0.730328391*b[62]+0.942474488*b[70]+1.428565416*b[78]+0.86023025*b[86]+1.427064072*b[94]+1.077855852*b[102]+0.966432495*b[110]+0.749586417*b[118]+1.20475136*b[126]+0.637168473*b[134]+0.637828387*b[142]+0.578555855*b[150]+1.377981994*b[158]-2.129217781875*x[208]-4.25843556375*x[209]-6.387653345625*x[210] == 0.0)
@constraint(m, e8, 0.818476132*b[7]+0.870157536*b[15]+1.031851452*b[23]+0.557538685*b[31]+0.547431463*b[39]+0.875695399*b[47]+1.084580786*b[55]+0.730328391*b[63]+0.942474488*b[71]+1.428565416*b[79]+0.86023025*b[87]+1.427064072*b[95]+1.077855852*b[103]+0.966432495*b[111]+0.749586417*b[119]+1.20475136*b[127]+0.637168473*b[135]+0.637828387*b[143]+0.578555855*b[151]+1.377981994*b[159]-2.002947450625*x[211]-4.00589490125*x[212]-6.008842351875*x[213] == 0.0)
@constraint(m, e9, 0.818476132*b[8]+0.870157536*b[16]+1.031851452*b[24]+0.557538685*b[32]+0.547431463*b[40]+0.875695399*b[48]+1.084580786*b[56]+0.730328391*b[64]+0.942474488*b[72]+1.428565416*b[80]+0.86023025*b[88]+1.427064072*b[96]+1.077855852*b[104]+0.966432495*b[112]+0.749586417*b[120]+1.20475136*b[128]+0.637168473*b[136]+0.637828387*b[144]+0.578555855*b[152]+1.377981994*b[160]-1.62146898*x[214]-3.24293796*x[215]-4.86440694*x[216] == 0.0)
@constraint(m, e10, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e11, b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16] == 1.0)
@constraint(m, e12, b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23]+b[24] == 1.0)
@constraint(m, e13, b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32] == 1.0)
@constraint(m, e14, b[33]+b[34]+b[35]+b[36]+b[37]+b[38]+b[39]+b[40] == 1.0)
@constraint(m, e15, b[41]+b[42]+b[43]+b[44]+b[45]+b[46]+b[47]+b[48] == 1.0)
@constraint(m, e16, b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56] == 1.0)
@constraint(m, e17, b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64] == 1.0)
@constraint(m, e18, b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72] == 1.0)
@constraint(m, e19, b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80] == 1.0)
@constraint(m, e20, b[81]+b[82]+b[83]+b[84]+b[85]+b[86]+b[87]+b[88] == 1.0)
@constraint(m, e21, b[89]+b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[96] == 1.0)
@constraint(m, e22, b[97]+b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104] == 1.0)
@constraint(m, e23, b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112] == 1.0)
@constraint(m, e24, b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120] == 1.0)
@constraint(m, e25, b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128] == 1.0)
@constraint(m, e26, b[129]+b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136] == 1.0)
@constraint(m, e27, b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143]+b[144] == 1.0)
@constraint(m, e28, b[145]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151]+b[152] == 1.0)
@constraint(m, e29, b[153]+b[154]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160] == 1.0)
@constraint(m, e30, b[161]+b[162]+b[163] <= 1.0)
@constraint(m, e31, b[164]+b[165]+b[166] <= 1.0)
@constraint(m, e32, b[167]+b[168]+b[169] <= 1.0)
@constraint(m, e33, b[170]+b[171]+b[172] <= 1.0)
@constraint(m, e34, b[173]+b[174]+b[175] <= 1.0)
@constraint(m, e35, b[176]+b[177]+b[178] <= 1.0)
@constraint(m, e36, b[179]+b[180]+b[181] <= 1.0)
@constraint(m, e37, b[182]+b[183]+b[184] <= 1.0)
@constraint(m, e38, -b[161]+x[193] <= 0.0)
@constraint(m, e39, -b[162]+x[194] <= 0.0)
@constraint(m, e40, -b[163]+x[195] <= 0.0)
@constraint(m, e41, -b[164]+x[196] <= 0.0)
@constraint(m, e42, -b[165]+x[197] <= 0.0)
@constraint(m, e43, -b[166]+x[198] <= 0.0)
@constraint(m, e44, -b[167]+x[199] <= 0.0)
@constraint(m, e45, -b[168]+x[200] <= 0.0)
@constraint(m, e46, -b[169]+x[201] <= 0.0)
@constraint(m, e47, -b[170]+x[202] <= 0.0)
@constraint(m, e48, -b[171]+x[203] <= 0.0)
@constraint(m, e49, -b[172]+x[204] <= 0.0)
@constraint(m, e50, -b[173]+x[205] <= 0.0)
@constraint(m, e51, -b[174]+x[206] <= 0.0)
@constraint(m, e52, -b[175]+x[207] <= 0.0)
@constraint(m, e53, -b[176]+x[208] <= 0.0)
@constraint(m, e54, -b[177]+x[209] <= 0.0)
@constraint(m, e55, -b[178]+x[210] <= 0.0)
@constraint(m, e56, -b[179]+x[211] <= 0.0)
@constraint(m, e57, -b[180]+x[212] <= 0.0)
@constraint(m, e58, -b[181]+x[213] <= 0.0)
@constraint(m, e59, -b[182]+x[214] <= 0.0)
@constraint(m, e60, -b[183]+x[215] <= 0.0)
@constraint(m, e61, -b[184]+x[216] <= 0.0)
@NLconstraint(m, e62, x[193]*b[161]+x[193]*x[185]-x[185]*b[161] <= 0.0)
@NLconstraint(m, e63, x[194]*b[162]+x[194]*x[185]-x[185]*b[162] <= 0.0)
@NLconstraint(m, e64, x[195]*b[163]+x[195]*x[185]-x[185]*b[163] <= 0.0)
@NLconstraint(m, e65, x[196]*b[164]+x[196]*x[186]-x[186]*b[164] <= 0.0)
@NLconstraint(m, e66, x[197]*b[165]+x[197]*x[186]-x[186]*b[165] <= 0.0)
@NLconstraint(m, e67, x[198]*b[166]+x[198]*x[186]-x[186]*b[166] <= 0.0)
@NLconstraint(m, e68, x[199]*b[167]+x[199]*x[187]-x[187]*b[167] <= 0.0)
@NLconstraint(m, e69, x[200]*b[168]+x[200]*x[187]-x[187]*b[168] <= 0.0)
@NLconstraint(m, e70, x[201]*b[169]+x[201]*x[187]-x[187]*b[169] <= 0.0)
@NLconstraint(m, e71, x[202]*b[170]+x[202]*x[188]-x[188]*b[170] <= 0.0)
@NLconstraint(m, e72, x[203]*b[171]+x[203]*x[188]-x[188]*b[171] <= 0.0)
@NLconstraint(m, e73, x[204]*b[172]+x[204]*x[188]-x[188]*b[172] <= 0.0)
@NLconstraint(m, e74, x[205]*b[173]+x[205]*x[189]-x[189]*b[173] <= 0.0)
@NLconstraint(m, e75, x[206]*b[174]+x[206]*x[189]-x[189]*b[174] <= 0.0)
@NLconstraint(m, e76, x[207]*b[175]+x[207]*x[189]-x[189]*b[175] <= 0.0)
@NLconstraint(m, e77, x[208]*b[176]+x[208]*x[190]-x[190]*b[176] <= 0.0)
@NLconstraint(m, e78, x[209]*b[177]+x[209]*x[190]-x[190]*b[177] <= 0.0)
@NLconstraint(m, e79, x[210]*b[178]+x[210]*x[190]-x[190]*b[178] <= 0.0)
@NLconstraint(m, e80, x[211]*b[179]+x[211]*x[191]-x[191]*b[179] <= 0.0)
@NLconstraint(m, e81, x[212]*b[180]+x[212]*x[191]-x[191]*b[180] <= 0.0)
@NLconstraint(m, e82, x[213]*b[181]+x[213]*x[191]-x[191]*b[181] <= 0.0)
@NLconstraint(m, e83, x[214]*b[182]+x[214]*x[192]-x[192]*b[182] <= 0.0)
@NLconstraint(m, e84, x[215]*b[183]+x[215]*x[192]-x[192]*b[183] <= 0.0)
@NLconstraint(m, e85, x[216]*b[184]+x[216]*x[192]-x[192]*b[184] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 