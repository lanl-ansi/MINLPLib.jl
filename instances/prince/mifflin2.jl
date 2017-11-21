using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 3.75*( (x[1])^2+ (x[2])^2)-x[1]-x[3] <= 3.75)
@NLconstraint(m, e2, 0.25*( (x[1])^2+ (x[2])^2)-x[1]-x[3] <= 0.25)
@constraint(m, e3, -x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
