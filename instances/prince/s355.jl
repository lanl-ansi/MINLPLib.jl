using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[5], 0.1)
set_lower_bound(x[6], 0.1)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-x[5]*x[8]-x[6]*x[8]+x[7]*x[8])+x[1] == 11.0)
@NLconstraint(m, e2, -(x[6]*x[8]*(x[7]-x[5])+x[5]+10*x[6]-x[7]+x[8])+x[2] == 0.0)
@NLconstraint(m, e3, -(-4*x[5]*x[8]-4*x[6]*x[8]+x[7]*x[8])+x[3] == 11.0)
@NLconstraint(m, e4, -(2*x[6]*x[8]*(x[7]-4*x[5])+2*x[5]+20*x[6]-0.5*x[7]+2*x[8])+x[4] == 0.0)
@NLconstraint(m, e5,  (x[1])^2+ (x[2])^2- (x[3])^2- (x[4])^2 == 0.0)
@NLconstraint(m, e6, -( (x[1])^2+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
