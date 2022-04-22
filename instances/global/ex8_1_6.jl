using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-1/(0.1+ (x[1]-4)^2+ (x[2]-4)^2)-1/(0.2+ (x[1]-1)^2+ (x[2]-1)^2)-1/(0.2+ (x[1]-8)^2+ (x[2]-8)^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
