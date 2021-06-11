using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (- (x[3])^2)- (x[4])^2 >= -1.0)
@NLconstraint(m, e2, (- (x[5])^2)- (x[6])^2 >= -1.0)
@NLconstraint(m, e3, - (x[9])^2 >= -1.0)
@NLconstraint(m, e4, (- (x[1])^2)- (x[2]-x[9])^2 >= -1.0)
@NLconstraint(m, e5, (- (x[1]-x[5])^2)- (x[2]-x[6])^2 >= -1.0)
@NLconstraint(m, e6, (- (x[1]-x[7])^2)- (x[2]-x[8])^2 >= -1.0)
@NLconstraint(m, e7, (- (x[3]-x[7])^2)- (x[4]-x[8])^2 >= -1.0)
@NLconstraint(m, e8, (- (x[3]-x[5])^2)- (x[4]-x[6])^2 >= -1.0)
@NLconstraint(m, e9, (- (x[7])^2)- (x[8]-x[9])^2 >= -1.0)
@NLconstraint(m, e10, x[1]*x[4]-x[2]*x[3] >= 0.0)
@NLconstraint(m, e11, x[3]*x[9] >= 0.0)
@NLconstraint(m, e12, -x[5]*x[9] >= 0.0)
@NLconstraint(m, e13, x[5]*x[8]-x[6]*x[7] >= 0.0)
@NLconstraint(m, e14, 0.5*(x[1]*x[4]-x[2]*x[3]+x[3]*x[9]-x[5]*x[9]+x[5]*x[8]-x[6]*x[7])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
