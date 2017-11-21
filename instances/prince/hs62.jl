using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3] == 1.0)
@NLconstraint(m, e2, 32.174*(255*log((0.03+x[1]+x[2]+x[3])/(0.03+0.09*x[1]+x[2]+x[3]))+280*log((0.03+x[2]+x[3])/(0.03+0.07*x[2]+x[3]))+290*log((0.03+x[3])/(0.03+0.13*x[3])))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
