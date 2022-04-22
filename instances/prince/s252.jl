using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_upper_bound(x[1], 0.0)
set_upper_bound(x[1], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[3])^2+x[1] == -1.0)
@NLconstraint(m, e2, -(0.01* ((-1)+x[1])^2+ (x[2]- (x[1])^2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
