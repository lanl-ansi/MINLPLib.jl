using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, 0 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] <= 2.0)
@constraint(m, e2, x[1]+4*x[2] <= 4.0)
@NLconstraint(m, e3, -(2* (x[2])^2-3*x[2])+2*x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
