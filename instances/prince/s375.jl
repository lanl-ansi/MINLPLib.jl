using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 0.5*x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e2, x[1]+0.5*x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e3, x[1]+x[2]+0.5*x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e4, x[1]+x[2]+x[3]+0.5*x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e5, x[1]+x[2]+x[3]+x[4]+0.5*x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e6, x[1]+x[2]+x[3]+x[4]+x[5]+0.5*x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e7, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+0.5*x[7]+x[8]+x[9]+x[10] == 1.0)
@constraint(m, e8, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+0.5*x[8]+x[9]+x[10] == 1.0)
@NLconstraint(m, e9,  (x[1])^2+0.75* (x[2])^2+0.6* (x[3])^2+0.5* (x[4])^2+0.428571428571429* (x[5])^2+0.375* (x[6])^2+0.333333333333333* (x[7])^2+0.3* (x[8])^2+0.272727272727273* (x[9])^2+0.25* (x[10])^2 == 4.0)
@NLconstraint(m, e10,  (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.