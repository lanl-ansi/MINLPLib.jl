using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2])*x[2]+log(x[3])*x[3]+log(x[4])*x[4]+x[7]/(x[5]-x[7])-log(x[5]-x[7])-2*x[6]/x[5]+0.585616681390832*x[2]+3.53797016206289*x[3]+2.18345516206289*x[4])+objvar == 0.0)
@NLconstraint(m, e2,  (x[5])^3- (x[5])^2*(1+x[7])+x[6]*x[5]-x[6]*x[7] == 0.0)
@NLconstraint(m, e3, -(0.37943*x[2]*x[2]+0.75885*x[2]*x[3]+0.48991*x[2]*x[4]+0.75885*x[3]*x[2]+0.8836*x[3]*x[3]+0.23612*x[3]*x[4]+0.48991*x[4]*x[2]+0.23612*x[4]*x[3]+0.63263*x[4]*x[4])+x[6] == 0.0)
@constraint(m, e4, -0.14998*x[2]-0.14998*x[3]-0.14998*x[4]+x[7] == 0.0)
@constraint(m, e5, x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
