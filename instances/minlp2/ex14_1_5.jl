using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, -2 <= x[x_Idx] <= 2)
@variable(m, x[6])


# ----- Constraints ----- #
@constraint(m, e1, -x[6]+objvar == 0.0)
@constraint(m, e2, 2*x[1]+x[2]+x[3]+x[4]+x[5] == 6.0)
@constraint(m, e3, x[1]+2*x[2]+x[3]+x[4]+x[5] == 6.0)
@constraint(m, e4, x[1]+x[2]+2*x[3]+x[4]+x[5] == 6.0)
@constraint(m, e5, x[1]+x[2]+x[3]+2*x[4]+x[5] == 6.0)
@NLconstraint(m, e6, x[1]*x[2]*x[3]*x[4]*x[5]-x[6] <= 1.0)
@NLconstraint(m, e7, -x[1]*x[2]*x[3]*x[4]*x[5]-x[6] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
