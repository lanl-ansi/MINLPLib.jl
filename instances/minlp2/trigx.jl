using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*x[2]+x[3]*x[3])+objvar == 0.0)
@NLconstraint(m, e2, x[2]-sin(2*x[2]+3*x[3])-cos(3*x[2]-5*x[3]) == 0.0)
@NLconstraint(m, e3, x[3]-sin(x[2]-2*x[3])+cos(x[2]+3*x[3]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
