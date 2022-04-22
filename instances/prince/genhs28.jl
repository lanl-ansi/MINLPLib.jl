using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+3*x[3] == 1.0)
@constraint(m, e2, x[2]+2*x[3]+3*x[4] == 1.0)
@constraint(m, e3, x[3]+2*x[4]+3*x[5] == 1.0)
@constraint(m, e4, x[4]+2*x[5]+3*x[6] == 1.0)
@constraint(m, e5, x[5]+2*x[6]+3*x[7] == 1.0)
@constraint(m, e6, x[6]+2*x[7]+3*x[8] == 1.0)
@constraint(m, e7, x[7]+2*x[8]+3*x[9] == 1.0)
@constraint(m, e8, x[8]+2*x[9]+3*x[10] == 1.0)
@NLconstraint(m, e9, -( (x[1]+x[2])^2+ (x[2]+x[3])^2+ (x[3]+x[4])^2+ (x[4]+x[5])^2+ (x[5]+x[6])^2+ (x[6]+x[7])^2+ (x[7]+x[8])^2+ (x[8]+x[9])^2+ (x[9]+x[10])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
