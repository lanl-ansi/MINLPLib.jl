using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setupperbound(x[2], 0.0)
setlowerbound(x[1], -5.0)
setupperbound(x[2], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2* (x[1])^2-1.05* (x[1])^4+0.166666666666667* (x[1])^6-x[1]*x[2]+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
