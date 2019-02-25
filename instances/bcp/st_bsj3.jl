using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 99.0)
set_upper_bound(x[2], 99.0)
set_upper_bound(x[3], 99.0)
set_upper_bound(x[4], 99.0)
set_upper_bound(x[5], 99.0)
set_upper_bound(x[6], 99.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(10.5*x[1]-1.5* (x[1])^2- (x[2])^2-3.95*x[2]- (x[3])^2+3*x[3]-2* (x[4])^2+5*x[4]- (x[5])^2+1.5*x[5]-2.5* (x[6])^2-1.5*x[6])+x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[7])

m = m 		 # model get returned when including this script.