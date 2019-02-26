using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.5)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 0.5)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], 0.5)
set_upper_bound(x[4], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(- (1-x[1])^2*x[3]* (1-x[4])^2- (1-(1-(1-x[1])*(1-x[4]))*x[2])^2*(1-x[3])) <= 0.1)
@NLconstraint(m, e2, (- (1-x[1])^2*x[3]* (1-x[4])^2)- (1-(1-(1-x[1])*(1-x[4]))*x[2])^2*(1-x[3]) <= 0.0)
@NLconstraint(m, e3, -(200*x[1]^0.6+200*x[2]^0.6+200*x[3]^0.6+300*x[4]^0.6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.