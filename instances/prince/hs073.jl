using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.3*x[1]+5.6*x[2]+11.1*x[3]+1.3*x[4] == 5.0)
@NLconstraint(m, e2, 12*x[1]-1.645*sqrt(0.28* (x[1])^2+0.19* (x[2])^2+20.5* (x[3])^2+0.62* (x[4])^2)+11.9*x[2]+41.8*x[3]+52.1*x[4] == 21.0)
@constraint(m, e3, x[1]+x[2]+x[3]+x[4] == 1.0)
@constraint(m, e4, -24.55*x[1]-26.75*x[2]-39*x[3]-40.5*x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
