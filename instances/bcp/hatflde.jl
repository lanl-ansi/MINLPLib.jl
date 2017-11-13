using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1.561+exp(0.3*x[3])-exp(0.3*x[2])*x[1])^2+ (1.473+exp(0.35*x[3])-exp(0.35*x[2])*x[1])^2+ (1.391+exp(0.4*x[3])-exp(0.4*x[2])*x[1])^2+ (1.313+exp(0.45*x[3])-exp(0.45*x[2])*x[1])^2+ (1.239+exp(0.5*x[3])-exp(0.5*x[2])*x[1])^2+ (1.169+exp(0.55*x[3])-exp(0.55*x[2])*x[1])^2+ (1.103+exp(0.6*x[3])-exp(0.6*x[2])*x[1])^2+ (1.04+exp(0.65*x[3])-exp(0.65*x[2])*x[1])^2+ (0.981+exp(0.7*x[3])-exp(0.7*x[2])*x[1])^2+ (0.925+exp(0.75*x[3])-exp(0.75*x[2])*x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
