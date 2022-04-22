using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 40.0)
set_upper_bound(x[4], 68.0)
set_lower_bound(x[6], 56.0)
set_upper_bound(x[6], 100.0)
set_upper_bound(x[7], 3000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*x[2]+x[5]*x[4])+x[7] == 0.0)
@NLconstraint(m, e2, -x[1]*x[3]+x[8] == 0.0)
@constraint(m, e3, -x[7]-x[8]-objvar == 0.0)
@constraint(m, e4, -x[2]-x[5]+x[6] == 0.0)
@constraint(m, e5, x[1]-0.333333333333333*x[4] >= 0.0)
@constraint(m, e6, x[1]-0.5*x[4] <= 0.0)
@NLconstraint(m, e7, x[2]*(x[4]-x[1]) >= 1500.0)
@constraint(m, e8, -0.5*x[2]+x[3]-x[5] == 0.0)
@constraint(m, e9, -0.5*x[2]+x[5] >= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
