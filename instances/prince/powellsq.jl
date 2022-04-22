using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 10*x[1]/(0.1+x[1])+2* (x[2])^2 == 0.0)
@constraint(m, e2, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
