using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[1]*x[2] <= -1.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2 <= 9.0)
@NLconstraint(m, e3, -(7* (x[1])^2+3* (x[2])^2-84*x[1]-24*x[2])+objvar == 300.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
