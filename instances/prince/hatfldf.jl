using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(x[3])*x[2]+x[1] == 0.032)
@NLconstraint(m, e2, exp(2*x[3])*x[2]+x[1] == 0.056)
@NLconstraint(m, e3, exp(3*x[3])*x[2]+x[1] == 0.099)
@constraint(m, e4, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.