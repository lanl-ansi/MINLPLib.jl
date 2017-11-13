using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)
setlowerbound(x[1], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.333333333333333* (1+x[1])^3-x[2]+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 
