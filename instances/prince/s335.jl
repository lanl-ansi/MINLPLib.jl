using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 1000* (x[1])^2+100* (x[2])^2-x[3] == 0.0)
@NLconstraint(m, e2, 100* (x[1])^2+400* (x[2])^2+x[3] == 0.01)
@constraint(m, e3, 0.001*x[1]+x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
