using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 36.0)
setupperbound(x[2], 5.0)
setupperbound(x[3], 125.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (x[1])^2*x[2] >= -675.0)
@NLconstraint(m, e2, -1e-7* (x[1])^2* (x[3])^2 >= -0.419)
@NLconstraint(m, e3, 2.01e-9* ( (x[1])^2)^2*x[2]* (x[3])^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
