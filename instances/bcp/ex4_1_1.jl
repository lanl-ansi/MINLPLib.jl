using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -2.0)
setupperbound(x[1], 11.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^6-2.08* (x[1])^5+0.4875* (x[1])^4+7.1* (x[1])^3-3.95* (x[1])^2-x[1])+x[2] == 0.1)


# ----- Objective ----- #
@objective(m, Min, x[2])

m = m 		 # model get returned when including this script. 
