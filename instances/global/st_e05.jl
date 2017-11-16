using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 15834.0)
setupperbound(x[2], 36250.0)
setupperbound(x[3], 10000.0)
setlowerbound(x[4], 100.0)
setupperbound(x[4], 300.0)
setlowerbound(x[5], 100.0)
setupperbound(x[5], 400.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 100000*x[4]-120*x[1]*(300-x[4]) == 1.0e7)
@NLconstraint(m, e2, 100000*x[5]-80*x[2]*(400-x[5])-100000*x[4] == 0.0)
@constraint(m, e3, -4000*x[3]-100000*x[5] == -5.0e7)
@constraint(m, e4, -x[1]-x[2]-x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
