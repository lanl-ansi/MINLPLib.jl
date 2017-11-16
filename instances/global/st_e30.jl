using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
setlowerbound(x[13], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[1], -1.0)
setupperbound(x[1], 1.0)
setlowerbound(x[2], -1.0)
setupperbound(x[2], 1.0)
setlowerbound(x[3], -1.0)
setupperbound(x[3], 1.0)
setlowerbound(x[4], -1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], -1.0)
setupperbound(x[5], 1.0)
setlowerbound(x[6], -1.0)
setupperbound(x[6], 1.0)
setlowerbound(x[7], -1.0)
setupperbound(x[7], 1.0)
setlowerbound(x[8], -1.0)
setupperbound(x[8], 1.0)
setlowerbound(x[9], -1.0)
setupperbound(x[9], 1.0)
setlowerbound(x[10], -1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 3.0)
setupperbound(x[12], 3.0)
setupperbound(x[13], 3.0)
setupperbound(x[14], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[12]*x[7]-x[1]+x[3] == 0.0)
@NLconstraint(m, e2, -x[12]*x[8]-x[2]+x[4] == 0.0)
@NLconstraint(m, e3, (-x[13]*x[7])-x[11]*x[9]-x[1]+x[5] == 0.0)
@NLconstraint(m, e4, (-x[13]*x[8])-x[11]*x[10]-x[2]+x[6] == 0.0)
@NLconstraint(m, e5,  (x[7])^2+ (x[8])^2 == 1.0)
@constraint(m, e6, x[8]+x[9] == 0.0)
@constraint(m, e7, -x[7]+x[10] == 0.0)
@constraint(m, e8, -x[12]+x[14] <= 0.0)
@constraint(m, e9, -x[11]+x[14] <= 0.0)
@constraint(m, e10, 2*x[1]+x[2] >= -1.0)
@constraint(m, e11, 2*x[3]+x[4] >= -1.0)
@constraint(m, e12, 2*x[5]+x[6] >= -1.0)
@constraint(m, e13, x[1]+x[2] <= 1.0)
@constraint(m, e14, x[3]+x[4] <= 1.0)
@constraint(m, e15, x[5]+x[6] <= 1.0)
@constraint(m, e16, x[14]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
