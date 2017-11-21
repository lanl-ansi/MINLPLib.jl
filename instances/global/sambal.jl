using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]-x[4]+x[13] == 0.0)
@constraint(m, e2, -x[5]+x[14] == 0.0)
@constraint(m, e3, -x[6]+x[15] == 0.0)
@constraint(m, e4, -x[7]-x[8]-x[9]+x[16] == 0.0)
@constraint(m, e5, -x[10]-x[11]-x[12]+x[17] == 0.0)
@constraint(m, e6, -x[5]-x[6]+x[13] == 0.0)
@constraint(m, e7, -x[1]-x[7]-x[10]+x[14] == 0.0)
@constraint(m, e8, -x[2]-x[8]-x[11]+x[15] == 0.0)
@constraint(m, e9, -x[3]-x[12]+x[16] == 0.0)
@constraint(m, e10, -x[4]-x[9]+x[17] == 0.0)
@NLconstraint(m, e11, -(0.0666666666666667* (15-x[1])^2+0.333333333333333* (3-x[2])^2+0.00769230769230769* (130-x[3])^2+0.0125* (80-x[4])^2+0.0666666666666667* (15-x[7])^2+0.00769230769230769* (130-x[8])^2+0.05* (20-x[9])^2+0.04* (25-x[10])^2+0.025* (40-x[11])^2+0.0181818181818182* (55-x[12])^2+0.00454545454545455* (220-x[13])^2+0.00526315789473684* (190-x[16])^2+0.00952380952380952* (105-x[17])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
