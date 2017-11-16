using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[12], 0.0)
setupperbound(x[2], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5* ((-3)+x[3])^2+0.5* ((-4)+x[4])^2)+x[1] == 0.0)
@NLconstraint(m, e2, (1+0.2*x[2])*x[3]-1.333*x[2]+2*x[3]*x[6]-0.333*x[5]-x[7] == 3.0)
@NLconstraint(m, e3, (1+0.1*x[2])*x[4]-x[2]+2*x[4]*x[6]+x[5]-x[8] == 0.0)
@constraint(m, e4, -0.1*x[2]+0.333*x[3]-x[4]-x[9] == -1.0)
@NLconstraint(m, e5, (- (x[3])^2)- (x[4])^2+0.1*x[2]-x[10] == -9.0)
@constraint(m, e6, x[3]-x[11] == 0.0)
@constraint(m, e7, x[4]-x[12] == 0.0)
@NLconstraint(m, e8, x[9]*x[5] == 0.0)
@NLconstraint(m, e9, x[10]*x[6] == 0.0)
@NLconstraint(m, e10, x[11]*x[7] == 0.0)
@NLconstraint(m, e11, x[12]*x[8] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
