using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4-(exp(x[1])+exp(x[2])))^2+ (6-(exp(2*x[1])+exp(2*x[2])))^2+ (8-(exp(3*x[1])+exp(3*x[2])))^2+ (10-(exp(4*x[1])+exp(4*x[2])))^2+ (12-(exp(5*x[1])+exp(5*x[2])))^2+ (14-(exp(6*x[1])+exp(6*x[2])))^2+ (16-(exp(7*x[1])+exp(7*x[2])))^2+ (18-(exp(8*x[1])+exp(8*x[2])))^2+ (20-(exp(9*x[1])+exp(9*x[2])))^2+ (22-(exp(10*x[1])+exp(10*x[2])))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
