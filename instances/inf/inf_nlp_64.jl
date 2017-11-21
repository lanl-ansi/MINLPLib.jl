using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.1275)
setupperbound(x[1], 1.1275)
setlowerbound(x[2], 1.282)
setupperbound(x[2], 1.282)
setlowerbound(x[3], 1.018)
setupperbound(x[3], 1.018)
setlowerbound(x[4], 1.0899)
setupperbound(x[4], 1.0899)


# ----- Constraints ----- #
@constraint(m, e1, -x[4]+x[5] == 0.0)
@NLconstraint(m, e2,  (x[1])^4* (x[2])^4- (x[1])^4- (x[2])^4*x[3] <= 0.0)
@constraint(m, e3, -x[1]-0.25*x[4] <= -1.4)
@constraint(m, e4, x[1]-0.25*x[4] <= 1.4)
@constraint(m, e5, -x[2]-0.2*x[4] <= -1.5)
@constraint(m, e6, x[2]-0.2*x[4] <= 1.5)
@constraint(m, e7, -x[3]-0.2*x[4] <= -0.8)
@constraint(m, e8, x[3]-0.2*x[4] <= 0.8)


# ----- Objective ----- #
@objective(m, Min, x[5])

m = m 		 # model get returned when including this script. 
