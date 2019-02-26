using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[6], 200.0)
set_upper_bound(x[7], 200.0)
set_upper_bound(x[8], 200.0)
set_upper_bound(x[9], 200.0)
set_upper_bound(x[10], 200.0)
set_upper_bound(x[11], 200.0)
set_upper_bound(x[12], 200.0)
set_upper_bound(x[13], 200.0)
set_upper_bound(x[14], 200.0)
set_upper_bound(x[15], 200.0)
set_upper_bound(x[16], 200.0)
set_upper_bound(x[17], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*x[2]-2*x[2]+x[3]*x[3]-2*x[3]+x[4]*x[4]+x[5]*x[5]-objvar == 0.0)
@constraint(m, e2, -x[4]+x[6] == -0.5)
@constraint(m, e3, -x[5]+x[7] == -0.5)
@constraint(m, e4, x[4]+x[8] == 1.5)
@constraint(m, e5, x[5]+x[9] == 1.5)
@NLconstraint(m, e6, x[6]*x[12] == 0.0)
@NLconstraint(m, e7, x[7]*x[13] == 0.0)
@NLconstraint(m, e8, x[8]*x[14] == 0.0)
@NLconstraint(m, e9, x[9]*x[15] == 0.0)
@NLconstraint(m, e10, x[10]*x[16] == 0.0)
@NLconstraint(m, e11, x[11]*x[17] == 0.0)
@constraint(m, e12, -2*x[2]+2*x[4]-x[12]+x[14] == 0.0)
@constraint(m, e13, -2*x[3]+2*x[5]-x[13]+x[15] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.