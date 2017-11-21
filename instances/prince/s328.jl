using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0)
setupperbound(x[1], 3.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1*( (x[1])^2+(1+ (x[2])^2)/ (x[1])^2+(100+ (x[1])^2* (x[2])^2)/( (x[1])^4* (x[2])^4))+objvar == 1.2)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
