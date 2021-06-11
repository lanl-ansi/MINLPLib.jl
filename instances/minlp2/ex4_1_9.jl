using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[1], 3.0)
set_upper_bound(x[2], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+objvar == 0.0)
@NLconstraint(m, e2, 8* (x[1])^3-2* (x[1])^4-8* (x[1])^2+x[2] <= 2.0)
@NLconstraint(m, e3, 32* (x[1])^3-4* (x[1])^4-88* (x[1])^2+96*x[1]+x[2] <= 36.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
