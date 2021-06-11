using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2*x[2]*x[4]+4*x[2]*x[5]+3*x[2]*x[6]+6*x[3]*x[4]+2*x[3]*x[5]+3*x[3]*x[6]+5*x[4]*x[5]+3*x[4]*x[6]+3*x[5]*x[6])+objvar == 0.0)
@constraint(m, e2, x[2] == 1.0)
@constraint(m, e3, x[3] == 1.0)
@constraint(m, e4, x[4] == 1.0)
@constraint(m, e5, x[5] == 1.0)
@constraint(m, e6, x[6] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
