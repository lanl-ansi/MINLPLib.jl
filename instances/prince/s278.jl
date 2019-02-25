using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.45*x[1] >= 2.45)
@constraint(m, e2, 1.59285714285714*x[2] >= 1.59285714285714)
@constraint(m, e3, 1.21785714285714*x[3] >= 1.21785714285714)
@constraint(m, e4, 0.995634920634921*x[4] >= 0.995634920634921)
@constraint(m, e5, 0.845634920634921*x[5] >= 0.845634920634921)
@constraint(m, e6, 0.736544011544012*x[6] >= 0.736544011544012)
@constraint(m, e7, -2.45*x[1]-1.59285714285714*x[2]-1.21785714285714*x[3]-0.995634920634921*x[4]-0.845634920634921*x[5]-0.736544011544012*x[6]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.