using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 12.5)
setupperbound(x[2], 37.5)
setupperbound(x[3], 50.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[3]*x[3]-0.000169*x[1]* (x[2])^3 == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3] == 50.0)
@constraint(m, e3, -3*x[1]+x[2] == 0.0)
@constraint(m, e4, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
