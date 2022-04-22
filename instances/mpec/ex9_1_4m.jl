using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-3*x[3] == 0.0)
@constraint(m, e2, 2*x[2]-x[3]-x[7] == 0.0)
@constraint(m, e3, -2*x[2]-5*x[3]-x[8] == -108.0)
@constraint(m, e4, -2*x[2]+3*x[3]-x[9] == 4.0)
@constraint(m, e5, x[4]+5*x[5]-3*x[6]-x[10] == -1.0)
@NLconstraint(m, e6, x[7]*x[4] == 0.0)
@NLconstraint(m, e7, x[8]*x[5] == 0.0)
@NLconstraint(m, e8, x[9]*x[6] == 0.0)
@NLconstraint(m, e9, x[10]*x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
