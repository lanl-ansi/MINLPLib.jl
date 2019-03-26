using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
LB = [5.49E-6, 0.0021961, -Inf]
UB = [4.553, 18.21, Inf]
@variable(m, LB[i] <= x[i in x_Idx] <= UB[i])


# ----- Constraints ----- #
@constraint(m, e1, -x[3] + objvar == 0.0)
@NLconstraint(m, e2, 10000*x[1]*x[2]-x[3] <= 1.0)
@NLconstraint(m, e3, -10000*x[1]*x[2]-x[3] <= -1.0)
@NLconstraint(m, e4, exp(-x[1])+exp(-x[2])-x[3] <= 1.001)
@NLconstraint(m, e5, (-exp(-x[1]))-exp(-x[2])-x[3] <= -1.001)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
