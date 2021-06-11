using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 2000.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 120.0)
set_lower_bound(x[3], 1.0)
set_upper_bound(x[3], 5000.0)
set_lower_bound(x[4], 85.0)
set_upper_bound(x[4], 93.0)
set_lower_bound(x[5], 90.0)
set_upper_bound(x[5], 95.0)
set_lower_bound(x[6], 3.0)
set_upper_bound(x[6], 12.0)
set_lower_bound(x[7], 145.0)
set_upper_bound(x[7], 162.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-0.005953571* (x[6])^2)-0.88392857*x[3]/x[1]+0.1175625*x[6] >= -1.0)
@NLconstraint(m, e2, (-1.1088*x[1]/x[3])-0.1303533*x[1]*x[6]/x[3]+0.0066033* (x[6])^2*x[1]/x[3] >= -1.0)
@NLconstraint(m, e3, 0.019120592*x[6]-0.00066173269* (x[6])^2+0.0056595559*x[4]-0.017239878*x[5] >= -1.0)
@NLconstraint(m, e4, (-56.85075/x[5])-1.08702*x[6]/x[5]-0.32175*x[4]/x[5]+0.03762* (x[6])^2/x[5] >= -1.0)
@NLconstraint(m, e5, 25.125634*x[2]/x[3]-2462.3121*x[2]/(x[3]*x[4])-0.006198*x[7] >= -1.0)
@NLconstraint(m, e6, (-161.18996/x[7])-5000*x[2]/(x[3]*x[7])+489510*x[2]/(x[3]*x[4]*x[7]) >= -1.0)
@NLconstraint(m, e7, (-44.333333/x[5])-0.33*x[7]/x[5] >= -1.0)
@constraint(m, e8, -0.022556*x[5]+0.007595*x[7] >= -1.0)
@constraint(m, e9, 0.0005*x[1]-0.00061*x[3] >= -1.0)
@NLconstraint(m, e10, (-0.819672*x[1]/x[3])-0.819672/x[3] >= -1.0)
@NLconstraint(m, e11, 250*x[2]/x[3]-24500*x[2]/(x[3]*x[4]) >= -1.0)
@NLconstraint(m, e12, (-1.2244898e-5*x[3]*x[4]/x[2])-0.010204082*x[4] >= -1.0)
@NLconstraint(m, e13, (-6.25e-5*x[1]*x[6])-6.25e-5*x[1]+7.625E-5*x[3] >= -1.0)
@NLconstraint(m, e14, (-1.22*x[3]/x[1])-1/x[1]+x[6] >= -1.0)
@NLconstraint(m, e15, -(0.035*x[1]*x[6]+1.715*x[1]-0.063*x[3]*x[5]+4.0565*x[3])-10*x[2]+objvar == 3000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
