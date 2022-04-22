using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[43], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((x[3]*x[7]+x[5]*x[8])*x[1]+(x[4]*x[7]+x[6]*x[8])*x[2]-(x[9]*(2.5+x[7])+x[10]*(9+x[8]))-(x[11]*(3.5-x[7])+x[12]*(15-x[8]))-(x[17]*x[3]+x[18]*x[4]+x[19]*x[5]+x[20]*x[6])-(x[21]*(0.8-x[3])+x[22]*(0.9-x[4])+x[23]*(1-x[5])+x[24]*(1-x[6]))-(x[33]*(1-x[3]-x[5])+x[34]*(1-x[4]-x[6]))-x[55]*(3-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43])-x[35]*(x[44]+x[45]+x[46]+x[47])-(x[25]*(0.4-x[3]+0.4*x[36]-0.4*x[40])+x[26]*(0.45-x[4]+0.45*x[37]-0.45*x[41])+x[27]*(0.6-x[5]+0.4*x[38]-0.4*x[42])+x[28]*(0.55-x[6]+0.4*x[39]-0.4*x[43]))-(x[13]*(0.5-x[7]+3*x[44]-3*x[46])+x[14]*(3-x[8]+12*x[45]-12*x[47]))-(x[29]*(1-x[36]-x[40])+x[30]*(1-x[37]-x[41])+x[31]*(1-x[38]-x[42])+x[32]*(1-x[39]-x[43]))-(x[15]*(1-x[44]-x[46])+x[16]*(1-x[45]-x[47]))-(x[48]*x[36]*x[40]+x[49]*x[37]*x[41]+x[50]*x[38]*x[42]+x[51]*x[39]*x[43])-(x[52]*x[44]*x[46]+x[53]*x[45]*x[47]))+x[54] == 0.0)
@constraint(m, e2, x[1]+x[2] == 1.0)
@NLconstraint(m, e3, x[1]*x[3]+x[2]*x[4]-x[9]+x[11]+x[13] == 0.0)
@NLconstraint(m, e4, x[1]*x[5]+x[2]*x[6]-x[10]+x[12]+x[14] == 0.0)
@NLconstraint(m, e5, x[1]*x[7]-x[17]+x[21]+x[25]+x[33] == 0.0)
@NLconstraint(m, e6, x[2]*x[7]-x[18]+x[22]+x[26]+x[34] == 0.0)
@NLconstraint(m, e7, x[1]*x[8]-x[19]+x[23]+x[27]+x[33] == 0.0)
@NLconstraint(m, e8, x[2]*x[8]-x[20]+x[24]+x[28]+x[34] == 0.0)
@constraint(m, e9, -0.4*x[25]+x[29]+x[40]+x[55] == 0.0)
@constraint(m, e10, -0.45*x[26]+x[30]+x[41]+x[55] == 0.0)
@constraint(m, e11, -0.4*x[27]+x[31]+x[42]+x[55] == 0.0)
@constraint(m, e12, -0.4*x[28]+x[32]+x[43]+x[55] == 0.0)
@constraint(m, e13, 0.4*x[25]+x[29]+x[36]+x[55] == 0.0)
@constraint(m, e14, 0.45*x[26]+x[30]+x[37]+x[55] == 0.0)
@constraint(m, e15, 0.4*x[27]+x[31]+x[38]+x[55] == 0.0)
@constraint(m, e16, 0.4*x[28]+x[32]+x[39]+x[55] == 0.0)
@constraint(m, e17, -3*x[13]+x[15]+x[35]+x[46] == 0.0)
@constraint(m, e18, -12*x[14]+x[16]+x[35]+x[47] == 0.0)
@constraint(m, e19, 3*x[13]+x[15]+x[35]+x[44] == 0.0)
@constraint(m, e20, 12*x[14]+x[16]+x[35]+x[45] == 0.0)
@constraint(m, e21, x[7] >= -2.5)
@constraint(m, e22, x[8] >= -9.0)
@constraint(m, e23, x[7] <= 3.5)
@constraint(m, e24, x[8] <= 15.0)
@constraint(m, e25, x[3] >= 0.0)
@constraint(m, e26, x[4] >= 0.0)
@constraint(m, e27, x[5] >= 0.0)
@constraint(m, e28, x[6] >= 0.0)
@constraint(m, e29, x[3] <= 0.8)
@constraint(m, e30, x[4] <= 0.9)
@constraint(m, e31, x[5] <= 1.0)
@constraint(m, e32, x[6] <= 1.0)
@constraint(m, e33, x[3]+x[5] == 1.0)
@constraint(m, e34, x[4]+x[6] == 1.0)
@constraint(m, e35, x[44]+x[45]+x[46]+x[47] <= 20.0)
@constraint(m, e36, x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43] <= 3.0)
@constraint(m, e37, x[36]+x[40] <= 1.0)
@constraint(m, e38, x[37]+x[41] <= 1.0)
@constraint(m, e39, x[38]+x[42] <= 1.0)
@constraint(m, e40, x[39]+x[43] <= 1.0)
@constraint(m, e41, x[44]+x[46] <= 1.0)
@constraint(m, e42, x[45]+x[47] <= 1.0)
@NLconstraint(m, e43, x[36]*x[40] == 0.0)
@NLconstraint(m, e44, x[37]*x[41] == 0.0)
@NLconstraint(m, e45, x[38]*x[42] == 0.0)
@NLconstraint(m, e46, x[39]*x[43] == 0.0)
@NLconstraint(m, e47, x[44]*x[46] == 0.0)
@NLconstraint(m, e48, x[45]*x[47] == 0.0)
@NLconstraint(m, e49, x[9]*(2.5+x[7]) == 0.0)
@NLconstraint(m, e50, x[10]*(9+x[8]) == 0.0)
@NLconstraint(m, e51, x[11]*(3.5-x[7]) == 0.0)
@NLconstraint(m, e52, x[12]*(15-x[8]) == 0.0)
@NLconstraint(m, e53, x[17]*x[3] == 0.0)
@NLconstraint(m, e54, x[18]*x[4] == 0.0)
@NLconstraint(m, e55, x[19]*x[5] == 0.0)
@NLconstraint(m, e56, x[20]*x[6] == 0.0)
@NLconstraint(m, e57, x[21]*(0.8-x[3]) == 0.0)
@NLconstraint(m, e58, x[22]*(0.9-x[4]) == 0.0)
@NLconstraint(m, e59, x[23]*(1-x[5]) == 0.0)
@NLconstraint(m, e60, x[24]*(1-x[6]) == 0.0)
@NLconstraint(m, e61, x[33]*(1-x[3]-x[5]) == 0.0)
@NLconstraint(m, e62, x[34]*(1-x[4]-x[6]) == 0.0)
@NLconstraint(m, e63, x[55]*(3-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]) == 0.0)
@NLconstraint(m, e64, x[35]*(x[44]+x[45]+x[46]+x[47]) == 0.0)
@NLconstraint(m, e65, x[25]*(0.4-x[3]+0.4*x[36]-0.4*x[40]) == 0.0)
@NLconstraint(m, e66, x[26]*(0.45-x[4]+0.45*x[37]-0.45*x[41]) == 0.0)
@NLconstraint(m, e67, x[27]*(0.6-x[5]+0.4*x[38]-0.4*x[42]) == 0.0)
@NLconstraint(m, e68, x[28]*(0.55-x[6]+0.4*x[39]-0.4*x[43]) == 0.0)
@NLconstraint(m, e69, x[13]*(0.5-x[7]+3*x[44]-3*x[46]) == 0.0)
@NLconstraint(m, e70, x[14]*(3-x[8]+12*x[45]-12*x[47]) == 0.0)
@NLconstraint(m, e71, x[29]*(1-x[36]-x[40]) == 0.0)
@NLconstraint(m, e72, x[30]*(1-x[37]-x[41]) == 0.0)
@NLconstraint(m, e73, x[31]*(1-x[38]-x[42]) == 0.0)
@NLconstraint(m, e74, x[32]*(1-x[39]-x[43]) == 0.0)
@NLconstraint(m, e75, x[15]*(1-x[44]-x[46]) == 0.0)
@NLconstraint(m, e76, x[16]*(1-x[45]-x[47]) == 0.0)
@NLconstraint(m, e77, x[48]*x[36]*x[40] == 0.0)
@NLconstraint(m, e78, x[49]*x[37]*x[41] == 0.0)
@NLconstraint(m, e79, x[50]*x[38]*x[42] == 0.0)
@NLconstraint(m, e80, x[51]*x[39]*x[43] == 0.0)
@NLconstraint(m, e81, x[52]*x[44]*x[46] == 0.0)
@NLconstraint(m, e82, x[53]*x[45]*x[47] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[54])

 
