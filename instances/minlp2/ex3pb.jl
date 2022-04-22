using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[10], 2.0)
set_upper_bound(x[12], 2.0)
set_upper_bound(x[16], 2.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[24], 2.0)
set_upper_bound(x[25], 100.0)
set_upper_bound(x[26], 2.0)
set_upper_bound(x[27], 100.0)
set_upper_bound(x[28], 2.0)
set_upper_bound(x[29], 100.0)
set_upper_bound(x[32], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(x[10])-x[9] == 1.0)
@NLconstraint(m, e2, exp(0.833333333333333*x[12])-x[11] == 1.0)
@constraint(m, e3, -x[15]+1.5*x[16]+x[17] == 0.0)
@constraint(m, e4, 1.25*x[19]-x[20]+1.25*x[21] == 0.0)
@constraint(m, e5, x[22]-2*x[23] == 0.0)
@NLconstraint(m, e6, exp(0.666666666666667*x[27])-x[26] == 1.0)
@NLconstraint(m, e7, exp(x[29])-x[28] == 1.0)
@NLconstraint(m, e8, exp(x[25])-x[17]-x[24] == 1.0)
@constraint(m, e9, x[20]-x[26]-x[28] == 0.0)
@constraint(m, e10, -x[16]-x[23]+x[24]-x[32] == 0.0)
@constraint(m, e11, x[18]-x[19]-x[22] == 0.0)
@constraint(m, e12, x[10]+x[12]-x[13]-x[18] == 0.0)
@constraint(m, e13, x[13]-x[14]-x[15] == 0.0)
@constraint(m, e14, -x[27]-x[29]+x[30] == 0.0)
@constraint(m, e15, -x[21]+x[30]-x[31] == 0.0)
@constraint(m, e16, x[17]-0.8*x[24] <= 0.0)
@constraint(m, e17, x[17]-0.4*x[24] >= 0.0)
@constraint(m, e18, x[19]-5*x[21] <= 0.0)
@constraint(m, e19, x[19]-2*x[21] >= 0.0)
@constraint(m, e20, -10*b[8]+x[9] <= 0.0)
@constraint(m, e21, -10*b[1]+x[11] <= 0.0)
@constraint(m, e22, -10*b[2]+x[16] <= 0.0)
@constraint(m, e23, -10*b[3]+x[19]+x[21] <= 0.0)
@constraint(m, e24, -10*b[4]+x[22] <= 0.0)
@constraint(m, e25, -10*b[5]+x[26] <= 0.0)
@constraint(m, e26, -10*b[6]+x[28] <= 0.0)
@constraint(m, e27, -10*b[7]+x[17]+x[24] <= 0.0)
@constraint(m, e28, b[1]+b[8] == 1.0)
@constraint(m, e29, b[3]+b[4] <= 1.0)
@constraint(m, e30, -b[3]+b[5]+b[6] == 0.0)
@constraint(m, e31, b[2]-b[7] <= 0.0)
@constraint(m, e32, -8*b[1]-6*b[2]-10*b[3]-6*b[4]-7*b[5]-4*b[6]-5*b[7]-5*b[8]-x[9]+10*x[10]-x[11]+15*x[12]+40*x[16]-15*x[17]-15*x[21]-80*x[24]+65*x[25]-25*x[26]+60*x[27]-35*x[28]+80*x[29]+35*x[32]+objvar == 122.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
