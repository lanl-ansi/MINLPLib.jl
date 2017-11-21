using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 5000.5* (x[2])^2+10000* ((-1)+x[3])^2-x[1] == -1.0)
@NLconstraint(m, e2, -(100* ((-0.5)+x[1])^2+50.005* (1+x[2])^2+0.0100000000000051* ((-1)+x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
