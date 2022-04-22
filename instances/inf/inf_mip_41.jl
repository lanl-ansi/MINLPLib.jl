using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[30, 31]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, i[i_Idx] <= 1, Int)


# ----- Constraints ----- #
@constraint(m, e1, -i[1]-i[2]-i[3]-i[4]-i[5]-i[6]-i[7]-i[8]-i[9]-i[10]-i[11]-i[12]-i[13]-i[14]-i[15]-i[16]-i[17]-i[18]-i[19]-i[20]-i[21]-i[22]-i[23]-i[24]-i[25]-i[26]-i[27]-i[28]-i[29]+x[31] == 0.0)
@constraint(m, e2, x[30] == 48.8354)
@constraint(m, e3, x[30] == 23.7815)
@constraint(m, e4, x[30] == 24.8384)
@constraint(m, e5, x[30] == 43.3569)


# ----- Objective ----- #
@objective(m, Min, x[31])

 
