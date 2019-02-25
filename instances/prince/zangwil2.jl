using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.0666666666666667*(16* (x[1])^2-56*x[1]+16* (x[2])^2-256*x[2]-8*x[1]*x[2])+objvar == 66.0666666666667)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.