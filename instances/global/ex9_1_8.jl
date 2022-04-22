using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
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


# ----- Constraints ----- #
@constraint(m, e1, -objvar-2*x[2]+x[3]+0.5*x[4] == 0.0)
@constraint(m, e2, x[2]+x[3] <= 2.0)
@constraint(m, e3, -2*x[2]+x[4]-x[5]+x[6] == -2.5)
@constraint(m, e4, x[2]-3*x[3]+x[5]+x[7] == 2.0)
@constraint(m, e5, -x[4]+x[8] == 0.0)
@constraint(m, e6, -x[5]+x[9] == 0.0)
@NLconstraint(m, e7, x[11]*x[6] == 0.0)
@NLconstraint(m, e8, x[12]*x[7] == 0.0)
@NLconstraint(m, e9, x[13]*x[8] == 0.0)
@NLconstraint(m, e10, x[14]*x[9] == 0.0)
@NLconstraint(m, e11, x[15]*x[10] == 0.0)
@constraint(m, e12, x[11]-x[13] == 4.0)
@constraint(m, e13, x[11]+x[12]-x[14] == -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
