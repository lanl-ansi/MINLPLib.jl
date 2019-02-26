using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 100.0)
set_upper_bound(x[6], 200.0)
set_upper_bound(x[7], 100.0)
set_upper_bound(x[8], 200.0)
set_upper_bound(x[9], 100.0)
set_upper_bound(x[10], 200.0)
set_upper_bound(x[11], 50.0)
set_upper_bound(x[12], 50.0)
set_upper_bound(x[13], 100.0)
set_upper_bound(x[14], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[5]+5*x[6]+3*x[9]+9*x[10]-6*x[11]-7*x[13]-x[14] == 0.0)
@constraint(m, e2, x[9]+x[10] <= 300.0)
@constraint(m, e3, x[11]+x[12] <= 50.0)
@constraint(m, e4, x[13]+x[14] <= 300.0)
@constraint(m, e5, x[5]+x[6] <= 300.0)
@constraint(m, e6, x[9]+x[10]+x[11]+x[12]+x[13]+x[14] <= 300.0)
@constraint(m, e7, x[5]+x[9]+x[11]+x[13] <= 100.0)
@constraint(m, e8, x[6]+x[10]+x[12]+x[14] <= 200.0)
@constraint(m, e9, -0.5*x[5]+0.5*x[9]-1.5*x[11]-1.5*x[13] <= 0.0)
@constraint(m, e10, 0.5*x[6]+1.5*x[10]-0.5*x[12]-0.5*x[14] <= 0.0)
@constraint(m, e11, x[2]+x[3]+x[4] == 1.0)
@NLconstraint(m, e12, -x[2]*x[7]+x[9] == 0.0)
@NLconstraint(m, e13, -x[2]*x[8]+x[10] == 0.0)
@NLconstraint(m, e14, -x[3]*x[7]+x[11] == 0.0)
@NLconstraint(m, e15, -x[3]*x[8]+x[12] == 0.0)
@NLconstraint(m, e16, -x[4]*x[7]+x[13] == 0.0)
@NLconstraint(m, e17, -x[4]*x[8]+x[14] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.