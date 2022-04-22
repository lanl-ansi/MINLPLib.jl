using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7] >= -10.0)
@constraint(m, e2, -x[1]-x[2]-x[3]-x[4] >= -5.0)
@NLconstraint(m, e3, (- (x[6])^2)- (x[7])^2-x[1]-x[3]-x[5] >= -5.0)
@constraint(m, e4, 2*x[4]+x[5]+0.8*x[6]+x[7] == 5.0)
@NLconstraint(m, e5,  (x[2])^2+ (x[3])^2+ (x[5])^2+ (x[6])^2 == 5.0)
@NLconstraint(m, e6, -(-x[1]*x[3]-5*x[1]-4*x[3]-5*x[5]/(1+x[5])-8*x[6]/(1+x[6])-10*(exp(-2*x[7])-2*exp(-x[7])))+5*x[2]+6*x[4]+objvar == -10.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
