using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.3)
set_upper_bound(x[1], 2.3)
set_lower_bound(x[2], -2.3)
set_upper_bound(x[2], 2.3)
set_lower_bound(x[3], -3.2)
set_upper_bound(x[3], 3.2)
set_lower_bound(x[4], -3.2)
set_upper_bound(x[4], 3.2)
set_lower_bound(x[5], -3.2)
set_upper_bound(x[5], 3.2)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2 == 10.0)
@NLconstraint(m, e2, x[2]*x[3]-5*x[4]*x[5] == 0.0)
@NLconstraint(m, e3,  (x[1])^3+ (x[2])^3 == -1.0)
@NLconstraint(m, e4, -exp(x[1]*x[2]*x[3]*x[4]*x[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
