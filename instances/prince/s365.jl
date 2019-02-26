using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[5], 1.0)
set_lower_bound(x[7], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt( (x[2])^2)+ (x[3])^2)+x[8] == 0.0)
@NLconstraint(m, e2, -(sqrt( (x[3])^2)+ (x[2]-x[1])^2)+x[9] == 0.0)
@NLconstraint(m, e3,  (x[4]-x[6])^2+ (x[5]-x[7])^2 >= 4.0)
@NLconstraint(m, e4, x[3]*x[4]-x[2]*x[5]-x[8] >= 0.0)
@NLconstraint(m, e5, x[3]*x[6]-x[2]*x[7]-x[8] >= 0.0)
@NLconstraint(m, e6, x[1]*x[3]+(x[2]-x[1])*x[5]-x[3]*x[4]-x[9] >= 0.0)
@NLconstraint(m, e7, x[1]*x[3]+(x[2]-x[1])*x[7]-x[3]*x[6]-x[9] >= 0.0)
@NLconstraint(m, e8, -x[1]*x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.