using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, i[i_Idx], Int)
for k=6:10
   setupperbound(i[k], 15)
end
for k=11:35
   setupperbound(i[k], 5)
end


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-0.5*b[5]-i[6]-i[7]-i[8]-i[9]-i[10]+objvar == 0.0)
@constraint(m, e2, 330*i[11]+360*i[16]+370*i[21]+415*i[26]+435*i[31] <= 2000.0)
@constraint(m, e3, 330*i[12]+360*i[17]+370*i[22]+415*i[27]+435*i[32] <= 2000.0)
@constraint(m, e4, 330*i[13]+360*i[18]+370*i[23]+415*i[28]+435*i[33] <= 2000.0)
@constraint(m, e5, 330*i[14]+360*i[19]+370*i[24]+415*i[29]+435*i[34] <= 2000.0)
@constraint(m, e6, 330*i[15]+360*i[20]+370*i[25]+415*i[30]+435*i[35] <= 2000.0)
@constraint(m, e7, -330*i[11]-360*i[16]-370*i[21]-415*i[26]-435*i[31] <= -1800.0)
@constraint(m, e8, -330*i[12]-360*i[17]-370*i[22]-415*i[27]-435*i[32] <= -1800.0)
@constraint(m, e9, -330*i[13]-360*i[18]-370*i[23]-415*i[28]-435*i[33] <= -1800.0)
@constraint(m, e10, -330*i[14]-360*i[19]-370*i[24]-415*i[29]-435*i[34] <= -1800.0)
@constraint(m, e11, -330*i[15]-360*i[20]-370*i[25]-415*i[30]-435*i[35] <= -1800.0)
@constraint(m, e12, i[11]+i[16]+i[21]+i[26]+i[31] <= 5.0)
@constraint(m, e13, i[12]+i[17]+i[22]+i[27]+i[32] <= 5.0)
@constraint(m, e14, i[13]+i[18]+i[23]+i[28]+i[33] <= 5.0)
@constraint(m, e15, i[14]+i[19]+i[24]+i[29]+i[34] <= 5.0)
@constraint(m, e16, i[15]+i[20]+i[25]+i[30]+i[35] <= 5.0)
@constraint(m, e17, b[1]-i[6] <= 0.0)
@constraint(m, e18, b[2]-i[7] <= 0.0)
@constraint(m, e19, b[3]-i[8] <= 0.0)
@constraint(m, e20, b[4]-i[9] <= 0.0)
@constraint(m, e21, b[5]-i[10] <= 0.0)
@constraint(m, e22, -15*b[1]+i[6] <= 0.0)
@constraint(m, e23, -15*b[2]+i[7] <= 0.0)
@constraint(m, e24, -15*b[3]+i[8] <= 0.0)
@constraint(m, e25, -15*b[4]+i[9] <= 0.0)
@constraint(m, e26, -15*b[5]+i[10] <= 0.0)
@NLconstraint(m, e27, -(i[6]*i[11]+i[7]*i[12]+i[8]*i[13]+i[9]*i[14]+i[10]*i[15]) <= -12.0)
@NLconstraint(m, e28, -(i[6]*i[16]+i[7]*i[17]+i[8]*i[18]+i[9]*i[19]+i[10]*i[20]) <= -6.0)
@NLconstraint(m, e29, -(i[6]*i[21]+i[7]*i[22]+i[8]*i[23]+i[9]*i[24]+i[10]*i[25]) <= -15.0)
@NLconstraint(m, e30, -(i[6]*i[26]+i[7]*i[27]+i[8]*i[28]+i[9]*i[29]+i[10]*i[30]) <= -6.0)
@NLconstraint(m, e31, -(i[6]*i[31]+i[7]*i[32]+i[8]*i[33]+i[9]*i[34]+i[10]*i[35]) <= -9.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
