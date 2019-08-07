using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, 10*x[1]+0.2*x[2]-0.1*x[3] <= 11.0)
@constraint(m, e2, -0.3*x[1]+9*x[2]+0.2*x[3] <= 8.0)
@constraint(m, e3, -0.1*x[1]+0.4*x[2]+11*x[3] <= 12.0)
@constraint(m, e4, 6*x[1]+8*x[2]+9*x[3] <= 18.0)
@NLconstraint(m, e5, -(1.25*x[1]-2.5* (x[1])^2-5* (x[2])^2+2.5*x[2]-7.5* (x[3])^2+5*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
