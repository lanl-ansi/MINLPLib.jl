using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2]-x[4])^2+ (x[3]-x[5])^2)+x[1] == 0.0)
@constraint(m, e2, 2*x[4]+2.666666666*x[5] == 34.0)
@constraint(m, e3, 1.25*x[4]+2*x[5] == 24.25)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.