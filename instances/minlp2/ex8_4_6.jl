using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setlowerbound(x[9], -10.0)
setupperbound(x[9], 10.0)
setlowerbound(x[10], -10.0)
setupperbound(x[10], 10.0)
setlowerbound(x[11], -10.0)
setupperbound(x[11], 10.0)
setupperbound(x[12], 0.5)
setupperbound(x[13], 0.5)
setupperbound(x[14], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-0.1622+x[1])/x[1])^2+ ((-0.6791+x[2])/x[2])^2+ ((-0.679+x[3])/x[3])^2+ ((-0.3875+x[4])/x[4])^2+ ((-0.1822+x[5])/x[5])^2+ ((-0.1249+x[6])/x[6])^2+ ((-0.0857+x[7])/x[7])^2+ ((-0.0616+x[8])/x[8])^2)+objvar == 0.0)
@NLconstraint(m, e2, exp(-4*x[12])*x[9]+exp(-4*x[13])*x[10]+exp(-4*x[14])*x[11]-x[1] == 0.0)
@NLconstraint(m, e3, exp(-8*x[12])*x[9]+exp(-8*x[13])*x[10]+exp(-8*x[14])*x[11]-x[2] == 0.0)
@NLconstraint(m, e4, exp(-12*x[12])*x[9]+exp(-12*x[13])*x[10]+exp(-12*x[14])*x[11]-x[3] == 0.0)
@NLconstraint(m, e5, exp(-24*x[12])*x[9]+exp(-24*x[13])*x[10]+exp(-24*x[14])*x[11]-x[4] == 0.0)
@NLconstraint(m, e6, exp(-48*x[12])*x[9]+exp(-48*x[13])*x[10]+exp(-48*x[14])*x[11]-x[5] == 0.0)
@NLconstraint(m, e7, exp(-72*x[12])*x[9]+exp(-72*x[13])*x[10]+exp(-72*x[14])*x[11]-x[6] == 0.0)
@NLconstraint(m, e8, exp(-94*x[12])*x[9]+exp(-94*x[13])*x[10]+exp(-94*x[14])*x[11]-x[7] == 0.0)
@NLconstraint(m, e9, exp(-118*x[12])*x[9]+exp(-118*x[13])*x[10]+exp(-118*x[14])*x[11]-x[8] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
