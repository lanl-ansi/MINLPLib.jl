using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 100.0)
setupperbound(x[1], 1000.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[2]+objvar == 0.0)
@NLconstraint(m, e2, 4510067.11409396*exp(-7548.11926028431/x[1])*x[1]+0.00335570469798658*x[1]-2020510067.11409*exp(-7548.11926028431/x[1])-x[2] <= 1.0)
@NLconstraint(m, e3, (-4510067.11409396*exp(-7548.11926028431/x[1])*x[1])-0.00335570469798658*x[1]+2020510067.11409*exp(-7548.11926028431/x[1])-x[2] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
