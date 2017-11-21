using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -1.11)
setupperbound(x[1], -1.11)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-8)+2* (x[1]+x[2])^2+ (x[1]-x[2])^2)^2+ ((-9)+5* (x[1])^2+ ((-3)+x[2])^2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
