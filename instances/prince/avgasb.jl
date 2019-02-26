using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_upper_bound(x[6], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[8], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] <= 1.0)
@constraint(m, e2, x[3]+x[4] <= 1.0)
@constraint(m, e3, x[5]+x[6] <= 1.0)
@constraint(m, e4, x[7]+x[8] <= 1.0)
@constraint(m, e5, x[1]+x[3]+x[5]+x[7] <= 2.0)
@constraint(m, e6, x[2]+x[4]+x[6]+x[8] <= 2.0)
@constraint(m, e7, -2*x[1]-x[3]+x[7] <= 0.0)
@constraint(m, e8, -5*x[1]-3*x[3]+3*x[5]+x[7] <= 0.0)
@constraint(m, e9, -x[2]+x[4]+3*x[6]+5*x[8] <= 0.0)
@constraint(m, e10, -x[2]+3*x[6]+2*x[8] <= 0.0)
@NLconstraint(m, e11, -(2* (x[1])^2+2* (x[2])^2+2* (x[3])^2+2* (x[4])^2+2* (x[5])^2+2* (x[6])^2+2* (x[7])^2+2* (x[8])^2+(-x[1]*x[2])-x[2]*x[3]-x[3]*x[4]-x[4]*x[5]-x[5]*x[6]-x[6]*x[7]-x[7]*x[8]-2*x[2]-x[3]-3*x[4]-2*x[5]-4*x[6]-3*x[7]-5*x[8])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.