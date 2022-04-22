using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[3, 4, 5, 6, 7, 8]
UB = [15, 15, 5, 5, 5, 5]
@variable(m, i[i in i_Idx] <= UB[i], Int)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-i[3]-i[4]+objvar == 0.0)
@constraint(m, e2, 460*i[5]+570*i[7] <= 1900.0)
@constraint(m, e3, 460*i[6]+570*i[8] <= 1900.0)
@constraint(m, e4, -460*i[5]-570*i[7] <= -1700.0)
@constraint(m, e5, -460*i[6]-570*i[8] <= -1700.0)
@constraint(m, e6, i[5]+i[7] <= 5.0)
@constraint(m, e7, i[6]+i[8] <= 5.0)
@constraint(m, e8, b[1]-i[3] <= 0.0)
@constraint(m, e9, b[2]-i[4] <= 0.0)
@constraint(m, e10, -15*b[1]+i[3] <= 0.0)
@constraint(m, e11, -15*b[2]+i[4] <= 0.0)
@NLconstraint(m, e12, -(i[3]*i[5]+i[4]*i[6]) <= -8.0)
@NLconstraint(m, e13, -(i[3]*i[7]+i[4]*i[8]) <= -7.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
