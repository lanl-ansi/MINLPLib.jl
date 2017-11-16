using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setupperbound(x[1], 115.8)
setlowerbound(x[2], 1.0e-5)
setupperbound(x[2], 30.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]-0.2458* (x[1])^2/x[2] >= 6.0)
@constraint(m, e2, -29.4*x[1]-18*x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
