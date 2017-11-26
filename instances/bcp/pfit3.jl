using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (56.8888888888889+x[1]*x[2]*x[3]-0.5*x[1]*(1+x[1])*x[2]*x[3]*x[3]-(1-exp(-log(1+x[3])*x[1]))*x[2])^2+ (126.222222222222+x[1]*x[2]*x[3]*(1-exp(log(1+x[3])*(-1-x[1])))-x[1]*(1+x[1])*x[2]*x[3]*x[3])^2+ (143.407407407407-x[1]*(1+x[1])*x[2]*x[3]*x[3]*(1-exp(log(1+x[3])*(-2-x[1]))))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
