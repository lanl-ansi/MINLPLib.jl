using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, 0 <= x[x_Idx] <= 5)


# ----- Constraints ----- #
@constraint(m, e1, -6*x[1]+8*x[2] <= 3.0)
@constraint(m, e2, 3*x[1]-x[2] <= 3.0)
@NLconstraint(m, e3, -(x[1]*x[2]-x[1]-x[2])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
