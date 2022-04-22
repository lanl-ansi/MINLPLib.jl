using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[6, 7]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, 12 <= i[i_Idx] <= 60, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -1000000*i[1]*i[2]/(i[3]*i[4])-x[6]+x[7] == -144279.32477276)
@constraint(m, e2, objvar-x[6]-x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
