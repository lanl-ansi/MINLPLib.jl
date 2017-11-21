using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[1]-2*x[2])^2+ (x[2]-3*x[3])^2+ (x[3]-4*x[4])^2- (x[5])^2 == 0.0)
@constraint(m, e2, -x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
