using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1.826+x[3]*x[1]+x[4]*(-0.816-x[1])-x[5]*x[2]-x[6]*(-0.017-x[2]))^2+ (0.754+x[5]*x[1]+x[6]*(-0.816-x[1])+x[3]*x[2]+x[4]*(-0.017-x[2]))^2+ (4.839+(x[3]*x[3]-x[5]*x[5])*x[1]-2*x[2]*x[3]*x[5]+(x[4]*x[4]-x[6]*x[6])*(-0.816-x[1])-(-0.034-2*x[2])*x[4]*x[6])^2+ (3.259+(x[3]*x[3]-x[5]*x[5])*x[2]+2*x[1]*x[3]*x[5]+(x[4]*x[4]-x[6]*x[6])*(-0.017-x[2])+(-1.632-2*x[1])*x[4]*x[6])^2+ (14.023+x[1]*x[3]*(x[3]*x[3]-3*x[5]*x[5])+x[2]*x[5]*(x[5]*x[5]-3*x[3]*x[3])+(-0.816-x[1])*x[4]*(x[4]*x[4]-3*x[6]*x[6])+(-0.017-x[2])*x[6]*(x[6]*x[6]-3*x[4]*x[4]))^2+ ((-15.467)+x[2]*x[3]*(x[3]*x[3]-3*x[5]*x[5])-x[1]*x[5]*(x[5]*x[5]-3*x[3]*x[3])+(-0.017-x[2])*x[4]*(x[4]*x[4]-3*x[6]*x[6])-(-0.816-x[1])*x[6]*(x[6]*x[6]-3*x[4]*x[4]))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
