using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 50.0)
set_upper_bound(x[1], 200.0)
set_lower_bound(x[2], 37.5)
set_upper_bound(x[2], 150.0)
set_lower_bound(x[3], 45.0)
set_upper_bound(x[3], 180.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.00533* (x[1])^2+11.669*x[1]+0.00889* (x[2])^2+10.333*x[2]+0.00741* (x[3])^2+10.833*x[3])+objvar == 653.1)
@NLconstraint(m, e2, -(0.01*(0.0676*x[1]*x[1]+0.00953*x[1]*x[2]-0.00507*x[1]*x[3]+0.00953*x[2]*x[1]+0.0521*x[2]*x[2]+0.00901*x[2]*x[3]-0.00507*x[3]*x[1]+0.00901*x[3]*x[2]+0.0294*x[3]*x[3])-0.000766*x[1]-3.42e-5*x[2]+0.000189*x[3])+x[4] == 0.040357)
@constraint(m, e3, x[1]+x[2]+x[3]-x[4] >= 210.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.