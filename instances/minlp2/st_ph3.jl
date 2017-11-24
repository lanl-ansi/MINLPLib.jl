using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 6*x[1]+x[2]+9*x[4]+3*x[5]+5*x[6] <= 96.0)
@constraint(m, e2, x[1]+7*x[3]+6*x[4]+2*x[5]+2*x[6] <= 72.0)
@constraint(m, e3, 5*x[1]+4*x[2]+x[3]+3*x[4]+8*x[5] <= 84.0)
@constraint(m, e4, 9*x[1]+x[2]+2*x[4]+7*x[5]+6*x[6] <= 100.0)
@constraint(m, e5, 2*x[1]+6*x[4]+3*x[5]+9*x[6] <= 80.0)
@NLconstraint(m, e6, -(6*x[1]-3* (x[1])^2-2* (x[3])^2+4*x[3]-1.5* (x[4])^2+3*x[4]- (x[5])^2+2*x[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
