using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], -1.0)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], -1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], -1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], 1.0)
set_lower_bound(x[7], -1.0)
set_upper_bound(x[7], 1.0)
set_lower_bound(x[8], -1.0)
set_upper_bound(x[8], 1.0)
set_lower_bound(x[9], -1.0)
set_upper_bound(x[9], 1.0)
set_lower_bound(x[10], -1.0)
set_upper_bound(x[10], 1.0)
set_lower_bound(x[91], 0.16)
set_upper_bound(x[91], 0.24)
set_lower_bound(x[92], 0.16)
set_upper_bound(x[92], 0.24)
set_lower_bound(x[93], 0.16)
set_upper_bound(x[93], 0.24)
set_lower_bound(x[94], 0.16)
set_upper_bound(x[94], 0.24)
set_lower_bound(x[95], 0.16)
set_upper_bound(x[95], 0.24)
set_lower_bound(x[96], 0.16)
set_upper_bound(x[96], 0.24)
set_lower_bound(x[97], 0.16)
set_upper_bound(x[97], 0.24)
set_lower_bound(x[98], 0.16)
set_upper_bound(x[98], 0.24)
set_lower_bound(x[99], 0.16)
set_upper_bound(x[99], 0.24)
set_lower_bound(x[100], 0.16)
set_upper_bound(x[100], 0.24)
set_lower_bound(x[101], -2.0)
set_upper_bound(x[101], -2.0)
set_lower_bound(x[111], 0.0)
set_upper_bound(x[111], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1.66666666666667)+x[151])^2+ (x[131])^2*x[91]+ (x[132])^2*x[92]+ (x[133])^2*x[93]+ (x[134])^2*x[94]+ (x[135])^2*x[95]+ (x[136])^2*x[96]+ (x[137])^2*x[97]+ (x[138])^2*x[98]+ (x[139])^2*x[99]+ (x[140])^2*x[100]+1000*(x[81]*x[61]+x[71]*x[51]+x[82]*x[62]+x[72]*x[52]+x[83]*x[63]+x[73]*x[53]+x[84]*x[64]+x[74]*x[54]+x[85]*x[65]+x[75]*x[55]+x[86]*x[66]+x[76]*x[56]+x[87]*x[67]+x[77]*x[57]+x[88]*x[68]+x[78]*x[58]+x[89]*x[69]+x[79]*x[59]+x[90]*x[70]+x[80]*x[60]))+objvar == 0.0)
@constraint(m, e2, -x[91]-x[111]+x[121] == 0.0)
@constraint(m, e3, -x[92]-x[112]+x[122] == 0.0)
@constraint(m, e4, -x[93]-x[113]+x[123] == 0.0)
@constraint(m, e5, -x[94]-x[114]+x[124] == 0.0)
@constraint(m, e6, -x[95]-x[115]+x[125] == 0.0)
@constraint(m, e7, -x[96]-x[116]+x[126] == 0.0)
@constraint(m, e8, -x[97]-x[117]+x[127] == 0.0)
@constraint(m, e9, -x[98]-x[118]+x[128] == 0.0)
@constraint(m, e10, -x[99]-x[119]+x[129] == 0.0)
@constraint(m, e11, -x[100]-x[120]+x[130] == 0.0)
@NLconstraint(m, e12, -x[91]*x[141]-x[101]+x[131] == 0.0)
@NLconstraint(m, e13, -x[92]*x[142]-x[102]+x[132] == 0.0)
@NLconstraint(m, e14, -x[93]*x[143]-x[103]+x[133] == 0.0)
@NLconstraint(m, e15, -x[94]*x[144]-x[104]+x[134] == 0.0)
@NLconstraint(m, e16, -x[95]*x[145]-x[105]+x[135] == 0.0)
@NLconstraint(m, e17, -x[96]*x[146]-x[106]+x[136] == 0.0)
@NLconstraint(m, e18, -x[97]*x[147]-x[107]+x[137] == 0.0)
@NLconstraint(m, e19, -x[98]*x[148]-x[108]+x[138] == 0.0)
@NLconstraint(m, e20, -x[99]*x[149]-x[109]+x[139] == 0.0)
@NLconstraint(m, e21, -x[100]*x[150]-x[110]+x[140] == 0.0)
@constraint(m, e22, -x[91]-x[111]+x[112] == 0.0)
@constraint(m, e23, -x[92]-x[112]+x[113] == 0.0)
@constraint(m, e24, -x[93]-x[113]+x[114] == 0.0)
@constraint(m, e25, -x[94]-x[114]+x[115] == 0.0)
@constraint(m, e26, -x[95]-x[115]+x[116] == 0.0)
@constraint(m, e27, -x[96]-x[116]+x[117] == 0.0)
@constraint(m, e28, -x[97]-x[117]+x[118] == 0.0)
@constraint(m, e29, -x[98]-x[118]+x[119] == 0.0)
@constraint(m, e30, -x[99]-x[119]+x[120] == 0.0)
@NLconstraint(m, e31, -x[91]*x[141]-x[101]+x[102] == 0.0)
@NLconstraint(m, e32, -x[92]*x[142]-x[102]+x[103] == 0.0)
@NLconstraint(m, e33, -x[93]*x[143]-x[103]+x[104] == 0.0)
@NLconstraint(m, e34, -x[94]*x[144]-x[104]+x[105] == 0.0)
@NLconstraint(m, e35, -x[95]*x[145]-x[105]+x[106] == 0.0)
@NLconstraint(m, e36, -x[96]*x[146]-x[106]+x[107] == 0.0)
@NLconstraint(m, e37, -x[97]*x[147]-x[107]+x[108] == 0.0)
@NLconstraint(m, e38, -x[98]*x[148]-x[108]+x[109] == 0.0)
@NLconstraint(m, e39, -x[99]*x[149]-x[109]+x[110] == 0.0)
@NLconstraint(m, e40, -x[100]*x[150]-x[110]+x[151] == 0.0)
@constraint(m, e41, x[1]+x[141] == 2.0)
@constraint(m, e42, x[2]+x[142] == 2.0)
@constraint(m, e43, x[3]+x[143] == 2.0)
@constraint(m, e44, x[4]+x[144] == 2.0)
@constraint(m, e45, x[5]+x[145] == 2.0)
@constraint(m, e46, x[6]+x[146] == 2.0)
@constraint(m, e47, x[7]+x[147] == 2.0)
@constraint(m, e48, x[8]+x[148] == 2.0)
@constraint(m, e49, x[9]+x[149] == 2.0)
@constraint(m, e50, x[10]+x[150] == 2.0)
@constraint(m, e51, -x[11]+x[21]+x[131] == 0.0)
@constraint(m, e52, -x[12]+x[22]+x[132] == 0.0)
@constraint(m, e53, -x[13]+x[23]+x[133] == 0.0)
@constraint(m, e54, -x[14]+x[24]+x[134] == 0.0)
@constraint(m, e55, -x[15]+x[25]+x[135] == 0.0)
@constraint(m, e56, -x[16]+x[26]+x[136] == 0.0)
@constraint(m, e57, -x[17]+x[27]+x[137] == 0.0)
@constraint(m, e58, -x[18]+x[28]+x[138] == 0.0)
@constraint(m, e59, -x[19]+x[29]+x[139] == 0.0)
@constraint(m, e60, -x[20]+x[30]+x[140] == 0.0)
@constraint(m, e61, -x[31]+x[41]+x[101] == 0.0)
@constraint(m, e62, -x[32]+x[42]+x[102] == 0.0)
@constraint(m, e63, -x[33]+x[43]+x[103] == 0.0)
@constraint(m, e64, -x[34]+x[44]+x[104] == 0.0)
@constraint(m, e65, -x[35]+x[45]+x[105] == 0.0)
@constraint(m, e66, -x[36]+x[46]+x[106] == 0.0)
@constraint(m, e67, -x[37]+x[47]+x[107] == 0.0)
@constraint(m, e68, -x[38]+x[48]+x[108] == 0.0)
@constraint(m, e69, -x[39]+x[49]+x[109] == 0.0)
@constraint(m, e70, -x[40]+x[50]+x[110] == 0.0)
@constraint(m, e71, -x[11]-x[31]+x[51] == 0.0)
@constraint(m, e72, -x[12]-x[32]+x[52] == 0.0)
@constraint(m, e73, -x[13]-x[33]+x[53] == 0.0)
@constraint(m, e74, -x[14]-x[34]+x[54] == 0.0)
@constraint(m, e75, -x[15]-x[35]+x[55] == 0.0)
@constraint(m, e76, -x[16]-x[36]+x[56] == 0.0)
@constraint(m, e77, -x[17]-x[37]+x[57] == 0.0)
@constraint(m, e78, -x[18]-x[38]+x[58] == 0.0)
@constraint(m, e79, -x[19]-x[39]+x[59] == 0.0)
@constraint(m, e80, -x[20]-x[40]+x[60] == 0.0)
@constraint(m, e81, -x[21]-x[41]+x[61] == 0.0)
@constraint(m, e82, -x[22]-x[42]+x[62] == 0.0)
@constraint(m, e83, -x[23]-x[43]+x[63] == 0.0)
@constraint(m, e84, -x[24]-x[44]+x[64] == 0.0)
@constraint(m, e85, -x[25]-x[45]+x[65] == 0.0)
@constraint(m, e86, -x[26]-x[46]+x[66] == 0.0)
@constraint(m, e87, -x[27]-x[47]+x[67] == 0.0)
@constraint(m, e88, -x[28]-x[48]+x[68] == 0.0)
@constraint(m, e89, -x[29]-x[49]+x[69] == 0.0)
@constraint(m, e90, -x[30]-x[50]+x[70] == 0.0)
@constraint(m, e91, x[1]+x[71] == 1.0)
@constraint(m, e92, x[2]+x[72] == 1.0)
@constraint(m, e93, x[3]+x[73] == 1.0)
@constraint(m, e94, x[4]+x[74] == 1.0)
@constraint(m, e95, x[5]+x[75] == 1.0)
@constraint(m, e96, x[6]+x[76] == 1.0)
@constraint(m, e97, x[7]+x[77] == 1.0)
@constraint(m, e98, x[8]+x[78] == 1.0)
@constraint(m, e99, x[9]+x[79] == 1.0)
@constraint(m, e100, x[10]+x[80] == 1.0)
@constraint(m, e101, -x[1]+x[81] == 1.0)
@constraint(m, e102, -x[2]+x[82] == 1.0)
@constraint(m, e103, -x[3]+x[83] == 1.0)
@constraint(m, e104, -x[4]+x[84] == 1.0)
@constraint(m, e105, -x[5]+x[85] == 1.0)
@constraint(m, e106, -x[6]+x[86] == 1.0)
@constraint(m, e107, -x[7]+x[87] == 1.0)
@constraint(m, e108, -x[8]+x[88] == 1.0)
@constraint(m, e109, -x[9]+x[89] == 1.0)
@constraint(m, e110, -x[10]+x[90] == 1.0)
@constraint(m, e111, x[91]+x[92]+x[93]+x[94]+x[95]+x[96]+x[97]+x[98]+x[99]+x[100] == 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 