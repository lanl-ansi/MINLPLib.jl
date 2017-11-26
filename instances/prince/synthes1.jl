using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 2.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8*log(1+x[2])+0.96*log(1+x[1]-x[2]))+0.8*x[3] <= 0.0)
@NLconstraint(m, e2, -(log(1+x[2])+1.2*log(1+x[1]-x[2]))+x[3]+2*x[6] <= 2.0)
@constraint(m, e3, x[1]-x[2] >= 0.0)
@constraint(m, e4, -x[2]+2*x[4] >= 0.0)
@constraint(m, e5, -x[1]+x[2]+2*x[5] >= 0.0)
@constraint(m, e6, -x[4]-x[5] >= -1.0)
@NLconstraint(m, e7, -(-18*log(1+x[2])-19.2*log(1+x[1]-x[2])+10*x[1])+7*x[3]-5*x[4]-6*x[5]-8*x[6]+objvar == 10.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
