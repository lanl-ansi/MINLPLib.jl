using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.08)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.08)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.3)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.3)
set_lower_bound(x[6], 1.0e-7)
set_upper_bound(x[6], 0.62)
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 0.62)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2]/(3*x[2]+6*x[4]+x[6]))*x[2]+log(x[4]/(3*x[2]+6*x[4]+x[6]))*x[4]+log(x[6]/(3*x[2]+6*x[4]+x[6]))*x[6]-0.80323071133189*x[2]+1.79175946922805*x[4]+0.752006*x[6]+log(3*x[2]+6*x[4]+1.6*x[6])*(3*x[2]+6*x[4]+1.6*x[6])+2*log(x[2]/(2.00000019368913*x[2]+4.64593*x[4]+0.480353*x[6]))*x[2]+log(x[2]/(1.00772874182154*x[2]+0.724703350369523*x[4]+0.947722362492017*x[6]))*x[2]+6*log(x[4]/(3.36359157977228*x[2]+6*x[4]+1.13841069150863*x[6]))*x[4]+1.6*log(x[6]/(1.6359356134845*x[2]+3.39220996773471*x[4]+1.6*x[6]))*x[6]+log(x[3]/(3*x[3]+6*x[5]+x[7]))*x[3]+log(x[5]/(3*x[3]+6*x[5]+x[7]))*x[5]+log(x[7]/(3*x[3]+6*x[5]+x[7]))*x[7]-0.80323071133189*x[3]+1.79175946922805*x[5]+0.752006*x[7]+log(3*x[3]+6*x[5]+1.6*x[7])*(3*x[3]+6*x[5]+1.6*x[7])+2*log(x[3]/(2.00000019368913*x[3]+4.64593*x[5]+0.480353*x[7]))*x[3]+log(x[3]/(1.00772874182154*x[3]+0.724703350369523*x[5]+0.947722362492017*x[7]))*x[3]+6*log(x[5]/(3.36359157977228*x[3]+6*x[5]+1.13841069150863*x[7]))*x[5]+1.6*log(x[7]/(1.6359356134845*x[3]+3.39220996773471*x[5]+1.6*x[7]))*x[7]-3*log(x[2])*x[2]-6*log(x[4])*x[4]-1.6*log(x[6])*x[6]-3*log(x[3])*x[3]-6*log(x[5])*x[5]-1.6*log(x[7])*x[7])+objvar == 0.0)
@constraint(m, e2, x[2]+x[3] == 0.08)
@constraint(m, e3, x[4]+x[5] == 0.3)
@constraint(m, e4, x[6]+x[7] == 0.62)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
