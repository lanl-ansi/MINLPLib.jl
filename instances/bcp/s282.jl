using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1])^2+ ((-1)+x[10])^2+10*(9* ( (x[1])^2-x[2])^2+8* ( (x[2])^2-x[3])^2+7* ( (x[3])^2-x[4])^2+6* ( (x[4])^2-x[5])^2+5* ( (x[5])^2-x[6])^2+4* ( (x[6])^2-x[7])^2+3* ( (x[7])^2-x[8])^2+2* ( (x[8])^2-x[9])^2+ ( (x[9])^2-x[10])^2))+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.