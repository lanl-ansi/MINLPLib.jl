using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] >= -1)
setupperbound(x[1], 2.0)
setupperbound(x[2], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(cos(x[1])*sin(x[2])-x[1]/(1+ (x[2])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
