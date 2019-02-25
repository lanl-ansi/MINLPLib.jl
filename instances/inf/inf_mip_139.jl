using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, x[x_Idx])
b_Idx = Any[30, 31, 32, 33]
@variable(m, b[b_Idx])
set_binary(b[32])
set_binary(b[33])
set_binary(b[30])
set_binary(b[31])


# ----- Constraints ----- #
@constraint(m, e1, -576*x[1]-584.4*x[2]-369.4*x[3]-548.6*x[4]-629.5*x[5]-587.6*x[6]-567.6*x[7]-579*x[8]-478*x[9]-590.9*x[10]-638.6*x[11]-631.4*x[12]-404.1*x[13]-469.1*x[14]-436.5*x[15]-393.5*x[16]-532.8*x[17]-618.3*x[18]-595.2*x[19]-471.3*x[20]-401.6*x[21]-544.5*x[22]-619.6*x[23]-556.1*x[24]-492.1*x[25]-546.3*x[26]-503.3*x[27]-516*x[28]+x[29]-10000*b[30]-35000*b[31]-23000*b[32]-45000*b[33] == 0.0)
@constraint(m, e2, x[1]+x[8]+x[15]+x[22] >= 320.0)
@constraint(m, e3, x[2]+x[9]+x[16]+x[23] >= 550.0)
@constraint(m, e4, x[3]+x[10]+x[17]+x[24] >= 829.0)
@constraint(m, e5, x[4]+x[11]+x[18]+x[25] >= 253.0)
@constraint(m, e6, x[5]+x[12]+x[19]+x[26] >= 938.0)
@constraint(m, e7, x[6]+x[13]+x[20]+x[27] >= 284.0)
@constraint(m, e8, x[7]+x[14]+x[21]+x[28] >= 192.0)
@constraint(m, e9, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]-45*b[30] <= 0.0)
@constraint(m, e10, x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]-234*b[31] <= 0.0)
@constraint(m, e11, x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]-12*b[32] <= 0.0)
@constraint(m, e12, x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]-98*b[33] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[29])

m = m 		 # model get returned when including this script.