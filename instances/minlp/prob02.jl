using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, i[i_Idx])
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(i[1], 1.0)
set_upper_bound(i[1], 100.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[3], 1.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(i[4], 1.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(i[5], 1.0)
set_upper_bound(i[5], 100.0)
set_lower_bound(i[6], 1.0)
set_upper_bound(i[6], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, -8000*i[1]+330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6]+objvar == 0.0)
@constraint(m, e2, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] <= 8000.0)
@constraint(m, e3, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] >= 7700.0)
@constraint(m, e4, i[2]+i[3]+i[4]+i[5]+i[6] <= 20.0)
@NLconstraint(m, e5, -i[1]*i[2] <= -60.0)
@NLconstraint(m, e6, -i[1]*i[3] <= -30.0)
@NLconstraint(m, e7, -i[1]*i[4] <= -75.0)
@NLconstraint(m, e8, -i[1]*i[5] <= -30.0)
@NLconstraint(m, e9, -i[1]*i[6] <= -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.