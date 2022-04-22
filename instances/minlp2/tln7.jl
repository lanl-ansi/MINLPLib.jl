using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, b[b_Idx],  Bin)
i_Idx = Any[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]
@variable(m, i[i_Idx], Int)

set_upper_bound(i[8], 15.0)
set_upper_bound(i[9], 15.0)
set_upper_bound(i[10], 15.0)
set_upper_bound(i[11], 15.0)
set_upper_bound(i[12], 15.0)
set_upper_bound(i[13], 15.0)
set_upper_bound(i[14], 15.0)
set_upper_bound(i[15], 6.0)
set_upper_bound(i[16], 6.0)
set_upper_bound(i[17], 6.0)
set_upper_bound(i[18], 6.0)
set_upper_bound(i[19], 6.0)
set_upper_bound(i[20], 6.0)
set_upper_bound(i[21], 6.0)
set_upper_bound(i[22], 6.0)
set_upper_bound(i[23], 6.0)
set_upper_bound(i[24], 6.0)
set_upper_bound(i[25], 6.0)
set_upper_bound(i[26], 6.0)
set_upper_bound(i[27], 6.0)
set_upper_bound(i[28], 6.0)
set_upper_bound(i[29], 6.0)
set_upper_bound(i[30], 6.0)
set_upper_bound(i[31], 6.0)
set_upper_bound(i[32], 6.0)
set_upper_bound(i[33], 6.0)
set_upper_bound(i[34], 6.0)
set_upper_bound(i[35], 6.0)
set_upper_bound(i[36], 6.0)
set_upper_bound(i[37], 6.0)
set_upper_bound(i[38], 6.0)
set_upper_bound(i[39], 6.0)
set_upper_bound(i[40], 6.0)
set_upper_bound(i[41], 6.0)
set_upper_bound(i[42], 6.0)
set_upper_bound(i[43], 6.0)
set_upper_bound(i[44], 6.0)
set_upper_bound(i[45], 6.0)
set_upper_bound(i[46], 6.0)
set_upper_bound(i[47], 6.0)
set_upper_bound(i[48], 6.0)
set_upper_bound(i[49], 6.0)
set_upper_bound(i[50], 6.0)
set_upper_bound(i[51], 6.0)
set_upper_bound(i[52], 6.0)
set_upper_bound(i[53], 6.0)
set_upper_bound(i[54], 6.0)
set_upper_bound(i[55], 6.0)
set_upper_bound(i[56], 6.0)
set_upper_bound(i[57], 6.0)
set_upper_bound(i[58], 6.0)
set_upper_bound(i[59], 6.0)
set_upper_bound(i[60], 6.0)
set_upper_bound(i[61], 6.0)
set_upper_bound(i[62], 6.0)
set_upper_bound(i[63], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-0.5*b[5]-0.6*b[6]-0.7*b[7]-i[8]-i[9]-i[10]-i[11]-i[12]-i[13]-i[14]+objvar == 0.0)
@constraint(m, e2, 550*i[15]+630*i[22]+685*i[29]+720*i[36]+760*i[43]+810*i[50]+850*i[57] <= 3400.0)
@constraint(m, e3, 550*i[16]+630*i[23]+685*i[30]+720*i[37]+760*i[44]+810*i[51]+850*i[58] <= 3400.0)
@constraint(m, e4, 550*i[17]+630*i[24]+685*i[31]+720*i[38]+760*i[45]+810*i[52]+850*i[59] <= 3400.0)
@constraint(m, e5, 550*i[18]+630*i[25]+685*i[32]+720*i[39]+760*i[46]+810*i[53]+850*i[60] <= 3400.0)
@constraint(m, e6, 550*i[19]+630*i[26]+685*i[33]+720*i[40]+760*i[47]+810*i[54]+850*i[61] <= 3400.0)
@constraint(m, e7, 550*i[20]+630*i[27]+685*i[34]+720*i[41]+760*i[48]+810*i[55]+850*i[62] <= 3400.0)
@constraint(m, e8, 550*i[21]+630*i[28]+685*i[35]+720*i[42]+760*i[49]+810*i[56]+850*i[63] <= 3400.0)
@constraint(m, e9, -550*i[15]-630*i[22]-685*i[29]-720*i[36]-760*i[43]-810*i[50]-850*i[57] <= -3200.0)
@constraint(m, e10, -550*i[16]-630*i[23]-685*i[30]-720*i[37]-760*i[44]-810*i[51]-850*i[58] <= -3200.0)
@constraint(m, e11, -550*i[17]-630*i[24]-685*i[31]-720*i[38]-760*i[45]-810*i[52]-850*i[59] <= -3200.0)
@constraint(m, e12, -550*i[18]-630*i[25]-685*i[32]-720*i[39]-760*i[46]-810*i[53]-850*i[60] <= -3200.0)
@constraint(m, e13, -550*i[19]-630*i[26]-685*i[33]-720*i[40]-760*i[47]-810*i[54]-850*i[61] <= -3200.0)
@constraint(m, e14, -550*i[20]-630*i[27]-685*i[34]-720*i[41]-760*i[48]-810*i[55]-850*i[62] <= -3200.0)
@constraint(m, e15, -550*i[21]-630*i[28]-685*i[35]-720*i[42]-760*i[49]-810*i[56]-850*i[63] <= -3200.0)
@constraint(m, e16, i[15]+i[22]+i[29]+i[36]+i[43]+i[50]+i[57] <= 6.0)
@constraint(m, e17, i[16]+i[23]+i[30]+i[37]+i[44]+i[51]+i[58] <= 6.0)
@constraint(m, e18, i[17]+i[24]+i[31]+i[38]+i[45]+i[52]+i[59] <= 6.0)
@constraint(m, e19, i[18]+i[25]+i[32]+i[39]+i[46]+i[53]+i[60] <= 6.0)
@constraint(m, e20, i[19]+i[26]+i[33]+i[40]+i[47]+i[54]+i[61] <= 6.0)
@constraint(m, e21, i[20]+i[27]+i[34]+i[41]+i[48]+i[55]+i[62] <= 6.0)
@constraint(m, e22, i[21]+i[28]+i[35]+i[42]+i[49]+i[56]+i[63] <= 6.0)
@constraint(m, e23, b[1]-i[8] <= 0.0)
@constraint(m, e24, b[2]-i[9] <= 0.0)
@constraint(m, e25, b[3]-i[10] <= 0.0)
@constraint(m, e26, b[4]-i[11] <= 0.0)
@constraint(m, e27, b[5]-i[12] <= 0.0)
@constraint(m, e28, b[6]-i[13] <= 0.0)
@constraint(m, e29, b[7]-i[14] <= 0.0)
@constraint(m, e30, -15*b[1]+i[8] <= 0.0)
@constraint(m, e31, -15*b[2]+i[9] <= 0.0)
@constraint(m, e32, -15*b[3]+i[10] <= 0.0)
@constraint(m, e33, -15*b[4]+i[11] <= 0.0)
@constraint(m, e34, -15*b[5]+i[12] <= 0.0)
@constraint(m, e35, -15*b[6]+i[13] <= 0.0)
@constraint(m, e36, -15*b[7]+i[14] <= 0.0)
@NLconstraint(m, e37, -(i[8]*i[15]+i[9]*i[16]+i[10]*i[17]+i[11]*i[18]+i[12]*i[19]+i[13]*i[20]+i[14]*i[21]) <= -8.0)
@NLconstraint(m, e38, -(i[8]*i[22]+i[9]*i[23]+i[10]*i[24]+i[11]*i[25]+i[12]*i[26]+i[13]*i[27]+i[14]*i[28]) <= -11.0)
@NLconstraint(m, e39, -(i[8]*i[29]+i[9]*i[30]+i[10]*i[31]+i[11]*i[32]+i[12]*i[33]+i[13]*i[34]+i[14]*i[35]) <= -15.0)
@NLconstraint(m, e40, -(i[8]*i[36]+i[9]*i[37]+i[10]*i[38]+i[11]*i[39]+i[12]*i[40]+i[13]*i[41]+i[14]*i[42]) <= -5.0)
@NLconstraint(m, e41, -(i[8]*i[43]+i[9]*i[44]+i[10]*i[45]+i[11]*i[46]+i[12]*i[47]+i[13]*i[48]+i[14]*i[49]) <= -8.0)
@NLconstraint(m, e42, -(i[8]*i[50]+i[9]*i[51]+i[10]*i[52]+i[11]*i[53]+i[12]*i[54]+i[13]*i[55]+i[14]*i[56]) <= -12.0)
@NLconstraint(m, e43, -(i[8]*i[57]+i[9]*i[58]+i[10]*i[59]+i[11]*i[60]+i[12]*i[61]+i[13]*i[62]+i[14]*i[63]) <= -6.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
