using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-19.904+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73])*(-19.904+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73])+x[1] == 0.0)
@constraint(m, e2, x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73] == 1.0)
@constraint(m, e3, -x[2]+x[89] == 0.0)
@constraint(m, e4, -x[2]+x[90] == 0.0)
@constraint(m, e5, -x[2]+x[91] == 0.0)
@constraint(m, e6, -x[2]+x[92] == 0.0)
@constraint(m, e7, -x[2]+x[93] == 0.0)
@constraint(m, e8, x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73] <= 21.904)
@constraint(m, e9, x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73] >= 17.904)
@constraint(m, e10, -x[3] >= -0.026)
@constraint(m, e11, -x[3]-x[4] >= -0.028)
@constraint(m, e12, -x[3]-x[4]-x[5] >= -0.033)
@constraint(m, e13, -x[3]-x[4]-x[5]-x[6] >= -0.035)
@constraint(m, e14, -x[3]-x[4]-x[5]-x[6]-x[7] >= -0.041)
@constraint(m, e15, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8] >= -0.043)
@constraint(m, e16, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9] >= -0.046)
@constraint(m, e17, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10] >= -0.059)
@constraint(m, e18, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12] >= -0.0740000000000001)
@constraint(m, e19, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14] >= -0.098)
@constraint(m, e20, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16] >= -0.107)
@constraint(m, e21, -x[2]+x[94] == 0.0)
@constraint(m, e22, -x[2]+x[95] == 0.0)
@constraint(m, e23, -x[2]+x[96] == 0.0)
@constraint(m, e24, -x[2]+x[97] == 0.0)
@constraint(m, e25, -x[2]+x[98] == 0.0)
@constraint(m, e26, -x[2]+x[99] == 0.0)
@constraint(m, e27, -x[2]+x[100] == 0.0)
@constraint(m, e28, -x[2]+x[101] == 0.0)
@constraint(m, e29, -x[2]+x[102] == 0.0)
@constraint(m, e30, -x[2]+x[103] == 0.0)
@constraint(m, e31, -x[2]+x[104] == 0.0)
@constraint(m, e32, -x[2]+x[105] == 0.0)
@constraint(m, e33, -x[2]+x[106] == 0.0)
@constraint(m, e34, -x[2]+x[107] == 0.0)
@constraint(m, e35, -x[2]+x[108] == 0.0)
@constraint(m, e36, -x[2]+x[109] == 0.0)
@constraint(m, e37, -x[2]+x[110] == 0.0)
@constraint(m, e38, -x[2]+x[111] == 0.0)
@constraint(m, e39, -x[2]+x[112] == 0.0)
@constraint(m, e40, -x[2]+x[113] == 0.0)
@constraint(m, e41, -x[2]+x[114] == 0.0)
@constraint(m, e42, -x[2]+x[115] == 0.0)
@constraint(m, e43, -x[2]+x[116] == 0.0)
@constraint(m, e44, -x[2]+x[117] == 0.0)
@constraint(m, e45, -x[2]+x[118] == 0.0)
@constraint(m, e46, -x[2]+x[119] == 0.0)
@constraint(m, e47, -x[2]+x[120] == 0.0)
@constraint(m, e48, -x[2]+x[121] == 0.0)
@constraint(m, e49, -x[2]+x[122] == 0.0)
@constraint(m, e50, -x[2]+x[123] == 0.0)
@constraint(m, e51, -x[2]+x[124] == 0.0)
@constraint(m, e52, -x[2]+x[125] == 0.0)
@constraint(m, e53, -x[2]+x[126] == 0.0)
@constraint(m, e54, -x[2]+x[127] == 0.0)
@constraint(m, e55, -x[2]+x[128] == 0.0)
@constraint(m, e56, -x[2]+x[129] == 0.0)
@constraint(m, e57, -x[2]+x[130] == 0.0)
@constraint(m, e58, -x[2]+x[131] == 0.0)
@constraint(m, e59, -x[2]+x[132] == 0.0)
@constraint(m, e60, -x[2]+x[133] == 0.0)
@constraint(m, e61, -x[2]+x[134] == 0.0)
@constraint(m, e62, -x[2]+x[135] == 0.0)
@constraint(m, e63, -x[2]+x[136] == 0.0)
@constraint(m, e64, -x[2]+x[137] == 0.0)
@constraint(m, e65, -x[2]+x[138] == 0.0)
@constraint(m, e66, -x[2]+x[139] == 0.0)
@constraint(m, e67, -x[2]+x[140] == 0.0)
@constraint(m, e68, -x[2]+x[141] == 0.0)
@constraint(m, e69, -x[2]+x[142] == 0.0)
@constraint(m, e70, -x[2]+x[143] == 0.0)
@constraint(m, e71, x[144] == 1.0)
@constraint(m, e72, -x[3] <= 0.00399999999999999)
@constraint(m, e73, -x[3]-x[4] <= 0.00199999999999999)
@constraint(m, e74, -x[3]-x[4]-x[5] <= -0.00300000000000002)
@constraint(m, e75, -x[3]-x[4]-x[5]-x[6] <= -0.00500000000000002)
@constraint(m, e76, -x[3]-x[4]-x[5]-x[6]-x[7] <= -0.011)
@constraint(m, e77, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8] <= -0.013)
@constraint(m, e78, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9] <= -0.016)
@constraint(m, e79, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10] <= -0.029)
@constraint(m, e80, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12] <= -0.0440000000000001)
@constraint(m, e81, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14] <= -0.068)
@constraint(m, e82, -x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16] <= -0.077)
@constraint(m, e83, x[74]-x[75] <= 0.0)
@constraint(m, e84, x[75]-x[76] <= 0.0)
@constraint(m, e85, x[76]-x[77] <= 0.0)
@constraint(m, e86, x[77]-x[78] <= 0.0)
@constraint(m, e87, x[78]-x[79] <= 0.0)
@constraint(m, e88, x[79]-x[80] <= 0.0)
@constraint(m, e89, x[80]-x[81] <= 0.0)
@constraint(m, e90, x[81]-x[82] <= 0.0)
@constraint(m, e91, x[82]-x[83] <= 0.0)
@constraint(m, e92, x[83]-x[84] <= 0.0)
@constraint(m, e93, x[84]-x[85] <= 0.0)
@constraint(m, e94, x[85]-x[86] <= 0.0)
@constraint(m, e95, x[86]-x[87] <= 0.0)
@constraint(m, e96, x[87]-x[88] <= 0.0)
@constraint(m, e97, x[88]-x[89] <= 0.0)
@constraint(m, e98, x[3]-x[74] == 0.0)
@NLconstraint(m, e99, -x[75]*(1-x[3])+x[4] == 0.0)
@NLconstraint(m, e100, -x[76]*(1-x[3]-x[4])+x[5] == 0.0)
@NLconstraint(m, e101, -x[77]*(1-x[3]-x[4]-x[5])+x[6] == 0.0)
@NLconstraint(m, e102, -x[78]*(1-x[3]-x[4]-x[5]-x[6])+x[7] == 0.0)
@NLconstraint(m, e103, -x[79]*(1-x[3]-x[4]-x[5]-x[6]-x[7])+x[8] == 0.0)
@NLconstraint(m, e104, -x[80]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8])+x[9] == 0.0)
@NLconstraint(m, e105, -x[81]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9])+x[10] == 0.0)
@NLconstraint(m, e106, -x[82]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10])+x[11] == 0.0)
@NLconstraint(m, e107, -x[83]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11])+x[12] == 0.0)
@NLconstraint(m, e108, -x[84]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12])+x[13] == 0.0)
@NLconstraint(m, e109, -x[85]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13])+x[14] == 0.0)
@NLconstraint(m, e110, -x[86]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14])+x[15] == 0.0)
@NLconstraint(m, e111, -x[87]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15])+x[16] == 0.0)
@NLconstraint(m, e112, -x[88]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16])+x[17] == 0.0)
@NLconstraint(m, e113, -x[89]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17])+x[18] == 0.0)
@NLconstraint(m, e114, -x[90]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18])+x[19] == 0.0)
@NLconstraint(m, e115, -x[91]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19])+x[20] == 0.0)
@NLconstraint(m, e116, -x[92]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20])+x[21] == 0.0)
@NLconstraint(m, e117, -x[93]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21])+x[22] == 0.0)
@NLconstraint(m, e118, -x[94]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22])+x[23] == 0.0)
@NLconstraint(m, e119, -x[95]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23])+x[24] == 0.0)
@NLconstraint(m, e120, -x[96]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24])+x[25] == 0.0)
@NLconstraint(m, e121, -x[97]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25])+x[26] == 0.0)
@NLconstraint(m, e122, -x[98]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26])+x[27] == 0.0)
@NLconstraint(m, e123, -x[99]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27])+x[28] == 0.0)
@NLconstraint(m, e124, -x[100]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28])+x[29] == 0.0)
@NLconstraint(m, e125, -x[101]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29])+x[30] == 0.0)
@NLconstraint(m, e126, -x[102]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30])+x[31] == 0.0)
@NLconstraint(m, e127, -x[103]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31])+x[32] == 0.0)
@NLconstraint(m, e128, -x[104]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32])+x[33] == 0.0)
@NLconstraint(m, e129, -x[105]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33])+x[34] == 0.0)
@NLconstraint(m, e130, -x[106]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34])+x[35] == 0.0)
@NLconstraint(m, e131, -x[107]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35])+x[36] == 0.0)
@NLconstraint(m, e132, -x[108]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36])+x[37] == 0.0)
@NLconstraint(m, e133, -x[109]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37])+x[38] == 0.0)
@NLconstraint(m, e134, -x[110]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38])+x[39] == 0.0)
@NLconstraint(m, e135, -x[111]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39])+x[40] == 0.0)
@NLconstraint(m, e136, -x[112]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40])+x[41] == 0.0)
@NLconstraint(m, e137, -x[113]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41])+x[42] == 0.0)
@NLconstraint(m, e138, -x[114]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42])+x[43] == 0.0)
@NLconstraint(m, e139, -x[115]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43])+x[44] == 0.0)
@NLconstraint(m, e140, -x[116]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44])+x[45] == 0.0)
@NLconstraint(m, e141, -x[117]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45])+x[46] == 0.0)
@NLconstraint(m, e142, -x[118]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46])+x[47] == 0.0)
@NLconstraint(m, e143, -x[119]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47])+x[48] == 0.0)
@NLconstraint(m, e144, -x[120]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48])+x[49] == 0.0)
@NLconstraint(m, e145, -x[121]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49])+x[50] == 0.0)
@NLconstraint(m, e146, -x[122]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50])+x[51] == 0.0)
@NLconstraint(m, e147, -x[123]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51])+x[52] == 0.0)
@NLconstraint(m, e148, -x[124]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52])+x[53] == 0.0)
@NLconstraint(m, e149, -x[125]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53])+x[54] == 0.0)
@NLconstraint(m, e150, -x[126]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54])+x[55] == 0.0)
@NLconstraint(m, e151, -x[127]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55])+x[56] == 0.0)
@NLconstraint(m, e152, -x[128]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56])+x[57] == 0.0)
@NLconstraint(m, e153, -x[129]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57])+x[58] == 0.0)
@NLconstraint(m, e154, -x[130]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58])+x[59] == 0.0)
@NLconstraint(m, e155, -x[131]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59])+x[60] == 0.0)
@NLconstraint(m, e156, -x[132]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60])+x[61] == 0.0)
@NLconstraint(m, e157, -x[133]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61])+x[62] == 0.0)
@NLconstraint(m, e158, -x[134]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62])+x[63] == 0.0)
@NLconstraint(m, e159, -x[135]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63])+x[64] == 0.0)
@NLconstraint(m, e160, -x[136]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64])+x[65] == 0.0)
@NLconstraint(m, e161, -x[137]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65])+x[66] == 0.0)
@NLconstraint(m, e162, -x[138]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66])+x[67] == 0.0)
@NLconstraint(m, e163, -x[139]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67])+x[68] == 0.0)
@NLconstraint(m, e164, -x[140]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68])+x[69] == 0.0)
@NLconstraint(m, e165, -x[141]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69])+x[70] == 0.0)
@NLconstraint(m, e166, -x[142]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70])+x[71] == 0.0)
@NLconstraint(m, e167, -x[143]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71])+x[72] == 0.0)
@NLconstraint(m, e168, -x[144]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71]-x[72])+x[73] == 0.0)
@constraint(m, e169, x[10]-x[11] >= -0.008)
@constraint(m, e170, x[11]-x[12] >= -0.008)
@constraint(m, e171, x[12]-x[13] >= -0.008)
@constraint(m, e172, x[13]-x[14] >= -0.008)
@constraint(m, e173, x[14]-x[15] >= -0.008)
@constraint(m, e174, x[15]-x[16] >= -0.008)
@constraint(m, e175, x[16]-x[17] >= -0.008)
@constraint(m, e176, x[17]-x[18] >= -0.008)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
