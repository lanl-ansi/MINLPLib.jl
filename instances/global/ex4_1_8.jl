using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 2.0)
setupperbound(x[2], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2])^2-7*x[2])+12*x[1]+objvar == 0.0)
@NLconstraint(m, e2, -2* (x[1])^4-x[2] == -2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
