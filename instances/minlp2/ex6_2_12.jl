using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.5)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.5)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.5)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2]/(8*x[2]+x[4]))*x[2]+log(x[4]/(8*x[2]+x[4]))*x[4]+0.0696225416798359*x[2]+0.752006*x[4]+log(8*x[2]+1.6*x[4])*(8*x[2]+1.6*x[4])+5*log(x[2]/(5.00000397494442*x[2]+0.480353357956269*x[4]))*x[2]+3*log(x[2]/(8.96062592375197*x[2]+1.13841069150863*x[4]))*x[2]+1.6*log(x[4]/(1.69889877049372*x[2]+1.6*x[4]))*x[4]+log(x[3]/(8*x[3]+x[5]))*x[3]+log(x[5]/(8*x[3]+x[5]))*x[5]+0.0696225416798359*x[3]+0.752006*x[5]+log(8*x[3]+1.6*x[5])*(8*x[3]+1.6*x[5])+5*log(x[3]/(5.00000397494442*x[3]+0.480353357956269*x[5]))*x[3]+3*log(x[3]/(8.96062592375197*x[3]+1.13841069150863*x[5]))*x[3]+1.6*log(x[5]/(1.69889877049372*x[3]+1.6*x[5]))*x[5]-8*log(x[2])*x[2]-1.6*log(x[4])*x[4]-8*log(x[3])*x[3]-1.6*log(x[5])*x[5])+objvar == 0.0)
@constraint(m, e2, x[2]+x[3] == 0.5)
@constraint(m, e3, x[4]+x[5] == 0.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.