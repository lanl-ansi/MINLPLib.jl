using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_upper_bound(x[1], 2000.0)
set_lower_bound(x[2], 1.0e-5)
set_upper_bound(x[2], 16000.0)
set_lower_bound(x[3], 1.0e-5)
set_upper_bound(x[3], 120.0)


# ----- Constraints ----- #
@constraint(m, e1, x[4] >= 0.0)
@constraint(m, e2, x[5] >= 0.0)
@constraint(m, e3, x[6] >= 85.0)
@constraint(m, e4, x[7] >= 90.0)
@constraint(m, e5, x[8] >= 3.0)
@constraint(m, e6, x[9] >= 0.01)
@constraint(m, e7, x[10] >= 145.0)
@constraint(m, e8, x[4] <= 5000.0)
@constraint(m, e9, x[5] <= 2000.0)
@constraint(m, e10, x[6] <= 93.0)
@constraint(m, e11, x[7] <= 95.0)
@constraint(m, e12, x[8] <= 12.0)
@constraint(m, e13, x[9] <= 4.0)
@constraint(m, e14, x[10] <= 162.0)
@constraint(m, e15, x[1]-1.22*x[4]+x[5] == 0.0)
@NLconstraint(m, e16, -(x[2]+x[5])/x[1]+x[8] == 0.0)
@NLconstraint(m, e17, -0.01*(112+13.167*x[8]-0.6667* (x[8])^2)*x[1]+x[4] == 0.0)
@NLconstraint(m, e18, -(1.098*x[8]-0.038* (x[8])^2)-0.325*x[6]+x[7] == 57.425)
@constraint(m, e19, -3*x[7]+x[10] == -133.0)
@constraint(m, e20, x[9]+0.222*x[10] == 35.82)
@NLconstraint(m, e21, -98000*x[3]/(x[4]*x[9]+1000*x[3])+x[6] == 0.0)
@NLconstraint(m, e22, 0.063*x[4]*x[7]-5.04*x[1]-0.035*x[2]-10*x[3]-3.36*x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
