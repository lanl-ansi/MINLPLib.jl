using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], -0.5)
setupperbound(x[1], 0.4)
setlowerbound(x[2], -0.5)
setupperbound(x[2], 0.4)
setlowerbound(x[3], -0.5)
setupperbound(x[3], 0.4)
setlowerbound(x[4], -0.5)
setupperbound(x[4], 0.4)
setlowerbound(x[5], -0.5)
setupperbound(x[5], 0.4)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^10+ (x[2])^10+ (x[3])^10+ (x[4])^10+ (x[5])^10)+x[6] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[6])
m = m 		 # model get returned when including this script. 
