using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3]
@variable(m, x[x_Idx] >= -10)
set_upper_bound(x[2], 5.0)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[3]- (x[2])^2)^2+ (1-x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
