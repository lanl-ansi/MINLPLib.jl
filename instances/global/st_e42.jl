using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], -1.0)
setupperbound(x[5], 1.0)
setlowerbound(x[6], -1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 51.5712*x[3]*x[5]+20.7324*x[3]-25.7856*x[5]+14.9251*x[3]*x[7]-22.2988*x[7]-10.1409*x[6]*x[7]+42.3401*x[6]-x[1]+x[2]-6.6425*x[4] == -72.82)
@constraint(m, e2, x[3] == 1.0)
@constraint(m, e3, -x[1]-x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
