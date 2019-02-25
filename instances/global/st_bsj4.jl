using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
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
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]+x[6] <= 500.0)
@constraint(m, e2, x[1]+3*x[2]+6*x[3]+2*x[4] >= 50.0)
@constraint(m, e3, 3*x[5]+4*x[6] >= 50.0)
@constraint(m, e4, x[3]+2*x[4]+3*x[5]+x[6] <= 350.0)
@NLconstraint(m, e5, -(10.5*x[1]-1.5* (x[1])^2- (x[2])^2-3.95*x[2]- (x[3])^2+3*x[3]-2* (x[4])^2+5*x[4]- (x[5])^2+1.5*x[5]-2.5* (x[6])^2-1.5*x[6])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.