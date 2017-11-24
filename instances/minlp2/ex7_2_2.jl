using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], 1.0e-5)
setupperbound(x[5], 16.0)
setlowerbound(x[6], 1.0e-5)
setupperbound(x[6], 16.0)


# ----- Constraints ----- #
@constraint(m, e1, x[4]+objvar == 0.0)
@NLconstraint(m, e2, 0.09755988*x[1]*x[5]+x[1] == 1.0)
@NLconstraint(m, e3, 0.0965842812*x[2]*x[6]+x[2]-x[1] == 0.0)
@NLconstraint(m, e4, 0.0391908*x[3]*x[5]+x[3]+x[1] == 1.0)
@NLconstraint(m, e5, 0.03527172*x[4]*x[6]+x[4]-x[1]+x[2]-x[3] == 0.0)
@NLconstraint(m, e6, x[5]^0.5+x[6]^0.5 <= 4.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
