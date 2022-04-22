using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)
set_upper_bound(x[62], 1.0)
set_upper_bound(x[63], 1.0)
set_upper_bound(x[64], 1.0)
set_upper_bound(x[65], 1.0)
set_upper_bound(x[66], 1.0)
set_upper_bound(x[67], 1.0)
set_upper_bound(x[68], 1.0)
set_upper_bound(x[69], 1.0)
set_upper_bound(x[70], 1.0)
set_upper_bound(x[71], 1.0)
set_upper_bound(x[72], 1.0)
set_upper_bound(x[73], 1.0)
set_upper_bound(x[74], 1.0)
set_upper_bound(x[75], 1.0)
set_upper_bound(x[76], 1.0)
set_upper_bound(x[77], 1.0)
set_upper_bound(x[78], 1.0)
set_upper_bound(x[79], 1.0)
set_upper_bound(x[80], 1.0)
set_upper_bound(x[81], 1.0)
set_upper_bound(x[82], 1.0)
set_upper_bound(x[83], 1.0)
set_upper_bound(x[84], 1.0)
set_upper_bound(x[87], 100.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[87]*x[61]+1000*b[1] <= 1000.024)
@NLconstraint(m, e2, x[87]*x[63]+1000*b[2] <= 1000.024)
@NLconstraint(m, e3, x[87]*x[65]+1000*b[3] <= 1000.024)
@NLconstraint(m, e4, x[87]*x[67]+1000*b[4] <= 1000.024)
@NLconstraint(m, e5, x[87]*x[69]+1000*b[5] <= 1000.024)
@NLconstraint(m, e6, x[87]*x[71]+1000*b[6] <= 1000.024)
@NLconstraint(m, e7, x[87]*x[73]+1000*b[7] <= 1000.024)
@NLconstraint(m, e8, x[87]*x[75]+1000*b[8] <= 1000.024)
@NLconstraint(m, e9, x[87]*x[77]+1000*b[9] <= 1000.024)
@NLconstraint(m, e10, x[87]*x[79]+1000*b[10] <= 1000.024)
@NLconstraint(m, e11, x[87]*x[81]+1000*b[11] <= 1000.024)
@NLconstraint(m, e12, x[87]*x[83]+1000*b[12] <= 1000.024)
@NLconstraint(m, e13, (100*b[14]+100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[39]+x[86]*x[63]-(100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[41]-x[86]*x[61]-80*b[14]-1000*b[2]+1000*b[26] <= 1000.0)
@NLconstraint(m, e14, (100*b[14]+100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[40]+x[86]*x[64]-(100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[42]-x[86]*x[62]-20*b[14]-1000*b[2]+1000*b[26] <= 1000.0)
@NLconstraint(m, e15, (100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[41]+x[86]*x[65]-(100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[43]-x[86]*x[63]-80*b[15]-1000*b[3]+1000*b[27] <= 1000.0)
@NLconstraint(m, e16, (100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[42]+x[86]*x[66]-(100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[44]-x[86]*x[64]-20*b[15]-1000*b[3]+1000*b[27] <= 1000.0)
@NLconstraint(m, e17, (100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[43]+x[86]*x[67]-(100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[45]-x[86]*x[65]-80*b[16]-1000*b[4]+1000*b[28] <= 1000.0)
@NLconstraint(m, e18, (100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[44]+x[86]*x[68]-(100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[46]-x[86]*x[66]-20*b[16]-1000*b[4]+1000*b[28] <= 1000.0)
@NLconstraint(m, e19, (100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[45]+x[86]*x[69]-(100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[47]-x[86]*x[67]-80*b[17]-1000*b[5]+1000*b[29] <= 1000.0)
@NLconstraint(m, e20, (100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[46]+x[86]*x[70]-(100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[48]-x[86]*x[68]-20*b[17]-1000*b[5]+1000*b[29] <= 1000.0)
@NLconstraint(m, e21, (100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[47]+x[86]*x[71]-(100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[49]-x[86]*x[69]-80*b[18]-1000*b[6]+1000*b[30] <= 1000.0)
@NLconstraint(m, e22, (100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[48]+x[86]*x[72]-(100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[50]-x[86]*x[70]-20*b[18]-1000*b[6]+1000*b[30] <= 1000.0)
@NLconstraint(m, e23, (100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[49]+x[86]*x[73]-(100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[51]-x[86]*x[71]-80*b[19]-1000*b[7]+1000*b[31] <= 1000.0)
@NLconstraint(m, e24, (100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[50]+x[86]*x[74]-(100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[52]-x[86]*x[72]-20*b[19]-1000*b[7]+1000*b[31] <= 1000.0)
@NLconstraint(m, e25, (100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[51]+x[86]*x[75]-(100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[53]-x[86]*x[73]-80*b[20]-1000*b[8]+1000*b[32] <= 1000.0)
@NLconstraint(m, e26, (100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[52]+x[86]*x[76]-(100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[54]-x[86]*x[74]-20*b[20]-1000*b[8]+1000*b[32] <= 1000.0)
@NLconstraint(m, e27, (100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[53]+x[86]*x[77]-(100*b[22]+100*b[23]+100*b[24]+x[85])*x[55]-x[86]*x[75]-80*b[21]-1000*b[9]+1000*b[33] <= 1000.0)
@NLconstraint(m, e28, (100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[54]+x[86]*x[78]-(100*b[22]+100*b[23]+100*b[24]+x[85])*x[56]-x[86]*x[76]-20*b[21]-1000*b[9]+1000*b[33] <= 1000.0)
@NLconstraint(m, e29, (100*b[22]+100*b[23]+100*b[24]+x[85])*x[55]+x[86]*x[79]-(100*b[23]+100*b[24]+x[85])*x[57]-x[86]*x[77]-80*b[22]-1000*b[10]+1000*b[34] <= 1000.0)
@NLconstraint(m, e30, (100*b[22]+100*b[23]+100*b[24]+x[85])*x[56]+x[86]*x[80]-(100*b[23]+100*b[24]+x[85])*x[58]-x[86]*x[78]-20*b[22]-1000*b[10]+1000*b[34] <= 1000.0)
@NLconstraint(m, e31, (100*b[23]+100*b[24]+x[85])*x[57]+x[86]*x[81]-(100*b[24]+x[85])*x[59]-x[86]*x[79]-80*b[23]-1000*b[11]+1000*b[35] <= 1000.0)
@NLconstraint(m, e32, (100*b[23]+100*b[24]+x[85])*x[58]+x[86]*x[82]-(100*b[24]+x[85])*x[60]-x[86]*x[80]-20*b[23]-1000*b[11]+1000*b[35] <= 1000.0)
@NLconstraint(m, e33, x[86]*x[61]-(100+x[85])*x[39]+80*x[37] == 0.0)
@NLconstraint(m, e34, x[86]*x[62]-(100+x[85])*x[40]+80*x[38] == 0.0)
@NLconstraint(m, e35, (100*b[14]+100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[39]+x[86]*x[63]-(100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[41]-x[86]*x[61]-80*b[14]-1000*b[2]+1000*b[26] >= 1000.0)
@NLconstraint(m, e36, (100*b[14]+100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[40]+x[86]*x[64]-(100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[42]-x[86]*x[62]-20*b[14]-1000*b[2]+1000*b[26] >= 1000.0)
@NLconstraint(m, e37, (100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[41]+x[86]*x[65]-(100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[43]-x[86]*x[63]-80*b[15]-1000*b[3]+1000*b[27] >= 1000.0)
@NLconstraint(m, e38, (100*b[15]+100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[42]+x[86]*x[66]-(100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[44]-x[86]*x[64]-20*b[15]-1000*b[3]+1000*b[27] >= 1000.0)
@NLconstraint(m, e39, (100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[43]+x[86]*x[67]-(100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[45]-x[86]*x[65]-80*b[16]-1000*b[4]+1000*b[28] >= 1000.0)
@NLconstraint(m, e40, (100*b[16]+100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[44]+x[86]*x[68]-(100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[46]-x[86]*x[66]-20*b[16]-1000*b[4]+1000*b[28] >= 1000.0)
@NLconstraint(m, e41, (100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[45]+x[86]*x[69]-(100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[47]-x[86]*x[67]-80*b[17]-1000*b[5]+1000*b[29] >= 1000.0)
@NLconstraint(m, e42, (100*b[17]+100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[46]+x[86]*x[70]-(100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[48]-x[86]*x[68]-20*b[17]-1000*b[5]+1000*b[29] >= 1000.0)
@NLconstraint(m, e43, (100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[47]+x[86]*x[71]-(100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[49]-x[86]*x[69]-80*b[18]-1000*b[6]+1000*b[30] >= 1000.0)
@NLconstraint(m, e44, (100*b[18]+100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[48]+x[86]*x[72]-(100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[50]-x[86]*x[70]-20*b[18]-1000*b[6]+1000*b[30] >= 1000.0)
@NLconstraint(m, e45, (100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[49]+x[86]*x[73]-(100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[51]-x[86]*x[71]-80*b[19]-1000*b[7]+1000*b[31] >= 1000.0)
@NLconstraint(m, e46, (100*b[19]+100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[50]+x[86]*x[74]-(100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[52]-x[86]*x[72]-20*b[19]-1000*b[7]+1000*b[31] >= 1000.0)
@NLconstraint(m, e47, (100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[51]+x[86]*x[75]-(100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[53]-x[86]*x[73]-80*b[20]-1000*b[8]+1000*b[32] >= 1000.0)
@NLconstraint(m, e48, (100*b[20]+100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[52]+x[86]*x[76]-(100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[54]-x[86]*x[74]-20*b[20]-1000*b[8]+1000*b[32] >= 1000.0)
@NLconstraint(m, e49, (100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[53]+x[86]*x[77]-(100*b[22]+100*b[23]+100*b[24]+x[85])*x[55]-x[86]*x[75]-80*b[21]-1000*b[9]+1000*b[33] >= 1000.0)
@NLconstraint(m, e50, (100*b[21]+100*b[22]+100*b[23]+100*b[24]+x[85])*x[54]+x[86]*x[78]-(100*b[22]+100*b[23]+100*b[24]+x[85])*x[56]-x[86]*x[76]-20*b[21]-1000*b[9]+1000*b[33] >= 1000.0)
@NLconstraint(m, e51, (100*b[22]+100*b[23]+100*b[24]+x[85])*x[55]+x[86]*x[79]-(100*b[23]+100*b[24]+x[85])*x[57]-x[86]*x[77]-80*b[22]-1000*b[10]+1000*b[34] >= 1000.0)
@NLconstraint(m, e52, (100*b[22]+100*b[23]+100*b[24]+x[85])*x[56]+x[86]*x[80]-(100*b[23]+100*b[24]+x[85])*x[58]-x[86]*x[78]-20*b[22]-1000*b[10]+1000*b[34] >= 1000.0)
@NLconstraint(m, e53, (100*b[23]+100*b[24]+x[85])*x[57]+x[86]*x[81]-(100*b[24]+x[85])*x[59]-x[86]*x[79]-80*b[23]-1000*b[11]+1000*b[35] >= 1000.0)
@NLconstraint(m, e54, (100*b[23]+100*b[24]+x[85])*x[58]+x[86]*x[82]-(100*b[24]+x[85])*x[60]-x[86]*x[80]-20*b[23]-1000*b[11]+1000*b[35] >= 1000.0)
@NLconstraint(m, e55, x[85]*x[39]+x[87]*x[63]-x[86]*x[61]+1000*b[2] <= 1000.0)
@NLconstraint(m, e56, x[85]*x[40]+x[87]*x[64]-x[86]*x[62]+1000*b[2] <= 1000.0)
@NLconstraint(m, e57, x[85]*x[41]+x[87]*x[65]-x[86]*x[63]+1000*b[3] <= 1000.0)
@NLconstraint(m, e58, x[85]*x[42]+x[87]*x[66]-x[86]*x[64]+1000*b[3] <= 1000.0)
@NLconstraint(m, e59, x[85]*x[43]+x[87]*x[67]-x[86]*x[65]+1000*b[4] <= 1000.0)
@NLconstraint(m, e60, x[85]*x[44]+x[87]*x[68]-x[86]*x[66]+1000*b[4] <= 1000.0)
@NLconstraint(m, e61, x[85]*x[45]+x[87]*x[69]-x[86]*x[67]+1000*b[5] <= 1000.0)
@NLconstraint(m, e62, x[85]*x[46]+x[87]*x[70]-x[86]*x[68]+1000*b[5] <= 1000.0)
@NLconstraint(m, e63, x[85]*x[47]+x[87]*x[71]-x[86]*x[69]+1000*b[6] <= 1000.0)
@NLconstraint(m, e64, x[85]*x[48]+x[87]*x[72]-x[86]*x[70]+1000*b[6] <= 1000.0)
@NLconstraint(m, e65, x[85]*x[49]+x[87]*x[73]-x[86]*x[71]+1000*b[7] <= 1000.0)
@NLconstraint(m, e66, x[85]*x[50]+x[87]*x[74]-x[86]*x[72]+1000*b[7] <= 1000.0)
@NLconstraint(m, e67, x[85]*x[51]+x[87]*x[75]-x[86]*x[73]+1000*b[8] <= 1000.0)
@NLconstraint(m, e68, x[85]*x[52]+x[87]*x[76]-x[86]*x[74]+1000*b[8] <= 1000.0)
@NLconstraint(m, e69, x[85]*x[53]+x[87]*x[77]-x[86]*x[75]+1000*b[9] <= 1000.0)
@NLconstraint(m, e70, x[85]*x[54]+x[87]*x[78]-x[86]*x[76]+1000*b[9] <= 1000.0)
@NLconstraint(m, e71, x[85]*x[55]+x[87]*x[79]-x[86]*x[77]+1000*b[10] <= 1000.0)
@NLconstraint(m, e72, x[85]*x[56]+x[87]*x[80]-x[86]*x[78]+1000*b[10] <= 1000.0)
@NLconstraint(m, e73, x[85]*x[57]+x[87]*x[81]-x[86]*x[79]+1000*b[11] <= 1000.0)
@NLconstraint(m, e74, x[85]*x[58]+x[87]*x[82]-x[86]*x[80]+1000*b[11] <= 1000.0)
@NLconstraint(m, e75, x[85]*x[59]+x[87]*x[83]-x[86]*x[81]+1000*b[12] <= 1000.0)
@NLconstraint(m, e76, x[85]*x[60]+x[87]*x[84]-x[86]*x[82]+1000*b[12] <= 1000.0)
@NLconstraint(m, e77, x[85]*x[39]+x[87]*x[63]-x[86]*x[61]-1000*b[2] >= -1000.0)
@NLconstraint(m, e78, x[85]*x[40]+x[87]*x[64]-x[86]*x[62]-1000*b[2] >= -1000.0)
@NLconstraint(m, e79, x[85]*x[41]+x[87]*x[65]-x[86]*x[63]-1000*b[3] >= -1000.0)
@NLconstraint(m, e80, x[85]*x[42]+x[87]*x[66]-x[86]*x[64]-1000*b[3] >= -1000.0)
@NLconstraint(m, e81, x[85]*x[43]+x[87]*x[67]-x[86]*x[65]-1000*b[4] >= -1000.0)
@NLconstraint(m, e82, x[85]*x[44]+x[87]*x[68]-x[86]*x[66]-1000*b[4] >= -1000.0)
@NLconstraint(m, e83, x[85]*x[45]+x[87]*x[69]-x[86]*x[67]-1000*b[5] >= -1000.0)
@NLconstraint(m, e84, x[85]*x[46]+x[87]*x[70]-x[86]*x[68]-1000*b[5] >= -1000.0)
@NLconstraint(m, e85, x[85]*x[47]+x[87]*x[71]-x[86]*x[69]-1000*b[6] >= -1000.0)
@NLconstraint(m, e86, x[85]*x[48]+x[87]*x[72]-x[86]*x[70]-1000*b[6] >= -1000.0)
@NLconstraint(m, e87, x[85]*x[49]+x[87]*x[73]-x[86]*x[71]-1000*b[7] >= -1000.0)
@NLconstraint(m, e88, x[85]*x[50]+x[87]*x[74]-x[86]*x[72]-1000*b[7] >= -1000.0)
@NLconstraint(m, e89, x[85]*x[51]+x[87]*x[75]-x[86]*x[73]-1000*b[8] >= -1000.0)
@NLconstraint(m, e90, x[85]*x[52]+x[87]*x[76]-x[86]*x[74]-1000*b[8] >= -1000.0)
@NLconstraint(m, e91, x[85]*x[53]+x[87]*x[77]-x[86]*x[75]-1000*b[9] >= -1000.0)
@NLconstraint(m, e92, x[85]*x[54]+x[87]*x[78]-x[86]*x[76]-1000*b[9] >= -1000.0)
@NLconstraint(m, e93, x[85]*x[55]+x[87]*x[79]-x[86]*x[77]-1000*b[10] >= -1000.0)
@NLconstraint(m, e94, x[85]*x[56]+x[87]*x[80]-x[86]*x[78]-1000*b[10] >= -1000.0)
@NLconstraint(m, e95, x[85]*x[57]+x[87]*x[81]-x[86]*x[79]-1000*b[11] >= -1000.0)
@NLconstraint(m, e96, x[85]*x[58]+x[87]*x[82]-x[86]*x[80]-1000*b[11] >= -1000.0)
@NLconstraint(m, e97, x[85]*x[59]+x[87]*x[83]-x[86]*x[81]-1000*b[12] >= -1000.0)
@NLconstraint(m, e98, x[85]*x[60]+x[87]*x[84]-x[86]*x[82]-1000*b[12] >= -1000.0)
@NLconstraint(m, e99, -objvar*x[87]+x[85] == 0.0)
@constraint(m, e100, b[13]+b[14]+b[15]+b[16]+b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23]+b[24] == 1.0)
@constraint(m, e101, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11]+b[12] == 1.0)
@constraint(m, e102, b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36] == 12.0)
@constraint(m, e103, b[1]+2*b[2]+3*b[3]+4*b[4]+5*b[5]+6*b[6]+7*b[7]+8*b[8]+9*b[9]+10*b[10]+11*b[11]+12*b[12] == 12.0)
@constraint(m, e104, -b[1]-2*b[2]-3*b[3]-4*b[4]-5*b[5]-6*b[6]-7*b[7]-8*b[8]-9*b[9]-10*b[10]-11*b[11]-12*b[12]+b[13]+2*b[14]+3*b[15]+4*b[16]+5*b[17]+6*b[18]+7*b[19]+8*b[20]+9*b[21]+10*b[22]+11*b[23]+12*b[24] <= 0.0)
@constraint(m, e105, b[1]-b[25] <= 0.0)
@constraint(m, e106, b[2]-b[26] <= 0.0)
@constraint(m, e107, b[3]-b[27] <= 0.0)
@constraint(m, e108, b[4]-b[28] <= 0.0)
@constraint(m, e109, b[5]-b[29] <= 0.0)
@constraint(m, e110, b[6]-b[30] <= 0.0)
@constraint(m, e111, b[7]-b[31] <= 0.0)
@constraint(m, e112, b[8]-b[32] <= 0.0)
@constraint(m, e113, b[9]-b[33] <= 0.0)
@constraint(m, e114, b[10]-b[34] <= 0.0)
@constraint(m, e115, b[11]-b[35] <= 0.0)
@constraint(m, e116, b[12]-b[36] <= 0.0)
@constraint(m, e117, b[13]-b[25] <= 0.0)
@constraint(m, e118, b[14]-b[26] <= 0.0)
@constraint(m, e119, b[15]-b[27] <= 0.0)
@constraint(m, e120, b[16]-b[28] <= 0.0)
@constraint(m, e121, b[17]-b[29] <= 0.0)
@constraint(m, e122, b[18]-b[30] <= 0.0)
@constraint(m, e123, b[19]-b[31] <= 0.0)
@constraint(m, e124, b[20]-b[32] <= 0.0)
@constraint(m, e125, b[21]-b[33] <= 0.0)
@constraint(m, e126, b[22]-b[34] <= 0.0)
@constraint(m, e127, b[23]-b[35] <= 0.0)
@constraint(m, e128, b[24]-b[36] <= 0.0)
@constraint(m, e129, -b[1]-b[2]-b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[25] <= 0.0)
@constraint(m, e130, -b[2]-b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[26] <= 0.0)
@constraint(m, e131, -b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[27] <= 0.0)
@constraint(m, e132, -b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[28] <= 0.0)
@constraint(m, e133, -b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[29] <= 0.0)
@constraint(m, e134, -b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[30] <= 0.0)
@constraint(m, e135, -b[7]-b[8]-b[9]-b[10]-b[11]-b[12]+b[31] <= 0.0)
@constraint(m, e136, -b[8]-b[9]-b[10]-b[11]-b[12]+b[32] <= 0.0)
@constraint(m, e137, -b[9]-b[10]-b[11]-b[12]+b[33] <= 0.0)
@constraint(m, e138, -b[10]-b[11]-b[12]+b[34] <= 0.0)
@constraint(m, e139, -b[11]-b[12]+b[35] <= 0.0)
@constraint(m, e140, -b[12]+b[36] <= 0.0)
@constraint(m, e141, -b[25]-x[61]-x[62] <= 0.0)
@constraint(m, e142, -b[26]-x[63]-x[64] <= 0.0)
@constraint(m, e143, -b[27]-x[65]-x[66] <= 0.0)
@constraint(m, e144, -b[28]-x[67]-x[68] <= 0.0)
@constraint(m, e145, -b[29]-x[69]-x[70] <= 0.0)
@constraint(m, e146, -b[30]-x[71]-x[72] <= 0.0)
@constraint(m, e147, -b[31]-x[73]-x[74] <= 0.0)
@constraint(m, e148, -b[32]-x[75]-x[76] <= 0.0)
@constraint(m, e149, -b[33]-x[77]-x[78] <= 0.0)
@constraint(m, e150, -b[34]-x[79]-x[80] <= 0.0)
@constraint(m, e151, -b[35]-x[81]-x[82] <= 0.0)
@constraint(m, e152, -b[36]-x[83]-x[84] <= 0.0)
@constraint(m, e153, b[25]-x[61]-x[62] <= 0.0)
@constraint(m, e154, b[26]-x[63]-x[64] <= 0.0)
@constraint(m, e155, b[27]-x[65]-x[66] <= 0.0)
@constraint(m, e156, b[28]-x[67]-x[68] <= 0.0)
@constraint(m, e157, b[29]-x[69]-x[70] <= 0.0)
@constraint(m, e158, b[30]-x[71]-x[72] <= 0.0)
@constraint(m, e159, b[31]-x[73]-x[74] <= 0.0)
@constraint(m, e160, b[32]-x[75]-x[76] <= 0.0)
@constraint(m, e161, b[33]-x[77]-x[78] <= 0.0)
@constraint(m, e162, b[34]-x[79]-x[80] <= 0.0)
@constraint(m, e163, b[35]-x[81]-x[82] <= 0.0)
@constraint(m, e164, b[36]-x[83]-x[84] <= 0.0)
@constraint(m, e165, -b[25]-x[37]-x[38] <= 0.0)
@constraint(m, e166, -b[26]-x[39]-x[40] <= 0.0)
@constraint(m, e167, -b[27]-x[41]-x[42] <= 0.0)
@constraint(m, e168, -b[28]-x[43]-x[44] <= 0.0)
@constraint(m, e169, -b[29]-x[45]-x[46] <= 0.0)
@constraint(m, e170, -b[30]-x[47]-x[48] <= 0.0)
@constraint(m, e171, -b[31]-x[49]-x[50] <= 0.0)
@constraint(m, e172, -b[32]-x[51]-x[52] <= 0.0)
@constraint(m, e173, -b[33]-x[53]-x[54] <= 0.0)
@constraint(m, e174, -b[34]-x[55]-x[56] <= 0.0)
@constraint(m, e175, -b[35]-x[57]-x[58] <= 0.0)
@constraint(m, e176, -b[36]-x[59]-x[60] <= 0.0)
@constraint(m, e177, b[25]-x[37]-x[38] <= 0.0)
@constraint(m, e178, b[26]-x[39]-x[40] <= 0.0)
@constraint(m, e179, b[27]-x[41]-x[42] <= 0.0)
@constraint(m, e180, b[28]-x[43]-x[44] <= 0.0)
@constraint(m, e181, b[29]-x[45]-x[46] <= 0.0)
@constraint(m, e182, b[30]-x[47]-x[48] <= 0.0)
@constraint(m, e183, b[31]-x[49]-x[50] <= 0.0)
@constraint(m, e184, b[32]-x[51]-x[52] <= 0.0)
@constraint(m, e185, b[33]-x[53]-x[54] <= 0.0)
@constraint(m, e186, b[34]-x[55]-x[56] <= 0.0)
@constraint(m, e187, b[35]-x[57]-x[58] <= 0.0)
@constraint(m, e188, b[36]-x[59]-x[60] <= 0.0)
@constraint(m, e189, -b[25]-x[61]-x[62] >= -2.0)
@constraint(m, e190, -b[26]-x[63]-x[64] >= -2.0)
@constraint(m, e191, -b[27]-x[65]-x[66] >= -2.0)
@constraint(m, e192, -b[28]-x[67]-x[68] >= -2.0)
@constraint(m, e193, -b[29]-x[69]-x[70] >= -2.0)
@constraint(m, e194, -b[30]-x[71]-x[72] >= -2.0)
@constraint(m, e195, -b[31]-x[73]-x[74] >= -2.0)
@constraint(m, e196, -b[32]-x[75]-x[76] >= -2.0)
@constraint(m, e197, -b[33]-x[77]-x[78] >= -2.0)
@constraint(m, e198, -b[34]-x[79]-x[80] >= -2.0)
@constraint(m, e199, -b[35]-x[81]-x[82] >= -2.0)
@constraint(m, e200, -b[36]-x[83]-x[84] >= -2.0)
@constraint(m, e201, b[25]-x[61]-x[62] >= -2.0)
@constraint(m, e202, b[26]-x[63]-x[64] >= -2.0)
@constraint(m, e203, b[27]-x[65]-x[66] >= -2.0)
@constraint(m, e204, b[28]-x[67]-x[68] >= -2.0)
@constraint(m, e205, b[29]-x[69]-x[70] >= -2.0)
@constraint(m, e206, b[30]-x[71]-x[72] >= -2.0)
@constraint(m, e207, b[31]-x[73]-x[74] >= -2.0)
@constraint(m, e208, b[32]-x[75]-x[76] >= -2.0)
@constraint(m, e209, b[33]-x[77]-x[78] >= -2.0)
@constraint(m, e210, b[34]-x[79]-x[80] >= -2.0)
@constraint(m, e211, b[35]-x[81]-x[82] >= -2.0)
@constraint(m, e212, b[36]-x[83]-x[84] >= -2.0)
@constraint(m, e213, -b[25]-x[37]-x[38] >= -2.0)
@constraint(m, e214, -b[26]-x[39]-x[40] >= -2.0)
@constraint(m, e215, -b[27]-x[41]-x[42] >= -2.0)
@constraint(m, e216, -b[28]-x[43]-x[44] >= -2.0)
@constraint(m, e217, -b[29]-x[45]-x[46] >= -2.0)
@constraint(m, e218, -b[30]-x[47]-x[48] >= -2.0)
@constraint(m, e219, -b[31]-x[49]-x[50] >= -2.0)
@constraint(m, e220, -b[32]-x[51]-x[52] >= -2.0)
@constraint(m, e221, -b[33]-x[53]-x[54] >= -2.0)
@constraint(m, e222, -b[34]-x[55]-x[56] >= -2.0)
@constraint(m, e223, -b[35]-x[57]-x[58] >= -2.0)
@constraint(m, e224, -b[36]-x[59]-x[60] >= -2.0)
@constraint(m, e225, b[25]-x[37]-x[38] >= -2.0)
@constraint(m, e226, b[26]-x[39]-x[40] >= -2.0)
@constraint(m, e227, b[27]-x[41]-x[42] >= -2.0)
@constraint(m, e228, b[28]-x[43]-x[44] >= -2.0)
@constraint(m, e229, b[29]-x[45]-x[46] >= -2.0)
@constraint(m, e230, b[30]-x[47]-x[48] >= -2.0)
@constraint(m, e231, b[31]-x[49]-x[50] >= -2.0)
@constraint(m, e232, b[32]-x[51]-x[52] >= -2.0)
@constraint(m, e233, b[33]-x[53]-x[54] >= -2.0)
@constraint(m, e234, b[34]-x[55]-x[56] >= -2.0)
@constraint(m, e235, b[35]-x[57]-x[58] >= -2.0)
@constraint(m, e236, b[36]-x[59]-x[60] >= -2.0)
@NLconstraint(m, e237, (x[37]+5.13435*x[38])*x[61]-x[37]+1000*b[25] <= 1000.0)
@NLconstraint(m, e238, (x[37]+5.13435*x[38])*x[62]-5.13435*x[38]+1000*b[25] <= 1000.0)
@NLconstraint(m, e239, (x[39]+5.13435*x[40])*x[63]-x[39]+1000*b[26] <= 1000.0)
@NLconstraint(m, e240, (x[39]+5.13435*x[40])*x[64]-5.13435*x[40]+1000*b[26] <= 1000.0)
@NLconstraint(m, e241, (x[41]+5.13435*x[42])*x[65]-x[41]+1000*b[27] <= 1000.0)
@NLconstraint(m, e242, (x[41]+5.13435*x[42])*x[66]-5.13435*x[42]+1000*b[27] <= 1000.0)
@NLconstraint(m, e243, (x[43]+5.13435*x[44])*x[67]-x[43]+1000*b[28] <= 1000.0)
@NLconstraint(m, e244, (x[43]+5.13435*x[44])*x[68]-5.13435*x[44]+1000*b[28] <= 1000.0)
@NLconstraint(m, e245, (x[45]+5.13435*x[46])*x[69]-x[45]+1000*b[29] <= 1000.0)
@NLconstraint(m, e246, (x[45]+5.13435*x[46])*x[70]-5.13435*x[46]+1000*b[29] <= 1000.0)
@NLconstraint(m, e247, (x[47]+5.13435*x[48])*x[71]-x[47]+1000*b[30] <= 1000.0)
@NLconstraint(m, e248, (x[47]+5.13435*x[48])*x[72]-5.13435*x[48]+1000*b[30] <= 1000.0)
@NLconstraint(m, e249, (x[49]+5.13435*x[50])*x[73]-x[49]+1000*b[31] <= 1000.0)
@NLconstraint(m, e250, (x[49]+5.13435*x[50])*x[74]-5.13435*x[50]+1000*b[31] <= 1000.0)
@NLconstraint(m, e251, (x[51]+5.13435*x[52])*x[75]-x[51]+1000*b[32] <= 1000.0)
@NLconstraint(m, e252, (x[51]+5.13435*x[52])*x[76]-5.13435*x[52]+1000*b[32] <= 1000.0)
@NLconstraint(m, e253, (x[53]+5.13435*x[54])*x[77]-x[53]+1000*b[33] <= 1000.0)
@NLconstraint(m, e254, (x[53]+5.13435*x[54])*x[78]-5.13435*x[54]+1000*b[33] <= 1000.0)
@NLconstraint(m, e255, (x[55]+5.13435*x[56])*x[79]-x[55]+1000*b[34] <= 1000.0)
@NLconstraint(m, e256, (x[55]+5.13435*x[56])*x[80]-5.13435*x[56]+1000*b[34] <= 1000.0)
@NLconstraint(m, e257, (x[57]+5.13435*x[58])*x[81]-x[57]+1000*b[35] <= 1000.0)
@NLconstraint(m, e258, (x[57]+5.13435*x[58])*x[82]-5.13435*x[58]+1000*b[35] <= 1000.0)
@NLconstraint(m, e259, (x[59]+5.13435*x[60])*x[83]-x[59]+1000*b[36] <= 1000.0)
@NLconstraint(m, e260, (x[59]+5.13435*x[60])*x[84]-5.13435*x[60]+1000*b[36] <= 1000.0)
@NLconstraint(m, e261, (x[37]+5.13435*x[38])*x[61]-x[37]-1000*b[25] >= -1000.0)
@NLconstraint(m, e262, (x[37]+5.13435*x[38])*x[62]-5.13435*x[38]-1000*b[25] >= -1000.0)
@NLconstraint(m, e263, (x[39]+5.13435*x[40])*x[63]-x[39]-1000*b[26] >= -1000.0)
@NLconstraint(m, e264, (x[39]+5.13435*x[40])*x[64]-5.13435*x[40]-1000*b[26] >= -1000.0)
@NLconstraint(m, e265, (x[41]+5.13435*x[42])*x[65]-x[41]-1000*b[27] >= -1000.0)
@NLconstraint(m, e266, (x[41]+5.13435*x[42])*x[66]-5.13435*x[42]-1000*b[27] >= -1000.0)
@NLconstraint(m, e267, (x[43]+5.13435*x[44])*x[67]-x[43]-1000*b[28] >= -1000.0)
@NLconstraint(m, e268, (x[43]+5.13435*x[44])*x[68]-5.13435*x[44]-1000*b[28] >= -1000.0)
@NLconstraint(m, e269, (x[45]+5.13435*x[46])*x[69]-x[45]-1000*b[29] >= -1000.0)
@NLconstraint(m, e270, (x[45]+5.13435*x[46])*x[70]-5.13435*x[46]-1000*b[29] >= -1000.0)
@NLconstraint(m, e271, (x[47]+5.13435*x[48])*x[71]-x[47]-1000*b[30] >= -1000.0)
@NLconstraint(m, e272, (x[47]+5.13435*x[48])*x[72]-5.13435*x[48]-1000*b[30] >= -1000.0)
@NLconstraint(m, e273, (x[49]+5.13435*x[50])*x[73]-x[49]-1000*b[31] >= -1000.0)
@NLconstraint(m, e274, (x[49]+5.13435*x[50])*x[74]-5.13435*x[50]-1000*b[31] >= -1000.0)
@NLconstraint(m, e275, (x[51]+5.13435*x[52])*x[75]-x[51]-1000*b[32] >= -1000.0)
@NLconstraint(m, e276, (x[51]+5.13435*x[52])*x[76]-5.13435*x[52]-1000*b[32] >= -1000.0)
@NLconstraint(m, e277, (x[53]+5.13435*x[54])*x[77]-x[53]-1000*b[33] >= -1000.0)
@NLconstraint(m, e278, (x[53]+5.13435*x[54])*x[78]-5.13435*x[54]-1000*b[33] >= -1000.0)
@NLconstraint(m, e279, (x[55]+5.13435*x[56])*x[79]-x[55]-1000*b[34] >= -1000.0)
@NLconstraint(m, e280, (x[55]+5.13435*x[56])*x[80]-5.13435*x[56]-1000*b[34] >= -1000.0)
@NLconstraint(m, e281, (x[57]+5.13435*x[58])*x[81]-x[57]-1000*b[35] >= -1000.0)
@NLconstraint(m, e282, (x[57]+5.13435*x[58])*x[82]-5.13435*x[58]-1000*b[35] >= -1000.0)
@NLconstraint(m, e283, (x[59]+5.13435*x[60])*x[83]-x[59]-1000*b[36] >= -1000.0)
@NLconstraint(m, e284, (x[59]+5.13435*x[60])*x[84]-5.13435*x[60]-1000*b[36] >= -1000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
