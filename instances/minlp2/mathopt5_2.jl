using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
setlowerbound(x[1], -5.0)
setupperbound(x[1], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2-cos(18*x[1]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
