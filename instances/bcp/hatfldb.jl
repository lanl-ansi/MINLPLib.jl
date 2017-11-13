using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0e-7)
setlowerbound(x[2], 1.0e-7)
setupperbound(x[2], 0.8)
setlowerbound(x[3], 1.0e-7)
setlowerbound(x[4], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1])^2+ (x[1]-sqrt(x[2]))^2+ (x[2]-sqrt(x[3]))^2+ (x[3]-sqrt(x[4]))^2)+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])
m = m 		 # model get returned when including this script. 
