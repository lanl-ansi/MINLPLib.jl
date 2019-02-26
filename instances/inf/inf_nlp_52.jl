using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[20]*x[14]+x[21]*x[14]+x[22]*x[14]+x[23]*x[14])+x[17] == 0.0)
@NLconstraint(m, e2, -(x[24]*x[15]+x[25]*x[15]+x[26]*x[15]+x[27]*x[15])+x[18] == 0.0)
@NLconstraint(m, e3, -(x[28]*x[16]+x[29]*x[16]+x[30]*x[16]+x[31]*x[16])+x[19] == 0.0)
@constraint(m, e4, -x[2]-x[3]-x[4]-x[5]+x[14] == 0.0)
@constraint(m, e5, -x[6]-x[7]-x[8]-x[9]+x[15] == 0.0)
@constraint(m, e6, -x[10]-x[11]-x[12]-x[13]+x[16] == 0.0)
@constraint(m, e7, x[1]-x[17]-x[18]-x[19] == 0.0)
@constraint(m, e8, x[14]+x[16] <= 80.0)
@constraint(m, e9, x[15]+x[16] <= 60.0)
@constraint(m, e10, x[20] <= 200.0)
@constraint(m, e11, x[21] <= 200.0)
@constraint(m, e12, x[22] <= 200.0)
@constraint(m, e13, x[23] <= 200.0)
@constraint(m, e14, x[24] <= 200.0)
@constraint(m, e15, x[25] <= 200.0)
@constraint(m, e16, x[26] <= 200.0)
@constraint(m, e17, x[27] <= 200.0)
@constraint(m, e18, x[28] <= 200.0)
@constraint(m, e19, x[29] <= 200.0)
@constraint(m, e20, x[30] <= 200.0)
@constraint(m, e21, x[31] <= 200.0)
@NLconstraint(m, e22, -exp(5.25-0.03*x[20]+0.01*x[28])+x[2] == 0.0)
@NLconstraint(m, e23, -exp(5.245-0.03*x[21]+0.01*x[29])+x[3] == 0.0)
@NLconstraint(m, e24, -exp(5.24-0.03*x[22]+0.01*x[30])+x[4] == 0.0)
@NLconstraint(m, e25, -exp(5.235-0.03*x[23]+0.01*x[31])+x[5] == 0.0)
@NLconstraint(m, e26, -exp(3.85-0.04*x[24]+0.01*x[28])+x[6] == 0.0)
@NLconstraint(m, e27, -exp(3.845-0.04*x[25]+0.01*x[29])+x[7] == 0.0)
@NLconstraint(m, e28, -exp(3.84-0.04*x[26]+0.01*x[30])+x[8] == 0.0)
@NLconstraint(m, e29, -exp(3.835-0.04*x[27]+0.01*x[31])+x[9] == 0.0)
@NLconstraint(m, e30, -exp(4.9-0.01*x[28])+x[10] == 0.0)
@NLconstraint(m, e31, -exp(4.895-0.01*x[29])+x[11] == 0.0)
@NLconstraint(m, e32, -exp(4.89-0.01*x[30])+x[12] == 0.0)
@NLconstraint(m, e33, -exp(4.885-0.01*x[31])+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script.