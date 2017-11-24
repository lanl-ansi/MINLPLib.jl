using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]+x[2])^2+ (x[3]-x[5])^2+ (x[6]-x[4])^2+2* (x[1]+x[3]-x[4])^2+ (x[2]-x[1]+x[3]-x[4])^2+10* (sin(x[1]+x[5]-x[6]))^2)+objvar == 0.0)
@NLconstraint(m, e2,  (x[1])^2-sin(x[2])-x[4]+x[5]+x[6] == 0.0)
@NLconstraint(m, e3, x[1]*x[3]-x[2]*x[4]*x[1]-sin((-x[1])-x[3]+x[6])-x[5] == 0.0)
@NLconstraint(m, e4, x[2]*x[6]*cos(x[5])-sin(x[3]*x[4])+x[2]-x[5] == 0.0)
@NLconstraint(m, e5, x[1]*x[2]- (x[3])^2-x[4]*x[5]- (x[6])^2 == 0.0)
@constraint(m, e6, 2*x[1]+5*x[2]+x[3]+x[4] <= 1.0)
@constraint(m, e7, 3*x[1]-2*x[2]+x[3]-4*x[4] <= 0.0)
@constraint(m, e8, x[1]+x[2]+x[3]+x[4]+x[5]+x[6] <= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
