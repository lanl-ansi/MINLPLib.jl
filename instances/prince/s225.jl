using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] >= 1.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2 >= 1.0)
@NLconstraint(m, e3,  (9*x[1])^2+ (x[2])^2 >= 9.0)
@NLconstraint(m, e4,  (x[1])^2-x[2] >= 0.0)
@NLconstraint(m, e5,  (x[2])^2-x[1] >= 0.0)
@NLconstraint(m, e6, -( (x[1])^2+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
