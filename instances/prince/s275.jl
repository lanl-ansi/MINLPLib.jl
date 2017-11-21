using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*(x[1]+0.5*x[2]+0.333333333333333*x[3]+0.25*x[4])+x[2]*(0.5*x[1]+0.333333333333333*x[2]+0.25*x[3]+0.2*x[4])+x[3]*(0.333333333333333*x[1]+0.25*x[2]+0.2*x[3]+0.166666666666667*x[4])+x[4]*(0.25*x[1]+0.2*x[2]+0.166666666666667*x[3]+0.142857142857143*x[4]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
