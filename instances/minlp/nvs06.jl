using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[1], 1.0)
set_upper_bound(i[1], 200.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1*( (i[1])^2+(1+ (i[2])^2)/ (i[1])^2+(100+ (i[1])^2* (i[2])^2)/ (i[1]*i[2])^4)+objvar == 1.2)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.