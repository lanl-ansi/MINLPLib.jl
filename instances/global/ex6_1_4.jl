using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 1.0e-6)
setupperbound(x[3], 1.0)
setlowerbound(x[4], 1.0e-6)
setupperbound(x[4], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*(0.28809+log(x[2]))+x[3]*(log(x[3])-0.29158)+x[4]*(0.59336+log(x[4]))+x[2]*(1.44805026165593*x[6]+0.989428667054834*x[7])+x[3]*(1.12676386427658*x[5]+1.00363012835441*x[7])+x[4]*(0.0347225450624344*x[5]+0.82681418300153*x[6]))+objvar == 0.0)
@NLconstraint(m, e2, x[5]*(x[2]+0.145002897355373*x[3]+0.989528214945409*x[4])-x[2] == 0.0)
@NLconstraint(m, e3, x[6]*(0.293701311601799*x[2]+x[3]+0.646291923054068*x[4])-x[3] == 0.0)
@NLconstraint(m, e4, x[7]*(0.619143628558899*x[2]+0.239837817616513*x[3]+x[4])-x[4] == 0.0)
@constraint(m, e5, x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
