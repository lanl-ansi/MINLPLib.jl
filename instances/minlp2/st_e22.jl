using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[1], 8.0)
set_upper_bound(x[2], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] <= 10.0)
@constraint(m, e2, x[1]+5*x[2] <= 22.0)
@constraint(m, e3, -3*x[1]+2*x[2] <= 2.0)
@constraint(m, e4, -x[1]-4*x[2] <= -4.0)
@constraint(m, e5, x[1]-2*x[2] <= 4.0)
@NLconstraint(m, e6, -(- (x[1])^2-4* (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
