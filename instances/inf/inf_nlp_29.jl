using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.2*x[1]+0.7*x[2]+0.1*x[3]+0.9*x[4]+0.4*x[5]+x[6] == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4]+x[5] == 1.0)
@NLconstraint(m, e3, x[1]*x[1] == 1.0)
@NLconstraint(m, e4, x[2]*x[2] == 1.0)
@NLconstraint(m, e5, x[3]*x[3] == 1.0)
@NLconstraint(m, e6, x[4]*x[4] == 1.0)
@NLconstraint(m, e7, x[5]*x[5] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script. 
