using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -20.0)
setupperbound(x[1], 20.0)
setlowerbound(x[2], -20.0)
setupperbound(x[2], 20.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1e5*x[1]*x[1]+x[2]*x[2]- (x[1]*x[1]+x[2]*x[2])^2+1e-5* (x[1]*x[1]+x[2]*x[2])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
