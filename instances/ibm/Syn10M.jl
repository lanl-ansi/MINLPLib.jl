using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
@variable(m, x[x_Idx])
b_Idx = Any[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[13], 7.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-5*x[8]+2*x[13]-200*x[21]-250*x[22]-200*x[23]-200*x[24]-500*x[25]-350*x[26]+5*b[27]+8*b[28]+6*b[29]+10*b[30]+6*b[31]+7*b[32]+4*b[33]+5*b[34]+2*b[35]+4*b[36] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@NLconstraint(m, e8, -log(1+x[3])+x[5]+b[27] <= 1.0)
@constraint(m, e9, x[3]-10*b[27] <= 0.0)
@constraint(m, e10, x[5]-2.39789527279837*b[27] <= 0.0)
@NLconstraint(m, e11, -1.2*log(1+x[4])+x[6]+b[28] <= 1.0)
@constraint(m, e12, x[4]-10*b[28] <= 0.0)
@constraint(m, e13, x[6]-2.87747432735804*b[28] <= 0.0)
@constraint(m, e14, -0.75*x[10]+x[14]+b[29] <= 1.0)
@constraint(m, e15, -0.75*x[10]+x[14]-b[29] >= -1.0)
@constraint(m, e16, x[10]-2.87747432735804*b[29] <= 0.0)
@constraint(m, e17, x[14]-2.15810574551853*b[29] <= 0.0)
@NLconstraint(m, e18, -1.5*log(1+x[11])+x[15]+b[30] <= 1.0)
@constraint(m, e19, x[11]-2.87747432735804*b[30] <= 0.0)
@constraint(m, e20, x[15]-2.03277599268042*b[30] <= 0.0)
@constraint(m, e21, -x[12]+x[16]+b[31] <= 1.0)
@constraint(m, e22, -x[12]+x[16]-b[31] >= -1.0)
@constraint(m, e23, -0.5*x[13]+x[16]+b[31] <= 1.0)
@constraint(m, e24, -0.5*x[13]+x[16]-b[31] >= -1.0)
@constraint(m, e25, x[12]-2.87747432735804*b[31] <= 0.0)
@constraint(m, e26, x[13]-7*b[31] <= 0.0)
@constraint(m, e27, x[16]-3.5*b[31] <= 0.0)
@NLconstraint(m, e28, -1.25*log(1+x[17])+x[22]+b[32] <= 1.0)
@constraint(m, e29, x[17]-2.15810574551853*b[32] <= 0.0)
@constraint(m, e30, x[22]-1.43746550029693*b[32] <= 0.0)
@NLconstraint(m, e31, -0.9*log(1+x[18])+x[23]+b[33] <= 1.0)
@constraint(m, e32, x[18]-2.15810574551853*b[33] <= 0.0)
@constraint(m, e33, x[23]-1.03497516021379*b[33] <= 0.0)
@NLconstraint(m, e34, -log(1+x[15])+x[24]+b[34] <= 1.0)
@constraint(m, e35, x[15]-2.03277599268042*b[34] <= 0.0)
@constraint(m, e36, x[24]-1.10947836929589*b[34] <= 0.0)
@constraint(m, e37, -0.9*x[19]+x[25]+b[35] <= 1.0)
@constraint(m, e38, -0.9*x[19]+x[25]-b[35] >= -1.0)
@constraint(m, e39, x[19]-3.5*b[35] <= 0.0)
@constraint(m, e40, x[25]-3.15*b[35] <= 0.0)
@constraint(m, e41, -0.6*x[20]+x[26]+b[36] <= 1.0)
@constraint(m, e42, -0.6*x[20]+x[26]-b[36] >= -1.0)
@constraint(m, e43, x[20]-3.5*b[36] <= 0.0)
@constraint(m, e44, x[26]-2.1*b[36] <= 0.0)
@constraint(m, e45, b[27]+b[28] == 1.0)
@constraint(m, e46, -b[29]+b[32]+b[33] >= 0.0)
@constraint(m, e47, -b[30]+b[34] >= 0.0)
@constraint(m, e48, b[27]+b[28]-b[29] >= 0.0)
@constraint(m, e49, b[27]+b[28]-b[30] >= 0.0)
@constraint(m, e50, b[27]+b[28]-b[31] >= 0.0)
@constraint(m, e51, b[29]-b[32] >= 0.0)
@constraint(m, e52, b[29]-b[33] >= 0.0)
@constraint(m, e53, b[30]-b[34] >= 0.0)
@constraint(m, e54, b[31]-b[35] >= 0.0)
@constraint(m, e55, b[31]-b[36] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

 
