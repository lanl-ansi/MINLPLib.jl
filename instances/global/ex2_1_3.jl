using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[13], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(5*x[1]-0.5*(10*x[1]*x[1]+10*x[2]*x[2]+10*x[3]*x[3]+10*x[4]*x[4])+5*x[2]+5*x[3]+5*x[4])+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+objvar == 0.0)
@constraint(m, e2, 2*x[1]+2*x[2]+x[10]+x[11] <= 10.0)
@constraint(m, e3, 2*x[1]+2*x[3]+x[10]+x[12] <= 10.0)
@constraint(m, e4, 2*x[2]+2*x[3]+x[11]+x[12] <= 10.0)
@constraint(m, e5, -8*x[1]+x[10] <= 0.0)
@constraint(m, e6, -8*x[2]+x[11] <= 0.0)
@constraint(m, e7, -8*x[3]+x[12] <= 0.0)
@constraint(m, e8, -2*x[4]-x[5]+x[10] <= 0.0)
@constraint(m, e9, -2*x[6]-x[7]+x[11] <= 0.0)
@constraint(m, e10, -2*x[8]-x[9]+x[12] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.