using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
LB = [100, -Inf]
UB = [1000, Inf]
x_Idx = Any[1, 2]
@variable(m, LB[i] <= x[i in x_Idx] <= UB[i])


# ----- Constraints ----- #
@constraint(m, e1, -x[2]+objvar == 0.0)
@NLconstraint(m, e2, 4510067.11409396*x[1]*exp(-7548.11926028431/x[1])+0.00335570469798658*x[1]-2020510067.11409*exp(-7548.11926028431/x[1])-x[2] <= 1.0)
@NLconstraint(m, e3, (-4510067.11409396*x[1]*exp(-7548.11926028431/x[1]))-0.00335570469798658*x[1]+2020510067.11409*exp(-7548.11926028431/x[1])-x[2] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
