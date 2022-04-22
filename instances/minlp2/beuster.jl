using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 153, 154, 155, 156, 157, 158]
@variable(m, x[x_Idx])
b_Idx = Any[100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 10.0)
set_lower_bound(x[2], 0.001)
set_lower_bound(x[3], 1.0)
set_lower_bound(x[4], 1.0)
set_lower_bound(x[5], 2.0)
set_lower_bound(x[6], 1.0)
set_lower_bound(x[7], 0.1675)
set_lower_bound(x[12], 5.0)
set_lower_bound(x[13], 5.0)
set_lower_bound(x[14], 5.0)
set_lower_bound(x[15], 5.0)
set_lower_bound(x[16], 1.0)
set_lower_bound(x[17], 1.0)
set_lower_bound(x[18], 1.0)
set_lower_bound(x[19], 1.0)
set_lower_bound(x[28], 0.001)
set_lower_bound(x[29], 0.001)
set_lower_bound(x[30], 0.001)
set_lower_bound(x[31], 0.001)
set_lower_bound(x[32], 1.0)
set_lower_bound(x[33], 1.0)
set_lower_bound(x[34], 1.0)
set_lower_bound(x[35], 1.0)
set_lower_bound(x[36], 1.0)
set_lower_bound(x[37], 1.0)
set_lower_bound(x[38], 1.0)
set_lower_bound(x[39], 1.0)
set_lower_bound(x[40], 1.0)
set_lower_bound(x[41], 1.0)
set_lower_bound(x[42], 1.0)
set_lower_bound(x[43], 1.0)
set_lower_bound(x[44], 0.01)
set_lower_bound(x[45], 0.01)
set_lower_bound(x[46], 0.01)
set_lower_bound(x[47], 0.01)
set_lower_bound(x[48], 2.0)
set_upper_bound(x[48], 6.0)
set_lower_bound(x[49], 2.0)
set_upper_bound(x[49], 6.0)
set_lower_bound(x[50], 2.0)
set_upper_bound(x[50], 6.0)
set_lower_bound(x[51], 2.0)
set_upper_bound(x[51], 6.0)
set_lower_bound(x[52], 1.33)
set_upper_bound(x[52], 6.0)
set_lower_bound(x[53], 1.33)
set_upper_bound(x[53], 6.0)
set_lower_bound(x[54], 1.33)
set_upper_bound(x[54], 6.0)
set_lower_bound(x[55], 1.33)
set_upper_bound(x[55], 6.0)
set_lower_bound(x[56], 1.13e-8)
set_lower_bound(x[57], 1.13e-8)
set_lower_bound(x[58], 1.13e-8)
set_lower_bound(x[59], 1.13e-8)
set_lower_bound(x[60], 2.9e-7)
set_lower_bound(x[61], 2.9e-7)
set_lower_bound(x[62], 2.9e-7)
set_lower_bound(x[63], 2.9e-7)
set_lower_bound(x[64], 3.0e-7)
set_lower_bound(x[65], 3.0e-7)
set_lower_bound(x[66], 3.0e-7)
set_lower_bound(x[67], 3.0e-7)
set_lower_bound(x[68], 3.0e-10)
set_lower_bound(x[69], 3.0e-10)
set_lower_bound(x[70], 3.0e-10)
set_lower_bound(x[71], 3.0e-10)
set_lower_bound(x[72], 0.05)
set_lower_bound(x[73], 0.05)
set_lower_bound(x[74], 0.05)
set_lower_bound(x[75], 0.05)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[153]-x[154]-x[155]-x[156]-x[157]-x[158] == 3271.22725820856)
@constraint(m, e2, x[8] == 1800.0)
@constraint(m, e3, x[12] == 5.0)
@NLconstraint(m, e4, -(x[99]*(x[24]+x[25]+x[26]+x[27])+(x[98]-x[99])*(x[24]+x[25]+x[26])+(x[97]-x[98])*(x[24]+x[25])+x[24]*(x[96]-x[97]))+x[2] == 0.0)
@NLconstraint(m, e5, -(x[99]*(x[28]*x[24]+x[29]*x[25]+x[30]*x[26]+x[31]*x[27])+(x[98]-x[99])*(x[28]*x[24]+x[29]*x[25]+x[30]*x[26])+(x[97]-x[98])*(x[28]*x[24]+x[29]*x[25])+x[28]*x[24]*(x[96]-x[97]))/x[2]+x[3] == 0.0)
@NLconstraint(m, e6, -(x[19]*x[99]+x[18]*(x[98]-x[99])+x[17]*(x[97]-x[98])+x[16]*(x[96]-x[97]))+x[1] == 0.0)
@NLconstraint(m, e7, -(x[23]*x[99]+x[22]*(x[98]-x[99])+x[21]*(x[97]-x[98])+x[20]*(x[96]-x[97])) == -100.0)
@NLconstraint(m, e8, -(x[16]*x[97]-1000*x[97])+x[9] == 1000.0)
@NLconstraint(m, e9, -(x[20]*x[97]-10*x[97])+x[13] == 10.0)
@NLconstraint(m, e10, -(x[99]*(x[32]+x[33]+x[34]+x[35])+(x[98]-x[99])*(x[32]+x[33]+x[34])+(x[97]-x[98])*(x[32]+x[33])+x[32]*(x[96]-x[97]))+x[5] == 0.0)
@NLconstraint(m, e11, -(x[99]*(x[36]+x[37]+x[38]+x[39])+(x[98]-x[99])*(x[36]+x[37]+x[38])+(x[97]-x[98])*(x[36]+x[37])+x[36]*(x[96]-x[97]))+x[6] == 0.0)
@NLconstraint(m, e12, -(x[99]*(x[92]+x[93]+x[94]+x[95])+(x[98]-x[99])*(x[92]+x[93]+x[94])+(x[97]-x[98])*(x[92]+x[93])+x[92]*(x[96]-x[97]))+x[7] == 0.0)
@NLconstraint(m, e13, -(x[99]*(x[72]+x[73]+x[74]+x[75])+(x[98]-x[99])*(x[72]+x[73]+x[74])+(x[97]-x[98])*(x[72]+x[73])+x[72]*(x[96]-x[97]))+x[4] == 0.0)
@NLconstraint(m, e14, -(x[17]*x[98]-1058*x[98])+x[10] == 1058.0)
@NLconstraint(m, e15, -(x[21]*x[98]-10*x[98])+x[14] == 10.0)
@NLconstraint(m, e16, -(x[18]*x[99]-1008*x[99])+x[11] == 1008.0)
@NLconstraint(m, e17, -(x[22]*x[99]-13*x[99])+x[15] == 13.0)
@NLconstraint(m, e18, 0.00277777777777778*x[40]/log((x[44]-x[28])/(x[20]-x[28]))-10000000*x[56] == 0.0)
@NLconstraint(m, e19, 0.00277777777777778*x[41]/log((x[45]-x[29])/(x[21]-x[29]))-10000000*x[57] == 0.0)
@NLconstraint(m, e20, 0.00277777777777778*x[42]/log((x[46]-x[30])/(x[22]-x[30]))-10000000*x[58] == 0.0)
@NLconstraint(m, e21, 0.00277777777777778*x[43]/log((x[47]-x[31])/(x[23]-x[31]))-10000000*x[59] == 0.0)
@constraint(m, e22, 50*x[28]-x[44] == 0.0)
@constraint(m, e23, 50*x[29]-x[45] == 0.0)
@constraint(m, e24, 50*x[30]-x[46] == 0.0)
@constraint(m, e25, 50*x[31]-x[47] == 0.0)
@constraint(m, e26, x[40]-65.38084341288*x[48]+65.38084341288*x[60] == 0.0)
@constraint(m, e27, x[41]-65.38084341288*x[49]+65.38084341288*x[61] == 0.0)
@constraint(m, e28, x[42]-65.38084341288*x[50]+65.38084341288*x[62] == 0.0)
@constraint(m, e29, x[43]-65.38084341288*x[51]+65.38084341288*x[63] == 0.0)
@constraint(m, e30, -x[60]+x[64]-1000*x[68] == 0.0)
@constraint(m, e31, -x[61]+x[65]-1000*x[69] == 0.0)
@constraint(m, e32, -x[62]+x[66]-1000*x[70] == 0.0)
@constraint(m, e33, -x[63]+x[67]-1000*x[71] == 0.0)
@NLconstraint(m, e34, -1e-5*(12.09* (x[44])^2+3.66*x[44]-0.08*x[44]^3+0.0002592*x[44]^4)+x[64] == 0.0)
@NLconstraint(m, e35, -1e-5*(12.09* (x[45])^2+3.66*x[45]-0.08*x[45]^3+0.0002592*x[45]^4)+x[65] == 0.0)
@NLconstraint(m, e36, -1e-5*(12.09* (x[46])^2+3.66*x[46]-0.08*x[46]^3+0.0002592*x[46]^4)+x[66] == 0.0)
@NLconstraint(m, e37, -1e-5*(12.09* (x[47])^2+3.66*x[47]-0.08*x[47]^3+0.0002592*x[47]^4)+x[67] == 0.0)
@NLconstraint(m, e38, -1e-5*(12.09* (x[28])^2+3.66*x[28]-0.08*x[28]^3+0.0002592*x[28]^4)+1000*x[68] == 0.0)
@NLconstraint(m, e39, -1e-5*(12.09* (x[29])^2+3.66*x[29]-0.08*x[29]^3+0.0002592*x[29]^4)+1000*x[69] == 0.0)
@NLconstraint(m, e40, -1e-5*(12.09* (x[30])^2+3.66*x[30]-0.08*x[30]^3+0.0002592*x[30]^4)+1000*x[70] == 0.0)
@NLconstraint(m, e41, -1e-5*(12.09* (x[31])^2+3.66*x[31]-0.08*x[31]^3+0.0002592*x[31]^4)+1000*x[71] == 0.0)
@NLconstraint(m, e42, -0.000113572384718704*(7936.50793650794*x[52])^0.75+10000000*x[56] == 0.0)
@NLconstraint(m, e43, -0.000113572384718704*(7936.50793650794*x[53])^0.75+10000000*x[57] == 0.0)
@NLconstraint(m, e44, -0.000113572384718704*(7936.50793650794*x[54])^0.75+10000000*x[58] == 0.0)
@NLconstraint(m, e45, -0.000113572384718704*(7936.50793650794*x[55])^0.75+10000000*x[59] == 0.0)
@constraint(m, e46, -x[8]+x[16]+x[24] == 0.0)
@constraint(m, e47, -x[9]+x[17]+x[25] == 0.0)
@constraint(m, e48, -x[10]+x[18]+x[26] == 0.0)
@constraint(m, e49, -x[11]+x[19]+x[27] == 0.0)
@NLconstraint(m, e50, x[12]*x[8]-(x[20]*x[16]+x[28]*x[24]) == 0.0)
@NLconstraint(m, e51, x[13]*x[9]-(x[21]*x[17]+x[29]*x[25]) == 0.0)
@NLconstraint(m, e52, x[14]*x[10]-(x[22]*x[18]+x[30]*x[26]) == 0.0)
@NLconstraint(m, e53, x[15]*x[11]-(x[23]*x[19]+x[31]*x[27]) == 0.0)
@NLconstraint(m, e54, -2.77777777777778e-5*x[48]*x[8]+x[84] == 0.0)
@NLconstraint(m, e55, -2.77777777777778e-5*x[49]*x[9]+x[85] == 0.0)
@NLconstraint(m, e56, -2.77777777777778e-5*x[50]*x[10]+x[86] == 0.0)
@NLconstraint(m, e57, -2.77777777777778e-5*x[51]*x[11]+x[87] == 0.0)
@NLconstraint(m, e58, -x[24]/x[40]+x[72] == 0.0)
@NLconstraint(m, e59, -x[25]/x[41]+x[73] == 0.0)
@NLconstraint(m, e60, -x[26]/x[42]+x[74] == 0.0)
@NLconstraint(m, e61, -x[27]/x[43]+x[75] == 0.0)
@constraint(m, e62, x[32]-20*x[72] == 0.0)
@constraint(m, e63, x[33]-20*x[73] == 0.0)
@constraint(m, e64, x[34]-20*x[74] == 0.0)
@constraint(m, e65, x[35]-20*x[75] == 0.0)
@constraint(m, e66, -373.932*x[52]+x[76] == 0.0)
@constraint(m, e67, -373.932*x[53]+x[77] == 0.0)
@constraint(m, e68, -373.932*x[54]+x[78] == 0.0)
@constraint(m, e69, -373.932*x[55]+x[79] == 0.0)
@NLconstraint(m, e70, -x[32]*x[76]+x[80] == 0.0)
@NLconstraint(m, e71, -x[33]*x[77]+x[81] == 0.0)
@NLconstraint(m, e72, -x[34]*x[78]+x[82] == 0.0)
@NLconstraint(m, e73, -x[35]*x[79]+x[83] == 0.0)
@constraint(m, e74, -5.55555555555556E-6*x[80]+x[88] == 0.0)
@constraint(m, e75, -5.55555555555556E-6*x[81]+x[89] == 0.0)
@constraint(m, e76, -5.55555555555556E-6*x[82]+x[90] == 0.0)
@constraint(m, e77, -5.55555555555556E-6*x[83]+x[91] == 0.0)
@constraint(m, e78, -1.58730158730159*x[84]-1.58730158730159*x[88]+x[92] == 0.0)
@constraint(m, e79, -1.58730158730159*x[85]-1.58730158730159*x[89]+x[93] == 0.0)
@constraint(m, e80, -1.58730158730159*x[86]-1.58730158730159*x[90]+x[94] == 0.0)
@constraint(m, e81, -1.58730158730159*x[87]-1.58730158730159*x[91]+x[95] == 0.0)
@constraint(m, e82, x[36]-0.909090909090909*x[88] >= 0.0)
@constraint(m, e83, x[37]-0.909090909090909*x[89] >= 0.0)
@constraint(m, e84, x[38]-0.909090909090909*x[90] >= 0.0)
@constraint(m, e85, x[39]-0.909090909090909*x[91] >= 0.0)
@constraint(m, e86, x[32]-b[100]-2*b[104]-4*b[108]-8*b[112]-16*b[116]-32*b[120]-64*b[124]-128*b[128] == 0.0)
@constraint(m, e87, x[33]-b[101]-2*b[105]-4*b[109]-8*b[113]-16*b[117]-32*b[121]-64*b[125]-128*b[129] == 0.0)
@constraint(m, e88, x[34]-b[102]-2*b[106]-4*b[110]-8*b[114]-16*b[118]-32*b[122]-64*b[126]-128*b[130] == 0.0)
@constraint(m, e89, x[35]-b[103]-2*b[107]-4*b[111]-8*b[115]-16*b[119]-32*b[123]-64*b[127]-128*b[131] == 0.0)
@constraint(m, e90, x[36]-b[132]-2*b[136]-4*b[140]-8*b[144] == 0.0)
@constraint(m, e91, x[37]-b[133]-2*b[137]-4*b[141]-8*b[145] == 0.0)
@constraint(m, e92, x[38]-b[134]-2*b[138]-4*b[142]-8*b[146] == 0.0)
@constraint(m, e93, x[39]-b[135]-2*b[139]-4*b[143]-8*b[147] == 0.0)
@constraint(m, e94, x[96]-b[148] == 0.0)
@constraint(m, e95, x[97]-b[149] == 0.0)
@constraint(m, e96, x[98]-b[150] == 0.0)
@constraint(m, e97, x[99]-b[151] == 0.0)
@constraint(m, e98, b[148] == 1.0)
@constraint(m, e99, -b[148]+b[149] <= 0.0)
@constraint(m, e100, -b[149]+b[150] <= 0.0)
@constraint(m, e101, -b[150]+b[151] <= 0.0)
@constraint(m, e102, -1261.75908530902*x[96]-1261.75908530902*x[97]-1261.75908530902*x[98]-1261.75908530902*x[99]+x[153] == 0.0)
@constraint(m, e103, -292.07386234005*x[6]+x[154] == 0.0)
@constraint(m, e104, -2103.94993266178*x[7]+x[157] == 0.0)
@constraint(m, e105, -45.7380420143865*x[2]+x[155] == 0.0)
@NLconstraint(m, e106, -4.57380420143865*x[2]*x[3]+x[156] == 0.0)
@constraint(m, e107, -764.973851088085*x[4]+x[158] == 0.0)
@constraint(m, e108, x[20]-x[28] >= 0.01)
@constraint(m, e109, x[21]-x[29] >= 0.01)
@constraint(m, e110, x[22]-x[30] >= 0.01)
@constraint(m, e111, x[23]-x[31] >= 0.01)
@constraint(m, e112, -x[28]+x[44] >= 0.01)
@constraint(m, e113, -x[29]+x[45] >= 0.01)
@constraint(m, e114, -x[30]+x[46] >= 0.01)
@constraint(m, e115, -x[31]+x[47] >= 0.01)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
