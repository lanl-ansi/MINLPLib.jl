using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-6)
set_lower_bound(x[2], 1.0e-6)
set_lower_bound(x[3], 1.0e-6)
set_lower_bound(x[4], 1.0e-6)
set_lower_bound(x[5], 1.0e-6)
set_lower_bound(x[6], 1.0e-6)
set_lower_bound(x[7], 1.0e-6)
set_lower_bound(x[8], 1.0e-6)
set_lower_bound(x[9], 1.0e-6)
set_lower_bound(x[10], 1.0e-6)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+2*x[3]+x[6]+x[10] == 2.0)
@constraint(m, e2, x[4]+2*x[5]+x[6]+x[7] == 1.0)
@constraint(m, e3, x[3]+x[7]+x[8]+2*x[9]+x[10] == 1.5)
@NLconstraint(m, e4, -((-6.089+log(x[1]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[1]+(-17.164+log(x[2]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[2]+(-34.054+log(x[3]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[3]+(-5.914+log(x[4]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[4]+(-24.721+log(x[5]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[5]+(-14.986+log(x[6]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[6]+(-24.1+log(x[7]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[7]+(-10.708+log(x[8]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[8]+(-26.662+log(x[9]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[9]+(-22.179+log(x[10]/(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10])))*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
