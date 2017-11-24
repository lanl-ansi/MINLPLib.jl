using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -4*x[1]-3*x[2]+4*x[3] <= 30.0)
@constraint(m, e2, 4*x[1]+9*x[2]-2*x[3] <= 114.0)
@constraint(m, e3, 2*x[2]-x[3] <= 8.0)
@constraint(m, e4, 2*x[1]+15*x[2]-8*x[3] <= 64.0)
@constraint(m, e5, x[2] <= 14.0)
@constraint(m, e6, -4*x[1]+3*x[2]-2*x[3] <= -18.0)
@constraint(m, e7, 4*x[1]-9*x[2]+4*x[3] <= -6.0)
@constraint(m, e8, -6*x[1]+5*x[2]-4*x[3] <= -40.0)
@constraint(m, e9, 4*x[1]-9*x[2]-3*x[3] <= -132.0)
@NLconstraint(m, e10, -(15*x[1]- (x[1])^2- (x[2])^2-2*x[2])-x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
