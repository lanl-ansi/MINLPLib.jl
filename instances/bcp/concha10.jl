using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10000.0)
set_upper_bound(x[1], 10000.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1-exp(x[2])*x[1])^2+ (1-exp(x[2])*x[1])^2+ (3-exp(2*x[2])*x[1])^2+ (4-exp(3*x[2])*x[1])^2+ (7-exp(4*x[2])*x[1])^2+ (11-exp(5*x[2])*x[1])^2+ (18-exp(6*x[2])*x[1])^2+ (29-exp(7*x[2])*x[1])^2+ (47-exp(8*x[2])*x[1])^2+ (76-exp(9*x[2])*x[1])^2+ (123-exp(10*x[2])*x[1])^2+ (199-exp(11*x[2])*x[1])^2+ (322-exp(12*x[2])*x[1])^2+ (521-exp(13*x[2])*x[1])^2+ (843-exp(14*x[2])*x[1])^2+ (1364-exp(15*x[2])*x[1])^2+ (2207-exp(16*x[2])*x[1])^2+ (3571-exp(17*x[2])*x[1])^2+ (5778-exp(18*x[2])*x[1])^2+ (9529-exp(19*x[2])*x[1])^2+ (15307-exp(20*x[2])*x[1])^2+ (24836-exp(21*x[2])*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script.