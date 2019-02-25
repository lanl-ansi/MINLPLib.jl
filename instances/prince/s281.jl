using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.000000001)
set_lower_bound(x[2], 1.000000001)
set_lower_bound(x[3], 1.000000001)
set_lower_bound(x[4], 1.000000001)
set_lower_bound(x[5], 1.000000001)
set_lower_bound(x[6], 1.000000001)
set_lower_bound(x[7], 1.000000001)
set_lower_bound(x[8], 1.000000001)
set_lower_bound(x[9], 1.000000001)
set_lower_bound(x[10], 1.000000001)


# ----- Constraints ----- #
@NLconstraint(m, e1, -exp(0.333333333333333*log( ((-1)+x[1])^2+8* ((-1)+x[2])^2+27* ((-1)+x[3])^2+64* ((-1)+x[4])^2+125* ((-1)+x[5])^2+216* ((-1)+x[6])^2+343* ((-1)+x[7])^2+512* ((-1)+x[8])^2+729* ((-1)+x[9])^2+1000* ((-1)+x[10])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.