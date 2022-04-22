using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[4], 20.0)
set_upper_bound(x[5], 20.0)
set_lower_bound(x[6], 0.0)
set_upper_bound(x[6], 0.0)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[7], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 3*x[3]-4*x[2]*x[3]+2*x[2]-objvar == -1.0)
@constraint(m, e2, -x[3]+x[4] == 0.0)
@constraint(m, e3, x[3]+x[5] == 1.0)
@NLconstraint(m, e4, x[6]*x[4] == 0.0)
@NLconstraint(m, e5, x[7]*x[5] == 0.0)
@constraint(m, e6, 4*x[2]-x[6]+x[7] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
