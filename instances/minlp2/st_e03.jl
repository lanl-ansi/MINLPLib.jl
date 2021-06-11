using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 2000.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 16000.0)
set_upper_bound(x[3], 120.0)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 5000.0)
set_upper_bound(x[5], 2000.0)
set_lower_bound(x[6], 85.0)
set_upper_bound(x[6], 93.0)
set_lower_bound(x[7], 90.0)
set_upper_bound(x[7], 95.0)
set_lower_bound(x[8], 3.0)
set_upper_bound(x[8], 12.0)
set_lower_bound(x[9], 1.2)
set_upper_bound(x[9], 4.0)
set_lower_bound(x[10], 145.0)
set_upper_bound(x[10], 162.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-1.22*x[4]+x[5] == 0.0)
@constraint(m, e2, x[9]+0.222*x[10] == 35.82)
@constraint(m, e3, 3*x[7]-x[10] == 133.0)
@NLconstraint(m, e4, 0.038* (x[8])^2-1.098*x[8]-0.325*x[6]+x[7] == 57.425)
@NLconstraint(m, e5, x[4]*x[9]*x[6]+1000*x[3]*x[6]-98000*x[3] == 0.0)
@NLconstraint(m, e6, -x[1]*x[8]+x[2]+x[5] == 0.0)
@NLconstraint(m, e7, 0.13167*x[8]*x[1]+1.12*x[1]-0.00667* (x[8])^2*x[1]-x[4] >= 0.0)
@NLconstraint(m, e8, 0.063*x[4]*x[7]-5.04*x[1]-0.035*x[2]-10*x[3]-3.36*x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
