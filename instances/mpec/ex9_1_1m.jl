using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -3*x[1]+2*x[2]-x[3]-x[4] == 0.0)
@constraint(m, e2, -x[1]-4*x[2]+2*x[4]-x[10] == -16.0)
@constraint(m, e3, -3*x[1]+2*x[2]-8*x[4]-x[11] == -48.0)
@constraint(m, e4, -x[1]+3*x[2]+2*x[4]-x[12] == 12.0)
@constraint(m, e5, x[1]-x[13] == 0.0)
@constraint(m, e6, -x[1]-x[14] == -4.0)
@constraint(m, e7, x[5]+3*x[6]+x[7]-x[8]+x[9] == 1.0)
@constraint(m, e8, 4*x[5]-2*x[6]-3*x[7] == 0.0)
@NLconstraint(m, e9, x[10]*x[5] == 0.0)
@NLconstraint(m, e10, x[11]*x[6] == 0.0)
@NLconstraint(m, e11, x[12]*x[7] == 0.0)
@NLconstraint(m, e12, x[13]*x[8] == 0.0)
@NLconstraint(m, e13, x[14]*x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

 
