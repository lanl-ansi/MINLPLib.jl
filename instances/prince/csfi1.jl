using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[1], 7.0)
set_lower_bound(x[2], 0.0001)
set_upper_bound(x[3], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 117.370892*x[4]/(x[2]*x[1])-x[5] == 0.0)
@NLconstraint(m, e2, 0.0208333333333333* (x[1])^2*x[5]-x[3] == 0.0)
@NLconstraint(m, e3, x[2]/x[1] <= 2.0)
@NLconstraint(m, e4, x[1]*x[2] <= 250.0)
@NLconstraint(m, e5, x[1]*x[2] >= 200.0)
@constraint(m, e6, x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.