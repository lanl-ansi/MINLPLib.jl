using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5]
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
set_upper_bound(i[1], 1.0)
set_upper_bound(i[2], 1.0)
set_upper_bound(i[3], 1.0)
set_upper_bound(i[4], 1.0)
set_upper_bound(i[5], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, 20*i[1]+12*i[2]+11*i[3]+7*i[4]+4*i[5] >= 40.0)
@NLconstraint(m, e2, -(50*i[1]*i[1]+42*i[1]+50*i[2]*i[2]+44*i[2]+50*i[3]*i[3]+45*i[3]+50*i[4]*i[4]+47*i[4]+50*i[5]*i[5]+47.5*i[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.