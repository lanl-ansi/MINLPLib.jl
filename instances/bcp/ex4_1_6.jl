using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -5.0)
set_upper_bound(x[1], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^6-15* (x[1])^4+27* (x[1])^2)+x[2] == 250.0)


# ----- Objective ----- #
@objective(m, Min, x[2])

 
