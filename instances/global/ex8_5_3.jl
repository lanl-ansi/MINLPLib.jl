using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*log(x[2])+x[3]*log(x[3])-log(x[4]-x[6])+x[4]-x[5]*log(1+x[6]/x[4])/x[6]+5.0464317551216*x[2]+0.366877055769689*x[3])+objvar == -1.0)
@NLconstraint(m, e2,  (x[4])^3- (x[4])^2+(- (x[6])^2-x[6]+x[5])*x[4]-x[5]*x[6] == 0.0)
@NLconstraint(m, e3, -(1.04633*x[2]*x[2]+0.579822*x[2]*x[3]+0.579822*x[3]*x[2]+0.379615*x[3]*x[3])+x[5] == 0.0)
@constraint(m, e4, -0.0771517*x[2]-0.0765784*x[3]+x[6] == 0.0)
@constraint(m, e5, x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
