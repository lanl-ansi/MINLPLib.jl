using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2]
@variable(m, x[x_Idx])
setlowerbound(objvar, 1.0)
setupperbound(objvar, 5.5)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 5.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.25*objvar-0.0625* (objvar)^2-0.0625* (x[2])^2+0.5*x[2] <= 1.0)
@NLconstraint(m, e2, 0.0714285714285714* (objvar)^2+0.0714285714285714* (x[2])^2-0.428571428571429*objvar-0.428571428571429*x[2] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
