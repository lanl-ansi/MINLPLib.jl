using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84]
@variable(m, x[x_Idx])
b_Idx = Any[85, 86, 87, 88, 89, 90]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[1], 0.95)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.001)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 0.001)
set_upper_bound(x[3], 10.0)
set_lower_bound(x[4], 0.001)
set_upper_bound(x[4], 10.0)
set_lower_bound(x[5], 0.001)
set_upper_bound(x[5], 10.0)
set_lower_bound(x[6], 0.001)
set_upper_bound(x[6], 10.0)
set_lower_bound(x[7], 0.001)
set_upper_bound(x[7], 10.0)
set_lower_bound(x[14], 0.001)
set_upper_bound(x[14], 10.0)
set_lower_bound(x[15], 0.001)
set_upper_bound(x[15], 10.0)
set_lower_bound(x[16], 0.001)
set_upper_bound(x[16], 10.0)
set_lower_bound(x[17], 0.001)
set_upper_bound(x[17], 10.0)
set_lower_bound(x[18], 0.001)
set_upper_bound(x[18], 10.0)
set_lower_bound(x[19], 0.001)
set_upper_bound(x[19], 10.0)
set_lower_bound(x[20], 0.001)
set_upper_bound(x[20], 10.0)
set_lower_bound(x[21], 0.001)
set_upper_bound(x[21], 10.0)
set_lower_bound(x[22], 0.001)
set_upper_bound(x[22], 10.0)
set_lower_bound(x[23], 0.001)
set_upper_bound(x[23], 10.0)
set_lower_bound(x[24], 0.001)
set_upper_bound(x[24], 10.0)
set_lower_bound(x[25], 0.001)
set_upper_bound(x[25], 10.0)
set_lower_bound(x[26], 0.001)
set_upper_bound(x[26], 10.0)
set_lower_bound(x[27], 0.001)
set_upper_bound(x[27], 10.0)
set_lower_bound(x[34], 0.001)
set_upper_bound(x[34], 10.0)
set_lower_bound(x[35], 0.001)
set_upper_bound(x[35], 10.0)
set_lower_bound(x[36], 0.001)
set_upper_bound(x[36], 10.0)
set_lower_bound(x[37], 0.001)
set_upper_bound(x[37], 10.0)
set_lower_bound(x[38], 0.001)
set_upper_bound(x[38], 10.0)
set_lower_bound(x[39], 0.001)
set_upper_bound(x[39], 10.0)
set_lower_bound(x[40], 0.001)
set_upper_bound(x[40], 10.0)
set_lower_bound(x[41], 0.001)
set_upper_bound(x[41], 10.0)
set_lower_bound(x[42], 1.0e-5)
set_upper_bound(x[42], 10.0)
set_lower_bound(x[43], 0.001)
set_upper_bound(x[43], 10.0)
set_lower_bound(x[44], 0.001)
set_upper_bound(x[44], 10.0)
set_lower_bound(x[45], 1.0e-5)
set_upper_bound(x[45], 10.0)
set_lower_bound(x[46], 0.001)
set_upper_bound(x[46], 10.0)
set_lower_bound(x[47], 0.001)
set_upper_bound(x[47], 10.0)
set_lower_bound(x[48], 1.0e-5)
set_upper_bound(x[48], 10.0)
set_lower_bound(x[49], -10.0)
set_upper_bound(x[49], 10.0)
set_lower_bound(x[50], -10.0)
set_upper_bound(x[50], 10.0)
set_lower_bound(x[51], 1.0e-5)
set_upper_bound(x[51], 10.0)
set_lower_bound(x[52], -10.0)
set_upper_bound(x[52], 10.0)
set_lower_bound(x[53], -10.0)
set_upper_bound(x[53], 10.0)
set_lower_bound(x[54], 1.0e-5)
set_upper_bound(x[54], 10.0)
set_lower_bound(x[55], -10.0)
set_upper_bound(x[55], 10.0)
set_lower_bound(x[56], -10.0)
set_upper_bound(x[56], 10.0)
set_lower_bound(x[57], 1.0e-5)
set_upper_bound(x[57], 10.0)
set_lower_bound(x[58], 0.001)
set_upper_bound(x[58], 10.0)
set_lower_bound(x[59], 0.001)
set_upper_bound(x[59], 10.0)
set_lower_bound(x[60], 0.001)
set_upper_bound(x[60], 10.0)
set_lower_bound(x[61], 1.0e-5)
set_upper_bound(x[61], 10.0)
set_lower_bound(x[62], 0.001)
set_upper_bound(x[62], 10.0)
set_lower_bound(x[63], 0.001)
set_upper_bound(x[63], 10.0)
set_lower_bound(x[64], 0.001)
set_upper_bound(x[64], 10.0)
set_lower_bound(x[65], 1.0e-5)
set_upper_bound(x[65], 10.0)
set_lower_bound(x[66], -10.0)
set_upper_bound(x[66], 10.0)
set_lower_bound(x[67], -10.0)
set_upper_bound(x[67], 10.0)
set_lower_bound(x[68], -10.0)
set_upper_bound(x[68], 10.0)
set_lower_bound(x[69], 1.0e-5)
set_upper_bound(x[69], 10.0)
set_lower_bound(x[70], -10.0)
set_upper_bound(x[70], 10.0)
set_lower_bound(x[71], -10.0)
set_upper_bound(x[71], 10.0)
set_lower_bound(x[72], -10.0)
set_upper_bound(x[72], 10.0)
set_lower_bound(x[73], 1.0e-5)
set_upper_bound(x[73], 10.0)
set_lower_bound(x[74], -10.0)
set_upper_bound(x[74], 10.0)
set_lower_bound(x[75], -10.0)
set_upper_bound(x[75], 10.0)
set_lower_bound(x[76], -10.0)
set_upper_bound(x[76], 10.0)
set_lower_bound(x[77], 1.0e-5)
set_upper_bound(x[77], 10.0)
set_lower_bound(x[78], -10.0)
set_upper_bound(x[78], 10.0)
set_lower_bound(x[79], -10.0)
set_upper_bound(x[79], 10.0)
set_lower_bound(x[80], -10.0)
set_upper_bound(x[80], 10.0)
set_lower_bound(x[81], 1.0e-5)
set_upper_bound(x[81], 10.0)
set_lower_bound(x[82], -10.0)
set_upper_bound(x[82], 10.0)
set_lower_bound(x[83], -10.0)
set_upper_bound(x[83], 10.0)
set_lower_bound(x[84], -10.0)
set_upper_bound(x[84], 10.0)
set_lower_bound(b[85], 1.0)
set_upper_bound(b[85], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == 0.0)
@constraint(m, e2, -x[8]+0.001*b[85] <= 0.0)
@constraint(m, e3, -x[9]+0.001*b[86] <= 0.0)
@constraint(m, e4, -x[10]+0.001*b[87] <= 0.0)
@constraint(m, e5, -x[11]+0.001*b[88] <= 0.0)
@constraint(m, e6, -x[12]+0.001*b[89] <= 0.0)
@constraint(m, e7, -x[13]+0.001*b[90] <= 0.0)
@constraint(m, e8, x[8]-10*b[85] <= 0.0)
@constraint(m, e9, x[9]-10*b[86] <= 0.0)
@constraint(m, e10, x[10]-10*b[87] <= 0.0)
@constraint(m, e11, x[11]-10*b[88] <= 0.0)
@constraint(m, e12, x[12]-10*b[89] <= 0.0)
@constraint(m, e13, x[13]-10*b[90] <= 0.0)
@constraint(m, e14, -x[28]+0.001*b[85] <= 0.0)
@constraint(m, e15, -x[29]+0.001*b[86] <= 0.0)
@constraint(m, e16, -x[30]+0.001*b[87] <= 0.0)
@constraint(m, e17, -x[31]+0.001*b[88] <= 0.0)
@constraint(m, e18, -x[32]+0.001*b[89] <= 0.0)
@constraint(m, e19, -x[33]+0.001*b[90] <= 0.0)
@constraint(m, e20, x[28]-10*b[85] <= 0.0)
@constraint(m, e21, x[29]-10*b[86] <= 0.0)
@constraint(m, e22, x[30]-10*b[87] <= 0.0)
@constraint(m, e23, x[31]-10*b[88] <= 0.0)
@constraint(m, e24, x[32]-10*b[89] <= 0.0)
@constraint(m, e25, x[33]-10*b[90] <= 0.0)
@constraint(m, e26, b[85]-b[86] >= 0.0)
@constraint(m, e27, b[86]-b[87] >= 0.0)
@constraint(m, e28, b[87]-b[88] >= 0.0)
@constraint(m, e29, b[88]-b[89] >= 0.0)
@constraint(m, e30, b[89]-b[90] >= 0.0)
@constraint(m, e31, -10000000*x[2]+10000000*x[8]+x[14] == 0.0)
@NLconstraint(m, e32, 2000000*x[1]*x[2]-1000000*x[3]+1000000*x[9]+x[15] == 0.0)
@NLconstraint(m, e33, 200000*x[1]*x[3]-100000*x[2]-100000*x[4]-100000*x[8]+100000*x[10]+x[16] == 0.0)
@NLconstraint(m, e34, 20000*x[1]*x[4]-10000*x[3]-10000*x[5]-10000*x[9]+10000*x[11]+x[17] == 0.0)
@NLconstraint(m, e35, 2000*x[1]*x[5]-1000*x[4]-1000*x[6]-1000*x[10]+1000*x[12]+x[18] == 0.0)
@NLconstraint(m, e36, 200*x[1]*x[6]-100*x[5]-100*x[7]-100*x[11]+100*x[13]+x[19] == 0.0)
@NLconstraint(m, e37, 20*x[1]*x[7]-10*x[6]-10*x[12]+x[20] == 0.0)
@constraint(m, e38, -x[7]-x[13]+x[21] == 0.0)
@constraint(m, e39, -x[2]+1E-5*x[3]-1E-10*x[4]+x[22] == 0.0)
@constraint(m, e40, -x[3]+2E-5*x[4]-3E-10*x[5]+x[23] == 0.0)
@constraint(m, e41, -x[4]+3E-5*x[5]-6E-10*x[6]+x[24] == 0.0)
@constraint(m, e42, -x[5]+4E-5*x[6]-1E-9*x[7]+x[25] == 0.0)
@constraint(m, e43, -x[6]+5E-5*x[7]+x[26] == 0.0)
@constraint(m, e44, -x[7]+x[27] == 0.0)
@constraint(m, e45, -x[8]+1E-5*x[9]-1E-10*x[10]+x[28] == 0.0)
@constraint(m, e46, -x[9]+2E-5*x[10]-3E-10*x[11]+x[29] == 0.0)
@constraint(m, e47, -x[10]+3E-5*x[11]-6E-10*x[12]+x[30] == 0.0)
@constraint(m, e48, -x[11]+4E-5*x[12]-1E-9*x[13]+x[31] == 0.0)
@constraint(m, e49, -x[12]+5E-5*x[13]+x[32] == 0.0)
@constraint(m, e50, -x[13]+x[33] == 0.0)
@constraint(m, e51, -x[14]+1E-5*x[15]-1E-10*x[16]+x[34] == 0.0)
@constraint(m, e52, -x[15]+2E-5*x[16]-3E-10*x[17]+x[35] == 0.0)
@constraint(m, e53, -x[16]+3E-5*x[17]-6E-10*x[18]+x[36] == 0.0)
@constraint(m, e54, -x[17]+4E-5*x[18]-1E-9*x[19]+x[37] == 0.0)
@constraint(m, e55, -x[18]+5E-5*x[19]-1.5E-9*x[20]+x[38] == 0.0)
@constraint(m, e56, -x[19]+6E-5*x[20]-2.1E-9*x[21]+x[39] == 0.0)
@constraint(m, e57, -x[20]+7E-5*x[21]+x[40] == 0.0)
@constraint(m, e58, -x[21]+x[41] == 0.0)
@constraint(m, e59, -x[27]+x[42] == 0.0)
@constraint(m, e60, -x[25]+x[43] == 0.0)
@constraint(m, e61, -x[23]+x[44] == 0.0)
@constraint(m, e62, -x[26]+x[45] == 0.0)
@constraint(m, e63, -x[24]+x[46] == 0.0)
@constraint(m, e64, -x[22]+x[47] == 0.0)
@NLconstraint(m, e65, x[42]/x[45]*x[46]-x[43]+x[48] == 0.0)
@NLconstraint(m, e66, x[42]/x[45]*x[47]-x[44]+x[49] == 0.0)
@NLconstraint(m, e67, x[45]/x[48]*x[49]-x[46]+x[51] == 0.0)
@NLconstraint(m, e68, x[45]/x[48]*x[50]-x[47]+x[52] == 0.0)
@NLconstraint(m, e69, x[48]/x[51]*x[52]-x[49]+x[54] == 0.0)
@NLconstraint(m, e70, x[48]/x[51]*x[53]-x[50]+x[55] == 0.0)
@constraint(m, e71, x[50] == 0.0)
@constraint(m, e72, x[53] == 0.0)
@constraint(m, e73, x[56] == 0.0)
@constraint(m, e74, -x[41]+x[57] == 0.0)
@constraint(m, e75, -x[39]+x[58] == 0.0)
@constraint(m, e76, -x[37]+x[59] == 0.0)
@constraint(m, e77, -x[35]+x[60] == 0.0)
@constraint(m, e78, -x[40]+x[61] == 0.0)
@constraint(m, e79, -x[38]+x[62] == 0.0)
@constraint(m, e80, -x[36]+x[63] == 0.0)
@constraint(m, e81, -x[34]+x[64] == 0.0)
@NLconstraint(m, e82, x[57]/x[61]*x[62]-x[58]+x[65] == 0.0)
@NLconstraint(m, e83, x[57]/x[61]*x[63]-x[59]+x[66] == 0.0)
@NLconstraint(m, e84, x[57]/x[61]*x[64]-x[60]+x[67] == 0.0)
@NLconstraint(m, e85, x[61]/x[65]*x[66]-x[62]+x[69] == 0.0)
@NLconstraint(m, e86, x[61]/x[65]*x[67]-x[63]+x[70] == 0.0)
@NLconstraint(m, e87, x[61]/x[65]*x[68]-x[64]+x[71] == 0.0)
@NLconstraint(m, e88, x[65]/x[69]*x[70]-x[66]+x[73] == 0.0)
@NLconstraint(m, e89, x[65]/x[69]*x[71]-x[67]+x[74] == 0.0)
@NLconstraint(m, e90, x[65]/x[69]*x[72]-x[68]+x[75] == 0.0)
@NLconstraint(m, e91, x[69]/x[73]*x[74]-x[70]+x[77] == 0.0)
@NLconstraint(m, e92, x[69]/x[73]*x[75]-x[71]+x[78] == 0.0)
@NLconstraint(m, e93, x[69]/x[73]*x[76]-x[72]+x[79] == 0.0)
@NLconstraint(m, e94, x[73]/x[77]*x[78]-x[74]+x[81] == 0.0)
@NLconstraint(m, e95, x[73]/x[77]*x[79]-x[75]+x[82] == 0.0)
@NLconstraint(m, e96, x[73]/x[77]*x[80]-x[76]+x[83] == 0.0)
@constraint(m, e97, x[68] == 0.0)
@constraint(m, e98, x[72] == 0.0)
@constraint(m, e99, x[76] == 0.0)
@constraint(m, e100, x[80] == 0.0)
@constraint(m, e101, x[84] == 0.0)
@NLconstraint(m, e102, x[31]*x[32]-x[30]*x[33]-1E-5*b[90] >= 0.0)
@NLconstraint(m, e103, x[30]*x[31]*x[32]-x[30]*x[30]*x[33]+x[28]*x[32]*x[33]-x[29]*x[32]*x[32]-1E-5*b[89] >= 0.0)
@NLconstraint(m, e104, x[29]*x[30]*x[31]*x[32]-x[30]^2*x[29]*x[33]-x[29]^2*x[32]^2+2*x[28]*x[29]*x[32]*x[33]+x[28]*x[30]*x[31]*x[33]-x[28]^2*x[33]^2-x[31]^2*x[28]*x[32]+(x[29]*x[30]-x[28]*x[31])*(1-b[89])-1E-5*b[88] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

 
