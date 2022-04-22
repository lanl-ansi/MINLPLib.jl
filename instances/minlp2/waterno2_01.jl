using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167]
@variable(m, x[x_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[12], -1000.0)
set_upper_bound(x[12], 1000.0)
set_lower_bound(x[16], -1000.0)
set_upper_bound(x[16], 1000.0)
set_lower_bound(x[19], -1000.0)
set_upper_bound(x[19], 1000.0)
set_lower_bound(x[23], -1000.0)
set_upper_bound(x[23], 1000.0)
set_lower_bound(x[26], -1000.0)
set_upper_bound(x[26], 1000.0)
set_lower_bound(x[30], -1000.0)
set_upper_bound(x[30], 1000.0)
set_upper_bound(x[33], 5.0)
set_upper_bound(x[34], 5.0)
set_upper_bound(x[35], 2.4)
set_upper_bound(x[36], 5.0)
set_upper_bound(x[37], 2.4)
set_upper_bound(x[38], 5.0)
set_upper_bound(x[39], 5.0)
set_upper_bound(x[40], 1.16)
set_upper_bound(x[41], 5.0)
set_lower_bound(x[42], 3.5)
set_upper_bound(x[42], 3.5)
set_lower_bound(x[43], 2.0)
set_upper_bound(x[43], 5.0)
set_lower_bound(x[44], 4.1)
set_upper_bound(x[44], 4.1)
set_lower_bound(x[45], 2.5)
set_upper_bound(x[45], 5.0)
set_lower_bound(x[46], 4.0)
set_upper_bound(x[46], 4.0)
set_lower_bound(x[47], 2.0)
set_upper_bound(x[47], 6.0)
set_upper_bound(x[48], 0.8)
set_lower_bound(x[49], -1000.0)
set_upper_bound(x[49], 1000.0)
set_upper_bound(x[50], 0.8)
set_upper_bound(x[52], 0.8)
set_upper_bound(x[54], 0.5)
set_upper_bound(x[56], 0.5)
set_lower_bound(x[57], -1000.0)
set_upper_bound(x[57], 1000.0)
set_upper_bound(x[58], 0.7)
set_upper_bound(x[60], 0.7)
set_upper_bound(x[62], 0.58)
set_lower_bound(x[63], -1000.0)
set_upper_bound(x[63], 1000.0)
set_upper_bound(x[64], 0.58)
set_lower_bound(x[66], 62.0)
set_upper_bound(x[66], 65.0)
set_lower_bound(x[67], 92.5)
set_upper_bound(x[67], 95.0)
set_lower_bound(x[68], 105.0)
set_upper_bound(x[68], 109.0)
set_upper_bound(x[69], 1000.0)
set_lower_bound(x[70], -125.0)
set_upper_bound(x[70], 125.0)
set_upper_bound(x[71], 1000.0)
set_upper_bound(x[72], 1000.0)
set_lower_bound(x[73], -100.0)
set_upper_bound(x[73], 100.0)
set_upper_bound(x[74], 1000.0)
set_lower_bound(x[75], -125.0)
set_upper_bound(x[75], 125.0)
set_lower_bound(x[76], 49.0)
set_upper_bound(x[76], 49.0)
set_lower_bound(x[77], -49.0)
set_upper_bound(x[77], 1000.0)
set_lower_bound(x[78], -65.0)
set_upper_bound(x[78], 1000.0)
set_lower_bound(x[79], -95.0)
set_upper_bound(x[79], 1000.0)
set_lower_bound(x[80], 0.2)
set_upper_bound(x[80], 0.8)
set_lower_bound(x[81], 0.2)
set_upper_bound(x[81], 0.8)
set_lower_bound(x[82], 0.2)
set_upper_bound(x[82], 0.8)
set_lower_bound(x[83], 0.25)
set_upper_bound(x[83], 0.5)
set_lower_bound(x[84], 0.25)
set_upper_bound(x[84], 0.5)
set_lower_bound(x[85], 0.4)
set_upper_bound(x[85], 0.7)
set_lower_bound(x[86], 0.4)
set_upper_bound(x[86], 0.7)
set_lower_bound(x[87], 0.24)
set_upper_bound(x[87], 0.58)
set_lower_bound(x[88], 0.24)
set_upper_bound(x[88], 0.58)
set_lower_bound(x[89], 0.6)
set_upper_bound(x[89], 1.0)
set_lower_bound(x[90], 0.8)
set_upper_bound(x[90], 1.0)
set_lower_bound(x[91], 0.85)
set_upper_bound(x[91], 1.0)
set_lower_bound(x[92], 0.7)
set_upper_bound(x[92], 1.0)
set_lower_bound(x[93], 100.0)
set_upper_bound(x[93], 1000.0)
set_upper_bound(x[94], 54.1717996137183)
set_upper_bound(x[99], 54.1717996137183)
set_upper_bound(x[104], 54.1717996137183)
set_upper_bound(x[109], 93.045051789432)
set_upper_bound(x[114], 93.045051789432)
set_upper_bound(x[119], 112.384987749469)
set_upper_bound(x[124], 112.384987749469)
set_upper_bound(x[129], 42.066542469172)
set_upper_bound(x[134], 42.066542469172)
set_upper_bound(x[139], 25.0)
set_upper_bound(x[140], 25.0)
set_upper_bound(x[141], 25.0)
set_upper_bound(x[142], 0.64)
set_upper_bound(x[143], 0.512)
set_upper_bound(x[144], 0.64)
set_upper_bound(x[145], 0.512)
set_upper_bound(x[146], 0.64)
set_upper_bound(x[147], 0.512)
set_upper_bound(x[148], 0.25)
set_upper_bound(x[149], 0.125)
set_upper_bound(x[150], 0.25)
set_upper_bound(x[151], 0.125)
set_upper_bound(x[152], 0.49)
set_upper_bound(x[153], 0.343)
set_upper_bound(x[154], 0.49)
set_upper_bound(x[155], 0.343)
set_upper_bound(x[156], 0.3364)
set_upper_bound(x[157], 0.195112)
set_upper_bound(x[158], 0.3364)
set_upper_bound(x[159], 0.195112)
set_lower_bound(x[160], 0.36)
set_upper_bound(x[160], 1.0)
set_lower_bound(x[161], 0.216)
set_upper_bound(x[161], 1.0)
set_lower_bound(x[162], 0.64)
set_upper_bound(x[162], 1.0)
set_lower_bound(x[163], 0.512)
set_upper_bound(x[163], 1.0)
set_lower_bound(x[164], 0.7225)
set_upper_bound(x[164], 1.0)
set_lower_bound(x[165], 0.614125)
set_upper_bound(x[165], 1.0)
set_lower_bound(x[166], 0.49)
set_upper_bound(x[166], 1.0)
set_lower_bound(x[167], 0.343)
set_upper_bound(x[167], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[94]-x[99]-x[104]-x[109]-x[114]-x[119]-x[124]-x[129]-x[134] == 0.0)
@constraint(m, e2, x[49]+27.42831624*x[51]+37.5407324*x[53]-57.2814121*x[55] == 0.0)
@constraint(m, e3, -57.2814121*x[55]+x[57]+27.42831624*x[59]+37.5407324*x[61] == 0.0)
@constraint(m, e4, 37.5407324*x[11]-57.2814121*x[55]+x[63]+27.42831624*x[65] == 0.0)
@constraint(m, e5, x[12]+50.37356589*x[13]+43.14087708*x[14]-76.45219958*x[15] == 0.0)
@constraint(m, e6, -76.45219958*x[15]+x[16]+50.37356589*x[17]+43.14087708*x[18] == 0.0)
@constraint(m, e7, x[19]-25.39911174*x[20]+58.31011875*x[21]-69.39622571*x[22] == 0.0)
@constraint(m, e8, -69.39622571*x[22]+x[23]-25.39911174*x[24]+58.31011875*x[25] == 0.0)
@constraint(m, e9, x[26]+63.61644904*x[27]-2.03724124*x[28]-34.92732674*x[29] == 0.0)
@constraint(m, e10, -34.92732674*x[29]+x[30]+63.61644904*x[31]-2.03724124*x[32] == 0.0)
@constraint(m, e11, x[33] >= 0.296666667)
@constraint(m, e12, -x[34]+x[35] == 0.0)
@constraint(m, e13, -x[36]+x[37] == 0.0)
@constraint(m, e14, x[36]-x[38] == 0.0)
@constraint(m, e15, -x[39]+x[40] == 0.0)
@constraint(m, e16, x[41] == 0.296666667)
@constraint(m, e17, x[33]-x[35] == 0.0)
@constraint(m, e18, 3600*x[34]-3600*x[37]+1800*x[42]-1800*x[43] == 0.0)
@constraint(m, e19, 3600*x[38]-3600*x[40]+720*x[44]-720*x[45] == 0.0)
@constraint(m, e20, 3600*x[39]-3600*x[41]+1600*x[46]-1600*x[47] == 0.0)
@constraint(m, e21, -0.2*b[2]+x[48] >= 0.0)
@constraint(m, e22, -0.2*b[3]+x[50] >= 0.0)
@constraint(m, e23, -0.2*b[4]+x[52] >= 0.0)
@constraint(m, e24, -0.25*b[5]+x[54] >= 0.0)
@constraint(m, e25, -0.25*b[6]+x[56] >= 0.0)
@constraint(m, e26, -0.4*b[7]+x[58] >= 0.0)
@constraint(m, e27, -0.4*b[8]+x[60] >= 0.0)
@constraint(m, e28, -0.24*b[9]+x[62] >= 0.0)
@constraint(m, e29, -0.24*b[10]+x[64] >= 0.0)
@constraint(m, e30, -0.8*b[2]+x[48] <= 0.0)
@constraint(m, e31, -0.8*b[3]+x[50] <= 0.0)
@constraint(m, e32, -0.8*b[4]+x[52] <= 0.0)
@constraint(m, e33, -0.5*b[5]+x[54] <= 0.0)
@constraint(m, e34, -0.5*b[6]+x[56] <= 0.0)
@constraint(m, e35, -0.7*b[7]+x[58] <= 0.0)
@constraint(m, e36, -0.7*b[8]+x[60] <= 0.0)
@constraint(m, e37, -0.58*b[9]+x[62] <= 0.0)
@constraint(m, e38, -0.58*b[10]+x[64] <= 0.0)
@constraint(m, e39, -x[42]+x[66] == 60.0)
@constraint(m, e40, -x[44]+x[67] == 90.0)
@constraint(m, e41, -x[46]+x[68] == 103.0)
@constraint(m, e42, -x[66]+x[69]-x[70] == 0.0)
@constraint(m, e43, x[71]-x[72]-x[73] == 0.0)
@constraint(m, e44, -x[68]+x[74]-x[75] == 0.0)
@constraint(m, e45, x[69]-x[76]-x[77] == 0.0)
@constraint(m, e46, -x[66]+x[71]-x[78] == 0.0)
@constraint(m, e47, -x[67]+x[74]-x[79] == 0.0)
@constraint(m, e48, 0.2*b[2]-x[48]+x[80] <= 0.2)
@constraint(m, e49, 0.2*b[3]-x[50]+x[81] <= 0.2)
@constraint(m, e50, 0.2*b[4]-x[52]+x[82] <= 0.2)
@constraint(m, e51, 0.25*b[5]-x[54]+x[83] <= 0.25)
@constraint(m, e52, 0.25*b[6]-x[56]+x[84] <= 0.25)
@constraint(m, e53, 0.4*b[7]-x[58]+x[85] <= 0.4)
@constraint(m, e54, 0.4*b[8]-x[60]+x[86] <= 0.4)
@constraint(m, e55, 0.24*b[9]-x[62]+x[87] <= 0.24)
@constraint(m, e56, 0.24*b[10]-x[64]+x[88] <= 0.24)
@constraint(m, e57, -x[48]+x[80] >= 0.0)
@constraint(m, e58, -x[50]+x[81] >= 0.0)
@constraint(m, e59, -x[52]+x[82] >= 0.0)
@constraint(m, e60, -x[54]+x[83] >= 0.0)
@constraint(m, e61, -x[56]+x[84] >= 0.0)
@constraint(m, e62, -x[58]+x[85] >= 0.0)
@constraint(m, e63, -x[60]+x[86] >= 0.0)
@constraint(m, e64, -x[62]+x[87] >= 0.0)
@constraint(m, e65, -x[64]+x[88] >= 0.0)
@constraint(m, e66, -0.6*b[2]+x[80] <= 0.2)
@constraint(m, e67, -0.6*b[3]+x[81] <= 0.2)
@constraint(m, e68, -0.6*b[4]+x[82] <= 0.2)
@constraint(m, e69, -0.25*b[5]+x[83] <= 0.25)
@constraint(m, e70, -0.25*b[6]+x[84] <= 0.25)
@constraint(m, e71, -0.3*b[7]+x[85] <= 0.4)
@constraint(m, e72, -0.3*b[8]+x[86] <= 0.4)
@constraint(m, e73, -0.34*b[9]+x[87] <= 0.24)
@constraint(m, e74, -0.34*b[10]+x[88] <= 0.24)
@constraint(m, e75, -0.4*b[2]+x[89] <= 0.6)
@constraint(m, e76, -0.2*b[5]+x[90] <= 0.8)
@constraint(m, e77, -0.15*b[7]+x[91] <= 0.85)
@constraint(m, e78, -0.3*b[9]+x[92] <= 0.7)
@constraint(m, e79, b[2]-b[3] >= 0.0)
@constraint(m, e80, b[3]-b[4] >= 0.0)
@constraint(m, e81, b[5]-b[6] >= 0.0)
@constraint(m, e82, b[7]-b[8] >= 0.0)
@constraint(m, e83, b[9]-b[10] >= 0.0)
@constraint(m, e84, x[35]-x[48]-x[50]-x[52] == 0.0)
@constraint(m, e85, x[37]-x[54]-x[56]-x[58]-x[60] == 0.0)
@constraint(m, e86, x[40]-x[62]-x[64] == 0.0)
@constraint(m, e87, -2000*b[2]+x[49]-x[77] >= -2000.0)
@constraint(m, e88, -2000*b[3]+x[57]-x[77] >= -2000.0)
@constraint(m, e89, -2000*b[4]+x[63]-x[77] >= -2000.0)
@constraint(m, e90, -2000*b[5]+x[12]-x[78] >= -2000.0)
@constraint(m, e91, -2000*b[6]+x[16]-x[78] >= -2000.0)
@constraint(m, e92, -2000*b[7]+x[19]-x[78] >= -2000.0)
@constraint(m, e93, -2000*b[8]+x[23]-x[78] >= -2000.0)
@constraint(m, e94, -2000*b[9]+x[26]-x[79] >= -2000.0)
@constraint(m, e95, -2000*b[10]+x[30]-x[79] >= -2000.0)
@constraint(m, e96, 1049*b[2]+x[49]-x[77] <= 1049.0)
@constraint(m, e97, 1049*b[3]+x[57]-x[77] <= 1049.0)
@constraint(m, e98, 1049*b[4]+x[63]-x[77] <= 1049.0)
@constraint(m, e99, 1065*b[5]+x[12]-x[78] <= 1065.0)
@constraint(m, e100, 1065*b[6]+x[16]-x[78] <= 1065.0)
@constraint(m, e101, 1065*b[7]+x[19]-x[78] <= 1065.0)
@constraint(m, e102, 1065*b[8]+x[23]-x[78] <= 1065.0)
@constraint(m, e103, 1095*b[9]+x[26]-x[79] <= 1095.0)
@constraint(m, e104, 1095*b[10]+x[30]-x[79] <= 1095.0)
@constraint(m, e105, -x[67]+x[72] >= 0.0)
@constraint(m, e106, x[68]-x[93] >= 0.0)
@constraint(m, e107, -0.309838295393634*x[94]+13.94696158*x[95]+24.46510819*x[96]-7.28623839*x[97]-23.57687014*x[98] <= 0.0)
@constraint(m, e108, -0.309838295393634*x[99]+13.94696158*x[100]+24.46510819*x[101]-7.28623839*x[102]-23.57687014*x[103] <= 0.0)
@constraint(m, e109, -0.309838295393634*x[104]+13.94696158*x[105]+24.46510819*x[106]-7.28623839*x[107]-23.57687014*x[108] <= 0.0)
@constraint(m, e110, -0.309838295393634*x[109]+29.29404529*x[110]-108.39408287*x[111]+442.21990639*x[112]-454.58448169*x[113] <= 0.0)
@constraint(m, e111, -0.309838295393634*x[114]+29.29404529*x[115]-108.39408287*x[116]+442.21990639*x[117]-454.58448169*x[118] <= 0.0)
@constraint(m, e112, -0.309838295393634*x[119]+25.92674585*x[120]+18.13482123*x[121]+22.12766012*x[122]-42.68950769*x[123] <= 0.0)
@constraint(m, e113, -0.309838295393634*x[124]+25.92674585*x[125]+18.13482123*x[126]+22.12766012*x[127]-42.68950769*x[128] <= 0.0)
@constraint(m, e114, -0.309838295393634*x[129]+17.4714791*x[130]-39.98407808*x[131]+134.55943082*x[132]-135.88441782*x[133] <= 0.0)
@constraint(m, e115, -0.309838295393634*x[134]+17.4714791*x[135]-39.98407808*x[136]+134.55943082*x[137]-135.88441782*x[138] <= 0.0)
@NLconstraint(m, e116,  (x[34])^2-x[139] == 0.0)
@constraint(m, e117, x[70]-5*x[139] == 0.0)
@NLconstraint(m, e118,  (x[36])^2-x[140] == 0.0)
@constraint(m, e119, x[73]-4*x[140] == 0.0)
@NLconstraint(m, e120,  (x[39])^2-x[141] == 0.0)
@constraint(m, e121, x[75]-5*x[141] == 0.0)
@NLconstraint(m, e122,  (x[48])^2-x[142] == 0.0)
@constraint(m, e123, x[51]-x[142] == 0.0)
@NLconstraint(m, e124,  (x[48])^3-x[143] == 0.0)
@constraint(m, e125, x[98]-x[143] == 0.0)
@NLconstraint(m, e126,  (x[50])^2-x[144] == 0.0)
@constraint(m, e127, x[59]-x[144] == 0.0)
@NLconstraint(m, e128,  (x[50])^3-x[145] == 0.0)
@constraint(m, e129, x[103]-x[145] == 0.0)
@NLconstraint(m, e130,  (x[52])^2-x[146] == 0.0)
@constraint(m, e131, x[65]-x[146] == 0.0)
@NLconstraint(m, e132,  (x[52])^3-x[147] == 0.0)
@constraint(m, e133, x[108]-x[147] == 0.0)
@NLconstraint(m, e134,  (x[54])^2-x[148] == 0.0)
@constraint(m, e135, x[13]-x[148] == 0.0)
@NLconstraint(m, e136,  (x[54])^3-x[149] == 0.0)
@constraint(m, e137, x[113]-x[149] == 0.0)
@NLconstraint(m, e138,  (x[56])^2-x[150] == 0.0)
@constraint(m, e139, x[17]-x[150] == 0.0)
@NLconstraint(m, e140,  (x[56])^3-x[151] == 0.0)
@constraint(m, e141, x[118]-x[151] == 0.0)
@NLconstraint(m, e142,  (x[58])^2-x[152] == 0.0)
@constraint(m, e143, x[20]-x[152] == 0.0)
@NLconstraint(m, e144,  (x[58])^3-x[153] == 0.0)
@constraint(m, e145, x[123]-x[153] == 0.0)
@NLconstraint(m, e146,  (x[60])^2-x[154] == 0.0)
@constraint(m, e147, x[24]-x[154] == 0.0)
@NLconstraint(m, e148,  (x[60])^3-x[155] == 0.0)
@constraint(m, e149, x[128]-x[155] == 0.0)
@NLconstraint(m, e150,  (x[62])^2-x[156] == 0.0)
@constraint(m, e151, x[27]-x[156] == 0.0)
@NLconstraint(m, e152,  (x[62])^3-x[157] == 0.0)
@constraint(m, e153, x[133]-x[157] == 0.0)
@NLconstraint(m, e154,  (x[64])^2-x[158] == 0.0)
@constraint(m, e155, x[31]-x[158] == 0.0)
@NLconstraint(m, e156,  (x[64])^3-x[159] == 0.0)
@constraint(m, e157, x[138]-x[159] == 0.0)
@NLconstraint(m, e158, x[48]*x[89]-x[53] == 0.0)
@NLconstraint(m, e159, x[89]*x[142]-x[97] == 0.0)
@NLconstraint(m, e160, x[50]*x[89]-x[61] == 0.0)
@NLconstraint(m, e161, x[89]*x[144]-x[102] == 0.0)
@NLconstraint(m, e162, x[52]*x[89]-x[11] == 0.0)
@NLconstraint(m, e163, x[89]*x[146]-x[107] == 0.0)
@NLconstraint(m, e164,  (x[89])^2-x[160] == 0.0)
@constraint(m, e165, x[55]-x[160] == 0.0)
@NLconstraint(m, e166, x[48]*x[160]-x[96] == 0.0)
@NLconstraint(m, e167, x[50]*x[160]-x[101] == 0.0)
@NLconstraint(m, e168, x[52]*x[160]-x[106] == 0.0)
@NLconstraint(m, e169,  (x[89])^3-x[161] == 0.0)
@NLconstraint(m, e170, b[2]*x[161]-x[95] == 0.0)
@NLconstraint(m, e171, b[3]*x[161]-x[100] == 0.0)
@NLconstraint(m, e172, b[4]*x[161]-x[105] == 0.0)
@NLconstraint(m, e173, x[54]*x[90]-x[14] == 0.0)
@NLconstraint(m, e174, x[90]*x[148]-x[112] == 0.0)
@NLconstraint(m, e175, x[56]*x[90]-x[18] == 0.0)
@NLconstraint(m, e176, x[90]*x[150]-x[117] == 0.0)
@NLconstraint(m, e177,  (x[90])^2-x[162] == 0.0)
@constraint(m, e178, x[15]-x[162] == 0.0)
@NLconstraint(m, e179, x[54]*x[162]-x[111] == 0.0)
@NLconstraint(m, e180, x[56]*x[162]-x[116] == 0.0)
@NLconstraint(m, e181,  (x[90])^3-x[163] == 0.0)
@NLconstraint(m, e182, b[5]*x[163]-x[110] == 0.0)
@NLconstraint(m, e183, b[6]*x[163]-x[115] == 0.0)
@NLconstraint(m, e184, x[58]*x[91]-x[21] == 0.0)
@NLconstraint(m, e185, x[91]*x[152]-x[122] == 0.0)
@NLconstraint(m, e186, x[60]*x[91]-x[25] == 0.0)
@NLconstraint(m, e187, x[91]*x[154]-x[127] == 0.0)
@NLconstraint(m, e188,  (x[91])^2-x[164] == 0.0)
@constraint(m, e189, x[22]-x[164] == 0.0)
@NLconstraint(m, e190, x[58]*x[164]-x[121] == 0.0)
@NLconstraint(m, e191, x[60]*x[164]-x[126] == 0.0)
@NLconstraint(m, e192,  (x[91])^3-x[165] == 0.0)
@NLconstraint(m, e193, b[7]*x[165]-x[120] == 0.0)
@NLconstraint(m, e194, b[8]*x[165]-x[125] == 0.0)
@NLconstraint(m, e195, x[62]*x[92]-x[28] == 0.0)
@NLconstraint(m, e196, x[92]*x[156]-x[132] == 0.0)
@NLconstraint(m, e197, x[64]*x[92]-x[32] == 0.0)
@NLconstraint(m, e198, x[92]*x[158]-x[137] == 0.0)
@NLconstraint(m, e199,  (x[92])^2-x[166] == 0.0)
@constraint(m, e200, x[29]-x[166] == 0.0)
@NLconstraint(m, e201, x[62]*x[166]-x[131] == 0.0)
@NLconstraint(m, e202, x[64]*x[166]-x[136] == 0.0)
@NLconstraint(m, e203,  (x[92])^3-x[167] == 0.0)
@NLconstraint(m, e204, b[9]*x[167]-x[130] == 0.0)
@NLconstraint(m, e205, b[10]*x[167]-x[135] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
