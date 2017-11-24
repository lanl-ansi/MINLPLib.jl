using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(12* (x[1])^2-6.3* (x[1])^4+ (x[1])^6-6*x[1]*x[2]+6* (x[2])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
