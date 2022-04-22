using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+x[2] == 11.0)
@NLconstraint(m, e2,  (x[2])^2+x[1] == 7.0)
@constraint(m, e3, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
