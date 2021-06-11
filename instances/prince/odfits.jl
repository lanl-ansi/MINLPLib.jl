using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1)
set_lower_bound(x[2], 0.1)
set_lower_bound(x[3], 0.1)
set_lower_bound(x[4], 0.1)
set_lower_bound(x[5], 0.1)
set_lower_bound(x[6], 0.1)
set_lower_bound(x[7], 0.1)
set_lower_bound(x[8], 0.1)
set_lower_bound(x[9], 0.1)
set_lower_bound(x[10], 0.1)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[5] == 0.0)
@constraint(m, e2, x[2]-x[6] == 0.0)
@constraint(m, e3, x[3]-x[7] == 0.0)
@constraint(m, e4, x[2]+x[3]-x[8] == 0.0)
@constraint(m, e5, x[3]+x[4]-x[9] == 0.0)
@constraint(m, e6, x[4]-x[10] == 0.0)
@NLconstraint(m, e7, -(0.5*(log(0.0111111111111111*x[1])*x[1]-x[1])+0.5*(log(0.00222222222222222*x[2])*x[2]-x[2])+0.5*(log(0.00277777777777778*x[3])*x[3]-x[3])+0.2*(log(x[4])*x[4]-x[4])+0.666666666666667*(log(0.01*x[5])*x[5]-x[5])+0.666666666666667*(log(0.002*x[6])*x[6]-x[6])+0.666666666666667*(log(0.0025*x[7])*x[7]-x[7])+0.666666666666667*(log(0.000909090909090909*x[8])*x[8]-x[8])+0.666666666666667*(log(0.00166666666666667*x[9])*x[9]-x[9])+0.666666666666667*(log(0.00142857142857143*x[10])*x[10]-x[10]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
