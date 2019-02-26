using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[2]-1)^2+ (x[2]-x[3])^2+ (x[3]-x[4])^3+ (x[4]-x[5])^4+ (x[5]-x[6])^4)+objvar == 0.0)
@NLconstraint(m, e2,  (x[3])^2+ (x[4])^3+x[2] == 6.24264068711929)
@NLconstraint(m, e3, - (x[4])^2+x[3]+x[5] == 0.82842712474619)
@NLconstraint(m, e4, x[2]*x[6] == 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.