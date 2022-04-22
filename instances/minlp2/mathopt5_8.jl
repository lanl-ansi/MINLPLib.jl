using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, -2 <= x[x_Idx] <= 2.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2* (x[1])^2-x[1]-1.05* (x[1])^4+0.1666667* (x[1])^6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
