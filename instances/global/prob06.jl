using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2]
@variable(m, x[x_Idx])
set_lower_bound(objvar, 1.0)
set_upper_bound(objvar, 5.5)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 5.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.25*objvar-0.0625* (objvar)^2-0.0625* (x[2])^2+0.5*x[2] <= 1.0)
@NLconstraint(m, e2, 0.0714285714285714* (objvar)^2+0.0714285714285714* (x[2])^2-0.428571428571429*objvar-0.428571428571429*x[2] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
