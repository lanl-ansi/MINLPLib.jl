using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1000.0)
setupperbound(x[2], 1000.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (16.7-exp(x[3])*x[2]-x[1])^2+ (16.8-exp(5*x[3])*x[2]-x[1])^2+ (16.9-exp(10*x[3])*x[2]-x[1])^2+ (17.1-exp(15*x[3])*x[2]-x[1])^2+ (17.2-exp(20*x[3])*x[2]-x[1])^2+ (17.4-exp(25*x[3])*x[2]-x[1])^2+ (17.6-exp(30*x[3])*x[2]-x[1])^2+ (17.9-exp(35*x[3])*x[2]-x[1])^2+ (18.1-exp(40*x[3])*x[2]-x[1])^2+ (18.7-exp(50*x[3])*x[2]-x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
