using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(-0.5* (3.5-x[3])^2*x[2])*x[1] == 0.0009)
@NLconstraint(m, e2, exp(-0.5* (3-x[3])^2*x[2])*x[1] == 0.0044)
@NLconstraint(m, e3, exp(-0.5* (2.5-x[3])^2*x[2])*x[1] == 0.0175)
@NLconstraint(m, e4, exp(-0.5* (2-x[3])^2*x[2])*x[1] == 0.054)
@NLconstraint(m, e5, exp(-0.5* (1.5-x[3])^2*x[2])*x[1] == 0.1295)
@NLconstraint(m, e6, exp(-0.5* (1-x[3])^2*x[2])*x[1] == 0.242)
@NLconstraint(m, e7, exp(-0.5* (0.5-x[3])^2*x[2])*x[1] == 0.3521)
@NLconstraint(m, e8, exp(-0.5* (-x[3])^2*x[2])*x[1] == 0.3989)
@NLconstraint(m, e9, exp(-0.5* ((-0.5)-x[3])^2*x[2])*x[1] == 0.3521)
@NLconstraint(m, e10, exp(-0.5* ((-1)-x[3])^2*x[2])*x[1] == 0.242)
@NLconstraint(m, e11, exp(-0.5* ((-1.5)-x[3])^2*x[2])*x[1] == 0.1295)
@NLconstraint(m, e12, exp(-0.5* ((-2)-x[3])^2*x[2])*x[1] == 0.054)
@NLconstraint(m, e13, exp(-0.5* ((-2.5)-x[3])^2*x[2])*x[1] == 0.0175)
@NLconstraint(m, e14, exp(-0.5* ((-3)-x[3])^2*x[2])*x[1] == 0.0044)
@NLconstraint(m, e15, exp(-0.5* ((-3.5)-x[3])^2*x[2])*x[1] == 0.0009)
@constraint(m, e16, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
