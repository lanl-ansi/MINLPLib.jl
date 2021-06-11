using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 6.3368e-17)
set_upper_bound(x[3], 6.3368e-17)
set_lower_bound(x[4], 1.7363e-17)
set_upper_bound(x[4], 1.7363e-17)
set_lower_bound(x[5], 1.5738e-17)
set_upper_bound(x[5], 1.5738e-17)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-24.55*x[2]-26.75*x[3]-39*x[4]-40.5*x[5] == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4]+x[5] == 1.0)
@NLconstraint(m, e3, 12*x[2]-1.645*sqrt(0.28* (x[2])^2+0.19* (x[3])^2+20.5* (x[4])^2+0.62* (x[5])^2)+11.9*x[3]+41.8*x[4]+52.1*x[5] >= 21.0)
@constraint(m, e4, 2.3*x[2]+5.6*x[3]+11.1*x[4]+1.3*x[5] >= 5.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
