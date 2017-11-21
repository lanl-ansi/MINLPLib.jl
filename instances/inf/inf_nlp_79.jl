using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0772)
setupperbound(x[2], 0.0772)
setlowerbound(x[3], 0.9228)
setupperbound(x[3], 0.9228)
setlowerbound(x[4], 0.1641)
setupperbound(x[4], 0.1641)
setlowerbound(x[5], 0.4121)
setupperbound(x[5], 0.4121)
setlowerbound(x[6], 0.0766)
setupperbound(x[6], 0.0766)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2])*x[2]+log(x[3])*x[3]-log(x[4]-x[6])+x[4]-log(1+x[6]/x[4])*x[5]/x[6]+5.0464317551216*x[2]+0.366877055769689*x[3])+x[1] == -1.0)
@NLconstraint(m, e2,  (x[4])^3- (x[4])^2+(- (x[6])^2-x[6]+x[5])*x[4]-x[5]*x[6] == 0.0)
@NLconstraint(m, e3, -(1.04633*x[2]*x[2]+0.579822*x[2]*x[3]+0.579822*x[3]*x[2]+0.379615*x[3]*x[3])+x[5] == 0.0)
@constraint(m, e4, -0.0771517*x[2]-0.0765784*x[3]+x[6] == 0.0)
@constraint(m, e5, x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
