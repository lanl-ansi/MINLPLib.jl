using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+x[1]-x[2]+x[3]-x[4] <= 8.0)
@NLconstraint(m, e2,  (x[1])^2+2* (x[2])^2+ (x[3])^2+2* (x[4])^2-x[1]-x[4] <= 10.0)
@NLconstraint(m, e3, 2* (x[1])^2+ (x[2])^2+ (x[3])^2+2*x[1]-x[2]-x[4] <= 5.0)
@NLconstraint(m, e4, -( (x[1])^2+ (x[2])^2+2* (x[3])^2+ (x[4])^2-5*x[1]-5*x[2]-21*x[3]+7*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
