using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@constraint(m, e1, -i[1]-i[2]-2*i[3] >= -3.0)
@NLconstraint(m, e2, -(2* (i[1])^2-8*i[1]+2* (i[2])^2-6*i[2]+ (i[3])^2-4*i[3]+2*i[1]*i[2]+2*i[1]*i[3])+objvar == 9.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
