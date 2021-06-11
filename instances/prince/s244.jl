using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.934559787821252+exp(-0.1*x[1])-exp(-0.1*x[2])*x[3])^2+ ((-0.142054336894918)+exp(-0.2*x[1])-exp(-0.2*x[2])*x[3])^2+ ((-0.491882878842398)+exp(-0.3*x[1])-exp(-0.3*x[2])*x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
