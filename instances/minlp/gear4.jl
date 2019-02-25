using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[6, 7]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(x[7], 0.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(x[6], 0.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[1], 12.0)
set_upper_bound(i[1], 60.0)
set_lower_bound(i[2], 12.0)
set_upper_bound(i[2], 60.0)
set_lower_bound(i[3], 12.0)
set_upper_bound(i[3], 60.0)
set_lower_bound(i[4], 12.0)
set_upper_bound(i[4], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -1000000*i[1]*i[2]/(i[3]*i[4])-x[6]+x[7] == -144279.32477276)
@constraint(m, e2, objvar-x[6]-x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.