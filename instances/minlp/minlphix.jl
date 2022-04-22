using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]
@variable(m, x[x_Idx])
b_Idx = Any[66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[30], 326.0)
set_upper_bound(x[31], 304.0)
set_lower_bound(x[32], 326.0)
set_upper_bound(x[33], 304.0)
set_upper_bound(x[34], 1000.0)
set_upper_bound(x[35], 1000.0)
set_upper_bound(x[36], 1000.0)
set_upper_bound(x[37], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.4*((0.003375*x[30]-1.15398)*x[2]+(0.000893*x[31]-0.30630793)*x[3]+(0.004458*x[32]-1.57608132)*x[4]+(0.003176*x[33]-1.08593792)*x[5]+31.8928571428571*x[14]/(1+x[30]-x[36]-b[82])+31.8928571428571*x[15]/(1+x[31]-x[37]-b[83])+31.8928571428571*x[16]/(1+x[32]-x[34]-b[84])+31.8928571428571*x[17]/(1+x[33]-x[35]-b[85])+151.125*b[82]+180.003*b[83]+4.2286*b[84]+213.42*b[85]+31.8928571428571*x[26]/(1+x[38]-b[82])+31.8928571428571*x[27]/(1+x[39]-b[83])+31.8928571428571*x[28]/(1+x[40]-b[84])+31.8928571428571*x[29]/(1+x[41]-b[85])+31.8928571428571*x[18]/(421-x[34])+31.8928571428571*x[19]/(421-x[35])+31.8928571428571*x[20]/(421-x[36])+31.8928571428571*x[21]/(421-x[37])+31.8928571428571*x[22]/(373-x[34])+31.8928571428571*x[23]/(373-x[35])+31.8928571428571*x[24]/(373-x[36])+31.8928571428571*x[25]/(373-x[37]))+12.95216*x[18]+12.95216*x[19]+12.95216*x[20]+12.95216*x[21]+4.75228*x[22]+4.75228*x[23]+4.75228*x[24]+4.75228*x[25]+2.418*x[26]+2.418*x[27]+2.418*x[28]+2.418*x[29])+objvar-1.3568*b[66]-1.3568*b[67]-1.3568*b[68]-1.3568*b[69]-1.3568*b[70]-1.3568*b[71]-1.3568*b[72]-1.3568*b[73]-1.3568*b[74]-1.3568*b[75]-1.3568*b[76]-1.3568*b[77]-1.3568*b[78]-1.3568*b[79]-1.3568*b[80]-1.3568*b[81] == 0.0)
@NLconstraint(m, e2, -(0.666666666666667*sqrt((x[30]-305)*(x[30]-325))+0.333333333333333*x[30])+x[38]-x[42]+x[46] == -105.0)
@NLconstraint(m, e3, -(0.666666666666667*sqrt((x[31]-305)*(x[31]-325))+0.333333333333333*x[31])+x[39]-x[43]+x[47] == -105.0)
@NLconstraint(m, e4, -(0.666666666666667*sqrt((x[32]-305)*(x[32]-325))+0.333333333333333*x[32])+x[40]-x[44]+x[48] == -105.0)
@NLconstraint(m, e5, -(0.666666666666667*sqrt((x[33]-305)*(x[33]-325))+0.333333333333333*x[33])+x[41]-x[45]+x[49] == -105.0)
@constraint(m, e6, x[30]+x[34]+x[38]-1500*b[82] <= 0.0)
@constraint(m, e7, x[31]+x[35]+x[39]-1500*b[83] <= 0.0)
@constraint(m, e8, x[32]+x[36]+x[40]-1500*b[84] <= 0.0)
@constraint(m, e9, x[33]+x[37]+x[41]-1500*b[85] <= 0.0)
@constraint(m, e10, x[42]+x[50]+x[54]+1500*b[82] <= 1500.0)
@constraint(m, e11, x[43]+x[51]+x[55]+1500*b[83] <= 1500.0)
@constraint(m, e12, x[44]+x[52]+x[56]+1500*b[84] <= 1500.0)
@constraint(m, e13, x[45]+x[53]+x[57]+1500*b[85] <= 1500.0)
@constraint(m, e14, x[46]+x[58]+x[62]+1500*b[82] <= 1500.0)
@constraint(m, e15, x[47]+x[59]+x[63]+1500*b[83] <= 1500.0)
@constraint(m, e16, x[48]+x[60]+x[64]+1500*b[84] <= 1500.0)
@constraint(m, e17, x[49]+x[61]+x[65]+1500*b[85] <= 1500.0)
@constraint(m, e18, 0.9*x[3]-x[5] == 0.0)
@constraint(m, e19, 0.2*x[2]-x[4] == 0.0)
@constraint(m, e20, x[2]+x[3] == 396.0)
@constraint(m, e21, x[2]-1500*b[82] <= 0.0)
@constraint(m, e22, x[3]-1500*b[83] <= 0.0)
@constraint(m, e23, x[4]-1500*b[84] <= 0.0)
@constraint(m, e24, x[5]-1500*b[85] <= 0.0)
@constraint(m, e25, x[10]-0.0225*x[30]-x[58]+x[62] == 24.7068)
@constraint(m, e26, x[11]-0.013*x[31]-x[59]+x[63] == 20.54087)
@constraint(m, e27, x[12]-0.0043*x[32]-x[60]+x[64] == 2.239778)
@constraint(m, e28, x[13]-0.0156*x[33]-x[61]+x[65] == 29.766048)
@constraint(m, e29, x[6]-x[10] == 0.0)
@constraint(m, e30, x[7]-x[11] == 0.0)
@constraint(m, e31, x[8]-x[12] == 0.0)
@constraint(m, e32, x[9]-x[13] == 0.0)
@constraint(m, e33, x[10]-x[14]-x[26] == 0.0)
@constraint(m, e34, x[11]-x[15]-x[27] == 0.0)
@constraint(m, e35, x[12]-x[16]-x[28] == 0.0)
@constraint(m, e36, x[13]-x[17]-x[29] == 0.0)
@constraint(m, e37, x[6]-x[16]-x[18]-x[22] == 0.0)
@constraint(m, e38, x[7]-x[17]-x[19]-x[23] == 0.0)
@constraint(m, e39, x[8]-x[14]-x[20]-x[24] == 0.0)
@constraint(m, e40, x[9]-x[15]-x[21]-x[25] == 0.0)
@constraint(m, e41, x[34] <= 411.0)
@constraint(m, e42, x[35] <= 411.0)
@constraint(m, e43, x[36] <= 411.0)
@constraint(m, e44, x[37] <= 411.0)
@constraint(m, e45, -x[30]+1500*b[82] <= 1158.08)
@constraint(m, e46, -x[31]+1500*b[83] <= 1156.99)
@constraint(m, e47, -x[32]+1500*b[84] <= 1146.46)
@constraint(m, e48, -x[33]+1500*b[85] <= 1158.08)
@constraint(m, e49, -1.028*x[30]+x[34]-x[50]+x[54] == -341.95276)
@constraint(m, e50, -1.05*x[31]+x[35]-x[51]+x[55] == -347.9205)
@constraint(m, e51, -1.029*x[32]+x[36]-x[52]+x[56] == -355.03666)
@constraint(m, e52, -1.005*x[33]+x[37]-x[53]+x[57] == -334.4486)
@constraint(m, e53, -x[30]+x[36]+1500*b[66] <= 1490.0)
@constraint(m, e54, -x[31]+x[37]+1500*b[67] <= 1490.0)
@constraint(m, e55, -x[32]+x[34]+1500*b[68] <= 1490.0)
@constraint(m, e56, -x[33]+x[35]+1500*b[69] <= 1490.0)
@constraint(m, e57, x[34]+1500*b[74] <= 1863.0)
@constraint(m, e58, x[35]+1500*b[75] <= 1863.0)
@constraint(m, e59, x[36]+1500*b[76] <= 1863.0)
@constraint(m, e60, x[37]+1500*b[77] <= 1863.0)
@constraint(m, e61, x[14]-1500*b[66] <= 0.0)
@constraint(m, e62, x[15]-1500*b[67] <= 0.0)
@constraint(m, e63, x[16]-1500*b[68] <= 0.0)
@constraint(m, e64, x[17]-1500*b[69] <= 0.0)
@constraint(m, e65, x[18]-1500*b[70] <= 0.0)
@constraint(m, e66, x[19]-1500*b[71] <= 0.0)
@constraint(m, e67, x[20]-1500*b[72] <= 0.0)
@constraint(m, e68, x[21]-1500*b[73] <= 0.0)
@constraint(m, e69, x[22]-1500*b[74] <= 0.0)
@constraint(m, e70, x[23]-1500*b[75] <= 0.0)
@constraint(m, e71, x[24]-1500*b[76] <= 0.0)
@constraint(m, e72, x[25]-1500*b[77] <= 0.0)
@constraint(m, e73, x[26]-1500*b[78] <= 0.0)
@constraint(m, e74, x[27]-1500*b[79] <= 0.0)
@constraint(m, e75, x[28]-1500*b[80] <= 0.0)
@constraint(m, e76, x[29]-1500*b[81] <= 0.0)
@constraint(m, e77, x[6]+x[10]-1500*b[82] <= 0.0)
@constraint(m, e78, x[7]+x[11]-1500*b[83] <= 0.0)
@constraint(m, e79, x[8]+x[12]-1500*b[84] <= 0.0)
@constraint(m, e80, x[9]+x[13]-1500*b[85] <= 0.0)
@constraint(m, e81, b[83]-b[85] == 0.0)
@constraint(m, e82, b[82]-b[84] == 0.0)
@constraint(m, e83, b[82]+b[83] == 1.0)
@constraint(m, e84, b[70]+b[74] <= 1.0)
@constraint(m, e85, b[71]+b[75] <= 1.0)
@constraint(m, e86, b[72]+b[76] <= 1.0)
@constraint(m, e87, b[73]+b[77] <= 1.0)
@constraint(m, e88, b[66]+b[68] <= 1.0)
@constraint(m, e89, b[67]+b[69] <= 1.0)
@constraint(m, e90, b[66]+b[68]+b[70]+b[74]+b[78]-20*b[82] <= 0.0)
@constraint(m, e91, b[67]+b[69]+b[71]+b[75]+b[79]-20*b[83] <= 0.0)
@constraint(m, e92, b[66]+b[68]+b[72]+b[76]+b[80]-20*b[84] <= 0.0)
@constraint(m, e93, b[67]+b[69]+b[73]+b[77]+b[81]-20*b[85] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
