using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1.5-i[1]*(1-i[2]))^2+ (2.25-i[1]*(1- (i[2])^2))^2+ (2.625-i[1]*(1- (i[2])^3))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
