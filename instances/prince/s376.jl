using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 0.1)
set_lower_bound(x[3], 5.0e-5)
set_upper_bound(x[3], 0.0081)
set_lower_bound(x[4], 10.0)
set_upper_bound(x[4], 1000.0)
set_lower_bound(x[5], 5.0e-5)
set_upper_bound(x[5], 0.0017)
set_lower_bound(x[6], 5.0e-5)
set_upper_bound(x[6], 0.0013)
set_lower_bound(x[7], 5.0e-5)
set_upper_bound(x[7], 0.0027)
set_lower_bound(x[8], 5.0e-5)
set_upper_bound(x[8], 0.002)
set_lower_bound(x[9], 5.0e-5)
set_upper_bound(x[9], 1.0)
set_lower_bound(x[10], 5.0e-5)
set_upper_bound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.75/(x[3]*x[4])+x[1] >= 0.0)
@NLconstraint(m, e2, -x[9]/(x[5]*x[4])+x[1] >= 0.0)
@NLconstraint(m, e3, (-x[10]/(x[6]*x[4]))-10/x[4]+x[1] >= 0.0)
@NLconstraint(m, e4, (-0.19/(x[4]*x[7]))-10/x[4]+x[1] >= 0.0)
@NLconstraint(m, e5, -0.125/(x[4]*x[8])+x[1] >= 0.0)
@NLconstraint(m, e6, -0.00131*exp(0.666*log(x[5]))*x[9]*exp(1.5*log(x[4]))+10000*x[2] >= 0.0)
@NLconstraint(m, e7, -0.001038*exp(1.6*log(x[6]))*x[10]* (x[4])^3+10000*x[2] >= 0.0)
@NLconstraint(m, e8, -0.000223*exp(0.666*log(x[7]))*exp(1.5*log(x[4]))+10000*x[2] >= 0.0)
@NLconstraint(m, e9, -7.6e-5*exp(3.55*log(x[8]))*exp(5.66*log(x[4]))+10000*x[2] >= 0.0)
@NLconstraint(m, e10, -0.000698*exp(1.2*log(x[3]))* (x[4])^2+10000*x[2] >= 0.0)
@NLconstraint(m, e11, -5e-5*exp(1.6*log(x[3]))* (x[4])^3+10000*x[2] >= 0.0)
@NLconstraint(m, e12, -6.54e-6*exp(2.42*log(x[3]))*exp(4.17*log(x[4]))+10000*x[2] >= 0.0)
@NLconstraint(m, e13, -0.000257*exp(0.666*log(x[3]))*exp(1.5*log(x[4]))+10000*x[2] >= 0.0)
@NLconstraint(m, e14, (-2.003*x[4]*x[5])-1.885*x[6]*x[4]-0.184*x[8]*x[4]-2*exp(0.803*log(x[3]))*x[4] >= -30.0)
@constraint(m, e15, x[9]+x[10] == 0.255)
@NLconstraint(m, e16, (-1200+3000*x[1]+280000*x[2])/(0.002+x[1]+60*x[2])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.