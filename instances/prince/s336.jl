using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 5*x[1]+5*x[2]-3*x[3] == 6.0)
@NLconstraint(m, e2,  (x[1])^2+2* (x[2])^2+3* (x[3])^2 == 1.0)
@constraint(m, e3, -7*x[1]+6*x[2]-4*x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
