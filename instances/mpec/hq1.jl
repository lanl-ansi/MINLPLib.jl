using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5* (x[1])^2+0.5*x[1]*x[2]-95*x[1])+x[3] == 0.0)
@constraint(m, e2, 0.5*x[1]+2*x[2]-x[4] == 100.0)
@NLconstraint(m, e3, x[4]*x[2] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
