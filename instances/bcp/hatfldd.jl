using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1.751+exp(0.2*x[3])-exp(0.2*x[2])*x[1])^2+ (1.561+exp(0.3*x[3])-exp(0.3*x[2])*x[1])^2+ (1.391+exp(0.4*x[3])-exp(0.4*x[2])*x[1])^2+ (1.239+exp(0.5*x[3])-exp(0.5*x[2])*x[1])^2+ (1.103+exp(0.6*x[3])-exp(0.6*x[2])*x[1])^2+ (0.981+exp(0.7*x[3])-exp(0.7*x[2])*x[1])^2+ (0.925+exp(0.75*x[3])-exp(0.75*x[2])*x[1])^2+ (0.8721+exp(0.8*x[3])-exp(0.8*x[2])*x[1])^2+ (0.8221+exp(0.85*x[3])-exp(0.85*x[2])*x[1])^2+ (0.7748+exp(0.9*x[3])-exp(0.9*x[2])*x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
