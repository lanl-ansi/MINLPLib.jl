using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[3]- (x[2])^2 >= 0.0)
@NLconstraint(m, e2, x[4]*x[6]- (x[5])^2 <= 0.0)
@NLconstraint(m, e3, -( (x[1]-x[4])^2+2* (x[2]-x[5])^2+ (x[3]-x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
