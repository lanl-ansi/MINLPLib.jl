using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 1/(0.1+ ((-4)+x[1])^2+ ((-4)+x[2])^2+ ((-4)+x[3])^2+ ((-4)+x[4])^2)+1/(0.2+ ((-1)+x[1])^2+ ((-1)+x[2])^2+ ((-1)+x[3])^2+ ((-1)+x[4])^2)+1/(0.2+ ((-8)+x[1])^2+ ((-8)+x[2])^2+ ((-8)+x[3])^2+ ((-8)+x[4])^2)+1/(0.4+ ((-6)+x[1])^2+ ((-6)+x[2])^2+ ((-6)+x[3])^2+ ((-6)+x[4])^2)+1/(0.4+ ((-3)+x[1])^2+ ((-7)+x[2])^2+ ((-3)+x[3])^2+ ((-7)+x[4])^2)+1/(0.6+ ((-2)+x[1])^2+ ((-9)+x[2])^2+ ((-2)+x[3])^2+ ((-9)+x[4])^2)+1/(0.3+ ((-5)+x[1])^2+ ((-5)+x[2])^2+ ((-3)+x[3])^2+ ((-3)+x[4])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
