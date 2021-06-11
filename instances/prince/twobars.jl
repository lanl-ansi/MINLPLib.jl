using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.2)
set_upper_bound(x[1], 4.0)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 1.6)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.124*sqrt(1+x[2]*x[2])*(8/x[1]+1/(x[1]*x[2])) >= -1.0)
@NLconstraint(m, e2, -0.124*sqrt(1+x[2]*x[2])*(8/x[1]-1/(x[1]*x[2])) >= -1.0)
@NLconstraint(m, e3, -sqrt(1+x[2]*x[2])*x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
