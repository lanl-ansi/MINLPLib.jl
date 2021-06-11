using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 5.49e-6)
set_upper_bound(x[1], 4.553)
set_lower_bound(x[2], 0.0021961)
set_upper_bound(x[2], 18.21)


# ----- Constraints ----- #
@constraint(m, e1, -x[3]+objvar == 0.0)
@NLconstraint(m, e2, 10000*x[1]*x[2]-x[3] <= 1.0)
@NLconstraint(m, e3, -10000*x[1]*x[2]-x[3] <= -1.0)
@NLconstraint(m, e4, exp(-x[1])+exp(-x[2])-x[3] <= 1.001)
@NLconstraint(m, e5, (-exp(-x[1]))-exp(-x[2])-x[3] <= -1.001)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
