using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
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


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-3*x[2]-2*x[3]+2*x[4]-2*x[5]-4*x[6]+4*x[7]-4*x[8]-4*x[9]-x[10] == -6.0)
@constraint(m, e2, -0.25*x[1]-12*x[2]-8*x[3]+8*x[4]-12*x[5]-16*x[6]+20*x[7]-20*x[8]-24*x[9]-2*x[12] == -24.0)
@constraint(m, e3, 0.166*x[1]-0.47*x[2]-0.816*x[3]+0.318*x[4]+0.302*x[7]-0.8*x[8] == 0.99099)
@constraint(m, e4, -0.333333333333333*x[1]-x[2]-x[10] >= -2.0)
@constraint(m, e5, -x[3]+x[4]-x[5]+x[10]-2*x[13] >= 0.0)
@constraint(m, e6, x[7]-x[8]-x[9]+x[11] >= 0.0)
@constraint(m, e7, -x[4]+x[6]-x[7] == 0.0)
@constraint(m, e8, x[3]-x[4] <= 3.0)
@constraint(m, e9, -x[7]+x[8] <= 1.2)
@constraint(m, e10, x[2] <= 2.0)
@constraint(m, e11, x[6] <= 1.5)
@constraint(m, e12, x[5] <= 2.0)
@constraint(m, e13, x[9] <= 1.0)
@constraint(m, e14, x[6]+x[10] <= 6.0)
@constraint(m, e15, 1.6*x[1]+x[11] <= 4.0)
@constraint(m, e16, x[12] <= 6.0)
@constraint(m, e17, x[1] <= 0.6)
@constraint(m, e18, -x[9]+x[14] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[14])

 
