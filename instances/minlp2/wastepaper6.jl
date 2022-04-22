using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47]
@variable(m, x[x_Idx])
b_Idx = Any[48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137]
@variable(m, b[b_Idx],  Bin)

set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 0.9)
set_lower_bound(x[3], 0.1)
set_upper_bound(x[3], 0.9)
set_lower_bound(x[4], 0.1)
set_upper_bound(x[4], 0.9)
set_lower_bound(x[5], 0.1)
set_upper_bound(x[5], 0.9)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 0.9)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 0.9)
set_upper_bound(x[8], 10.0)
set_upper_bound(x[9], 10.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 10.0)
set_upper_bound(x[12], 10.0)
set_upper_bound(x[13], 10.0)
set_upper_bound(x[14], 10.0)
set_upper_bound(x[15], 10.0)
set_upper_bound(x[16], 10.0)
set_upper_bound(x[17], 10.0)
set_upper_bound(x[18], 10.0)
set_upper_bound(x[19], 10.0)
set_upper_bound(x[20], 10.0)
set_upper_bound(x[21], 10.0)
set_upper_bound(x[22], 10.0)
set_upper_bound(x[23], 10.0)
set_upper_bound(x[24], 10.0)
set_upper_bound(x[25], 10.0)
set_upper_bound(x[26], 10.0)
set_upper_bound(x[27], 10.0)
set_upper_bound(x[28], 10.0)
set_upper_bound(x[29], 10.0)
set_upper_bound(x[30], 10.0)
set_upper_bound(x[31], 10.0)
set_upper_bound(x[32], 10.0)
set_upper_bound(x[33], 10.0)
set_upper_bound(x[34], 10.0)
set_upper_bound(x[35], 10.0)
set_upper_bound(x[36], 10.0)
set_upper_bound(x[37], 10.0)
set_upper_bound(x[38], 10.0)
set_upper_bound(x[39], 10.0)
set_upper_bound(x[40], 10.0)
set_upper_bound(x[41], 10.0)
set_upper_bound(x[42], 10.0)
set_upper_bound(x[43], 10.0)
set_upper_bound(x[44], 10.0)
set_upper_bound(x[45], 10.0)
set_upper_bound(x[46], 10.0)
set_upper_bound(x[47], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[29] == 0.0)
@constraint(m, e2, x[8] <= 0.0675)
@constraint(m, e3, x[10]-x[11]+x[12] == 0.0)
@constraint(m, e4, x[13]-x[14]+x[15] == 0.0)
@constraint(m, e5, x[16]-x[17]+x[18] == 0.0)
@constraint(m, e6, x[19]-x[20]+x[21] == 0.0)
@constraint(m, e7, x[22]-x[23]+x[24] == 0.0)
@constraint(m, e8, x[25]-x[26]+x[27] == 0.0)
@constraint(m, e9, x[30]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[33]-x[34]+x[35] == 0.0)
@constraint(m, e11, x[36]-x[37]+x[38] == 0.0)
@constraint(m, e12, x[39]-x[40]+x[41] == 0.0)
@constraint(m, e13, x[42]-x[43]+x[44] == 0.0)
@constraint(m, e14, x[45]-x[46]+x[47] == 0.0)
@NLconstraint(m, e15, x[2]^0.29*x[11]-x[12] == 0.0)
@NLconstraint(m, e16, x[3]^0.13*x[14]-x[15] == 0.0)
@NLconstraint(m, e17, x[4]^0.06*x[17]-x[18] == 0.0)
@NLconstraint(m, e18, x[5]^0.15*x[20]-x[21] == 0.0)
@NLconstraint(m, e19, x[6]^0.2*x[23]-x[24] == 0.0)
@NLconstraint(m, e20, x[7]^0.17*x[26]-x[27] == 0.0)
@NLconstraint(m, e21, x[2]^0.74*x[31]-x[32] == 0.0)
@NLconstraint(m, e22, x[3]^0.79*x[34]-x[35] == 0.0)
@NLconstraint(m, e23, x[4]^0.71*x[37]-x[38] == 0.0)
@NLconstraint(m, e24, x[5]^0.8*x[40]-x[41] == 0.0)
@NLconstraint(m, e25, x[6]^0.7*x[43]-x[44] == 0.0)
@NLconstraint(m, e26, x[7]^0.85*x[46]-x[47] == 0.0)
@NLconstraint(m, e27, b[48]*x[10]+b[54]*x[12]+b[60]*x[13]+b[66]*x[15]+b[72]*x[16]+b[78]*x[18]+b[84]*x[19]+b[90]*x[21]+b[96]*x[22]+b[102]*x[24]+b[108]*x[25]+b[114]*x[27]-x[11]+0.675*b[120] == 0.0)
@NLconstraint(m, e28, b[49]*x[10]+b[55]*x[12]+b[61]*x[13]+b[67]*x[15]+b[73]*x[16]+b[79]*x[18]+b[85]*x[19]+b[91]*x[21]+b[97]*x[22]+b[103]*x[24]+b[109]*x[25]+b[115]*x[27]-x[14]+0.675*b[121] == 0.0)
@NLconstraint(m, e29, b[50]*x[10]+b[56]*x[12]+b[62]*x[13]+b[68]*x[15]+b[74]*x[16]+b[80]*x[18]+b[86]*x[19]+b[92]*x[21]+b[98]*x[22]+b[104]*x[24]+b[110]*x[25]+b[116]*x[27]-x[17]+0.675*b[122] == 0.0)
@NLconstraint(m, e30, b[51]*x[10]+b[57]*x[12]+b[63]*x[13]+b[69]*x[15]+b[75]*x[16]+b[81]*x[18]+b[87]*x[19]+b[93]*x[21]+b[99]*x[22]+b[105]*x[24]+b[111]*x[25]+b[117]*x[27]-x[20]+0.675*b[123] == 0.0)
@NLconstraint(m, e31, b[52]*x[10]+b[58]*x[12]+b[64]*x[13]+b[70]*x[15]+b[76]*x[16]+b[82]*x[18]+b[88]*x[19]+b[94]*x[21]+b[100]*x[22]+b[106]*x[24]+b[112]*x[25]+b[118]*x[27]-x[23]+0.675*b[124] == 0.0)
@NLconstraint(m, e32, b[53]*x[10]+b[59]*x[12]+b[65]*x[13]+b[71]*x[15]+b[77]*x[16]+b[83]*x[18]+b[89]*x[19]+b[95]*x[21]+b[101]*x[22]+b[107]*x[24]+b[113]*x[25]+b[119]*x[27]-x[26]+0.675*b[125] == 0.0)
@NLconstraint(m, e33, b[48]*x[30]+b[54]*x[32]+b[60]*x[33]+b[66]*x[35]+b[72]*x[36]+b[78]*x[38]+b[84]*x[39]+b[90]*x[41]+b[96]*x[42]+b[102]*x[44]+b[108]*x[45]+b[114]*x[47]-x[31]+0.649*b[120] == 0.0)
@NLconstraint(m, e34, b[49]*x[30]+b[55]*x[32]+b[61]*x[33]+b[67]*x[35]+b[73]*x[36]+b[79]*x[38]+b[85]*x[39]+b[91]*x[41]+b[97]*x[42]+b[103]*x[44]+b[109]*x[45]+b[115]*x[47]-x[34]+0.649*b[121] == 0.0)
@NLconstraint(m, e35, b[50]*x[30]+b[56]*x[32]+b[62]*x[33]+b[68]*x[35]+b[74]*x[36]+b[80]*x[38]+b[86]*x[39]+b[92]*x[41]+b[98]*x[42]+b[104]*x[44]+b[110]*x[45]+b[116]*x[47]-x[37]+0.649*b[122] == 0.0)
@NLconstraint(m, e36, b[51]*x[30]+b[57]*x[32]+b[63]*x[33]+b[69]*x[35]+b[75]*x[36]+b[81]*x[38]+b[87]*x[39]+b[93]*x[41]+b[99]*x[42]+b[105]*x[44]+b[111]*x[45]+b[117]*x[47]-x[40]+0.649*b[123] == 0.0)
@NLconstraint(m, e37, b[52]*x[30]+b[58]*x[32]+b[64]*x[33]+b[70]*x[35]+b[76]*x[36]+b[82]*x[38]+b[88]*x[39]+b[94]*x[41]+b[100]*x[42]+b[106]*x[44]+b[112]*x[45]+b[118]*x[47]-x[43]+0.649*b[124] == 0.0)
@NLconstraint(m, e38, b[53]*x[30]+b[59]*x[32]+b[65]*x[33]+b[71]*x[35]+b[77]*x[36]+b[83]*x[38]+b[89]*x[39]+b[95]*x[41]+b[101]*x[42]+b[107]*x[44]+b[113]*x[45]+b[119]*x[47]-x[46]+0.649*b[125] == 0.0)
@NLconstraint(m, e39, b[126]*x[10]+b[127]*x[13]+b[128]*x[16]+b[129]*x[19]+b[130]*x[22]+b[131]*x[25]-x[8] == 0.0)
@NLconstraint(m, e40, b[126]*x[30]+b[127]*x[33]+b[128]*x[36]+b[129]*x[39]+b[130]*x[42]+b[131]*x[45]-x[28] == 0.0)
@NLconstraint(m, e41, b[132]*x[12]+b[133]*x[15]+b[134]*x[18]+b[135]*x[21]+b[136]*x[24]+b[137]*x[27]-x[9] == 0.0)
@NLconstraint(m, e42, b[132]*x[32]+b[133]*x[35]+b[134]*x[38]+b[135]*x[41]+b[136]*x[44]+b[137]*x[47]-x[29] == 0.0)
@constraint(m, e43, b[48]+b[49]+b[50]+b[51]+b[52]+b[53]+b[126] == 1.0)
@constraint(m, e44, b[60]+b[61]+b[62]+b[63]+b[64]+b[65]+b[127] == 1.0)
@constraint(m, e45, b[72]+b[73]+b[74]+b[75]+b[76]+b[77]+b[128] == 1.0)
@constraint(m, e46, b[84]+b[85]+b[86]+b[87]+b[88]+b[89]+b[129] == 1.0)
@constraint(m, e47, b[96]+b[97]+b[98]+b[99]+b[100]+b[101]+b[130] == 1.0)
@constraint(m, e48, b[108]+b[109]+b[110]+b[111]+b[112]+b[113]+b[131] == 1.0)
@constraint(m, e49, b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[132] == 1.0)
@constraint(m, e50, b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[133] == 1.0)
@constraint(m, e51, b[78]+b[79]+b[80]+b[81]+b[82]+b[83]+b[134] == 1.0)
@constraint(m, e52, b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[135] == 1.0)
@constraint(m, e53, b[102]+b[103]+b[104]+b[105]+b[106]+b[107]+b[136] == 1.0)
@constraint(m, e54, b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[137] == 1.0)
@constraint(m, e55, b[120]+b[121]+b[122]+b[123]+b[124]+b[125] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
