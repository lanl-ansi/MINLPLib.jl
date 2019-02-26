using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[4]+objvar == 0.0)
@NLconstraint(m, e2, 10* (x[2])^2* (x[3])^3+10* (x[2])^3* (x[3])^2+200* (x[2])^2* (x[3])^2+100* (x[2])^3*x[3]+100* (x[3])^3*x[2]+x[1]*x[2]* (x[3])^2+ (x[2])^2*x[1]*x[3]+1000* (x[3])^2*x[2]+8* (x[3])^2*x[1]+1000* (x[2])^2*x[3]+8* (x[2])^2*x[1]+6*x[1]*x[2]*x[3]- (x[1])^2+60*x[1]*x[3]+60*x[1]*x[2]-200*x[1] <= 0.0)
@constraint(m, e3, -x[1]-800*x[4] <= -800.0)
@constraint(m, e4, x[1]-800*x[4] <= 800.0)
@constraint(m, e5, -x[2]-2*x[4] <= -4.0)
@constraint(m, e6, x[2]-2*x[4] <= 4.0)
@constraint(m, e7, -x[3]-3*x[4] <= -6.0)
@constraint(m, e8, x[3]-3*x[4] <= 6.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.