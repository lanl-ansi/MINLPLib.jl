using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, 1 <= i[i_Idx] <= 5, Int)


# ----- Constraints ----- #
@constraint(m, e1, -3*i[1]-2*i[2]+objvar == 0.0)
@NLconstraint(m, e2, -i[1]*i[2] <= -3.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
