using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[1], 1.0e-6)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+2*x[3]-x[4] == 0.0)
@NLconstraint(m, e2, x[1]*x[2]*x[3]+objvar == 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.