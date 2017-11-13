using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)
setlowerbound(x[1], -1000.0)
setupperbound(x[1], 1000.0)
setupperbound(x[2], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (10.07-(1-exp(-77.6*x[2]))*x[1])^2+ (14.73-(1-exp(-114.9*x[2]))*x[1])^2+ (17.94-(1-exp(-141.1*x[2]))*x[1])^2+ (23.93-(1-exp(-190.8*x[2]))*x[1])^2+ (29.61-(1-exp(-239.9*x[2]))*x[1])^2+ (35.18-(1-exp(-289*x[2]))*x[1])^2+ (40.02-(1-exp(-332.8*x[2]))*x[1])^2+ (44.82-(1-exp(-378.4*x[2]))*x[1])^2+ (50.76-(1-exp(-434.8*x[2]))*x[1])^2+ (55.05-(1-exp(-477.3*x[2]))*x[1])^2+ (61.01-(1-exp(-536.8*x[2]))*x[1])^2+ (66.4-(1-exp(-593.1*x[2]))*x[1])^2+ (75.47-(1-exp(-689.1*x[2]))*x[1])^2+ (81.78-(1-exp(-760*x[2]))*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 
