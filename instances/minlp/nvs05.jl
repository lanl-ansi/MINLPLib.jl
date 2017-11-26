using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setlowerbound(i[1], 1.0)
setupperbound(i[1], 200.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 200.0)
setlowerbound(x[3], 0.01)
setupperbound(x[3], 200.0)
setlowerbound(x[4], 0.01)
setupperbound(x[4], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -4243.28147100424/(x[3]*x[4])+x[5] == 0.0)
@NLconstraint(m, e2, -sqrt(0.25* (x[4])^2+ (0.5*i[1]+0.5*x[3])^2)+x[7] == 0.0)
@NLconstraint(m, e3, -0.707213578500707*(84000+3000*x[4])*x[7]/(x[3]*x[4]*(0.0833333333333333* (x[4])^2+ (0.5*i[1]+0.5*x[3])^2))+x[6] == 0.0)
@NLconstraint(m, e4, -0.5*x[4]/x[7]+x[8] == 0.0)
@NLconstraint(m, e5, -sqrt( (x[5])^2+2*x[5]*x[6]*x[8]+ (x[6])^2) >= -13600.0)
@NLconstraint(m, e6, -504000/(i[2]* (i[1])^2) >= -30000.0)
@constraint(m, e7, i[2]-x[3] >= 0.0)
@NLconstraint(m, e8, 0.0204744897959184*sqrt(1e15*i[1]* (i[2])^3*i[1]* (i[2])^3)*(1-0.0282346219657891*i[1]) >= 6000.0)
@NLconstraint(m, e9, -0.21952/(i[2]* (i[1])^3) >= -0.25)
@NLconstraint(m, e10, -(1.10471* (x[3])^2*x[4]+0.04811*i[1]*i[2]*(14+x[4]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
