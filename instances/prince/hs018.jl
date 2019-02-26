using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)
set_lower_bound(x[1], 2.0)
set_upper_bound(x[1], 50.0)
set_upper_bound(x[2], 50.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[2] >= 25.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2 >= 25.0)
@NLconstraint(m, e3, -(0.01* (x[1])^2+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.