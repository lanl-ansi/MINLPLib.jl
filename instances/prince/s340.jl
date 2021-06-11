using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_upper_bound(x[2], 0.0)
set_upper_bound(x[2], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-2*x[2]-2*x[3] >= -1.8)
@NLconstraint(m, e2, x[1]*x[2]*x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
