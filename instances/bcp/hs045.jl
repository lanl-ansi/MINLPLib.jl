using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 2.0)
set_upper_bound(x[3], 3.0)
set_upper_bound(x[4], 4.0)
set_upper_bound(x[5], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.00833333333333333*x[1]*x[2]*x[3]*x[4]*x[5]+x[6] == 2.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

 
