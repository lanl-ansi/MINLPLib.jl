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
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(48*x[1]-0.5*(100*x[1]*x[1]+100*x[2]*x[2]+100*x[3]*x[3]+100*x[4]*x[4]+100*x[5]*x[5]+100*x[6]*x[6]+100*x[7]*x[7]+100*x[8]*x[8]+100*x[9]*x[9]+100*x[10]*x[10])+42*x[2]+48*x[3]+45*x[4]+44*x[5]+41*x[6]+47*x[7]+42*x[8]+45*x[9]+46*x[10])+objvar == 0.0)
@constraint(m, e2, -2*x[1]-6*x[2]-x[3]-3*x[5]-3*x[6]-2*x[7]-6*x[8]-2*x[9]-2*x[10] <= -4.0)
@constraint(m, e3, 6*x[1]-5*x[2]+8*x[3]-3*x[4]+x[6]+3*x[7]+8*x[8]+9*x[9]-3*x[10] <= 22.0)
@constraint(m, e4, -5*x[1]+6*x[2]+5*x[3]+3*x[4]+8*x[5]-8*x[6]+9*x[7]+2*x[8]-9*x[10] <= -6.0)
@constraint(m, e5, 9*x[1]+5*x[2]-9*x[4]+x[5]-8*x[6]+3*x[7]-9*x[8]-9*x[9]-3*x[10] <= -23.0)
@constraint(m, e6, -8*x[1]+7*x[2]-4*x[3]-5*x[4]-9*x[5]+x[6]-7*x[7]-x[8]+3*x[9]-2*x[10] <= -12.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
