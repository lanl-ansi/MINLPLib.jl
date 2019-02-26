using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.5)
set_upper_bound(x[1], 4.0)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.1*x[3]-0.5*x[5]+x[6] == 0.0)
@constraint(m, e2, 4*x[1]+3*x[2] >= 12.0)
@constraint(m, e3, -5*x[1]+2*x[2] >= 10.0)
@constraint(m, e4, 0.166666666666667*x[1]-x[2] <= -2.5)
@constraint(m, e5, 0.5*x[1]+0.25*x[2]-0.5*x[3]-x[4]+x[5] >= 0.125)
@constraint(m, e6, -5*x[1]-0.25*x[2]+5*x[3]+x[4]-x[5] >= -1.25)
@constraint(m, e7, -2.25*x[1]-2*x[2]+0.5*x[3]+4.5*x[4]-x[5] >= -1.0)
@constraint(m, e8, 22.5*x[1]+2*x[2]-5*x[3]-4.5*x[4]+x[5] >= 10.0)
@constraint(m, e9, 4*x[1]+16*x[2]-0.5*x[3]-8*x[4]+x[5] >= 8.0)
@constraint(m, e10, -40*x[1]-16*x[2]+5*x[3]+8*x[4]-x[5] >= -80.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script.