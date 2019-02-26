using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 32.174*(255*log((0.03+x[2]+x[3]+x[4])/(0.03+0.09*x[2]+x[3]+x[4]))+280*log((0.03+x[3]+x[4])/(0.03+0.07*x[3]+x[4]))+290*log((0.03+x[4])/(0.03+0.13*x[4])))+objvar == 0.0)
@NLconstraint(m, e2, 20* ((-1)+x[2]+x[3]+x[4])^2 == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.