using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, -1 <= x[x_Idx] <= 4)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (3-10*x[1]+18* (x[1])^2-13* (x[1])^3+2* (x[1])^4)^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
