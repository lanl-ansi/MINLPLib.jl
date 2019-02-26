using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[15])
set_binary(b[42])
set_binary(b[45])
set_binary(b[41])
set_binary(b[23])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[8])
set_binary(b[33])
set_binary(b[30])
set_binary(b[29])
set_binary(b[40])
set_binary(b[32])
set_binary(b[34])
set_binary(b[5])
set_binary(b[16])
set_binary(b[13])
set_binary(b[12])
set_binary(b[2])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[3])
set_binary(b[17])
set_binary(b[39])
set_binary(b[4])
set_binary(b[6])
set_binary(b[1])
set_binary(b[37])
set_binary(b[27])
set_binary(b[18])
set_binary(b[31])
set_binary(b[24])
set_binary(b[10])
set_binary(b[26])


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[14]-2*b[1]-4*b[14]+2*b[1]*b[34]+2*b[1]*b[35]-2*b[1]*b[39]+2*b[2]*b[3]-2*b[2]-2*b[3]+2*b[2]*b[31]-4*b[31]+2*b[3]*b[4]-2*b[4]+2*b[3]*b[8]-4*b[8]-2*b[3]*b[43]+2*b[4]*b[9]-4*b[9]+2*b[5]*b[7]-2*b[5]-4*b[7]+2*b[5]*b[11]-2*b[11]+2*b[6]*b[7]-2*b[6]+2*b[6]*b[11]+2*b[7]*b[13]-2*b[13]+2*b[7]*b[42]+2*b[8]*b[19]-4*b[19]+2*b[8]*b[28]-2*b[28]+2*b[8]*b[44]+2*b[9]*b[10]-2*b[10]+2*b[9]*b[18]-2*b[18]+2*b[9]*b[43]+2*b[10]*b[19]+2*b[11]*b[36]-2*b[11]*b[40]-2*b[12]*b[13]+2*b[12]-2*b[12]*b[38]+2*b[12]*b[40]-2*b[12]*b[45]+2*b[13]*b[14]+2*b[13]*b[25]-2*b[25]+2*b[14]*b[16]-2*b[16]+2*b[14]*b[40]-2*b[15]*b[17]-2*b[15]-2*b[17]+2*b[15]*b[25]+2*b[15]*b[35]+2*b[15]*b[41]+2*b[16]*b[17]+2*b[16]*b[26]-2*b[26]-2*b[16]*b[44]+2*b[17]*b[18]+2*b[17]*b[43]+2*b[18]*b[30]-2*b[30]-2*b[18]*b[35]+2*b[19]*b[20]-2*b[20]+2*b[19]*b[29]-2*b[29]+2*b[20]*b[30]-2*b[21]*b[22]+2*b[21]+2*b[22]-2*b[21]*b[23]-2*b[23]-2*b[22]*b[24]-2*b[24]-2*b[22]*b[36]+2*b[22]*b[38]+2*b[23]*b[24]+2*b[23]*b[42]+2*b[23]*b[45]+2*b[24]*b[26]+2*b[24]*b[39]-2*b[25]*b[27]-2*b[27]+2*b[25]*b[36]+2*b[26]*b[27]-2*b[26]*b[42]+2*b[27]*b[28]+2*b[27]*b[44]+2*b[28]*b[29]-2*b[28]*b[37]+2*b[29]*b[31]-2*b[29]*b[34]+2*b[30]*b[32]-2*b[32]-2*b[30]*b[33]+2*b[31]*b[32]+2*b[31]*b[33]+2*b[33]*b[34]-2*b[33]*b[35]-2*b[34]*b[37]-2*b[36]*b[41]+2*b[37]*b[39]+2*b[37]*b[41]-2*b[39]*b[40]-2*b[41]*b[42]-2*b[43]*b[44]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script.