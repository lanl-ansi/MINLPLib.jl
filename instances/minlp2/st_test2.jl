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
set_upper_bound(i[1], 1.0)
set_upper_bound(i[2], 1.0)
set_upper_bound(i[3], 1.0)
set_upper_bound(i[4], 1.0)
set_upper_bound(i[5], 1.0)
set_upper_bound(i[6], 1.0e15)


# ----- Constraints ----- #
@constraint(m, e1, 6*i[1]+3*i[2]+3*i[3]+2*i[4]+i[5] <= 6.5)
@constraint(m, e2, 10*i[1]+10*i[3]+i[6] <= 20.0)
@NLconstraint(m, e3, -(0.5*i[1]*i[1]+10.5*i[1]+0.25*i[2]*i[2]-7.5*i[2]+1.5*i[3]*i[3]-3.5*i[3]+0.5*i[4]*i[4]+2.5*i[4]+0.5*i[5]*i[5]-1.5*i[5])-10*i[6]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.