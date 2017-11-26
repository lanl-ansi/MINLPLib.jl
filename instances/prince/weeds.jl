using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
setupperbound(x[3], 0.0)
setupperbound(x[3], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -exp((-x[2])-x[3])+x[4] == 0.0)
@NLconstraint(m, e2, -exp((-x[2])-2*x[3])+x[5] == 0.0)
@NLconstraint(m, e3, -exp((-x[2])-3*x[3])+x[6] == 0.0)
@NLconstraint(m, e4, -exp((-x[2])-4*x[3])+x[7] == 0.0)
@NLconstraint(m, e5, -exp((-x[2])-5*x[3])+x[8] == 0.0)
@NLconstraint(m, e6, -exp((-x[2])-6*x[3])+x[9] == 0.0)
@NLconstraint(m, e7, -exp((-x[2])-7*x[3])+x[10] == 0.0)
@NLconstraint(m, e8, -exp((-x[2])-8*x[3])+x[11] == 0.0)
@NLconstraint(m, e9, -exp((-x[2])-9*x[3])+x[12] == 0.0)
@NLconstraint(m, e10, -exp((-x[2])-10*x[3])+x[13] == 0.0)
@NLconstraint(m, e11, -exp((-x[2])-11*x[3])+x[14] == 0.0)
@NLconstraint(m, e12, -exp((-x[2])-12*x[3])+x[15] == 0.0)
@NLconstraint(m, e13, -( (5.308-x[1]/(1+x[4]))^2+ (7.24-x[1]/(1+x[5]))^2+ (9.638-x[1]/(1+x[6]))^2+ (12.866-x[1]/(1+x[7]))^2+ (17.069-x[1]/(1+x[8]))^2+ (23.192-x[1]/(1+x[9]))^2+ (31.443-x[1]/(1+x[10]))^2+ (38.558-x[1]/(1+x[11]))^2+ (50.156-x[1]/(1+x[12]))^2+ (62.948-x[1]/(1+x[13]))^2+ (75.995-x[1]/(1+x[14]))^2+ (91.972-x[1]/(1+x[15]))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
