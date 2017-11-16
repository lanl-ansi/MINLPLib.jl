using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*log(x[2])+x[3]*log(x[3])-log(x[4]-x[6])+x[4]-x[5]*log(1+x[6]/x[4])/x[6]+0.362259780811985*x[2]+3.27527428318836*x[3])+objvar == -1.0)
@NLconstraint(m, e2,  (x[4])^3- (x[4])^2+(- (x[6])^2-x[6]+x[5])*x[4]-x[5]*x[6] == 0.0)
@NLconstraint(m, e3, -(0.352565*x[2]*x[2]+0.844083*x[2]*x[3]+0.844083*x[3]*x[2]+2.14335*x[3]*x[3])+x[5] == 0.0)
@constraint(m, e4, -0.12932*x[2]-0.271567*x[3]+x[6] == 0.0)
@constraint(m, e5, x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
