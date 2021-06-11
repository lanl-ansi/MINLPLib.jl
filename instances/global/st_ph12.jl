using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1] <= 4.0)
@constraint(m, e2, x[2] <= 4.0)
@constraint(m, e3, x[3] <= 4.0)
@constraint(m, e4, 2*x[1]+3*x[2]+4*x[3] <= 35.0)
@NLconstraint(m, e5, -(x[1]-0.5* (x[1])^2- (x[2])^2+2*x[2]-1.5* (x[3])^2+3*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
