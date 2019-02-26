using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1)
set_upper_bound(x[1], 10.1)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 10.1)
set_lower_bound(x[3], 0.1)
set_upper_bound(x[3], 10.1)
set_lower_bound(x[4], 0.1)
set_upper_bound(x[4], 10.1)
set_lower_bound(x[5], 0.1)
set_upper_bound(x[5], 10.1)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 10.1)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 10.1)
set_lower_bound(x[8], 0.1)
set_upper_bound(x[8], 10.1)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.0588*x[5]*x[7]-0.1*x[1] >= -1.0)
@NLconstraint(m, e2, -0.0588*x[6]*x[8]-0.1*x[1]-0.1*x[2] >= -1.0)
@NLconstraint(m, e3, (-4*x[3]/x[5])-2/(exp(0.71*log(x[3]))*x[5])-0.0588*x[7]/exp(1.3*log(x[3])) >= -1.0)
@NLconstraint(m, e4, (-4*x[4]/x[6])-2/(exp(0.71*log(x[4]))*x[6])-0.0588*x[8]/exp(1.3*log(x[4])) >= -1.0)
@NLconstraint(m, e5, 0.4*exp(0.67*log(x[1]))*exp(-0.67*log(x[7]))+0.4*exp(0.67*log(x[2]))*exp(-0.67*log(x[8]))-x[1]-x[2] >= -9.9)
@NLconstraint(m, e6, 0.4*exp(0.67*log(x[1]))*exp(-0.67*log(x[7]))+0.4*exp(0.67*log(x[2]))*exp(-0.67*log(x[8]))-x[1]-x[2] <= -5.8)
@NLconstraint(m, e7, -(0.4*exp(0.67*log(x[1]))*exp(-0.67*log(x[7]))+0.4*exp(0.67*log(x[2]))*exp(-0.67*log(x[8]))-x[1]-x[2])+objvar == 10.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.