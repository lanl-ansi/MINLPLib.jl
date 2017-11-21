using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], -1.25)
setupperbound(x[1], 1.25)
setlowerbound(x[2], -11.0)
setupperbound(x[2], 9.0)
setlowerbound(x[3], -0.285714285714286)
setupperbound(x[3], 1.14285714285714)
setlowerbound(x[4], -0.2)
setupperbound(x[4], 0.2)
setlowerbound(x[5], -20.02)
setupperbound(x[5], 19.98)
setlowerbound(x[6], -0.2)
setupperbound(x[6], 0.2)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+0.5*x[2] == 0.45)
@constraint(m, e2, x[1]+0.5*x[2] == 0.45)
@constraint(m, e3, x[1]+0.5*x[2] == 0.45)
@constraint(m, e4, x[1]+0.5*x[2] == 0.45)
@constraint(m, e5, x[1]+0.5*x[2] == 0.45)
@constraint(m, e6, x[1]+0.5*x[2] == 0.45)
@NLconstraint(m, e7, -(1.04166666666667*( (x[1])^2+0.4*x[1]*x[2]+ (x[2])^2)+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
