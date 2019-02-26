using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[12], 0.0)
set_upper_bound(x[2], 50.0)
set_upper_bound(x[3], 50.0)
set_lower_bound(x[4], -10.0)
set_upper_bound(x[4], 20.0)
set_lower_bound(x[5], -10.0)
set_upper_bound(x[5], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[2]+2*x[4]+2*x[6]-x[8]+x[9] == -40.0)
@constraint(m, e2, -2*x[3]+2*x[5]+2*x[7]-x[10]+x[11] == -40.0)
@constraint(m, e3, -x[2]-x[3]-x[4]+2*x[5] >= -40.0)
@constraint(m, e4, x[2]-2*x[4]-x[12] == 10.0)
@constraint(m, e5, x[3]-2*x[5]-x[13] == 10.0)
@constraint(m, e6, x[1]-2*x[2]-2*x[3]+3*x[4]+3*x[5] == -60.0)
@NLconstraint(m, e7, x[8]*(10+x[4]) == 0.0)
@NLconstraint(m, e8, x[9]*(20-x[4]) == 0.0)
@NLconstraint(m, e9, x[10]*(10+x[5]) == 0.0)
@NLconstraint(m, e10, x[11]*(20-x[5]) == 0.0)
@NLconstraint(m, e11, x[12]*x[6] == 0.0)
@NLconstraint(m, e12, x[13]*x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.