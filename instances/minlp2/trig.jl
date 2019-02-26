using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.0)
set_upper_bound(x[1], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sin(11*x[1])+cos(13*x[1])-sin(17*x[1])-cos(19*x[1]))+objvar == 0.0)
@NLconstraint(m, e2, 5*sin(x[1])-x[1] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.