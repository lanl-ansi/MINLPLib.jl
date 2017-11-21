using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-0.25)+exp(0.25*x[2])*x[1])^2+ ((-0.5)+exp(0.5*x[2])*x[1])^2+ ((-0.75)+exp(0.75*x[2])*x[1])^2+ ((-1)+exp(x[2])*x[1])^2+ ((-1.25)+exp(1.25*x[2])*x[1])^2+ ((-1.5)+exp(1.5*x[2])*x[1])^2+ ((-1.75)+exp(1.75*x[2])*x[1])^2+ ((-2)+exp(2*x[2])*x[1])^2+ ((-2.25)+exp(2.25*x[2])*x[1])^2+ ((-2.5)+exp(2.5*x[2])*x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
