using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+13*x[4] == 7.0)
@constraint(m, e2, x[3]+5*x[5] == 6.0)
@NLconstraint(m, e3, -( (x[1]-x[2])^2+ ((-1)+x[3])^2+ ( ((-1)+x[4])^2)^2+ ((-1)+x[5])^6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.