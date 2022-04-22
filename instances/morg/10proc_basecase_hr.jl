using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
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
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[14], 2.0)
set_upper_bound(x[16], 2.0)
set_upper_bound(x[20], 2.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[28], 2.0)
set_upper_bound(x[30], 2.0)
set_upper_bound(x[32], 2.0)
set_upper_bound(x[36], 3.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 3.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[24]-x[30]-x[32]-x[37] == 0.0)
@constraint(m, e2, -x[20]-x[27]+x[28]-x[36] == 0.0)
@constraint(m, e3, x[22]-x[23]-x[26]-x[39] == 0.0)
@constraint(m, e4, x[14]+x[16]-x[17]-x[22] == 0.0)
@constraint(m, e5, x[17]-x[18]-x[19] == 0.0)
@constraint(m, e6, -x[31]-x[33]+x[34]-x[38]-x[40] == 0.0)
@constraint(m, e7, -x[25]+x[34]-x[35] == 0.0)
@constraint(m, e8, x[12]-x[13]-x[15] == 0.0)
@constraint(m, e9, x[21]-0.8*x[28] <= 0.0)
@constraint(m, e10, x[21]-0.4*x[28] >= 0.0)
@constraint(m, e11, x[23]-5*x[25] <= 0.0)
@constraint(m, e12, x[23]-2*x[25] >= 0.0)
@NLconstraint(m, e13, exp(x[14])-x[13] == 1.0)
@constraint(m, e14, x[13] == 0.0)
@constraint(m, e15, x[14] == 0.0)
@constraint(m, e16, x[41] == 32.0)
@NLconstraint(m, e17, exp(0.833333333333333*x[16])-x[15] == 1.0)
@constraint(m, e18, x[15] == 0.0)
@constraint(m, e19, x[16] == 0.0)
@constraint(m, e20, x[42] == 18.0)
@constraint(m, e21, -x[19]+1.5*x[20]+x[21] == 0.0)
@constraint(m, e22, x[20] == 0.0)
@constraint(m, e23, x[43] == 12.0)
@constraint(m, e24, 1.25*x[23]-x[24]+1.25*x[25] == 0.0)
@constraint(m, e25, x[23] == 0.0)
@constraint(m, e26, x[24] == 0.0)
@constraint(m, e27, x[25] == 0.0)
@constraint(m, e28, x[44] == 14.0)
@constraint(m, e29, x[26]-2*x[27] == 0.0)
@constraint(m, e30, x[26] == 0.0)
@constraint(m, e31, x[27] == 0.0)
@constraint(m, e32, x[45] == 2.0)
@NLconstraint(m, e33, exp(0.666666666666667*x[31])-x[30] == 1.0)
@constraint(m, e34, x[30] == 0.0)
@constraint(m, e35, x[31] == 0.0)
@constraint(m, e36, x[46] == 41.0)
@NLconstraint(m, e37, exp(x[33])-x[32] == 1.0)
@constraint(m, e38, x[32] == 0.0)
@constraint(m, e39, x[33] == 0.0)
@constraint(m, e40, x[47] == 32.0)
@NLconstraint(m, e41, exp(x[29])-x[21]-x[28] == 1.0)
@constraint(m, e42, x[21] == 0.0)
@constraint(m, e43, x[28] == 0.0)
@constraint(m, e44, x[29] == 0.0)
@constraint(m, e45, x[36] == 0.0)
@constraint(m, e46, x[48] == 25.0)
@NLconstraint(m, e47, exp(0.833333333333333*x[38])-x[37] == 1.0)
@constraint(m, e48, x[37] == 0.0)
@constraint(m, e49, x[38] == 0.0)
@constraint(m, e50, x[49] == 6.0)
@NLconstraint(m, e51, exp(0.526315789473684*x[40])-x[39] == 1.0)
@constraint(m, e52, x[40] == 0.0)
@constraint(m, e53, x[39] == 0.0)
@constraint(m, e54, x[50] == 1.0)
@constraint(m, e55, b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11] <= 12.0)
@constraint(m, e56, x[1]-x[13]+10*x[14]-x[15]+15*x[16]+40*x[20]-15*x[21]-15*x[25]-80*x[28]+65*x[29]-25*x[30]+60*x[31]-35*x[32]+80*x[33]+35*x[36]+70*x[38]+65*x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50] == 80.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
