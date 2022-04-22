using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2+x[1])+x[2] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[2])

 
