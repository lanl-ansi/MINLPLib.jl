using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 2.0)
set_upper_bound(x[3], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2])^2+ (x[3])^2-2*x[2]-2*x[3]+ (x[4])^2+ (x[5])^2)+x[1] == 0.0)
@NLconstraint(m, e2, (-2+2*x[4])*x[6]+2*x[4]-2*x[2]-x[8] == 0.0)
@NLconstraint(m, e3, (-2+2*x[5])*x[7]+2*x[5]-2*x[3]-x[9] == 0.0)
@NLconstraint(m, e4, - ((-1)+x[4])^2-x[10] == -0.25)
@NLconstraint(m, e5, - ((-1)+x[5])^2-x[11] == -0.25)
@NLconstraint(m, e6, x[8]*x[4] == 0.0)
@NLconstraint(m, e7, x[9]*x[5] == 0.0)
@NLconstraint(m, e8, x[10]*x[6] == 0.0)
@NLconstraint(m, e9, x[11]*x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.