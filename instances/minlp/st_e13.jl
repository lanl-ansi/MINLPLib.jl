using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1]
@variable(m, b[b_Idx])
x_Idx = Any[2]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)
set_binary(b[1])
set_upper_bound(x[2], 1.6)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (x[2])^2-b[1] <= -1.25)
@constraint(m, e2, b[1]+x[2] <= 1.6)
@constraint(m, e3, -b[1]-2*x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.