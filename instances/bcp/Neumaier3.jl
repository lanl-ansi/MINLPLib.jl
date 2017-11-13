using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[1], -100.0)
setupperbound(x[1], 100.0)
setlowerbound(x[2], -100.0)
setupperbound(x[2], 100.0)
setlowerbound(x[3], -100.0)
setupperbound(x[3], 100.0)
setlowerbound(x[4], -100.0)
setupperbound(x[4], 100.0)
setlowerbound(x[5], -100.0)
setupperbound(x[5], 100.0)
setlowerbound(x[6], -100.0)
setupperbound(x[6], 100.0)
setlowerbound(x[7], -100.0)
setupperbound(x[7], 100.0)
setlowerbound(x[8], -100.0)
setupperbound(x[8], 100.0)
setlowerbound(x[9], -100.0)
setupperbound(x[9], 100.0)
setlowerbound(x[10], -100.0)
setupperbound(x[10], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, -( ((-1)+x[1])^2+ ((-1)+x[2])^2+ ((-1)+x[3])^2+ ((-1)+x[4])^2+ ((-1)+x[5])^2+ ((-1)+x[6])^2+ ((-1)+x[7])^2+ ((-1)+x[8])^2+ ((-1)+x[9])^2+ ((-1)+x[10])^2-(x[2]*x[1]+x[3]*x[2]+x[4]*x[3]+x[5]*x[4]+x[6]*x[5]+x[7]*x[6]+x[8]*x[7]+x[9]*x[8]+x[10]*x[9]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
