using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[5])^2- (x[1])^2)+3*x[2]+x[3]+4*x[4] == 0.0)
@NLconstraint(m, e2,  (x[1])^2+2*x[2] <= 4.0)
@constraint(m, e3, 2*x[4]+2*x[6]-3*x[7]-x[8] == 0.0)
@constraint(m, e4, -x[6]+4*x[7]-x[9] == 5.0)
@NLconstraint(m, e5,  (x[1])^2-2*x[1]+ (x[2])^2-2*x[4]+x[5]-x[10] == -3.0)
@constraint(m, e6, x[2]+3*x[4]-4*x[5]-x[11] == 4.0)
@NLconstraint(m, e7, x[8]*x[4] == 0.0)
@NLconstraint(m, e8, x[9]*x[5] == 0.0)
@NLconstraint(m, e9, x[10]*x[6] == 0.0)
@NLconstraint(m, e10, x[11]*x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
