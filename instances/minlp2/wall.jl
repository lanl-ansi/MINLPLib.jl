using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, objvar*x[2] == 1.0)
@NLconstraint(m, e2, x[3]/objvar/x[4] == 4.8)
@NLconstraint(m, e3, x[5]/x[2]/x[6] == 0.98)
@NLconstraint(m, e4, x[6]*x[4] == 1.0)
@constraint(m, e5, objvar-x[2]+1E-7*x[3]-1E-5*x[5] == 0.0)
@constraint(m, e6, 2*objvar-2*x[2]+1E-7*x[3]-0.01*x[4]-1E-5*x[5]+0.01*x[6] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
