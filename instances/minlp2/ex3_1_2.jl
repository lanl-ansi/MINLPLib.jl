using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 78.0)
set_upper_bound(x[1], 102.0)
set_lower_bound(x[2], 33.0)
set_upper_bound(x[2], 45.0)
set_lower_bound(x[3], 27.0)
set_upper_bound(x[3], 45.0)
set_lower_bound(x[4], 27.0)
set_upper_bound(x[4], 45.0)
set_lower_bound(x[5], 27.0)
set_upper_bound(x[5], 45.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8356891*x[1]*x[5]+37.293239*x[1]+5.3578547*x[3]*x[3])+objvar == -40792.141)
@NLconstraint(m, e2, 0.0056858*x[2]*x[5]-0.0022053*x[3]*x[5]+0.0006262*x[1]*x[4] <= 6.665593)
@NLconstraint(m, e3, 0.0022053*x[3]*x[5]-0.0056858*x[2]*x[5]-0.0006262*x[1]*x[4] <= 85.334407)
@NLconstraint(m, e4, 0.0071317*x[2]*x[5]+0.0021813*x[3]*x[3]+0.0029955*x[1]*x[2] <= 29.48751)
@NLconstraint(m, e5, (-0.0071317*x[2]*x[5])-0.0021813*x[3]*x[3]-0.0029955*x[1]*x[2] <= -9.48751)
@NLconstraint(m, e6, 0.0047026*x[3]*x[5]+0.0019085*x[3]*x[4]+0.0012547*x[1]*x[3] <= 15.599039)
@NLconstraint(m, e7, (-0.0047026*x[3]*x[5])-0.0019085*x[3]*x[4]-0.0012547*x[1]*x[3] <= -10.699039)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.