using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -5.0)
set_upper_bound(x[1], 5.0)
set_lower_bound(x[2], -5.0)
set_upper_bound(x[2], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^4+4* (x[1])^3+4* (x[1])^2+ (x[2])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script.