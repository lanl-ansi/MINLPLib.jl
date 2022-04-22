using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1])^2+ (x[2]-x[3])^2+ (x[3]-x[4])^2+ (x[4]-x[5])^2+ (x[5]-x[6])^2+ (x[6]-x[7])^2+ (x[7]-x[8])^2+ (x[8]-x[9])^2+ (x[9]-x[10])^2+ ((-1)+x[10])^2)+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

 
