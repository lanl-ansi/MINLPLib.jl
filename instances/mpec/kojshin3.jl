using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[4] == 0.0)
@NLconstraint(m, e2, 3* (x[2])^2+2*x[2]*x[3]+2* (x[3])^2+x[4]+3*x[5]-x[6] == 6.0)
@NLconstraint(m, e3, 2* (x[2])^2+x[2]+ (x[3])^2+10*x[4]+2*x[5]-x[7] == 2.0)
@NLconstraint(m, e4, 3* (x[2])^2+x[2]*x[3]+2* (x[3])^2+2*x[4]+9*x[5]-x[8] == 9.0)
@NLconstraint(m, e5,  (x[2])^2+3* (x[3])^2+2*x[4]+3*x[5]-x[9] == 3.0)
@NLconstraint(m, e6, x[6]*x[2] == 0.0)
@NLconstraint(m, e7, x[7]*x[3] == 0.0)
@NLconstraint(m, e8, x[8]*x[4] == 0.0)
@NLconstraint(m, e9, x[9]*x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.