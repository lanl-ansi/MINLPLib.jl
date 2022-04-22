using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2])*x[2]+log(x[3])*x[3]-log(x[4]-x[6])+x[4]-0.353553390593274*log((x[4]+2.41421356237309*x[6])/(x[4]-0.414213562373095*x[6]))*x[5]/x[6]+2.5746329124341*x[2]+0.54639755131421*x[3])+objvar == -1.0)
@NLconstraint(m, e2,  (x[4])^3- (x[4])^2*(1-x[6])+(-3* (x[6])^2-2*x[6]+x[5])*x[4]-x[5]*x[6]+ (x[6])^3+ (x[6])^2 == 0.0)
@NLconstraint(m, e3, -(0.884831*x[2]*x[2]+0.555442*x[2]*x[3]+0.555442*x[3]*x[2]+0.427888*x[3]*x[3])+x[5] == 0.0)
@constraint(m, e4, -0.0885973*x[2]-0.0890893*x[3]+x[6] == 0.0)
@constraint(m, e5, x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
