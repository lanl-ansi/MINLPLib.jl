using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0e-7)
setlowerbound(x[2], 1.0e-7)
setlowerbound(x[3], 1.0e-7)
setlowerbound(x[4], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1])^2+ (x[1]-sqrt(x[2]))^2+ (x[2]-sqrt(x[3]))^2+ (x[3]-sqrt(x[4]))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
