using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[2], 1.0e-7)
setupperbound(x[3], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2- (x[3])^2 <= 0.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2+ (x[3])^2 >= 4.0)
@NLconstraint(m, e3, -(-1+x[1])*(-2+x[1])*(-3+x[1])-x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
