using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1500.0)
setupperbound(x[1], 2000.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 120.0)
setlowerbound(x[3], 3000.0)
setupperbound(x[3], 3500.0)
setlowerbound(x[4], 85.0)
setupperbound(x[4], 93.0)
setlowerbound(x[5], 90.0)
setupperbound(x[5], 95.0)
setlowerbound(x[6], 3.0)
setupperbound(x[6], 12.0)
setlowerbound(x[7], 145.0)
setupperbound(x[7], 162.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.035*x[1]*x[6]-0.063*x[3]*x[5]+1.715*x[1]+4.0565*x[3])-10*x[2]+objvar == 3000.0)
@NLconstraint(m, e2, 0.0059553571* (x[6])^2+0.88392857*x[3]/x[1]-0.1175625*x[6] <= 1.0)
@NLconstraint(m, e3, 1.1088*x[1]/x[3]+0.1303533*x[1]/x[3]*x[6]-0.0066033*x[1]/x[3]* (x[6])^2 <= 1.0)
@NLconstraint(m, e4, 0.00066173269* (x[6])^2-0.019120592*x[6]-0.0056595559*x[4]+0.017239878*x[5] <= 1.0)
@NLconstraint(m, e5, 56.85075/x[5]+1.08702*x[6]/x[5]+0.32175*x[4]/x[5]-0.03762* (x[6])^2/x[5] <= 1.0)
@NLconstraint(m, e6, 2462.3121*x[2]/x[3]/x[4]-25.125634*x[2]/x[3]+0.006198*x[7] <= 1.0)
@NLconstraint(m, e7, 161.18996/x[7]+5000*x[2]/x[3]/x[7]-489510*x[2]/x[3]/x[4]/x[7] <= 1.0)
@NLconstraint(m, e8, 44.333333/x[5]+0.33*x[7]/x[5] <= 1.0)
@constraint(m, e9, 0.022556*x[5]-0.007595*x[7] <= 1.0)
@constraint(m, e10, -0.0005*x[1]+0.00061*x[3] <= 1.0)
@NLconstraint(m, e11, 0.819672*x[1]/x[3]+0.819672/x[3] <= 1.0)
@NLconstraint(m, e12, 24500*x[2]/x[3]/x[4]-250*x[2]/x[3] <= 1.0)
@NLconstraint(m, e13, 1.2244898e-5*x[3]/x[2]*x[4]+0.010204082*x[4] <= 1.0)
@NLconstraint(m, e14, 6.25e-5*x[1]*x[6]+6.25e-5*x[1]-7.625E-5*x[3] <= 1.0)
@NLconstraint(m, e15, 1.22*x[3]/x[1]+1/x[1]-x[6] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
