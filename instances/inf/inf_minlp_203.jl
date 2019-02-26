using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 3]
@variable(m, x[x_Idx])
i_Idx = Any[2]
@variable(m, i[i_Idx])
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(x[3], 0.367879441171442)
set_upper_bound(x[3], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -5000*(2+log(1/x[3]))*i[2]+x[1] == 0.0)
@NLconstraint(m, e2, 5000*(2+log(1/x[3]))*i[2] <= 4.0e6)
@NLconstraint(m, e3, i[2]*(1-x[3])-sqrt(4.60517018598809*i[2]*(1-x[3]))-0.5*i[2] >= 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.