using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 100.0)
set_upper_bound(x[2], 100.0)
set_upper_bound(x[3], 100.0)
set_upper_bound(x[4], 100.0)
set_upper_bound(x[5], 100.0)
set_upper_bound(x[6], 100.0)
set_upper_bound(x[7], 100.0)
set_upper_bound(x[8], 100.0)
set_upper_bound(x[9], 100.0)
set_upper_bound(x[10], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+7*x[2]+5*x[3]+5*x[4]-6*x[6]-3*x[7]-3*x[8]+5*x[9]-7*x[10] <= 80.0)
@constraint(m, e2, -3*x[1]+3*x[2]+8*x[3]+7*x[4]-9*x[5]-7*x[6]-9*x[7]+8*x[9]-7*x[10] <= 57.0)
@constraint(m, e3, x[1]+x[3]+3*x[4]+8*x[5]+9*x[6]+9*x[8]-7*x[9]-8*x[10] <= 92.0)
@constraint(m, e4, -x[1]-2*x[2]+2*x[3]+9*x[5]+5*x[6]-3*x[7]+x[8]-x[9]-5*x[10] <= 55.0)
@constraint(m, e5, -5*x[1]+8*x[2]-8*x[3]+3*x[5]+4*x[7]-5*x[8]-2*x[9]+9*x[10] <= 76.0)
@constraint(m, e6, 4*x[1]-x[2]+6*x[3]-4*x[4]-7*x[5]-8*x[6]-7*x[7]+6*x[8]-2*x[9]-9*x[10] <= 14.0)
@constraint(m, e7, 7*x[2]+4*x[3]+9*x[5]-6*x[8]-5*x[9]-5*x[10] <= 47.0)
@constraint(m, e8, -5*x[1]-x[2]+7*x[4]-x[5]+2*x[6]+5*x[7]-8*x[8]-5*x[9]+2*x[10] <= 51.0)
@constraint(m, e9, -4*x[1]-7*x[2]-9*x[4]+2*x[5]+6*x[6]-9*x[7]+x[8]-5*x[9] <= 36.0)
@constraint(m, e10, -2*x[1]+6*x[2]+8*x[4]-6*x[5]+8*x[6]+8*x[7]+5*x[8]+2*x[9]-7*x[10] <= 92.0)
@constraint(m, e11, x[1]+x[2]+x[3]-2*x[4]+x[5]+x[6]+x[7]+4*x[8]+x[9]+3*x[10] <= 200.0)
@constraint(m, e12, x[1]+x[2]+x[3]+x[4]+x[5] >= 1.0)
@constraint(m, e13, x[6]+x[7]+x[8]+x[9]+x[10] >= 2.0)
@NLconstraint(m, e14, -(x[1]*x[6]-x[1]-x[6]+x[2]*x[7]-2*x[2]-2*x[7]+x[3]*x[8]-3*x[3]-3*x[8]+x[4]*x[9]-4*x[4]-4*x[9]+x[5]*x[10]-5*x[5]-5*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.