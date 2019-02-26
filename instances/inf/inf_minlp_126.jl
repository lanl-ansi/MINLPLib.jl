using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[11]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
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
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)
set_upper_bound(i[5], 100.0)
set_upper_bound(i[6], 100.0)
set_upper_bound(i[7], 100.0)
set_upper_bound(i[8], 100.0)
set_upper_bound(i[9], 100.0)
set_upper_bound(i[10], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+x[11] == 0.0)
@NLconstraint(m, e2, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 700.0)
@NLconstraint(m, e3, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 1000.0)
@NLconstraint(m, e4, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 1300.0)
@NLconstraint(m, e5, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 2000.0)
@NLconstraint(m, e6, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 800.0)
@NLconstraint(m, e7, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 500.0)
@NLconstraint(m, e8, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 840.0)
@NLconstraint(m, e9, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 3000.0)
@NLconstraint(m, e10, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 2500.0)
@NLconstraint(m, e11, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5]+i[6]*i[6]+i[7]*i[7]+i[8]*i[8]+i[9]*i[9]+i[10]*i[10] == 3200.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.