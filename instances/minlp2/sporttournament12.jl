using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[16]-2*b[1]-4*b[16]+2*b[1]*b[48]+2*b[1]*b[49]-2*b[1]*b[54]+2*b[2]*b[4]-2*b[2]-2*b[4]+2*b[2]*b[45]-4*b[45]+2*b[3]*b[8]-2*b[3]-4*b[8]+2*b[3]*b[38]-2*b[38]-2*b[3]*b[50]+2*b[3]*b[60]+2*b[4]*b[5]-2*b[5]+2*b[4]*b[10]-4*b[10]-2*b[4]*b[61]+2*b[5]*b[11]-4*b[11]+2*b[6]*b[7]-2*b[6]-2*b[7]+2*b[6]*b[13]-2*b[13]+2*b[7]*b[8]+2*b[7]*b[22]-2*b[22]-2*b[7]*b[63]+2*b[8]*b[9]-4*b[9]+2*b[8]*b[52]+2*b[9]*b[25]+2*b[25]+2*b[9]*b[36]-2*b[36]+2*b[9]*b[50]+2*b[10]*b[20]-4*b[20]+2*b[10]*b[30]-2*b[30]+2*b[10]*b[62]+2*b[11]*b[12]-2*b[12]+2*b[11]*b[19]-4*b[19]+2*b[11]*b[61]+2*b[12]*b[20]+2*b[13]*b[36]+2*b[13]*b[55]-2*b[13]*b[58]+2*b[14]*b[36]+2*b[14]-2*b[14]*b[55]-2*b[14]*b[60]-2*b[14]*b[64]+2*b[15]*b[16]+2*b[15]-2*b[15]*b[23]-2*b[23]-2*b[15]*b[56]-2*b[15]*b[65]+2*b[16]*b[17]-2*b[17]+2*b[16]*b[38]+2*b[17]*b[18]-4*b[18]+2*b[17]*b[27]-2*b[27]-2*b[17]*b[62]+2*b[18]*b[19]+2*b[18]*b[41]-2*b[41]+2*b[18]*b[61]+2*b[19]*b[32]-4*b[32]+2*b[19]*b[42]-2*b[42]+2*b[20]*b[21]-2*b[21]+2*b[20]*b[31]-2*b[31]+2*b[21]*b[32]+2*b[22]*b[23]+2*b[22]*b[24]-2*b[24]-2*b[22]*b[57]+2*b[23]*b[26]-2*b[26]+2*b[23]*b[58]+2*b[24]*b[26]+2*b[24]*b[38]-2*b[24]*b[66]-2*b[25]*b[27]-2*b[25]*b[37]-2*b[37]-2*b[25]*b[59]+2*b[26]*b[27]-2*b[26]*b[54]+2*b[27]*b[29]-4*b[29]-2*b[28]*b[30]-2*b[28]+2*b[28]*b[49]+2*b[28]*b[56]+2*b[28]*b[59]+2*b[29]*b[30]+2*b[29]*b[40]-2*b[40]+2*b[29]*b[62]+2*b[30]*b[31]+2*b[31]*b[44]-2*b[44]-2*b[31]*b[49]+2*b[32]*b[33]-2*b[33]+2*b[32]*b[43]-2*b[43]+2*b[33]*b[44]-2*b[34]*b[52]+2*b[34]-2*b[34]*b[57]-2*b[35]*b[53]+2*b[35]-2*b[35]*b[58]+2*b[35]*b[64]-2*b[35]*b[66]-2*b[36]*b[65]+2*b[37]*b[39]-4*b[39]+2*b[37]*b[58]+2*b[37]*b[60]-2*b[38]*b[40]+2*b[39]*b[40]+2*b[39]*b[54]+2*b[39]*b[65]+2*b[40]*b[41]+2*b[41]*b[42]-2*b[41]*b[59]+2*b[42]*b[43]-2*b[42]*b[51]+2*b[43]*b[45]-2*b[43]*b[48]+2*b[44]*b[46]-2*b[46]-2*b[44]*b[47]+2*b[45]*b[46]+2*b[45]*b[47]+2*b[47]*b[48]-2*b[47]*b[49]-2*b[48]*b[51]-2*b[50]*b[56]+2*b[50]*b[59]+2*b[51]*b[54]+2*b[51]*b[56]+2*b[52]*b[53]-2*b[52]*b[60]+2*b[57]*b[63]+2*b[57]*b[66]-2*b[61]*b[62]+2*b[65]*b[66]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 