using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1* (i[1])^2+i[2] >= 0.0)
@constraint(m, e2, -0.333333333333333*i[1]-i[2] >= -4.5)
@NLconstraint(m, e3, -( (i[1]-8)^2+ (i[2]-2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
