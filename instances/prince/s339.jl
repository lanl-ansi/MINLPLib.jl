using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_lower_bound(x[2], 1.0e-5)
set_lower_bound(x[3], 1.0e-5)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-2*x[1]*x[3])-x[1]*x[2] >= -10.0)
@NLconstraint(m, e2, -(0.2/(x[1]*x[2]*x[3])+4/x[1]+3/x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
