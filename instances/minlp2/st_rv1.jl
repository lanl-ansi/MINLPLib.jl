using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
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
@constraint(m, e1, 8*x[1]+7*x[2]+9*x[3]+9*x[5]+8*x[6]+2*x[7]+4*x[9]+x[10] <= 530.0)
@constraint(m, e2, 3*x[1]+4*x[2]+6*x[3]+9*x[4]+6*x[6]+9*x[7]+x[8]+x[10] <= 395.0)
@constraint(m, e3, 2*x[2]+x[3]+5*x[4]+5*x[5]+7*x[7]+4*x[8]+2*x[9] <= 350.0)
@constraint(m, e4, 5*x[1]+7*x[3]+x[4]+7*x[5]+5*x[6]+7*x[8]+9*x[9]+5*x[10] <= 405.0)
@constraint(m, e5, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] <= 200.0)
@NLconstraint(m, e6, -(-0.00055* (x[1])^2-0.0583*x[1]-0.0019* (x[2])^2-0.2318*x[2]-0.0002* (x[3])^2-0.0108*x[3]-0.00095* (x[4])^2-0.1634*x[4]-0.0046* (x[5])^2-0.138*x[5]-0.0035* (x[6])^2-0.357*x[6]-0.00315* (x[7])^2-0.1953*x[7]-0.00475* (x[8])^2-0.361*x[8]-0.0048* (x[9])^2-0.1824*x[9]-0.003* (x[10])^2-0.162*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.