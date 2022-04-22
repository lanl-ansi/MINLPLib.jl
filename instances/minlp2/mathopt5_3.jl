using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, 0 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@NLconstraint(m, e1, -sin(x[1])* (cos(x[1])-sin(x[1]))^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
