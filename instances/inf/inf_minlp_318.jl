using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, i[i_Idx])
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 600.0)
set_lower_bound(i[3], 1.0)
set_upper_bound(i[3], 600.0)
set_lower_bound(i[4], 1.0)
set_upper_bound(i[4], 50.0)
set_lower_bound(i[5], 1.0)
set_upper_bound(i[5], 50.0)
set_lower_bound(i[6], 1.0)
set_upper_bound(i[6], 30.0)
set_lower_bound(i[7], 1.0)
set_upper_bound(i[7], 30.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2*i[2]*i[4]*i[6]+200*i[4]*i[6]+5*i[6]+0.22*i[3]*i[5]*i[7]+220*i[5]*i[7]+5.5*i[7])+x[1] == 0.0)
@NLconstraint(m, e2, 450*(1/(i[2]*i[4]*i[6])+1/(i[3]*i[5]*i[7]))+200*(1/(i[4]*i[6])+1/(i[5]*i[7])) <= 0.000318517584662293)
@NLconstraint(m, e3, -i[4]*i[6] <= -1.0)
@NLconstraint(m, e4, i[4]*i[6] <= 300.0)
@NLconstraint(m, e5, -i[5]*i[7] <= -1.0)
@NLconstraint(m, e6, i[5]*i[7] <= 300.0)
@NLconstraint(m, e7, i[6]/i[7] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.