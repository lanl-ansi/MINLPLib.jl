using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, x[x_Idx] >= 1)
i_Idx = Any[5, 6, 7, 8]
@variable(m, 1 <= i[i_Idx] <= 100, Int)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-b[25]-2*b[26]-3*b[27]-4*b[28]-5*b[29]-6*b[30]-7*b[31]-8*b[32]-b[33]-2*b[34]-3*b[35]-4*b[36]-5*b[37]-6*b[38]-7*b[39]-b[40]-2*b[41]-3*b[42]-4*b[43]-b[44]-2*b[45]+objvar == 0.0)
@constraint(m, e2, 330*b[46]+660*b[47]+990*b[48]+1320*b[49]+360*b[62]+720*b[63]+1080*b[64]+1440*b[65]+1800*b[66]+385*b[82]+770*b[83]+1155*b[84]+1540*b[85]+415*b[98]+830*b[99] <= 1900.0)
@constraint(m, e3, 330*b[50]+660*b[51]+990*b[52]+1320*b[53]+360*b[67]+720*b[68]+1080*b[69]+1440*b[70]+1800*b[71]+385*b[86]+770*b[87]+1155*b[88]+1540*b[89]+415*b[100]+830*b[101] <= 1900.0)
@constraint(m, e4, 330*b[54]+660*b[55]+990*b[56]+1320*b[57]+360*b[72]+720*b[73]+1080*b[74]+1440*b[75]+1800*b[76]+385*b[90]+770*b[91]+1155*b[92]+1540*b[93]+415*b[102]+830*b[103] <= 1900.0)
@constraint(m, e5, 330*b[58]+660*b[59]+990*b[60]+1320*b[61]+360*b[77]+720*b[78]+1080*b[79]+1440*b[80]+1800*b[81]+385*b[94]+770*b[95]+1155*b[96]+1540*b[97]+415*b[104]+830*b[105] <= 1900.0)
@constraint(m, e6, -330*b[46]-660*b[47]-990*b[48]-1320*b[49]-360*b[62]-720*b[63]-1080*b[64]-1440*b[65]-1800*b[66]-385*b[82]-770*b[83]-1155*b[84]-1540*b[85]-415*b[98]-830*b[99] <= -1700.0)
@constraint(m, e7, -330*b[50]-660*b[51]-990*b[52]-1320*b[53]-360*b[67]-720*b[68]-1080*b[69]-1440*b[70]-1800*b[71]-385*b[86]-770*b[87]-1155*b[88]-1540*b[89]-415*b[100]-830*b[101] <= -1700.0)
@constraint(m, e8, -330*b[54]-660*b[55]-990*b[56]-1320*b[57]-360*b[72]-720*b[73]-1080*b[74]-1440*b[75]-1800*b[76]-385*b[90]-770*b[91]-1155*b[92]-1540*b[93]-415*b[102]-830*b[103] <= -1700.0)
@constraint(m, e9, -330*b[58]-660*b[59]-990*b[60]-1320*b[61]-360*b[77]-720*b[78]-1080*b[79]-1440*b[80]-1800*b[81]-385*b[94]-770*b[95]-1155*b[96]-1540*b[97]-415*b[104]-830*b[105] <= -1700.0)
@constraint(m, e10, b[46]+2*b[47]+3*b[48]+4*b[49]+b[62]+2*b[63]+3*b[64]+4*b[65]+5*b[66]+b[82]+2*b[83]+3*b[84]+4*b[85]+b[98]+2*b[99] <= 5.0)
@constraint(m, e11, b[50]+2*b[51]+3*b[52]+4*b[53]+b[67]+2*b[68]+3*b[69]+4*b[70]+5*b[71]+b[86]+2*b[87]+3*b[88]+4*b[89]+b[100]+2*b[101] <= 5.0)
@constraint(m, e12, b[54]+2*b[55]+3*b[56]+4*b[57]+b[72]+2*b[73]+3*b[74]+4*b[75]+5*b[76]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[102]+2*b[103] <= 5.0)
@constraint(m, e13, b[58]+2*b[59]+3*b[60]+4*b[61]+b[77]+2*b[78]+3*b[79]+4*b[80]+5*b[81]+b[94]+2*b[95]+3*b[96]+4*b[97]+b[104]+2*b[105] <= 5.0)
@constraint(m, e14, b[1]-b[25]-2*b[26]-3*b[27]-4*b[28]-5*b[29]-6*b[30]-7*b[31]-8*b[32] <= 0.0)
@constraint(m, e15, b[2]-b[33]-2*b[34]-3*b[35]-4*b[36]-5*b[37]-6*b[38]-7*b[39] <= 0.0)
@constraint(m, e16, b[3]-b[40]-2*b[41]-3*b[42]-4*b[43] <= 0.0)
@constraint(m, e17, b[4]-b[44]-2*b[45] <= 0.0)
@constraint(m, e18, -8*b[1]+b[25]+2*b[26]+3*b[27]+4*b[28]+5*b[29]+6*b[30]+7*b[31]+8*b[32] <= 0.0)
@constraint(m, e19, -7*b[2]+b[33]+2*b[34]+3*b[35]+4*b[36]+5*b[37]+6*b[38]+7*b[39] <= 0.0)
@constraint(m, e20, -4*b[3]+b[40]+2*b[41]+3*b[42]+4*b[43] <= 0.0)
@constraint(m, e21, -2*b[4]+b[44]+2*b[45] <= 0.0)
@constraint(m, e22, i[5]-3*b[25]-8*b[26]-15*b[27]-24*b[28]-35*b[29]-48*b[30]-63*b[31]-80*b[32] == 1.0)
@constraint(m, e23, i[6]-3*b[33]-8*b[34]-15*b[35]-24*b[36]-35*b[37]-48*b[38]-63*b[39] == 1.0)
@constraint(m, e24, i[7]-3*b[40]-8*b[41]-15*b[42]-24*b[43] == 1.0)
@constraint(m, e25, i[8]-3*b[44]-8*b[45] == 1.0)
@constraint(m, e26, b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32] <= 1.0)
@constraint(m, e27, b[33]+b[34]+b[35]+b[36]+b[37]+b[38]+b[39] <= 1.0)
@constraint(m, e28, b[40]+b[41]+b[42]+b[43] <= 1.0)
@constraint(m, e29, b[44]+b[45] <= 1.0)
@constraint(m, e30, x[9]-3*b[46]-8*b[47]-15*b[48]-24*b[49] == 1.0)
@constraint(m, e31, x[10]-3*b[50]-8*b[51]-15*b[52]-24*b[53] == 1.0)
@constraint(m, e32, x[11]-3*b[54]-8*b[55]-15*b[56]-24*b[57] == 1.0)
@constraint(m, e33, x[12]-3*b[58]-8*b[59]-15*b[60]-24*b[61] == 1.0)
@constraint(m, e34, x[13]-3*b[62]-8*b[63]-15*b[64]-24*b[65]-35*b[66] == 1.0)
@constraint(m, e35, x[14]-3*b[67]-8*b[68]-15*b[69]-24*b[70]-35*b[71] == 1.0)
@constraint(m, e36, x[15]-3*b[72]-8*b[73]-15*b[74]-24*b[75]-35*b[76] == 1.0)
@constraint(m, e37, x[16]-3*b[77]-8*b[78]-15*b[79]-24*b[80]-35*b[81] == 1.0)
@constraint(m, e38, x[17]-3*b[82]-8*b[83]-15*b[84]-24*b[85] == 1.0)
@constraint(m, e39, x[18]-3*b[86]-8*b[87]-15*b[88]-24*b[89] == 1.0)
@constraint(m, e40, x[19]-3*b[90]-8*b[91]-15*b[92]-24*b[93] == 1.0)
@constraint(m, e41, x[20]-3*b[94]-8*b[95]-15*b[96]-24*b[97] == 1.0)
@constraint(m, e42, x[21]-3*b[98]-8*b[99] == 1.0)
@constraint(m, e43, x[22]-3*b[100]-8*b[101] == 1.0)
@constraint(m, e44, x[23]-3*b[102]-8*b[103] == 1.0)
@constraint(m, e45, x[24]-3*b[104]-8*b[105] == 1.0)
@constraint(m, e46, b[46]+b[47]+b[48]+b[49] <= 1.0)
@constraint(m, e47, b[50]+b[51]+b[52]+b[53] <= 1.0)
@constraint(m, e48, b[54]+b[55]+b[56]+b[57] <= 1.0)
@constraint(m, e49, b[58]+b[59]+b[60]+b[61] <= 1.0)
@constraint(m, e50, b[62]+b[63]+b[64]+b[65]+b[66] <= 1.0)
@constraint(m, e51, b[67]+b[68]+b[69]+b[70]+b[71] <= 1.0)
@constraint(m, e52, b[72]+b[73]+b[74]+b[75]+b[76] <= 1.0)
@constraint(m, e53, b[77]+b[78]+b[79]+b[80]+b[81] <= 1.0)
@constraint(m, e54, b[82]+b[83]+b[84]+b[85] <= 1.0)
@constraint(m, e55, b[86]+b[87]+b[88]+b[89] <= 1.0)
@constraint(m, e56, b[90]+b[91]+b[92]+b[93] <= 1.0)
@constraint(m, e57, b[94]+b[95]+b[96]+b[97] <= 1.0)
@constraint(m, e58, b[98]+b[99] <= 1.0)
@constraint(m, e59, b[100]+b[101] <= 1.0)
@constraint(m, e60, b[102]+b[103] <= 1.0)
@constraint(m, e61, b[104]+b[105] <= 1.0)
@NLconstraint(m, e62, -(sqrt(i[5]*x[9])+sqrt(i[6]*x[10])+sqrt(i[7]*x[11])+sqrt(i[8]*x[12]))+b[25]+2*b[26]+3*b[27]+4*b[28]+5*b[29]+6*b[30]+7*b[31]+8*b[32]+b[33]+2*b[34]+3*b[35]+4*b[36]+5*b[37]+6*b[38]+7*b[39]+b[40]+2*b[41]+3*b[42]+4*b[43]+b[44]+2*b[45]+b[46]+2*b[47]+3*b[48]+4*b[49]+b[50]+2*b[51]+3*b[52]+4*b[53]+b[54]+2*b[55]+3*b[56]+4*b[57]+b[58]+2*b[59]+3*b[60]+4*b[61] <= -12.0)
@NLconstraint(m, e63, -(sqrt(i[5]*x[13])+sqrt(i[6]*x[14])+sqrt(i[7]*x[15])+sqrt(i[8]*x[16]))+b[25]+2*b[26]+3*b[27]+4*b[28]+5*b[29]+6*b[30]+7*b[31]+8*b[32]+b[33]+2*b[34]+3*b[35]+4*b[36]+5*b[37]+6*b[38]+7*b[39]+b[40]+2*b[41]+3*b[42]+4*b[43]+b[44]+2*b[45]+b[62]+2*b[63]+3*b[64]+4*b[65]+5*b[66]+b[67]+2*b[68]+3*b[69]+4*b[70]+5*b[71]+b[72]+2*b[73]+3*b[74]+4*b[75]+5*b[76]+b[77]+2*b[78]+3*b[79]+4*b[80]+5*b[81] <= -11.0)
@NLconstraint(m, e64, -(sqrt(i[5]*x[17])+sqrt(i[6]*x[18])+sqrt(i[7]*x[19])+sqrt(i[8]*x[20]))+b[25]+2*b[26]+3*b[27]+4*b[28]+5*b[29]+6*b[30]+7*b[31]+8*b[32]+b[33]+2*b[34]+3*b[35]+4*b[36]+5*b[37]+6*b[38]+7*b[39]+b[40]+2*b[41]+3*b[42]+4*b[43]+b[44]+2*b[45]+b[82]+2*b[83]+3*b[84]+4*b[85]+b[86]+2*b[87]+3*b[88]+4*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+3*b[96]+4*b[97] <= -16.0)
@NLconstraint(m, e65, -(sqrt(i[5]*x[21])+sqrt(i[6]*x[22])+sqrt(i[7]*x[23])+sqrt(i[8]*x[24]))+b[25]+2*b[26]+3*b[27]+4*b[28]+5*b[29]+6*b[30]+7*b[31]+8*b[32]+b[33]+2*b[34]+3*b[35]+4*b[36]+5*b[37]+6*b[38]+7*b[39]+b[40]+2*b[41]+3*b[42]+4*b[43]+b[44]+2*b[45]+b[98]+2*b[99]+b[100]+2*b[101]+b[102]+2*b[103]+b[104]+2*b[105] <= -15.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
