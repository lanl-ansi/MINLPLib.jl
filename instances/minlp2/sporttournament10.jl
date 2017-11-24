using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
@variable(m, b[b_Idx])
setcategory(b[35], :Bin)
setcategory(b[38], :Bin)
setcategory(b[44], :Bin)
setcategory(b[15], :Bin)
setcategory(b[42], :Bin)
setcategory(b[45], :Bin)
setcategory(b[41], :Bin)
setcategory(b[23], :Bin)
setcategory(b[21], :Bin)
setcategory(b[28], :Bin)
setcategory(b[36], :Bin)
setcategory(b[22], :Bin)
setcategory(b[8], :Bin)
setcategory(b[33], :Bin)
setcategory(b[30], :Bin)
setcategory(b[29], :Bin)
setcategory(b[40], :Bin)
setcategory(b[32], :Bin)
setcategory(b[34], :Bin)
setcategory(b[5], :Bin)
setcategory(b[16], :Bin)
setcategory(b[13], :Bin)
setcategory(b[12], :Bin)
setcategory(b[2], :Bin)
setcategory(b[14], :Bin)
setcategory(b[20], :Bin)
setcategory(b[43], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[25], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[3], :Bin)
setcategory(b[17], :Bin)
setcategory(b[39], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[1], :Bin)
setcategory(b[37], :Bin)
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[31], :Bin)
setcategory(b[24], :Bin)
setcategory(b[10], :Bin)
setcategory(b[26], :Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[14]-2*b[1]-4*b[14]+2*b[1]*b[34]+2*b[1]*b[35]-2*b[1]*b[39]+2*b[2]*b[3]-2*b[2]-2*b[3]+2*b[2]*b[31]-4*b[31]+2*b[3]*b[4]-2*b[4]+2*b[3]*b[8]-4*b[8]-2*b[3]*b[43]+2*b[4]*b[9]-4*b[9]+2*b[5]*b[7]-2*b[5]-4*b[7]+2*b[5]*b[11]-2*b[11]+2*b[6]*b[7]-2*b[6]+2*b[6]*b[11]+2*b[7]*b[13]-2*b[13]+2*b[7]*b[42]+2*b[8]*b[19]-4*b[19]+2*b[8]*b[28]-2*b[28]+2*b[8]*b[44]+2*b[9]*b[10]-2*b[10]+2*b[9]*b[18]-2*b[18]+2*b[9]*b[43]+2*b[10]*b[19]+2*b[11]*b[36]-2*b[11]*b[40]-2*b[12]*b[13]+2*b[12]-2*b[12]*b[38]+2*b[12]*b[40]-2*b[12]*b[45]+2*b[13]*b[14]+2*b[13]*b[25]-2*b[25]+2*b[14]*b[16]-2*b[16]+2*b[14]*b[40]-2*b[15]*b[17]-2*b[15]-2*b[17]+2*b[15]*b[25]+2*b[15]*b[35]+2*b[15]*b[41]+2*b[16]*b[17]+2*b[16]*b[26]-2*b[26]-2*b[16]*b[44]+2*b[17]*b[18]+2*b[17]*b[43]+2*b[18]*b[30]-2*b[30]-2*b[18]*b[35]+2*b[19]*b[20]-2*b[20]+2*b[19]*b[29]-2*b[29]+2*b[20]*b[30]-2*b[21]*b[22]+2*b[21]+2*b[22]-2*b[21]*b[23]-2*b[23]-2*b[22]*b[24]-2*b[24]-2*b[22]*b[36]+2*b[22]*b[38]+2*b[23]*b[24]+2*b[23]*b[42]+2*b[23]*b[45]+2*b[24]*b[26]+2*b[24]*b[39]-2*b[25]*b[27]-2*b[27]+2*b[25]*b[36]+2*b[26]*b[27]-2*b[26]*b[42]+2*b[27]*b[28]+2*b[27]*b[44]+2*b[28]*b[29]-2*b[28]*b[37]+2*b[29]*b[31]-2*b[29]*b[34]+2*b[30]*b[32]-2*b[32]-2*b[30]*b[33]+2*b[31]*b[32]+2*b[31]*b[33]+2*b[33]*b[34]-2*b[33]*b[35]-2*b[34]*b[37]-2*b[36]*b[41]+2*b[37]*b[39]+2*b[37]*b[41]-2*b[39]*b[40]-2*b[41]*b[42]-2*b[43]*b[44]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
