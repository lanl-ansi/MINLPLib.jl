using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, 0 <= x[x_Idx] <= 0.2)
i_Idx = Any[1, 2]
@variable(m, 0 <= i[i_Idx] <= 200, Int)

# ----- Constraints ----- #
@NLconstraint(m, e1, - (i[1])^2*i[2] >= -675.0)
@NLconstraint(m, e2, -0.1* (i[1])^2* (x[1])^2 >= -0.419)
@NLconstraint(m, e3, 0.00201* (i[1])^4*i[2]* (x[1])^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
