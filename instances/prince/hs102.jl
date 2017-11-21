using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.1)
setupperbound(x[1], 10.0)
setlowerbound(x[2], 0.1)
setupperbound(x[2], 10.0)
setlowerbound(x[3], 0.1)
setupperbound(x[3], 10.0)
setlowerbound(x[4], 0.1)
setupperbound(x[4], 10.0)
setlowerbound(x[5], 0.1)
setupperbound(x[5], 10.0)
setlowerbound(x[6], 0.1)
setupperbound(x[6], 10.0)
setlowerbound(x[7], 0.01)
setupperbound(x[7], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-0.5*sqrt(x[1])*x[7]/( (x[6])^2*x[3]))-0.7* (x[1])^3*x[2]*x[6]*sqrt(x[7])/ (x[3])^2-0.2*exp(0.666666666666667*log(x[6]))*x[3]* ( (x[7])^2)^2/(sqrt(x[4])*x[2]) >= -1.0)
@NLconstraint(m, e2, (-1.3*x[2]*x[6]/(sqrt(x[1])*x[3]*x[5]))-0.8* (x[6])^2*x[3]/(x[4]*x[5])-3.1*sqrt(x[2])*exp(0.333333333333333*log(x[6]))/( (x[4])^2*x[1]*x[5]) >= -1.0)
@NLconstraint(m, e3, (-2*x[1]*x[5]*exp(0.333333333333333*log(x[7]))/(exp(1.5*log(x[3]))*x[6]))-0.1*x[2]*x[5]/(sqrt(x[3])*x[6]*sqrt(x[7]))-sqrt(x[3])*x[2]*x[5]/x[1]-0.65*x[3]*x[5]*x[7]/( (x[2])^2*x[6]) >= -1.0)
@NLconstraint(m, e4, (-0.2*sqrt(x[5])*x[2]*exp(0.333333333333333*log(x[7]))/( (x[1])^2*x[4]))-0.3*sqrt(x[1])* (x[2])^2*x[3]*exp(0.333333333333333*log(x[4]))* ( (x[7])^2)^2/exp(0.666666666666667*log(x[5]))-0.4*x[3]*x[5]*exp(0.75*log(x[7]))/( (x[1])^3* (x[2])^2)-0.5*sqrt(x[7])*x[4]/ (x[3])^2 >= -1.0)
@NLconstraint(m, e5, 10* (x[4])^2*x[1]*exp(0.125*log(x[7]))/( (x[6])^3*x[2])+15*x[3]*x[4]/( (x[2])^2*x[1]*x[5]*sqrt(x[7]))+20*x[2]*x[6]/( (x[1])^2*x[4]* (x[5])^2)+25* (x[1])^2* (x[2])^2*sqrt(x[5])*x[7]/( (x[6])^2*x[3]) >= 100.0)
@NLconstraint(m, e6, 10* (x[4])^2*x[1]*exp(log(0.125*x[7]))/( (x[6])^3*x[2])+15*x[3]*x[4]/( (x[2])^2*x[1]*x[5]*sqrt(x[7]))+20*x[2]*x[6]/( (x[1])^2*x[4]* (x[5])^2)+25* (x[1])^2* (x[2])^2*sqrt(x[5])*x[7]/( (x[6])^2*x[3]) <= 3000.0)
@NLconstraint(m, e7, -(10* (x[4])^2*x[1]*exp(0.125*log(x[7]))/( (x[6])^3*x[2])+15*x[3]*x[4]/( (x[2])^2*x[1]*x[5]*sqrt(x[7]))+20*x[2]*x[6]/( (x[1])^2*x[4]* (x[5])^2)+25* (x[1])^2* (x[2])^2*sqrt(x[5])*x[7]/( (x[6])^2*x[3]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
