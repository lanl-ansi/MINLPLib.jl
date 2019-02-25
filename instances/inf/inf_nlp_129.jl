using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 0.0)
@NLconstraint(m, e2, sqrt(1- (x[1])^2)+sqrt(4- (x[2])^2)+sqrt(9- (x[3])^2)+sqrt(16- (x[4])^2)+sqrt(25- (x[5])^2)+sqrt(36- (x[6])^2)+sqrt(49- (x[7])^2)+sqrt(64- (x[8])^2)+sqrt(81- (x[9])^2)+sqrt(100- (x[10])^2) == 35.0)
@constraint(m, e3, -9.5*x[1]-8.5*x[2]-7.5*x[3]-6.5*x[4]-5.5*x[5]-4.5*x[6]-3.5*x[7]-2.5*x[8]-1.5*x[9]-0.5*x[10]+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.