using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx], Int)
set_upper_bound(i[1], 3.0)
set_upper_bound(i[2], 1.0e15)


# ----- Constraints ----- #
@constraint(m, e1, -4*i[1]+i[2] <= 0.0)
@NLconstraint(m, e2, -6*i[1]*i[1]+3*i[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
