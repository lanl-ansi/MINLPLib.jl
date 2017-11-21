using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 200.0)
setupperbound(x[2], 200.0)
setupperbound(x[3], 200.0)
setupperbound(x[4], 200.0)
setupperbound(x[5], 200.0)
setupperbound(x[6], 200.0)
setupperbound(x[7], 200.0)
setupperbound(x[8], 200.0)
setupperbound(x[9], 200.0)
setupperbound(x[10], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(1e-8* (x[1])^2+ (2+x[2])^2+ (x[3])^2+4* (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2)-x[11] <= 0.0)
@NLconstraint(m, e2, exp(1e-8* (x[1])^2+ ((-2)+x[2])^2+ (x[3])^2+4* (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2)-x[11] <= 0.0)
@constraint(m, e3, -x[11]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
