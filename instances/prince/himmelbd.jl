using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 84*x[1]-193.666666666667*x[1]*x[1]+49*x[1]*x[1]+(4.08333333333333-4.08333333333333*x[1]*x[1])*(0.0833333333333333-0.0833333333333333*x[1]*x[1]) == 487.333333333333)
@constraint(m, e2, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.