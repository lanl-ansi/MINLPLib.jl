using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[2], 0.0)
set_upper_bound(x[1], 10000.0)
set_lower_bound(x[2], -5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1-1^x[2]*x[1])^2+ (1-1^x[2]*x[1])^2+ (3-2^(0.5*x[2])*x[1])^2+ (4-3^(0.333333333333333*x[2])*x[1])^2+ (7-4^(0.25*x[2])*x[1])^2+ (11-5^(0.2*x[2])*x[1])^2+ (18-6^(0.166666666666667*x[2])*x[1])^2+ (29-7^(0.142857142857143*x[2])*x[1])^2+ (47-8^(0.125*x[2])*x[1])^2+ (76-9^(0.111111111111111*x[2])*x[1])^2+ (123-10^(0.1*x[2])*x[1])^2+ (199-11^(0.0909090909090909*x[2])*x[1])^2+ (322-12^(0.0833333333333333*x[2])*x[1])^2+ (521-13^(0.0769230769230769*x[2])*x[1])^2+ (843-14^(0.0714285714285714*x[2])*x[1])^2+ (1364-15^(0.0666666666666667*x[2])*x[1])^2+ (2207-16^(0.0625*x[2])*x[1])^2+ (3571-17^(0.0588235294117647*x[2])*x[1])^2+ (5778-18^(0.0555555555555556*x[2])*x[1])^2+ (9529-19^(0.0526315789473684*x[2])*x[1])^2+ (15307-20^(0.05*x[2])*x[1])^2+ (24836-21^(0.0476190476190476*x[2])*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 