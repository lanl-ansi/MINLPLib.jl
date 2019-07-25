using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] >= 0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.7*x[1]+x[2] <= 6.3)
@constraint(m, e2, 0.5*x[1]+0.8333*x[2] <= 6.0)
@constraint(m, e3, x[1]+0.6*x[2] <= 7.08)
@constraint(m, e4, 0.1*x[1]+0.25*x[2] <= 1.35)
@NLconstraint(m, e5, -(-3* (x[1])^2-5*x[1]-3* (x[2])^2-5*x[2])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
