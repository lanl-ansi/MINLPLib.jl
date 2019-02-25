using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 0.577350269189626*x[1]-x[2] >= 0.0)
@constraint(m, e2, x[1]+1.73205080756888*x[2] >= 0.0)
@constraint(m, e3, -x[1]-1.73205080756888*x[2] >= -6.0)
@NLconstraint(m, e4, -0.0213833433033195*(-9+ ((-3)+x[1])^2)* (x[2])^3+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.