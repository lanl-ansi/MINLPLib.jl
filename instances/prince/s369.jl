using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[1], 100.0)
setupperbound(x[1], 10000.0)
setlowerbound(x[2], 1000.0)
setupperbound(x[2], 10000.0)
setlowerbound(x[3], 1000.0)
setupperbound(x[3], 10000.0)
setlowerbound(x[4], 10.0)
setupperbound(x[4], 1000.0)
setlowerbound(x[5], 10.0)
setupperbound(x[5], 1000.0)
setlowerbound(x[6], 10.0)
setupperbound(x[6], 1000.0)
setlowerbound(x[7], 10.0)
setupperbound(x[7], 1000.0)
setlowerbound(x[8], 10.0)
setupperbound(x[8], 1000.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.0025*x[4]-0.0025*x[6] >= -1.0)
@constraint(m, e2, 0.01*x[5]-0.01*x[8] >= -1.0)
@constraint(m, e3, 0.0025*x[4]-0.0025*x[5]-0.0025*x[7] >= -1.0)
@NLconstraint(m, e4, (-833.33252*x[4]/(x[1]*x[6]))-100/x[6]+83333.333/(x[1]*x[6]) >= -1.0)
@NLconstraint(m, e5, (-1250*x[5]/(x[2]*x[7]))-x[4]/x[7]+1250*x[4]/(x[2]*x[7]) >= -1.0)
@NLconstraint(m, e6, (-1250000/(x[3]*x[8]))-x[5]/x[8]+2500*x[5]/(x[3]*x[8]) >= -1.0)
@constraint(m, e7, -x[1]-x[2]-x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
