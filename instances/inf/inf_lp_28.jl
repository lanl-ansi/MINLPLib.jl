using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.5)
set_upper_bound(x[1], 4.0)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.1*x[3]-0.5*x[7]+x[10] == 0.0)
@constraint(m, e2, 4*x[1]+3*x[2] >= 12.0)
@constraint(m, e3, -5*x[1]+2*x[2] >= 10.0)
@constraint(m, e4, 0.166666666666667*x[1]-x[2] <= -2.5)
@constraint(m, e5, 0.75*x[1]-1.5*x[3]+x[6] >= 0.125)
@constraint(m, e6, -4.25*x[1]+5*x[3]-x[6] >= -1.0)
@constraint(m, e7, 20*x[1]-8.5*x[3]+x[6] >= 8.0)
@constraint(m, e8, -48*x[1]+12*x[3]-x[6] >= -64.0)
@constraint(m, e9, 0.75*x[2]-1.5*x[5]+x[9] >= 0.125)
@constraint(m, e10, -5.25*x[2]+6*x[5]-x[9] >= -1.25)
@constraint(m, e11, 30*x[2]-10.5*x[5]+x[9] >= 12.5)
@constraint(m, e12, -75*x[2]+15*x[5]-x[9] >= -125.0)
@constraint(m, e13, 0.5*x[1]+0.25*x[2]-0.5*x[3]-x[4]+x[7] >= 0.125)
@constraint(m, e14, -5*x[1]-0.25*x[2]+5*x[3]+x[4]-x[7] >= -1.25)
@constraint(m, e15, -2.25*x[1]-2*x[2]+0.5*x[3]+4.5*x[4]-x[7] >= -1.0)
@constraint(m, e16, 22.5*x[1]+2*x[2]-5*x[3]-4.5*x[4]+x[7] >= 10.0)
@constraint(m, e17, 4*x[1]+16*x[2]-0.5*x[3]-8*x[4]+x[7] >= 8.0)
@constraint(m, e18, -40*x[1]-16*x[2]+5*x[3]+8*x[4]-x[7] >= -80.0)
@constraint(m, e19, 0.25*x[1]+0.5*x[2]-x[4]-0.5*x[5]+x[8] >= 0.125)
@constraint(m, e20, -4.25*x[2]+x[4]+4*x[5]-x[8] >= -1.0)
@constraint(m, e21, -2.5*x[1]-2.75*x[2]+5.5*x[4]+0.5*x[5]-x[8] >= -1.25)
@constraint(m, e22, 2.5*x[1]+22*x[2]-5.5*x[4]-4*x[5]+x[8] >= 10.0)
@constraint(m, e23, 50*x[1]+2.5*x[2]-10*x[4]-0.5*x[5]+x[8] >= 12.5)
@constraint(m, e24, -25*x[1]-20*x[2]+10*x[4]+4*x[5]-x[8] >= -100.0)


# ----- Objective ----- #
@objective(m, Min, x[10])

m = m 		 # model get returned when including this script. 
