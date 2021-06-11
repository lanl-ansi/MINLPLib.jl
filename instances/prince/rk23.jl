using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
set_lower_bound(x[15], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[12], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2] == 0.0)
@constraint(m, e2, -x[3]+x[4]+x[5] == 0.0)
@constraint(m, e3, x[6]+x[7]+x[8] == 1.0)
@constraint(m, e4, x[9]+x[10]+x[11] == 1.0)
@NLconstraint(m, e5, x[7]*x[1]+x[8]*x[3] == 0.5)
@NLconstraint(m, e6, x[10]*x[1]+x[11]*x[3] == 0.5)
@NLconstraint(m, e7, x[10]*x[1]*x[1]+x[11]*x[3]*x[3] == 0.333333333333333)
@NLconstraint(m, e8, x[11]*x[5]*x[1] == 0.166666666666667)
@NLconstraint(m, e9, 4*x[10]*x[1]*x[1]*x[1]+4*x[11]*x[3]*x[3]*x[3]+x[12]-x[15] == 1.0)
@NLconstraint(m, e10, 8*x[11]*x[3]*x[5]*x[1]+x[14]-x[15] == 1.0)
@NLconstraint(m, e11, 12*x[11]*x[5]*x[1]*x[1]+x[16]-x[17] == 1.0)
@constraint(m, e12, -x[12]-x[13]-x[14]-x[15]-x[16]-x[17]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
