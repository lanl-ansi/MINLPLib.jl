using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 0.1)
set_upper_bound(x[3], 10.0)
set_lower_bound(x[4], 0.1)
set_upper_bound(x[4], 10.0)
set_lower_bound(x[5], 0.1)
set_upper_bound(x[5], 10.0)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 10.0)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 10.0)
set_lower_bound(x[8], 0.1)
set_upper_bound(x[8], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.4*x[1]^0.67/x[7]^0.67+0.4*x[2]^0.67/x[8]^0.67-x[1]-x[2])+objvar == 10.0)
@NLconstraint(m, e2, 0.0588*x[5]*x[7]+0.1*x[1] <= 1.0)
@NLconstraint(m, e3, 0.0588*x[6]*x[8]+0.1*x[1]+0.1*x[2] <= 1.0)
@NLconstraint(m, e4, 4*x[3]/x[5]+2/(x[3]^0.71*x[5])+0.0588*x[7]/x[3]^1.3 <= 1.0)
@NLconstraint(m, e5, 4*x[4]/x[6]+2/(x[4]^0.71*x[6])+0.0588*x[4]^1.3*x[8] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
