using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
setlowerbound(x[8], -10.0)
setupperbound(x[8], 5.0)
setlowerbound(x[9], -10.0)
setupperbound(x[9], 5.0)
setlowerbound(x[10], -10.0)
setupperbound(x[10], 5.0)
setlowerbound(x[11], -10.0)
setupperbound(x[11], 5.0)
setlowerbound(x[12], -10.0)
setupperbound(x[12], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-2*x[6]-x[7] == 0.0)
@NLconstraint(m, e2, -( (x[8])^2+ (x[9])^2+ (x[10])^2+ (x[11])^2+ (x[12])^2)+x[7] == 0.0)
@constraint(m, e3, -x[3]-x[5]+x[6] == 0.0)
@NLconstraint(m, e4, -( ( (x[8])^2-x[9])^2+ (x[10])^2+2* (x[11])^2+ (x[12]-x[9])^2)+x[2] == 0.0)
