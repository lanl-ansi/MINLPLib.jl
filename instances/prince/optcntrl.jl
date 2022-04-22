using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[1], 10.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[2], 0.0)
set_lower_bound(x[4], -1.0)
set_lower_bound(x[6], -1.0)
set_lower_bound(x[8], -1.0)
set_lower_bound(x[10], -1.0)
set_lower_bound(x[12], -1.0)
set_lower_bound(x[14], -1.0)
set_lower_bound(x[16], -1.0)
set_lower_bound(x[18], -1.0)
set_lower_bound(x[20], -1.0)
set_lower_bound(x[22], 0.0)
set_upper_bound(x[22], 0.0)
set_lower_bound(x[23], -0.2)
set_upper_bound(x[23], 0.2)
set_lower_bound(x[24], -0.2)
set_upper_bound(x[24], 0.2)
set_lower_bound(x[25], -0.2)
set_upper_bound(x[25], 0.2)
set_lower_bound(x[26], -0.2)
set_upper_bound(x[26], 0.2)
set_lower_bound(x[27], -0.2)
set_upper_bound(x[27], 0.2)
set_lower_bound(x[28], -0.2)
set_upper_bound(x[28], 0.2)
set_lower_bound(x[29], -0.2)
set_upper_bound(x[29], 0.2)
set_lower_bound(x[30], -0.2)
set_upper_bound(x[30], 0.2)
set_lower_bound(x[31], -0.2)
set_upper_bound(x[31], 0.2)
set_lower_bound(x[32], -0.2)
set_upper_bound(x[32], 0.2)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*x[1]*x[1]+0.5*x[3]*x[3]+0.5*x[5]*x[5]+0.5*x[7]*x[7]+0.5*x[9]*x[9]+0.5*x[11]*x[11]+0.5*x[13]*x[13]+0.5*x[15]*x[15]+0.5*x[17]*x[17]+0.5*x[19]*x[19]+0.5*x[21]*x[21]) <= 0.0)
@constraint(m, e2, -x[1]-0.2*x[2]+x[3] == 0.0)
@NLconstraint(m, e3, 0.01*x[2]*x[2]-x[2]+0.004*x[1]+x[4]-0.2*x[23] == 0.0)
@constraint(m, e4, -x[3]-0.2*x[4]+x[5] == 0.0)
@NLconstraint(m, e5, 0.01*x[4]*x[4]-x[4]+0.004*x[3]+x[6]-0.2*x[24] == 0.0)
@constraint(m, e6, -x[5]-0.2*x[6]+x[7] == 0.0)
@NLconstraint(m, e7, 0.01*x[6]*x[6]-x[6]+0.004*x[5]+x[8]-0.2*x[25] == 0.0)
@constraint(m, e8, -x[7]-0.2*x[8]+x[9] == 0.0)
@NLconstraint(m, e9, 0.01*x[8]*x[8]-x[8]+0.004*x[7]+x[10]-0.2*x[26] == 0.0)
@constraint(m, e10, -x[9]-0.2*x[10]+x[11] == 0.0)
@NLconstraint(m, e11, 0.01*x[10]*x[10]-x[10]+0.004*x[9]+x[12]-0.2*x[27] == 0.0)
@constraint(m, e12, -x[11]-0.2*x[12]+x[13] == 0.0)
@NLconstraint(m, e13, 0.01*x[12]*x[12]-x[12]+0.004*x[11]+x[14]-0.2*x[28] == 0.0)
@constraint(m, e14, -x[13]-0.2*x[14]+x[15] == 0.0)
@NLconstraint(m, e15, 0.01*x[14]*x[14]-x[14]+0.004*x[13]+x[16]-0.2*x[29] == 0.0)
@constraint(m, e16, -x[15]-0.2*x[16]+x[17] == 0.0)
@NLconstraint(m, e17, 0.01*x[16]*x[16]-x[16]+0.004*x[15]+x[18]-0.2*x[30] == 0.0)
@constraint(m, e18, -x[17]-0.2*x[18]+x[19] == 0.0)
@NLconstraint(m, e19, 0.01*x[18]*x[18]-x[18]+0.004*x[17]+x[20]-0.2*x[31] == 0.0)
@constraint(m, e20, -x[19]-0.2*x[20]+x[21] == 0.0)
@NLconstraint(m, e21, 0.01*x[20]*x[20]-x[20]+0.004*x[19]+x[22]-0.2*x[32] == 0.0)
@NLconstraint(m, e22, -(0.5*x[1]*x[1]+0.5*x[3]*x[3]+0.5*x[5]*x[5]+0.5*x[7]*x[7]+0.5*x[9]*x[9]+0.5*x[11]*x[11]+0.5*x[13]*x[13]+0.5*x[15]*x[15]+0.5*x[17]*x[17]+0.5*x[19]*x[19]+0.5*x[21]*x[21])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
