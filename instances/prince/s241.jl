using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2+ (x[2])^2+ (x[3])^2)+x[4] == -1.0)
@NLconstraint(m, e2, -( (x[1])^2+ (x[2])^2+ ((-2)+x[3])^2)+x[5] == -1.0)
@constraint(m, e3, -x[1]-x[2]-x[3]+x[6] == -1.0)
@constraint(m, e4, -x[1]-x[2]+x[3]+x[7] == 1.0)
@NLconstraint(m, e5, -( (x[1])^3+3* (x[2])^2+ (1-x[1]+5*x[3])^2)+x[8] == -36.0)
@NLconstraint(m, e6, -( (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
