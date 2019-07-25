using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx] >= 0)
setupperbound(x[1], 9.422)
setupperbound(x[2], 5.9023)
setupperbound(x[3], 267.417085245)


# ----- Constraints ----- #
@NLconstraint(m, e1, 30*x[1]-6*x[1]*x[1]-x[3] == -250.0)
@NLconstraint(m, e2, 20*x[2]-12*x[2]*x[2]-x[3] == -300.0)
@NLconstraint(m, e3, 0.5* (x[1]+x[2])^2-x[3] == -150.0)
@constraint(m, e4, -x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
