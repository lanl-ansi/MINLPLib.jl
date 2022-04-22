using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^3+ (x[2])^2 == 1.0)
@NLconstraint(m, e2,  (x[1])^2*x[4]-x[3] == 0.0)
@NLconstraint(m, e3,  (x[4])^2-x[2] == 0.0)
@NLconstraint(m, e4, x[1]*x[2]*x[3]*x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
