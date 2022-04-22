using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-2*x[2] >= -8.0)
@constraint(m, e2, -4*x[1]-x[2] >= -12.0)
@constraint(m, e3, -3*x[1]-4*x[2] >= -12.0)
@constraint(m, e4, -2*x[3]-x[4] >= -8.0)
@constraint(m, e5, -x[3]-2*x[4] >= -8.0)
@constraint(m, e6, -x[3]-x[4] >= -5.0)
@NLconstraint(m, e7, -(x[1]-x[1]*x[3]-x[3]+x[1]*x[4]+x[2]*x[3]-x[2]-x[2]*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
