using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 1.0)
setupperbound(x[3], 5.0)
setupperbound(x[4], 6.0)
setlowerbound(x[5], 1.0)
setupperbound(x[5], 5.0)
setupperbound(x[6], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-25* ((-2)+x[1])^2- ((-2)+x[2])^2- ((-1)+x[3])^2- ((-4)+x[4])^2- ((-1)+x[5])^2- ((-4)+x[6])^2)+objvar == 0.0)
@NLconstraint(m, e2,  ((-3)+x[3])^2+x[4] >= 4.0)
@NLconstraint(m, e3,  ((-3)+x[5])^2+x[6] >= 4.0)
@constraint(m, e4, x[1]-3*x[2] <= 2.0)
@constraint(m, e5, -x[1]+x[2] <= 2.0)
@constraint(m, e6, x[1]+x[2] <= 6.0)
@constraint(m, e7, x[1]+x[2] >= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
