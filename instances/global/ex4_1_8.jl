using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 2.0)
set_upper_bound(x[2], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2])^2-7*x[2])+12*x[1]+objvar == 0.0)
@NLconstraint(m, e2, -2* (x[1])^4-x[2] == -2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
