using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_upper_bound(x[1], 92.0)
set_lower_bound(x[2], 90.0)
set_upper_bound(x[2], 110.0)
set_lower_bound(x[3], 20.0)
set_upper_bound(x[3], 25.0)
set_lower_bound(x[5], 78.0)
set_upper_bound(x[5], 102.0)
set_lower_bound(x[6], 33.0)
set_upper_bound(x[6], 45.0)
set_lower_bound(x[7], 27.0)
set_upper_bound(x[7], 45.0)
set_lower_bound(x[8], 27.0)
set_upper_bound(x[8], 45.0)
set_lower_bound(x[9], 27.0)
set_upper_bound(x[9], 45.0)


# ----- Constraints ----- #
@constraint(m, e1, 5*x[4]-x[5]+7*x[7]-x[9] >= 0.0)
@NLconstraint(m, e2, -(0.0056858*x[6]*x[9]+0.0006262*x[5]*x[8]-0.0022053*x[7]*x[9])+x[1]+2*x[4] == 85.334407)
@NLconstraint(m, e3, -(0.0071317*x[6]*x[9]+0.0029955*x[5]*x[6]+0.0021813* (x[7])^2)+x[2] == 80.51249)
@NLconstraint(m, e4, -(0.0047026*x[7]*x[9]+0.0012547*x[5]*x[7]+0.0019085*x[7]*x[8])+x[3]+4*x[4] == 9.300961)
@NLconstraint(m, e5, -(5.3578547* (x[7])^2+0.8356891*x[5]*x[9]+37.293239*x[5])-5000*x[4]+objvar == -40792.141)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.