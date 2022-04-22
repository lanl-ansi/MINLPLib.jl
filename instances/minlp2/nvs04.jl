using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (0.5+i[2]- (0.6+i[1])^2)^2+ (0.4-i[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
