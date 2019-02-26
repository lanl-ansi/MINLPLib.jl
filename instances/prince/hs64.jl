using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_lower_bound(x[2], 1.0e-5)
set_lower_bound(x[3], 1.0e-5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(4/x[1]+32/x[2]+120/x[3]) >= -1.0)
@NLconstraint(m, e2, -(50000/x[1]+5*x[1]+72000/x[2]+20*x[2]+144000/x[3]+10*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.