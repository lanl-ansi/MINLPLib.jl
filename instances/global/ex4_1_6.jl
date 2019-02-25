using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -5.0)
set_upper_bound(x[1], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^6-15* (x[1])^4+27* (x[1])^2)+objvar == 250.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.