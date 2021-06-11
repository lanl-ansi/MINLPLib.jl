using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -3.0)
set_upper_bound(x[1], 3.0)
set_lower_bound(x[2], -1.5)
set_upper_bound(x[2], 1.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(4* (x[1])^2-2.1* (x[1])^4+0.333333333333333* (x[1])^6+x[1]*x[2]-4* (x[2])^2+4* (x[2])^4)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
