using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 100.0)
setupperbound(x[1], 400000.0)
setlowerbound(x[2], 100.0)
setupperbound(x[2], 300000.0)
setlowerbound(x[3], 100.0)
setupperbound(x[3], 200000.0)
setlowerbound(x[4], 100.0)
setupperbound(x[4], 100000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 4/x[1]+2.25/x[2]+1/x[3]+0.25/x[4] <= 0.0401)
@NLconstraint(m, e2, 0.16/x[1]+0.36/x[2]+0.64/x[3]+0.64/x[4] <= 0.010085)
@constraint(m, e3, -x[1]-x[2]-x[3]-x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
