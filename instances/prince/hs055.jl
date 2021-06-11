using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 0.6)
set_upper_bound(x[2], 1.0e6)
set_upper_bound(x[3], 1.0e6)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0e6)
set_upper_bound(x[6], 1.0e6)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+5*x[5] == 6.0)
@constraint(m, e2, x[1]+x[2]+x[3] == 3.0)
@constraint(m, e3, x[4]+x[5]+x[6] == 2.0)
@constraint(m, e4, x[1]+x[4] == 1.0)
@constraint(m, e5, x[2]+x[5] == 2.0)
@constraint(m, e6, x[3]+x[6] == 2.0)
@NLconstraint(m, e7, -(exp(x[1]*x[4])+x[1])-2*x[2]-4*x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
