using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 1000.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 100.0)
set_lower_bound(x[3], -30.0)
set_upper_bound(x[3], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (490.2-log(40*x[2]+x[3])*x[1])^2+ (585.3-log(80*x[2]+x[3])*x[1])^2+ (673.7-log(160*x[2]+x[3])*x[1])^2+ (759.2-log(320*x[2]+x[3])*x[1])^2+ (837.5-log(640*x[2]+x[3])*x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

 
