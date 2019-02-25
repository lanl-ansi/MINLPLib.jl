using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[6, 7, 8]
@variable(m, x[x_Idx])
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
set_lower_bound(x[6], 0.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[1], 200.0)
set_upper_bound(i[2], 200.0)
set_upper_bound(i[3], 200.0)
set_upper_bound(i[4], 200.0)
set_upper_bound(i[5], 200.0)
set_upper_bound(x[6], 92.0)
set_lower_bound(x[7], 90.0)
set_upper_bound(x[7], 110.0)
set_lower_bound(x[8], 20.0)
set_upper_bound(x[8], 25.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.0056858*i[2]*i[5]+0.0006262*i[1]*i[4]-0.0022053*i[3]*i[5])+x[6] == 85.334407)
@NLconstraint(m, e2, -(0.0071317*i[2]*i[5]+0.0029955*i[1]*i[2]+0.0021813* (i[3])^2)+x[7] == 80.51249)
@NLconstraint(m, e3, -(0.0047026*i[3]*i[5]+0.0012547*i[1]*i[3]+0.0019085*i[3]*i[4])+x[8] == 9.300961)
@NLconstraint(m, e4, -9.99999999999999e-5*(5.3578547*i[3]^2+0.8356891*i[1]*i[5]+37.293239*i[1])+objvar == 5.9207859)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.