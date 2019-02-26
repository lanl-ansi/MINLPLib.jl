using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 15.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2])^2+ ((-10)+x[3])^2)+x[1] == 0.0)
@constraint(m, e2, 4*x[2]+8*x[3]+x[4]-x[5] == 120.0)
@constraint(m, e3, -x[2]-x[3]-x[6] == -20.0)
@NLconstraint(m, e4, x[5]*x[3] == 0.0)
@NLconstraint(m, e5, x[6]*x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.