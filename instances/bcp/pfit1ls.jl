using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (8+x[1]*x[2]*x[3]-0.5*x[1]*(1+x[1])*x[2]*x[3]*x[3]-(1-exp(-log(1+x[3])*x[1]))*x[2])^2+ (18.6666666666667+x[1]*x[2]*x[3]*(1-exp(log(1+x[3])*(-1-x[1])))-x[1]*(1+x[1])*x[2]*x[3]*x[3])^2+ (23.1111111111111-x[1]*(1+x[1])*x[2]*x[3]*x[3]*(1-exp(log(1+x[3])*(-2-x[1]))))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
