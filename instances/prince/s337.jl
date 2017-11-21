using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setupperbound(x[3], 0.0)
setlowerbound(x[2], 1.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[2] >= 1.0)
@NLconstraint(m, e2, -(9* (x[1])^2+ (x[2])^2+9* (x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
