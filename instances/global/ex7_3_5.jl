using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
setlowerbound(x[3], 0.0)
setupperbound(x[3], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[4]+objvar == 0.0)
@NLconstraint(m, e2, x[13]* (x[3])^8-x[11]* (x[3])^6+x[9]* (x[3])^4-x[7]* (x[3])^2+x[5] == 0.0)
@NLconstraint(m, e3, x[12]* (x[3])^6-x[10]* (x[3])^4+x[8]* (x[3])^2-x[6] == 0.0)
@constraint(m, e4, -x[1]-0.145*x[4] <= -0.175)
@constraint(m, e5, x[1]-0.145*x[4] <= 0.175)
@constraint(m, e6, -x[2]-0.15*x[4] <= -0.2)
@constraint(m, e7, x[2]-0.15*x[4] <= 0.2)
@NLconstraint(m, e8, -4.53* (x[1])^2+x[5] == 0.0)
@NLconstraint(m, e9, -(5.28* (x[1])^2+0.364*x[1])+x[6] == 0.0)
@NLconstraint(m, e10, -(5.72* (x[1])^2*x[2]+1.13* (x[1])^2+0.425*x[1])+x[7] == 0.0)
@NLconstraint(m, e11, -(6.93* (x[1])^2*x[2]+0.0911*x[1])+x[8] == 0.00422)
@NLconstraint(m, e12, -(1.45* (x[1])^2*x[2]+0.168*x[1]*x[2])+x[9] == 0.000338)
@NLconstraint(m, e13, -(1.56* (x[1])^2* (x[2])^2+0.00084* (x[1])^2*x[2]+0.0135*x[1]*x[2])+x[10] == 1.35e-5)
@NLconstraint(m, e14, -(0.125* (x[1])^2* (x[2])^2+1.68e-5* (x[1])^2*x[2]+0.000539*x[1]*x[2])+x[11] == 2.7e-7)
@NLconstraint(m, e15, -(0.005* (x[1])^2* (x[2])^2+1.08e-5*x[1]*x[2])+x[12] == 0.0)
@NLconstraint(m, e16, -0.0001* (x[1])^2* (x[2])^2+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
