using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[1], -1.0)
setupperbound(x[1], 1.0)
setlowerbound(x[2], -1.0)
setupperbound(x[2], 1.0)
setlowerbound(x[3], -1.0)
setupperbound(x[3], 1.0)
setlowerbound(x[4], -1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], -1.0)
setupperbound(x[5], 1.0)
setlowerbound(x[6], -1.0)
setupperbound(x[6], 1.0)
setlowerbound(x[7], -1.0)
setupperbound(x[7], 1.0)
setlowerbound(x[8], -1.0)
setupperbound(x[8], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[9]+objvar == 0.0)
@NLconstraint(m, e2, 0.004731*x[1]*x[3]-0.1238*x[1]-0.3578*x[2]*x[3]-0.001637*x[2]-0.9338*x[4]+x[7]-x[9] <= 0.3571)
@NLconstraint(m, e3, 0.1238*x[1]-0.004731*x[1]*x[3]+0.3578*x[2]*x[3]+0.001637*x[2]+0.9338*x[4]-x[7]-x[9] <= -0.3571)
@NLconstraint(m, e4, 0.2238*x[1]*x[3]+0.2638*x[1]+0.7623*x[2]*x[3]-0.07745*x[2]-0.6734*x[4]-x[7]-x[9] <= 0.6022)
@NLconstraint(m, e5, (-0.2238*x[1]*x[3])-0.2638*x[1]-0.7623*x[2]*x[3]+0.07745*x[2]+0.6734*x[4]+x[7]-x[9] <= -0.6022)
@NLconstraint(m, e6, x[6]*x[8]+0.3578*x[1]+0.004731*x[2]-x[9] <= 0.0)
@NLconstraint(m, e7, -x[6]*x[8]-0.3578*x[1]-0.004731*x[2]-x[9] <= 0.0)
@constraint(m, e8, -0.7623*x[1]+0.2238*x[2] == -0.3461)
@NLconstraint(m, e9,  (x[1])^2+ (x[2])^2-x[9] <= 1.0)
@NLconstraint(m, e10, (- (x[1])^2)- (x[2])^2-x[9] <= -1.0)
@NLconstraint(m, e11,  (x[3])^2+ (x[4])^2-x[9] <= 1.0)
@NLconstraint(m, e12, (- (x[3])^2)- (x[4])^2-x[9] <= -1.0)
@NLconstraint(m, e13,  (x[5])^2+ (x[6])^2-x[9] <= 1.0)
@NLconstraint(m, e14, (- (x[5])^2)- (x[6])^2-x[9] <= -1.0)
@NLconstraint(m, e15,  (x[7])^2+ (x[8])^2-x[9] <= 1.0)
@NLconstraint(m, e16, (- (x[7])^2)- (x[8])^2-x[9] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
