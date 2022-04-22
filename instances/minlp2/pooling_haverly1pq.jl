using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 100.0)
set_upper_bound(x[5], 200.0)
set_upper_bound(x[6], 100.0)
set_upper_bound(x[7], 200.0)
set_upper_bound(x[8], 100.0)
set_upper_bound(x[9], 200.0)
set_upper_bound(x[10], 100.0)
set_upper_bound(x[11], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[4]+5*x[5]+3*x[8]+9*x[9]-7*x[10]-x[11] == 0.0)
@constraint(m, e2, x[8]+x[9] <= 300.0)
@constraint(m, e3, x[10]+x[11] <= 300.0)
@constraint(m, e4, x[4]+x[5] <= 300.0)
@constraint(m, e5, x[8]+x[9]+x[10]+x[11] <= 300.0)
@constraint(m, e6, x[4]+x[8]+x[10] <= 100.0)
@constraint(m, e7, x[5]+x[9]+x[11] <= 200.0)
@constraint(m, e8, -0.5*x[4]+0.5*x[8]-1.5*x[10] <= 0.0)
@constraint(m, e9, 0.5*x[5]+1.5*x[9]-0.5*x[11] <= 0.0)
@constraint(m, e10, x[2]+x[3] == 1.0)
@NLconstraint(m, e11, -x[2]*x[6]+x[8] == 0.0)
@NLconstraint(m, e12, -x[2]*x[7]+x[9] == 0.0)
@NLconstraint(m, e13, -x[3]*x[6]+x[10] == 0.0)
@NLconstraint(m, e14, -x[3]*x[7]+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
