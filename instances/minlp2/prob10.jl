using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2]
@variable(m, 0 <= x[x_Idx] <= 10)
i_Idx = Any[3]
@variable(m, i[i_Idx] <= 10)


# ----- Constraints ----- #
@constraint(m, e1, 0.7*x[2]+i[3] <= 7.0)
@constraint(m, e2, 2.5*x[2]+i[3] <= 19.0)
@NLconstraint(m, e3, 1.1*( (2*x[2]-10)^2+ (i[3]-5)^2)+sin( (2*x[2]-10)^2+ (i[3]-5)^2)-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
