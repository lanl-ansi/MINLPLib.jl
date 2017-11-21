using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -x[4]+objvar == 0.0)
@NLconstraint(m, e2,  (x[1])^4* (x[2])^4- (x[1])^4- (x[2])^4*x[3] <= 0.0)
@constraint(m, e3, -x[1]-0.25*x[4] <= -1.4)
@constraint(m, e4, x[1]-0.25*x[4] <= 1.4)
@constraint(m, e5, -x[2]-0.2*x[4] <= -1.5)
@constraint(m, e6, x[2]-0.2*x[4] <= 1.5)
@constraint(m, e7, -x[3]-0.2*x[4] <= -0.8)
@constraint(m, e8, x[3]-0.2*x[4] <= 0.8)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
