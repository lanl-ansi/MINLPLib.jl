using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.41* (x[1])^4-12.76* (x[1])^3+39.91* (x[1])^2-51.93*x[1]+ ((-3.9)+x[2])^2)+x[3] == 24.37)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 
