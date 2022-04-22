using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
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
@constraint(m, e1, -3*x[1]+2*x[2]-objvar-x[4] == 0.0)
@constraint(m, e2, x[1]+4*x[2]-2*x[4]+x[5] == 16.0)
@constraint(m, e3, 3*x[1]-2*x[2]+8*x[4]+x[6] == 48.0)
@constraint(m, e4, x[1]-3*x[2]-2*x[4]+x[7] == -12.0)
@constraint(m, e5, -x[1]+x[8] == 0.0)
@constraint(m, e6, x[1]+x[9] == 4.0)
@NLconstraint(m, e7, x[10]*x[5] == 0.0)
@NLconstraint(m, e8, x[11]*x[6] == 0.0)
@NLconstraint(m, e9, x[12]*x[7] == 0.0)
@NLconstraint(m, e10, x[13]*x[8] == 0.0)
@NLconstraint(m, e11, x[14]*x[9] == 0.0)
@constraint(m, e12, x[10]+3*x[11]+x[12]-x[13]+x[14] == 1.0)
@constraint(m, e13, 2*x[11]-3*x[12] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
