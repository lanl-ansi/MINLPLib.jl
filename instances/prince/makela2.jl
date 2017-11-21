using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[2])^2+ (x[3])^2-x[1] <= 0.0)
@NLconstraint(m, e2,  (x[2])^2+ (x[3])^2-40*x[2]-10*x[3]-x[1] <= -40.0)
@NLconstraint(m, e3,  (x[2])^2+ (x[3])^2-10*x[2]-20*x[3]-x[1] <= -60.0)
@constraint(m, e4, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
