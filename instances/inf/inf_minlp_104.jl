using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153]
@variable(m, x[x_Idx])
b_Idx = Any[88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143]
@variable(m, b[b_Idx],  Bin)
i_Idx = Any[45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[68], 0.0)
set_upper_bound(i[68], 100.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(i[84], 0.0)
set_upper_bound(i[84], 100.0)
set_lower_bound(i[86], 0.0)
set_upper_bound(i[86], 100.0)
set_lower_bound(i[74], 0.0)
set_upper_bound(i[74], 100.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(i[58], 0.0)
set_upper_bound(i[58], 100.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(i[61], 0.0)
set_upper_bound(i[61], 100.0)
set_lower_bound(i[45], 0.0)
set_upper_bound(i[45], 100.0)
set_lower_bound(i[75], 0.0)
set_upper_bound(i[75], 100.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(i[76], 0.0)
set_upper_bound(i[76], 100.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(i[77], 0.0)
set_upper_bound(i[77], 100.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(i[53], 0.0)
set_upper_bound(i[53], 100.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(i[60], 0.0)
set_upper_bound(i[60], 100.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(i[73], 0.0)
set_upper_bound(i[73], 100.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(i[63], 0.0)
set_upper_bound(i[63], 100.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(i[56], 0.0)
set_upper_bound(i[56], 100.0)
set_lower_bound(i[64], 0.0)
set_upper_bound(i[64], 100.0)
set_lower_bound(i[49], 0.0)
set_upper_bound(i[49], 100.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(i[72], 0.0)
set_upper_bound(i[72], 100.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(i[78], 0.0)
set_upper_bound(i[78], 100.0)
set_lower_bound(i[80], 0.0)
set_upper_bound(i[80], 100.0)
set_lower_bound(i[52], 0.0)
set_upper_bound(i[52], 100.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(i[66], 0.0)
set_upper_bound(i[66], 100.0)
set_lower_bound(i[82], 0.0)
set_upper_bound(i[82], 100.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(i[62], 0.0)
set_upper_bound(i[62], 100.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(i[85], 0.0)
set_upper_bound(i[85], 100.0)
set_lower_bound(i[51], 0.0)
set_upper_bound(i[51], 100.0)
set_lower_bound(i[50], 0.0)
set_upper_bound(i[50], 100.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(i[83], 0.0)
set_upper_bound(i[83], 100.0)
set_lower_bound(i[79], 0.0)
set_upper_bound(i[79], 100.0)
set_lower_bound(i[46], 0.0)
set_upper_bound(i[46], 100.0)
set_lower_bound(i[55], 0.0)
set_upper_bound(i[55], 100.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(i[81], 0.0)
set_upper_bound(i[81], 100.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(i[48], 0.0)
set_upper_bound(i[48], 100.0)
set_lower_bound(i[65], 0.0)
set_upper_bound(i[65], 100.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(i[59], 0.0)
set_upper_bound(i[59], 100.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(i[47], 0.0)
set_upper_bound(i[47], 100.0)
set_lower_bound(i[57], 0.0)
set_upper_bound(i[57], 100.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(i[71], 0.0)
set_upper_bound(i[71], 100.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(i[67], 0.0)
set_upper_bound(i[67], 100.0)
set_lower_bound(i[69], 0.0)
set_upper_bound(i[69], 100.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(i[54], 0.0)
set_upper_bound(i[54], 100.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(i[70], 0.0)
set_upper_bound(i[70], 100.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(i[87], 0.0)
set_upper_bound(i[87], 100.0)
set_upper_bound(i[45], 100.0)
set_upper_bound(i[46], 100.0)
set_upper_bound(i[47], 100.0)
set_upper_bound(i[48], 100.0)
set_upper_bound(i[49], 100.0)
set_upper_bound(i[50], 100.0)
set_upper_bound(i[51], 100.0)
set_upper_bound(i[52], 100.0)
set_upper_bound(i[53], 100.0)
set_upper_bound(i[54], 100.0)
set_upper_bound(i[55], 100.0)
set_upper_bound(i[56], 100.0)
set_upper_bound(i[57], 100.0)
set_upper_bound(i[58], 100.0)
set_upper_bound(i[59], 100.0)
set_upper_bound(i[60], 100.0)
set_upper_bound(i[61], 100.0)
set_upper_bound(i[62], 100.0)
set_upper_bound(i[63], 100.0)
set_upper_bound(i[64], 100.0)
set_upper_bound(i[65], 100.0)
set_upper_bound(i[66], 100.0)
set_upper_bound(i[67], 100.0)
set_upper_bound(i[68], 100.0)
set_upper_bound(i[69], 100.0)
set_upper_bound(i[70], 100.0)
set_upper_bound(i[71], 100.0)
set_upper_bound(i[72], 100.0)
set_upper_bound(i[73], 100.0)
set_upper_bound(i[74], 100.0)
set_upper_bound(i[75], 100.0)
set_upper_bound(i[76], 100.0)
set_upper_bound(i[77], 100.0)
set_upper_bound(i[78], 100.0)
set_upper_bound(i[79], 100.0)
set_upper_bound(i[80], 100.0)
set_upper_bound(i[81], 100.0)
set_upper_bound(i[82], 100.0)
set_upper_bound(i[83], 100.0)
set_upper_bound(i[84], 100.0)
set_upper_bound(i[85], 100.0)
set_upper_bound(i[86], 100.0)
set_upper_bound(i[87], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1] == 0.0)
@constraint(m, e2, x[5] == 0.0)
@constraint(m, e3, x[9] == 0.0)
@constraint(m, e4, x[13] == 0.0)
@constraint(m, e5, x[17] == 0.0)
@constraint(m, e6, x[21] == 0.0)
@constraint(m, e7, x[25] == 0.0)
@constraint(m, e8, x[29] == 0.0)
@constraint(m, e9, x[3]-x[19]-i[49]+i[65] == -2.0)
@constraint(m, e10, x[4]-x[20]-i[50]+i[66] == 0.0)
@constraint(m, e11, x[7]-x[23]-i[53]+i[69] == -1.0)
@constraint(m, e12, x[8]-x[24]-i[54]+i[70] == -1.0)
@constraint(m, e13, x[11]-x[27]-i[57]+i[73] == 0.0)
@constraint(m, e14, x[12]-x[28]-i[58]+i[74] == 4.0)
@constraint(m, e15, x[15]-x[31]-i[61]+i[77] == 2.0)
@constraint(m, e16, x[16]-x[32]-i[62]+i[78] == 1.0)
@constraint(m, e17, -x[1]+x[2]+x[17]-x[18] == 0.0)
@constraint(m, e18, -x[5]+x[6]+x[21]-x[22] == 0.0)
@constraint(m, e19, -x[9]+x[10]+x[25]-x[26] == 0.0)
@constraint(m, e20, -x[13]+x[14]+x[29]-x[30] == 0.0)
@constraint(m, e21, x[1]-1000000000000*b[128] <= 0.0)
@constraint(m, e22, x[2]-1000000000000*b[129] <= 0.0)
@constraint(m, e23, x[3]-1000000000000*b[130] <= 0.0)
@constraint(m, e24, x[4]-1000000000000*b[131] <= 0.0)
@constraint(m, e25, x[5]-1000000000000*b[132] <= 0.0)
@constraint(m, e26, x[6]-1000000000000*b[133] <= 0.0)
@constraint(m, e27, x[7]-1000000000000*b[134] <= 0.0)
@constraint(m, e28, x[8]-1000000000000*b[135] <= 0.0)
@constraint(m, e29, x[9]-1000000000000*b[136] <= 0.0)
@constraint(m, e30, x[10]-1000000000000*b[137] <= 0.0)
@constraint(m, e31, x[11]-1000000000000*b[138] <= 0.0)
@constraint(m, e32, x[12]-1000000000000*b[139] <= 0.0)
@constraint(m, e33, x[13]-1000000000000*b[140] <= 0.0)
@constraint(m, e34, x[14]-1000000000000*b[141] <= 0.0)
@constraint(m, e35, x[15]-1000000000000*b[142] <= 0.0)
@constraint(m, e36, x[16]-1000000000000*b[143] <= 0.0)
@constraint(m, e37, x[17]+1000000000000*b[128] <= 1.0e12)
@constraint(m, e38, x[18]+1000000000000*b[129] <= 1.0e12)
@constraint(m, e39, x[19]+1000000000000*b[130] <= 1.0e12)
@constraint(m, e40, x[20]+1000000000000*b[131] <= 1.0e12)
@constraint(m, e41, x[21]+1000000000000*b[132] <= 1.0e12)
@constraint(m, e42, x[22]+1000000000000*b[133] <= 1.0e12)
@constraint(m, e43, x[23]+1000000000000*b[134] <= 1.0e12)
@constraint(m, e44, x[24]+1000000000000*b[135] <= 1.0e12)
@constraint(m, e45, x[25]+1000000000000*b[136] <= 1.0e12)
@constraint(m, e46, x[26]+1000000000000*b[137] <= 1.0e12)
@constraint(m, e47, x[27]+1000000000000*b[138] <= 1.0e12)
@constraint(m, e48, x[28]+1000000000000*b[139] <= 1.0e12)
@constraint(m, e49, x[29]+1000000000000*b[140] <= 1.0e12)
@constraint(m, e50, x[30]+1000000000000*b[141] <= 1.0e12)
@constraint(m, e51, x[31]+1000000000000*b[142] <= 1.0e12)
@constraint(m, e52, x[32]+1000000000000*b[143] <= 1.0e12)
@constraint(m, e53, -x[1]-x[5]-x[9]-x[13]+x[33] == 0.0)
@constraint(m, e54, -x[2]-x[6]-x[10]-x[14]+x[34] == 0.0)
@constraint(m, e55, -x[3]-x[7]-x[11]-x[15]+x[35] == 0.0)
@constraint(m, e56, -x[4]-x[8]-x[12]-x[16]+x[36] == 0.0)
@constraint(m, e57, -x[17]-x[21]-x[25]-x[29]+x[37] == 0.0)
@constraint(m, e58, -x[18]-x[22]-x[26]-x[30]+x[38] == 0.0)
@constraint(m, e59, -x[19]-x[23]-x[27]-x[31]+x[39] == 0.0)
@constraint(m, e60, -x[20]-x[24]-x[28]-x[32]+x[40] == 0.0)
@constraint(m, e61, b[120]+b[124] == 1.0)
@constraint(m, e62, b[121]+b[125] == 1.0)
@constraint(m, e63, b[122]+b[126] == 1.0)
@constraint(m, e64, b[123]+b[127] == 1.0)
@constraint(m, e65, -x[33]+x[37]-1000000000000*b[124] <= 0.0)
@constraint(m, e66, -x[34]+x[38]-1000000000000*b[125] <= 0.0)
@constraint(m, e67, -x[35]+x[39]-1000000000000*b[126] <= 0.0)
@constraint(m, e68, -x[36]+x[40]-1000000000000*b[127] <= 0.0)
@constraint(m, e69, x[33]-x[37]-1000000000000*b[120] <= 0.0)
@constraint(m, e70, x[34]-x[38]-1000000000000*b[121] <= 0.0)
@constraint(m, e71, x[35]-x[39]-1000000000000*b[122] <= 0.0)
@constraint(m, e72, x[36]-x[40]-1000000000000*b[123] <= 0.0)
@constraint(m, e73, i[48]+1000000000000*b[124] <= 1.0e12)
@constraint(m, e74, i[49]+1000000000000*b[125] <= 1.0e12)
@constraint(m, e75, i[50]+1000000000000*b[126] <= 1.0e12)
@constraint(m, e76, i[51]+1000000000000*b[127] <= 1.0e12)
@constraint(m, e77, i[52]+1000000000000*b[124] <= 1.0e12)
@constraint(m, e78, i[53]+1000000000000*b[125] <= 1.0e12)
@constraint(m, e79, i[54]+1000000000000*b[126] <= 1.0e12)
@constraint(m, e80, i[55]+1000000000000*b[127] <= 1.0e12)
@constraint(m, e81, i[56]+1000000000000*b[124] <= 1.0e12)
@constraint(m, e82, i[57]+1000000000000*b[125] <= 1.0e12)
@constraint(m, e83, i[58]+1000000000000*b[126] <= 1.0e12)
@constraint(m, e84, i[59]+1000000000000*b[127] <= 1.0e12)
@constraint(m, e85, i[60]+1000000000000*b[124] <= 1.0e12)
@constraint(m, e86, i[61]+1000000000000*b[125] <= 1.0e12)
@constraint(m, e87, i[62]+1000000000000*b[126] <= 1.0e12)
@constraint(m, e88, i[63]+1000000000000*b[127] <= 1.0e12)
@constraint(m, e89, i[64]+1000000000000*b[120] <= 1.0e12)
@constraint(m, e90, i[65]+1000000000000*b[121] <= 1.0e12)
@constraint(m, e91, i[66]+1000000000000*b[122] <= 1.0e12)
@constraint(m, e92, i[67]+1000000000000*b[123] <= 1.0e12)
@constraint(m, e93, i[68]+1000000000000*b[120] <= 1.0e12)
@constraint(m, e94, i[69]+1000000000000*b[121] <= 1.0e12)
@constraint(m, e95, i[70]+1000000000000*b[122] <= 1.0e12)
@constraint(m, e96, i[71]+1000000000000*b[123] <= 1.0e12)
@constraint(m, e97, i[72]+1000000000000*b[120] <= 1.0e12)
@constraint(m, e98, i[73]+1000000000000*b[121] <= 1.0e12)
@constraint(m, e99, i[74]+1000000000000*b[122] <= 1.0e12)
@constraint(m, e100, i[75]+1000000000000*b[123] <= 1.0e12)
@constraint(m, e101, i[76]+1000000000000*b[120] <= 1.0e12)
@constraint(m, e102, i[77]+1000000000000*b[121] <= 1.0e12)
@constraint(m, e103, i[78]+1000000000000*b[122] <= 1.0e12)
@constraint(m, e104, i[79]+1000000000000*b[123] <= 1.0e12)
@NLconstraint(m, e105, -(x[1]+x[5]+x[9]+x[13]-x[17]-x[21]-x[25]-x[29])*(1-b[120])+i[48]+i[52]+i[56]+i[60] == 0.0)
@NLconstraint(m, e106, -(x[2]+x[6]+x[10]+x[14]-x[18]-x[22]-x[26]-x[30])*(1-b[121])+i[49]+i[53]+i[57]+i[61] == 0.0)
@NLconstraint(m, e107, -(x[3]+x[7]+x[11]+x[15]-x[19]-x[23]-x[27]-x[31])*(1-b[122])+i[50]+i[54]+i[58]+i[62] == 0.0)
@NLconstraint(m, e108, -(x[4]+x[8]+x[12]+x[16]-x[20]-x[24]-x[28]-x[32])*(1-b[123])+i[51]+i[55]+i[59]+i[63] == 0.0)
@NLconstraint(m, e109, -(-x[1]-x[5]-x[9]-x[13]+x[17]+x[21]+x[25]+x[29])*(1-b[124])+i[64]+i[68]+i[72]+i[76] == 0.0)
@NLconstraint(m, e110, -(-x[2]-x[6]-x[10]-x[14]+x[18]+x[22]+x[26]+x[30])*(1-b[125])+i[65]+i[69]+i[73]+i[77] == 0.0)
@NLconstraint(m, e111, -(-x[3]-x[7]-x[11]-x[15]+x[19]+x[23]+x[27]+x[31])*(1-b[126])+i[66]+i[70]+i[74]+i[78] == 0.0)
@NLconstraint(m, e112, -(-x[4]-x[8]-x[12]-x[16]+x[20]+x[24]+x[28]+x[32])*(1-b[127])+i[67]+i[71]+i[75]+i[79] == 0.0)
@constraint(m, e113, b[125]+x[144] >= 0.0)
@constraint(m, e114, b[126]+x[145] >= 0.0)
@constraint(m, e115, b[127]+x[146] >= 0.0)
@constraint(m, e116, b[121]+x[147] >= 0.0)
@constraint(m, e117, b[122]+x[148] >= 0.0)
@constraint(m, e118, b[123]+x[149] >= 0.0)
@constraint(m, e119, -i[65]-i[69]-i[73]-i[77]+x[144] <= 0.0)
@constraint(m, e120, -i[66]-i[70]-i[74]-i[78]+x[145] <= 0.0)
@constraint(m, e121, -i[67]-i[71]-i[75]-i[79]+x[146] <= 0.0)
@constraint(m, e122, -i[49]-i[53]-i[57]-i[61]+x[147] <= 0.0)
@constraint(m, e123, -i[50]-i[54]-i[58]-i[62]+x[148] <= 0.0)
@constraint(m, e124, -i[51]-i[55]-i[59]-i[63]+x[149] <= 0.0)
@constraint(m, e125, i[64]-i[84] <= 0.0)
@constraint(m, e126, i[65]-i[85] <= 0.0)
@constraint(m, e127, i[66]-i[86] <= 0.0)
@constraint(m, e128, i[67]-i[87] <= 0.0)
@constraint(m, e129, i[68]-i[84] <= 0.0)
@constraint(m, e130, i[69]-i[85] <= 0.0)
@constraint(m, e131, i[70]-i[86] <= 0.0)
@constraint(m, e132, i[71]-i[87] <= 0.0)
@constraint(m, e133, i[72]-i[84] <= 0.0)
@constraint(m, e134, i[73]-i[85] <= 0.0)
@constraint(m, e135, i[74]-i[86] <= 0.0)
@constraint(m, e136, i[75]-i[87] <= 0.0)
@constraint(m, e137, i[76]-i[84] <= 0.0)
@constraint(m, e138, i[77]-i[85] <= 0.0)
@constraint(m, e139, i[78]-i[86] <= 0.0)
@constraint(m, e140, i[79]-i[87] <= 0.0)
@constraint(m, e141, i[48]-i[80] <= 0.0)
@constraint(m, e142, i[49]-i[81] <= 0.0)
@constraint(m, e143, i[50]-i[82] <= 0.0)
@constraint(m, e144, i[51]-i[83] <= 0.0)
@constraint(m, e145, i[52]-i[80] <= 0.0)
@constraint(m, e146, i[53]-i[81] <= 0.0)
@constraint(m, e147, i[54]-i[82] <= 0.0)
@constraint(m, e148, i[55]-i[83] <= 0.0)
@constraint(m, e149, i[56]-i[80] <= 0.0)
@constraint(m, e150, i[57]-i[81] <= 0.0)
@constraint(m, e151, i[58]-i[82] <= 0.0)
@constraint(m, e152, i[59]-i[83] <= 0.0)
@constraint(m, e153, i[60]-i[80] <= 0.0)
@constraint(m, e154, i[61]-i[81] <= 0.0)
@constraint(m, e155, i[62]-i[82] <= 0.0)
@constraint(m, e156, i[63]-i[83] <= 0.0)
@constraint(m, e157, -1E-12*x[1]+1E-12*i[80]+b[88] >= 0.0)
@constraint(m, e158, -1E-12*x[2]+1E-12*i[81]+b[89] >= 0.0)
@constraint(m, e159, -1E-12*x[3]+1E-12*i[82]+b[90] >= 0.0)
@constraint(m, e160, -1E-12*x[4]+1E-12*i[83]+b[91] >= 0.0)
@constraint(m, e161, -1E-12*x[5]+1E-12*i[80]+b[92] >= 0.0)
@constraint(m, e162, -1E-12*x[6]+1E-12*i[81]+b[93] >= 0.0)
@constraint(m, e163, -1E-12*x[7]+1E-12*i[82]+b[94] >= 0.0)
@constraint(m, e164, -1E-12*x[8]+1E-12*i[83]+b[95] >= 0.0)
@constraint(m, e165, -1E-12*x[9]+1E-12*i[80]+b[96] >= 0.0)
@constraint(m, e166, -1E-12*x[10]+1E-12*i[81]+b[97] >= 0.0)
@constraint(m, e167, -1E-12*x[11]+1E-12*i[82]+b[98] >= 0.0)
@constraint(m, e168, -1E-12*x[12]+1E-12*i[83]+b[99] >= 0.0)
@constraint(m, e169, -1E-12*x[13]+1E-12*i[80]+b[100] >= 0.0)
@constraint(m, e170, -1E-12*x[14]+1E-12*i[81]+b[101] >= 0.0)
@constraint(m, e171, -1E-12*x[15]+1E-12*i[82]+b[102] >= 0.0)
@constraint(m, e172, -1E-12*x[16]+1E-12*i[83]+b[103] >= 0.0)
@constraint(m, e173, -1E-12*x[1]+1E-12*i[80]+b[88] <= 1.0)
@constraint(m, e174, -1E-12*x[2]+1E-12*i[81]+b[89] <= 1.0)
@constraint(m, e175, -1E-12*x[3]+1E-12*i[82]+b[90] <= 1.0)
@constraint(m, e176, -1E-12*x[4]+1E-12*i[83]+b[91] <= 1.0)
@constraint(m, e177, -1E-12*x[5]+1E-12*i[80]+b[92] <= 1.0)
@constraint(m, e178, -1E-12*x[6]+1E-12*i[81]+b[93] <= 1.0)
@constraint(m, e179, -1E-12*x[7]+1E-12*i[82]+b[94] <= 1.0)
@constraint(m, e180, -1E-12*x[8]+1E-12*i[83]+b[95] <= 1.0)
@constraint(m, e181, -1E-12*x[9]+1E-12*i[80]+b[96] <= 1.0)
@constraint(m, e182, -1E-12*x[10]+1E-12*i[81]+b[97] <= 1.0)
@constraint(m, e183, -1E-12*x[11]+1E-12*i[82]+b[98] <= 1.0)
@constraint(m, e184, -1E-12*x[12]+1E-12*i[83]+b[99] <= 1.0)
@constraint(m, e185, -1E-12*x[13]+1E-12*i[80]+b[100] <= 1.0)
@constraint(m, e186, -1E-12*x[14]+1E-12*i[81]+b[101] <= 1.0)
@constraint(m, e187, -1E-12*x[15]+1E-12*i[82]+b[102] <= 1.0)
@constraint(m, e188, -1E-12*x[16]+1E-12*i[83]+b[103] <= 1.0)
@constraint(m, e189, i[48]-i[80]+1000000000000*b[88] <= 1.0e12)
@constraint(m, e190, i[49]-i[81]+1000000000000*b[89] <= 1.0e12)
@constraint(m, e191, i[50]-i[82]+1000000000000*b[90] <= 1.0e12)
@constraint(m, e192, i[51]-i[83]+1000000000000*b[91] <= 1.0e12)
@constraint(m, e193, i[52]-i[80]+1000000000000*b[92] <= 1.0e12)
@constraint(m, e194, i[53]-i[81]+1000000000000*b[93] <= 1.0e12)
@constraint(m, e195, i[54]-i[82]+1000000000000*b[94] <= 1.0e12)
@constraint(m, e196, i[55]-i[83]+1000000000000*b[95] <= 1.0e12)
@constraint(m, e197, i[56]-i[80]+1000000000000*b[96] <= 1.0e12)
@constraint(m, e198, i[57]-i[81]+1000000000000*b[97] <= 1.0e12)
@constraint(m, e199, i[58]-i[82]+1000000000000*b[98] <= 1.0e12)
@constraint(m, e200, i[59]-i[83]+1000000000000*b[99] <= 1.0e12)
@constraint(m, e201, i[60]-i[80]+1000000000000*b[100] <= 1.0e12)
@constraint(m, e202, i[61]-i[81]+1000000000000*b[101] <= 1.0e12)
@constraint(m, e203, i[62]-i[82]+1000000000000*b[102] <= 1.0e12)
@constraint(m, e204, i[63]-i[83]+1000000000000*b[103] <= 1.0e12)
@constraint(m, e205, i[48]-i[80]-1000000000000*b[88] >= -1.000000000001e12)
@constraint(m, e206, i[49]-i[81]-1000000000000*b[89] >= -1.000000000001e12)
@constraint(m, e207, i[50]-i[82]-1000000000000*b[90] >= -1.000000000001e12)
@constraint(m, e208, i[51]-i[83]-1000000000000*b[91] >= -1.000000000001e12)
@constraint(m, e209, i[52]-i[80]-1000000000000*b[92] >= -1.000000000001e12)
@constraint(m, e210, i[53]-i[81]-1000000000000*b[93] >= -1.000000000001e12)
@constraint(m, e211, i[54]-i[82]-1000000000000*b[94] >= -1.000000000001e12)
@constraint(m, e212, i[55]-i[83]-1000000000000*b[95] >= -1.000000000001e12)
@constraint(m, e213, i[56]-i[80]-1000000000000*b[96] >= -1.000000000001e12)
@constraint(m, e214, i[57]-i[81]-1000000000000*b[97] >= -1.000000000001e12)
@constraint(m, e215, i[58]-i[82]-1000000000000*b[98] >= -1.000000000001e12)
@constraint(m, e216, i[59]-i[83]-1000000000000*b[99] >= -1.000000000001e12)
@constraint(m, e217, i[60]-i[80]-1000000000000*b[100] >= -1.000000000001e12)
@constraint(m, e218, i[61]-i[81]-1000000000000*b[101] >= -1.000000000001e12)
@constraint(m, e219, i[62]-i[82]-1000000000000*b[102] >= -1.000000000001e12)
@constraint(m, e220, i[63]-i[83]-1000000000000*b[103] >= -1.000000000001e12)
@constraint(m, e221, -x[1]+i[48] <= 0.0)
@constraint(m, e222, -x[2]+i[49] <= 0.0)
@constraint(m, e223, -x[3]+i[50] <= 0.0)
@constraint(m, e224, -x[4]+i[51] <= 0.0)
@constraint(m, e225, -x[5]+i[52] <= 0.0)
@constraint(m, e226, -x[6]+i[53] <= 0.0)
@constraint(m, e227, -x[7]+i[54] <= 0.0)
@constraint(m, e228, -x[8]+i[55] <= 0.0)
@constraint(m, e229, -x[9]+i[56] <= 0.0)
@constraint(m, e230, -x[10]+i[57] <= 0.0)
@constraint(m, e231, -x[11]+i[58] <= 0.0)
@constraint(m, e232, -x[12]+i[59] <= 0.0)
@constraint(m, e233, -x[13]+i[60] <= 0.0)
@constraint(m, e234, -x[14]+i[61] <= 0.0)
@constraint(m, e235, -x[15]+i[62] <= 0.0)
@constraint(m, e236, -x[16]+i[63] <= 0.0)
@constraint(m, e237, -x[1]+i[48]+1000000000000*b[88] >= 0.0)
@constraint(m, e238, -x[2]+i[49]+1000000000000*b[89] >= 0.0)
@constraint(m, e239, -x[3]+i[50]+1000000000000*b[90] >= 0.0)
@constraint(m, e240, -x[4]+i[51]+1000000000000*b[91] >= 0.0)
@constraint(m, e241, -x[5]+i[52]+1000000000000*b[92] >= 0.0)
@constraint(m, e242, -x[6]+i[53]+1000000000000*b[93] >= 0.0)
@constraint(m, e243, -x[7]+i[54]+1000000000000*b[94] >= 0.0)
@constraint(m, e244, -x[8]+i[55]+1000000000000*b[95] >= 0.0)
@constraint(m, e245, -x[9]+i[56]+1000000000000*b[96] >= 0.0)
@constraint(m, e246, -x[10]+i[57]+1000000000000*b[97] >= 0.0)
@constraint(m, e247, -x[11]+i[58]+1000000000000*b[98] >= 0.0)
@constraint(m, e248, -x[12]+i[59]+1000000000000*b[99] >= 0.0)
@constraint(m, e249, -x[13]+i[60]+1000000000000*b[100] >= 0.0)
@constraint(m, e250, -x[14]+i[61]+1000000000000*b[101] >= 0.0)
@constraint(m, e251, -x[15]+i[62]+1000000000000*b[102] >= 0.0)
@constraint(m, e252, -x[16]+i[63]+1000000000000*b[103] >= 0.0)
@constraint(m, e253, i[48]-i[52]+1000000000000*b[88]+1000000000000*b[92] <= 2.0e12)
@constraint(m, e254, i[49]-i[53]+1000000000000*b[89]+1000000000000*b[93] <= 2.0e12)
@constraint(m, e255, i[50]-i[54]+1000000000000*b[90]+1000000000000*b[94] <= 2.0e12)
@constraint(m, e256, i[51]-i[55]+1000000000000*b[91]+1000000000000*b[95] <= 2.0e12)
@constraint(m, e257, i[48]-i[56]+1000000000000*b[88]+1000000000000*b[96] <= 2.0e12)
@constraint(m, e258, i[49]-i[57]+1000000000000*b[89]+1000000000000*b[97] <= 2.0e12)
@constraint(m, e259, i[50]-i[58]+1000000000000*b[90]+1000000000000*b[98] <= 2.0e12)
@constraint(m, e260, i[51]-i[59]+1000000000000*b[91]+1000000000000*b[99] <= 2.0e12)
@constraint(m, e261, i[52]-i[56]+1000000000000*b[92]+1000000000000*b[96] <= 2.0e12)
@constraint(m, e262, i[53]-i[57]+1000000000000*b[93]+1000000000000*b[97] <= 2.0e12)
@constraint(m, e263, i[54]-i[58]+1000000000000*b[94]+1000000000000*b[98] <= 2.0e12)
@constraint(m, e264, i[55]-i[59]+1000000000000*b[95]+1000000000000*b[99] <= 2.0e12)
@constraint(m, e265, i[48]-i[60]+1000000000000*b[88]+1000000000000*b[100] <= 2.0e12)
@constraint(m, e266, i[49]-i[61]+1000000000000*b[89]+1000000000000*b[101] <= 2.0e12)
@constraint(m, e267, i[50]-i[62]+1000000000000*b[90]+1000000000000*b[102] <= 2.0e12)
@constraint(m, e268, i[51]-i[63]+1000000000000*b[91]+1000000000000*b[103] <= 2.0e12)
@constraint(m, e269, i[52]-i[60]+1000000000000*b[92]+1000000000000*b[100] <= 2.0e12)
@constraint(m, e270, i[53]-i[61]+1000000000000*b[93]+1000000000000*b[101] <= 2.0e12)
@constraint(m, e271, i[54]-i[62]+1000000000000*b[94]+1000000000000*b[102] <= 2.0e12)
@constraint(m, e272, i[55]-i[63]+1000000000000*b[95]+1000000000000*b[103] <= 2.0e12)
@constraint(m, e273, i[56]-i[60]+1000000000000*b[96]+1000000000000*b[100] <= 2.0e12)
@constraint(m, e274, i[57]-i[61]+1000000000000*b[97]+1000000000000*b[101] <= 2.0e12)
@constraint(m, e275, i[58]-i[62]+1000000000000*b[98]+1000000000000*b[102] <= 2.0e12)
@constraint(m, e276, i[59]-i[63]+1000000000000*b[99]+1000000000000*b[103] <= 2.0e12)
@constraint(m, e277, i[64]-i[68]+1000000000000*b[104]+1000000000000*b[108] <= 2.0e12)
@constraint(m, e278, i[65]-i[69]+1000000000000*b[105]+1000000000000*b[109] <= 2.0e12)
@constraint(m, e279, i[66]-i[70]+1000000000000*b[106]+1000000000000*b[110] <= 2.0e12)
@constraint(m, e280, i[67]-i[71]+1000000000000*b[107]+1000000000000*b[111] <= 2.0e12)
@constraint(m, e281, i[64]-i[72]+1000000000000*b[104]+1000000000000*b[112] <= 2.0e12)
@constraint(m, e282, i[65]-i[73]+1000000000000*b[105]+1000000000000*b[113] <= 2.0e12)
@constraint(m, e283, i[66]-i[74]+1000000000000*b[106]+1000000000000*b[114] <= 2.0e12)
@constraint(m, e284, i[67]-i[75]+1000000000000*b[107]+1000000000000*b[115] <= 2.0e12)
@constraint(m, e285, i[68]-i[72]+1000000000000*b[108]+1000000000000*b[112] <= 2.0e12)
@constraint(m, e286, i[69]-i[73]+1000000000000*b[109]+1000000000000*b[113] <= 2.0e12)
@constraint(m, e287, i[70]-i[74]+1000000000000*b[110]+1000000000000*b[114] <= 2.0e12)
@constraint(m, e288, i[71]-i[75]+1000000000000*b[111]+1000000000000*b[115] <= 2.0e12)
@constraint(m, e289, i[64]-i[76]+1000000000000*b[104]+1000000000000*b[116] <= 2.0e12)
@constraint(m, e290, i[65]-i[77]+1000000000000*b[105]+1000000000000*b[117] <= 2.0e12)
@constraint(m, e291, i[66]-i[78]+1000000000000*b[106]+1000000000000*b[118] <= 2.0e12)
@constraint(m, e292, i[67]-i[79]+1000000000000*b[107]+1000000000000*b[119] <= 2.0e12)
@constraint(m, e293, i[68]-i[76]+1000000000000*b[108]+1000000000000*b[116] <= 2.0e12)
@constraint(m, e294, i[69]-i[77]+1000000000000*b[109]+1000000000000*b[117] <= 2.0e12)
@constraint(m, e295, i[70]-i[78]+1000000000000*b[110]+1000000000000*b[118] <= 2.0e12)
@constraint(m, e296, i[71]-i[79]+1000000000000*b[111]+1000000000000*b[119] <= 2.0e12)
@constraint(m, e297, i[72]-i[76]+1000000000000*b[112]+1000000000000*b[116] <= 2.0e12)
@constraint(m, e298, i[73]-i[77]+1000000000000*b[113]+1000000000000*b[117] <= 2.0e12)
@constraint(m, e299, i[74]-i[78]+1000000000000*b[114]+1000000000000*b[118] <= 2.0e12)
@constraint(m, e300, i[75]-i[79]+1000000000000*b[115]+1000000000000*b[119] <= 2.0e12)
@constraint(m, e301, -1E-12*x[17]+1E-12*i[84]+b[104] >= 0.0)
@constraint(m, e302, -1E-12*x[18]+1E-12*i[85]+b[105] >= 0.0)
@constraint(m, e303, -1E-12*x[19]+1E-12*i[86]+b[106] >= 0.0)
@constraint(m, e304, -1E-12*x[20]+1E-12*i[87]+b[107] >= 0.0)
@constraint(m, e305, -1E-12*x[21]+1E-12*i[84]+b[108] >= 0.0)
@constraint(m, e306, -1E-12*x[22]+1E-12*i[85]+b[109] >= 0.0)
@constraint(m, e307, -1E-12*x[23]+1E-12*i[86]+b[110] >= 0.0)
@constraint(m, e308, -1E-12*x[24]+1E-12*i[87]+b[111] >= 0.0)
@constraint(m, e309, -1E-12*x[25]+1E-12*i[84]+b[112] >= 0.0)
@constraint(m, e310, -1E-12*x[26]+1E-12*i[85]+b[113] >= 0.0)
@constraint(m, e311, -1E-12*x[27]+1E-12*i[86]+b[114] >= 0.0)
@constraint(m, e312, -1E-12*x[28]+1E-12*i[87]+b[115] >= 0.0)
@constraint(m, e313, -1E-12*x[29]+1E-12*i[84]+b[116] >= 0.0)
@constraint(m, e314, -1E-12*x[30]+1E-12*i[85]+b[117] >= 0.0)
@constraint(m, e315, -1E-12*x[31]+1E-12*i[86]+b[118] >= 0.0)
@constraint(m, e316, -1E-12*x[32]+1E-12*i[87]+b[119] >= 0.0)
@constraint(m, e317, -1E-12*x[17]+1E-12*i[84]+b[104] <= 1.0)
@constraint(m, e318, -1E-12*x[18]+1E-12*i[85]+b[105] <= 1.0)
@constraint(m, e319, -1E-12*x[19]+1E-12*i[86]+b[106] <= 1.0)
@constraint(m, e320, -1E-12*x[20]+1E-12*i[87]+b[107] <= 1.0)
@constraint(m, e321, -1E-12*x[21]+1E-12*i[84]+b[108] <= 1.0)
@constraint(m, e322, -1E-12*x[22]+1E-12*i[85]+b[109] <= 1.0)
@constraint(m, e323, -1E-12*x[23]+1E-12*i[86]+b[110] <= 1.0)
@constraint(m, e324, -1E-12*x[24]+1E-12*i[87]+b[111] <= 1.0)
@constraint(m, e325, -1E-12*x[25]+1E-12*i[84]+b[112] <= 1.0)
@constraint(m, e326, -1E-12*x[26]+1E-12*i[85]+b[113] <= 1.0)
@constraint(m, e327, -1E-12*x[27]+1E-12*i[86]+b[114] <= 1.0)
@constraint(m, e328, -1E-12*x[28]+1E-12*i[87]+b[115] <= 1.0)
@constraint(m, e329, -1E-12*x[29]+1E-12*i[84]+b[116] <= 1.0)
@constraint(m, e330, -1E-12*x[30]+1E-12*i[85]+b[117] <= 1.0)
@constraint(m, e331, -1E-12*x[31]+1E-12*i[86]+b[118] <= 1.0)
@constraint(m, e332, -1E-12*x[32]+1E-12*i[87]+b[119] <= 1.0)
@constraint(m, e333, i[64]-i[84]+1000000000000*b[104] <= 1.0e12)
@constraint(m, e334, i[65]-i[85]+1000000000000*b[105] <= 1.0e12)
@constraint(m, e335, i[66]-i[86]+1000000000000*b[106] <= 1.0e12)
@constraint(m, e336, i[67]-i[87]+1000000000000*b[107] <= 1.0e12)
@constraint(m, e337, i[68]-i[84]+1000000000000*b[108] <= 1.0e12)
@constraint(m, e338, i[69]-i[85]+1000000000000*b[109] <= 1.0e12)
@constraint(m, e339, i[70]-i[86]+1000000000000*b[110] <= 1.0e12)
@constraint(m, e340, i[71]-i[87]+1000000000000*b[111] <= 1.0e12)
@constraint(m, e341, i[72]-i[84]+1000000000000*b[112] <= 1.0e12)
@constraint(m, e342, i[73]-i[85]+1000000000000*b[113] <= 1.0e12)
@constraint(m, e343, i[74]-i[86]+1000000000000*b[114] <= 1.0e12)
@constraint(m, e344, i[75]-i[87]+1000000000000*b[115] <= 1.0e12)
@constraint(m, e345, i[76]-i[84]+1000000000000*b[116] <= 1.0e12)
@constraint(m, e346, i[77]-i[85]+1000000000000*b[117] <= 1.0e12)
@constraint(m, e347, i[78]-i[86]+1000000000000*b[118] <= 1.0e12)
@constraint(m, e348, i[79]-i[87]+1000000000000*b[119] <= 1.0e12)
@constraint(m, e349, i[64]-i[84]-1000000000000*b[104] >= -1.000000000001e12)
@constraint(m, e350, i[65]-i[85]-1000000000000*b[105] >= -1.000000000001e12)
@constraint(m, e351, i[66]-i[86]-1000000000000*b[106] >= -1.000000000001e12)
@constraint(m, e352, i[67]-i[87]-1000000000000*b[107] >= -1.000000000001e12)
@constraint(m, e353, i[68]-i[84]-1000000000000*b[108] >= -1.000000000001e12)
@constraint(m, e354, i[69]-i[85]-1000000000000*b[109] >= -1.000000000001e12)
@constraint(m, e355, i[70]-i[86]-1000000000000*b[110] >= -1.000000000001e12)
@constraint(m, e356, i[71]-i[87]-1000000000000*b[111] >= -1.000000000001e12)
@constraint(m, e357, i[72]-i[84]-1000000000000*b[112] >= -1.000000000001e12)
@constraint(m, e358, i[73]-i[85]-1000000000000*b[113] >= -1.000000000001e12)
@constraint(m, e359, i[74]-i[86]-1000000000000*b[114] >= -1.000000000001e12)
@constraint(m, e360, i[75]-i[87]-1000000000000*b[115] >= -1.000000000001e12)
@constraint(m, e361, i[76]-i[84]-1000000000000*b[116] >= -1.000000000001e12)
@constraint(m, e362, i[77]-i[85]-1000000000000*b[117] >= -1.000000000001e12)
@constraint(m, e363, i[78]-i[86]-1000000000000*b[118] >= -1.000000000001e12)
@constraint(m, e364, i[79]-i[87]-1000000000000*b[119] >= -1.000000000001e12)
@constraint(m, e365, -x[17]+i[64] <= 0.0)
@constraint(m, e366, -x[18]+i[65] <= 0.0)
@constraint(m, e367, -x[19]+i[66] <= 0.0)
@constraint(m, e368, -x[20]+i[67] <= 0.0)
@constraint(m, e369, -x[21]+i[68] <= 0.0)
@constraint(m, e370, -x[22]+i[69] <= 0.0)
@constraint(m, e371, -x[23]+i[70] <= 0.0)
@constraint(m, e372, -x[24]+i[71] <= 0.0)
@constraint(m, e373, -x[25]+i[72] <= 0.0)
@constraint(m, e374, -x[26]+i[73] <= 0.0)
@constraint(m, e375, -x[27]+i[74] <= 0.0)
@constraint(m, e376, -x[28]+i[75] <= 0.0)
@constraint(m, e377, -x[29]+i[76] <= 0.0)
@constraint(m, e378, -x[30]+i[77] <= 0.0)
@constraint(m, e379, -x[31]+i[78] <= 0.0)
@constraint(m, e380, -x[32]+i[79] <= 0.0)
@constraint(m, e381, -x[17]+i[64]+1000000000000*b[104] >= 0.0)
@constraint(m, e382, -x[18]+i[65]+1000000000000*b[105] >= 0.0)
@constraint(m, e383, -x[19]+i[66]+1000000000000*b[106] >= 0.0)
@constraint(m, e384, -x[20]+i[67]+1000000000000*b[107] >= 0.0)
@constraint(m, e385, -x[21]+i[68]+1000000000000*b[108] >= 0.0)
@constraint(m, e386, -x[22]+i[69]+1000000000000*b[109] >= 0.0)
@constraint(m, e387, -x[23]+i[70]+1000000000000*b[110] >= 0.0)
@constraint(m, e388, -x[24]+i[71]+1000000000000*b[111] >= 0.0)
@constraint(m, e389, -x[25]+i[72]+1000000000000*b[112] >= 0.0)
@constraint(m, e390, -x[26]+i[73]+1000000000000*b[113] >= 0.0)
@constraint(m, e391, -x[27]+i[74]+1000000000000*b[114] >= 0.0)
@constraint(m, e392, -x[28]+i[75]+1000000000000*b[115] >= 0.0)
@constraint(m, e393, -x[29]+i[76]+1000000000000*b[116] >= 0.0)
@constraint(m, e394, -x[30]+i[77]+1000000000000*b[117] >= 0.0)
@constraint(m, e395, -x[31]+i[78]+1000000000000*b[118] >= 0.0)
@constraint(m, e396, -x[32]+i[79]+1000000000000*b[119] >= 0.0)
@constraint(m, e397, -0.2*i[45]-0.022*i[49]-0.022*i[53]-0.022*i[57]-0.022*i[61]-0.44*i[65]-0.44*i[69]-0.44*i[73]-0.44*i[77]+x[150] == 2.2)
@constraint(m, e398, -0.2*i[46]-0.022*i[50]-0.022*i[54]-0.022*i[58]-0.022*i[62]-0.44*i[66]-0.44*i[70]-0.44*i[74]-0.44*i[78]+x[151] == 3.6)
@constraint(m, e399, -0.2*i[47]-0.022*i[51]-0.022*i[55]-0.022*i[59]-0.022*i[63]-0.44*i[67]-0.44*i[71]-0.44*i[75]-0.44*i[79]+x[152] == 1.2)
@constraint(m, e400, x[43]-0.44*i[65]-0.44*i[66]-0.44*i[67]-0.44*i[69]-0.44*i[70]-0.44*i[71]-0.44*i[73]-0.44*i[74]-0.44*i[75]-0.44*i[77]-0.44*i[78]-0.44*i[79] == 0.0)
@constraint(m, e401, x[42]-0.022*i[49]-0.022*i[50]-0.022*i[51]-0.022*i[53]-0.022*i[54]-0.022*i[55]-0.022*i[57]-0.022*i[58]-0.022*i[59]-0.022*i[61]-0.022*i[62]-0.022*i[63] == 0.0)
@constraint(m, e402, x[41] == 7.0)
@constraint(m, e403, x[44]-0.2*i[45]-0.2*i[46]-0.2*i[47] == 0.0)
@constraint(m, e404, -x[34]+i[45]+1000000000000*b[125]+x[144]+x[147] >= 0.0)
@constraint(m, e405, -x[35]+i[46]+1000000000000*b[126]+x[145]+x[148] >= 0.0)
@constraint(m, e406, -x[36]+i[47]+1000000000000*b[127]+x[146]+x[149] >= 0.0)
@constraint(m, e407, -x[38]+i[45]+1000000000000*b[121]+x[144]+x[147] >= 0.0)
@constraint(m, e408, -x[39]+i[46]+1000000000000*b[122]+x[145]+x[148] >= 0.0)
@constraint(m, e409, -x[40]+i[47]+1000000000000*b[123]+x[146]+x[149] >= 0.0)
@constraint(m, e410, -x[150]-x[151]-x[152]+x[153] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[153])

 
