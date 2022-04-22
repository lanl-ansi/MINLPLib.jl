using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67]
@variable(m, x[x_Idx] >= 0)
b_Idx = Any[68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103]
@variable(m, b[b_Idx], Bin)

set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
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
set_upper_bound(x[50], 2.0)
set_upper_bound(x[51], 2.0)
set_upper_bound(x[52], 2.0)
set_upper_bound(x[53], 2.0)
set_upper_bound(x[54], 2.0)
set_upper_bound(x[55], 2.0)
set_upper_bound(x[56], 2.0)
set_upper_bound(x[57], 2.0)
set_upper_bound(x[58], 2.0)
set_upper_bound(x[59], 2.0)
set_upper_bound(x[60], 2.0)
set_upper_bound(x[61], 2.0)
set_upper_bound(x[62], 2.0)
set_upper_bound(x[63], 2.0)
set_upper_bound(x[64], 2.0)
set_upper_bound(x[65], 2.0)
set_upper_bound(x[66], 2.0)
set_upper_bound(x[67], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+1.74*x[2]+1.74*x[3]+1.74*x[4]+1.45*x[5]+1.45*x[6]+1.45*x[7]-7.38*x[8]-7.38*x[9]-7.38*x[10]-5.6*x[11]-5.6*x[12]-5.6*x[13]+1.7*x[14]+1.7*x[15]+1.7*x[16]+1.18*x[17]+1.18*x[18]+1.18*x[19]-7.21*x[20]-7.21*x[21]-7.21*x[22]-5.45*x[23]-5.45*x[24]-5.45*x[25]+0.3*x[26]+0.3*x[27]+0.3*x[28]-7.71*x[29]-7.71*x[30]-7.71*x[31]-6.28*x[32]-6.28*x[33]-6.28*x[34]-7.74*x[35]-7.74*x[36]-7.74*x[37]+0.84*b[68]+0.84*b[69]+0.84*b[70]+0.05*b[71]+0.05*b[72]+0.05*b[73]+0.94*b[74]+0.94*b[75]+0.94*b[76]+0.81*b[77]+0.81*b[78]+0.81*b[79]+0.79*b[80]+0.79*b[81]+0.79*b[82]+0.05*b[83]+0.05*b[84]+0.05*b[85]+0.65*b[86]+0.65*b[87]+0.65*b[88]+0.97*b[89]+0.97*b[90]+0.97*b[91]+0.57*b[92]+0.57*b[93]+0.57*b[94]+0.26*b[95]+0.26*b[96]+0.26*b[97]+0.45*b[98]+0.45*b[99]+0.45*b[100]+0.1*b[101]+0.1*b[102]+0.1*b[103] == 0.0)
@constraint(m, e2, x[2]+x[5]+x[8]+x[11]+x[50] == 1.0)
@constraint(m, e3, x[14]+x[17]+x[20]+x[23]+x[53] == 1.1)
@constraint(m, e4, -x[2]-x[14]+x[26]+x[29]+x[32]+x[56] == 0.2)
@constraint(m, e5, -x[5]-x[17]-x[26]+x[35]+x[59] == 0.1)
@constraint(m, e6, -x[8]-x[20]-x[29]-x[35]+x[62] == 1.55)
@constraint(m, e7, -x[11]-x[23]-x[32]+x[65] == 0.49)
@NLconstraint(m, e8, x[38]*x[56]-0.6*x[2]-0.2*x[14]+0.2*x[26]+0.2*x[29]+0.2*x[32] == 0.04)
@NLconstraint(m, e9, x[41]*x[59]-0.6*x[5]-0.2*x[17]-0.2*x[26]+0.7*x[35] == 0.07)
@NLconstraint(m, e10, x[44]*x[56]-0.4*x[2]-0.4*x[14]+0.5*x[26]+0.5*x[29]+0.5*x[32] == 0.1)
@NLconstraint(m, e11, x[47]*x[59]-0.4*x[5]-0.4*x[17]-0.5*x[26]+0.6*x[35] == 0.06)
@constraint(m, e12, x[3]+x[6]+x[9]+x[12]-x[50]+x[51] == 1.0)
@constraint(m, e13, x[4]+x[7]+x[10]+x[13]-x[51]+x[52] == 0.0)
@constraint(m, e14, x[15]+x[18]+x[21]+x[24]-x[53]+x[54] == 0.1)
@constraint(m, e15, x[16]+x[19]+x[22]+x[25]-x[54]+x[55] == 0.9)
@constraint(m, e16, -x[3]-x[15]+x[27]+x[30]+x[33]-x[56]+x[57] == 0.0)
@constraint(m, e17, -x[4]-x[16]+x[28]+x[31]+x[34]-x[57]+x[58] == 0.0)
@constraint(m, e18, -x[6]-x[18]-x[27]+x[36]-x[59]+x[60] == 0.0)
@constraint(m, e19, -x[7]-x[19]-x[28]+x[37]-x[60]+x[61] == 0.0)
@constraint(m, e20, -x[9]-x[21]-x[30]-x[36]-x[62]+x[63] == -0.81)
@constraint(m, e21, -x[10]-x[22]-x[31]-x[37]-x[63]+x[64] == -0.88)
@constraint(m, e22, -x[12]-x[24]-x[33]-x[65]+x[66] == -0.14)
@constraint(m, e23, -x[13]-x[25]-x[34]-x[66]+x[67] == -0.1)
@NLconstraint(m, e24, x[39]*x[57]-(x[38]*x[56]-(x[38]*x[27]+x[38]*x[30]+x[38]*x[33]))-0.6*x[3]-0.2*x[15] == 0.0)
@NLconstraint(m, e25, x[40]*x[58]-(x[39]*x[57]-(x[39]*x[28]+x[39]*x[31]+x[39]*x[34]))-0.6*x[4]-0.2*x[16] == 0.0)
@NLconstraint(m, e26, x[42]*x[60]-(x[41]*x[59]+x[38]*x[27]-x[41]*x[36])-0.6*x[6]-0.2*x[18] == 0.0)
@NLconstraint(m, e27, x[43]*x[61]-(x[42]*x[60]+x[39]*x[28]-x[42]*x[37])-0.6*x[7]-0.2*x[19] == 0.0)
@NLconstraint(m, e28, x[45]*x[57]-(x[44]*x[56]-(x[44]*x[27]+x[44]*x[30]+x[44]*x[33]))-0.4*x[3]-0.4*x[15] == 0.0)
@NLconstraint(m, e29, x[46]*x[58]-(x[45]*x[57]-(x[45]*x[28]+x[45]*x[31]+x[45]*x[34]))-0.4*x[4]-0.4*x[16] == 0.0)
@NLconstraint(m, e30, x[48]*x[60]-(x[47]*x[59]+x[44]*x[27]-x[47]*x[36])-0.4*x[6]-0.4*x[18] == 0.0)
@NLconstraint(m, e31, x[49]*x[61]-(x[48]*x[60]+x[45]*x[28]-x[48]*x[37])-0.4*x[7]-0.4*x[19] == 0.0)
@constraint(m, e32, x[2]-b[68] <= 0.0)
@constraint(m, e33, x[3]-b[69] <= 0.0)
@constraint(m, e34, x[4]-b[70] <= 0.0)
@constraint(m, e35, x[5]-b[71] <= 0.0)
@constraint(m, e36, x[6]-b[72] <= 0.0)
@constraint(m, e37, x[7]-b[73] <= 0.0)
@constraint(m, e38, x[8]-b[74] <= 0.0)
@constraint(m, e39, x[9]-b[75] <= 0.0)
@constraint(m, e40, x[10]-b[76] <= 0.0)
@constraint(m, e41, x[11]-b[77] <= 0.0)
@constraint(m, e42, x[12]-b[78] <= 0.0)
@constraint(m, e43, x[13]-b[79] <= 0.0)
@constraint(m, e44, x[14]-b[80] <= 0.0)
@constraint(m, e45, x[15]-b[81] <= 0.0)
@constraint(m, e46, x[16]-b[82] <= 0.0)
@constraint(m, e47, x[17]-b[83] <= 0.0)
@constraint(m, e48, x[18]-b[84] <= 0.0)
@constraint(m, e49, x[19]-b[85] <= 0.0)
@constraint(m, e50, x[20]-b[86] <= 0.0)
@constraint(m, e51, x[21]-b[87] <= 0.0)
@constraint(m, e52, x[22]-b[88] <= 0.0)
@constraint(m, e53, x[23]-b[89] <= 0.0)
@constraint(m, e54, x[24]-b[90] <= 0.0)
@constraint(m, e55, x[25]-b[91] <= 0.0)
@constraint(m, e56, x[26]-b[92] <= 0.0)
@constraint(m, e57, x[27]-b[93] <= 0.0)
@constraint(m, e58, x[28]-b[94] <= 0.0)
@constraint(m, e59, x[29]-b[95] <= 0.0)
@constraint(m, e60, x[30]-b[96] <= 0.0)
@constraint(m, e61, x[31]-b[97] <= 0.0)
@constraint(m, e62, x[32]-b[98] <= 0.0)
@constraint(m, e63, x[33]-b[99] <= 0.0)
@constraint(m, e64, x[34]-b[100] <= 0.0)
@constraint(m, e65, x[35]-b[101] <= 0.0)
@constraint(m, e66, x[36]-b[102] <= 0.0)
@constraint(m, e67, x[37]-b[103] <= 0.0)
@constraint(m, e68, x[2] >= 0.0)
@constraint(m, e69, x[3] >= 0.0)
@constraint(m, e70, x[4] >= 0.0)
@constraint(m, e71, x[5] >= 0.0)
@constraint(m, e72, x[6] >= 0.0)
@constraint(m, e73, x[7] >= 0.0)
@constraint(m, e74, x[8] >= 0.0)
@constraint(m, e75, x[9] >= 0.0)
@constraint(m, e76, x[10] >= 0.0)
@constraint(m, e77, x[11] >= 0.0)
@constraint(m, e78, x[12] >= 0.0)
@constraint(m, e79, x[13] >= 0.0)
@constraint(m, e80, x[14] >= 0.0)
@constraint(m, e81, x[15] >= 0.0)
@constraint(m, e82, x[16] >= 0.0)
@constraint(m, e83, x[17] >= 0.0)
@constraint(m, e84, x[18] >= 0.0)
@constraint(m, e85, x[19] >= 0.0)
@constraint(m, e86, x[20] >= 0.0)
@constraint(m, e87, x[21] >= 0.0)
@constraint(m, e88, x[22] >= 0.0)
@constraint(m, e89, x[23] >= 0.0)
@constraint(m, e90, x[24] >= 0.0)
@constraint(m, e91, x[25] >= 0.0)
@constraint(m, e92, x[26] >= 0.0)
@constraint(m, e93, x[27] >= 0.0)
@constraint(m, e94, x[28] >= 0.0)
@constraint(m, e95, x[29] >= 0.0)
@constraint(m, e96, x[30] >= 0.0)
@constraint(m, e97, x[31] >= 0.0)
@constraint(m, e98, x[32] >= 0.0)
@constraint(m, e99, x[33] >= 0.0)
@constraint(m, e100, x[34] >= 0.0)
@constraint(m, e101, x[35] >= 0.0)
@constraint(m, e102, x[36] >= 0.0)
@constraint(m, e103, x[37] >= 0.0)
@constraint(m, e104, b[74] <= 1.5)
@constraint(m, e105, b[75] <= 1.5)
@constraint(m, e106, b[76] <= 1.5)
@constraint(m, e107, b[77] <= 0.6)
@constraint(m, e108, b[78] <= 0.6)
@constraint(m, e109, b[79] <= 0.6)
@constraint(m, e110, b[86] <= 1.1)
@constraint(m, e111, b[87] <= 1.1)
@constraint(m, e112, b[88] <= 1.1)
@constraint(m, e113, b[89] <= 0.2)
@constraint(m, e114, b[90] <= 0.2)
@constraint(m, e115, b[91] <= 0.2)
@constraint(m, e116, b[74] <= 1.0)
@constraint(m, e117, b[75] <= 1.0)
@constraint(m, e118, b[76] <= 1.0)
@constraint(m, e119, b[77] <= 0.8)
@constraint(m, e120, b[78] <= 0.8)
@constraint(m, e121, b[79] <= 0.8)
@constraint(m, e122, b[86] <= 1.0)
@constraint(m, e123, b[87] <= 1.0)
@constraint(m, e124, b[88] <= 1.0)
@constraint(m, e125, b[89] <= 0.8)
@constraint(m, e126, b[90] <= 0.8)
@constraint(m, e127, b[91] <= 0.8)
@constraint(m, e128, -b[74] >= -1.3)
@constraint(m, e129, -b[75] >= -1.3)
@constraint(m, e130, -b[76] >= -1.3)
@constraint(m, e131, -b[77] >= -1.4)
@constraint(m, e132, -b[78] >= -1.4)
@constraint(m, e133, -b[79] >= -1.4)
@constraint(m, e134, -b[86] >= -1.7)
@constraint(m, e135, -b[87] >= -1.7)
@constraint(m, e136, -b[88] >= -1.7)
@constraint(m, e137, -b[89] >= -1.8)
@constraint(m, e138, -b[90] >= -1.8)
@constraint(m, e139, -b[91] >= -1.8)
@constraint(m, e140, -b[74] >= -1.0)
@constraint(m, e141, -b[75] >= -1.0)
@constraint(m, e142, -b[76] >= -1.0)
@constraint(m, e143, -b[77] >= -1.4)
@constraint(m, e144, -b[78] >= -1.4)
@constraint(m, e145, -b[79] >= -1.4)
@constraint(m, e146, -b[86] >= -1.0)
@constraint(m, e147, -b[87] >= -1.0)
@constraint(m, e148, -b[88] >= -1.0)
@constraint(m, e149, -b[89] >= -1.4)
@constraint(m, e150, -b[90] >= -1.4)
@constraint(m, e151, -b[91] >= -1.4)
@constraint(m, e152, -x[38]+b[96] <= 0.9)
@constraint(m, e153, -x[39]+b[97] <= 0.9)
@constraint(m, e154, -x[38]+b[99] <= 0.0)
@constraint(m, e155, -x[39]+b[100] <= 0.0)
@constraint(m, e156, -x[41]+b[102] <= 0.9)
@constraint(m, e157, -x[42]+b[103] <= 0.9)
@constraint(m, e158, -x[44]+b[96] <= 0.6)
@constraint(m, e159, -x[45]+b[97] <= 0.6)
@constraint(m, e160, -x[44]+b[99] <= 0.4)
@constraint(m, e161, -x[45]+b[100] <= 0.4)
@constraint(m, e162, -x[47]+b[102] <= 0.6)
@constraint(m, e163, -x[48]+b[103] <= 0.6)
@constraint(m, e164, -x[38]-b[96] >= -1.9)
@constraint(m, e165, -x[39]-b[97] >= -1.9)
@constraint(m, e166, -x[38]-b[99] >= -2.0)
@constraint(m, e167, -x[39]-b[100] >= -2.0)
@constraint(m, e168, -x[41]-b[102] >= -1.9)
@constraint(m, e169, -x[42]-b[103] >= -1.9)
@constraint(m, e170, -x[44]-b[96] >= -1.4)
@constraint(m, e171, -x[45]-b[97] >= -1.4)
@constraint(m, e172, -x[44]-b[99] >= -1.8)
@constraint(m, e173, -x[45]-b[100] >= -1.8)
@constraint(m, e174, -x[47]-b[102] >= -1.4)
@constraint(m, e175, -x[48]-b[103] >= -1.4)
@constraint(m, e176, b[95] <= 1.1)
@constraint(m, e177, b[98] <= 0.2)
@constraint(m, e178, b[101] <= 1.6)
@constraint(m, e179, b[95] <= 1.1)
@constraint(m, e180, b[98] <= 0.9)
@constraint(m, e181, b[101] <= 1.2)
@constraint(m, e182, -b[95] >= -1.7)
@constraint(m, e183, -b[98] >= -1.8)
@constraint(m, e184, -b[101] >= -1.2)
@constraint(m, e185, -b[95] >= -0.9)
@constraint(m, e186, -b[98] >= -1.3)
@constraint(m, e187, -b[101] >= -0.8)
@constraint(m, e188, b[68]+b[92] <= 1.0)
@constraint(m, e189, b[69]+b[93] <= 1.0)
@constraint(m, e190, b[70]+b[94] <= 1.0)
@constraint(m, e191, b[68]+b[95] <= 1.0)
@constraint(m, e192, b[69]+b[96] <= 1.0)
@constraint(m, e193, b[70]+b[97] <= 1.0)
@constraint(m, e194, b[68]+b[98] <= 1.0)
@constraint(m, e195, b[69]+b[99] <= 1.0)
@constraint(m, e196, b[70]+b[100] <= 1.0)
@constraint(m, e197, b[80]+b[92] <= 1.0)
@constraint(m, e198, b[81]+b[93] <= 1.0)
@constraint(m, e199, b[82]+b[94] <= 1.0)
@constraint(m, e200, b[80]+b[95] <= 1.0)
@constraint(m, e201, b[81]+b[96] <= 1.0)
@constraint(m, e202, b[82]+b[97] <= 1.0)
@constraint(m, e203, b[80]+b[98] <= 1.0)
@constraint(m, e204, b[81]+b[99] <= 1.0)
@constraint(m, e205, b[82]+b[100] <= 1.0)
@constraint(m, e206, b[71]+b[101] <= 1.0)
@constraint(m, e207, b[72]+b[102] <= 1.0)
@constraint(m, e208, b[73]+b[103] <= 1.0)
@constraint(m, e209, b[83]+b[101] <= 1.0)
@constraint(m, e210, b[84]+b[102] <= 1.0)
@constraint(m, e211, b[85]+b[103] <= 1.0)
@constraint(m, e212, b[92]+b[101] <= 1.0)
@constraint(m, e213, b[93]+b[102] <= 1.0)
@constraint(m, e214, b[94]+b[103] <= 1.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

 
