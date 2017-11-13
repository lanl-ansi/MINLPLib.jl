using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[1], 2.000001)
setupperbound(x[1], 9.999999)
setlowerbound(x[2], 2.000001)
setupperbound(x[2], 9.999999)
setlowerbound(x[3], 2.000001)
setupperbound(x[3], 9.999999)
setlowerbound(x[4], 2.000001)
setupperbound(x[4], 9.999999)
setlowerbound(x[5], 2.000001)
setupperbound(x[5], 9.999999)
setlowerbound(x[6], 2.000001)
setupperbound(x[6], 9.999999)
setlowerbound(x[7], 2.000001)
setupperbound(x[7], 9.999999)
setlowerbound(x[8], 2.000001)
setupperbound(x[8], 9.999999)
setlowerbound(x[9], 2.000001)
setupperbound(x[9], 9.999999)
setlowerbound(x[10], 2.000001)
setupperbound(x[10], 9.999999)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (log((-2)+x[1]))^2+ (log(10-x[1]))^2+ (log((-2)+x[2]))^2+ (log(10-x[2]))^2+ (log((-2)+x[3]))^2+ (log(10-x[3]))^2+ (log((-2)+x[4]))^2+ (log(10-x[4]))^2+ (log((-2)+x[5]))^2+ (log(10-x[5]))^2+ (log((-2)+x[6]))^2+ (log(10-x[6]))^2+ (log((-2)+x[7]))^2+ (log(10-x[7]))^2+ (log((-2)+x[8]))^2+ (log(10-x[8]))^2+ (log((-2)+x[9]))^2+ (log(10-x[9]))^2+ (log((-2)+x[10]))^2+ (log(10-x[10]))^2-exp(0.2*log(x[1]*x[2]*x[3]*x[4]*x[5]*x[6]*x[7]*x[8]*x[9]*x[10])))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
