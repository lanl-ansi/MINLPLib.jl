using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setupperbound(x[1], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(8.9248e-5*x[1]-0.0218343* (x[1])^2+0.998266* (x[1])^3-1.6995* (x[1])^4+0.2* (x[1])^5)+x[2] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[2])

m = m 		 # model get returned when including this script. 
