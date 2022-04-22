using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[2]*b[3]*b[4]*b[5]+64*b[3]*b[4]*b[5]*b[6]+64*b[4]*b[5]*b[6]*b[7]+64*b[5]*b[6]*b[7]*b[8]+64*b[6]*b[7]*b[8]*b[9]+64*b[7]*b[8]*b[9]*b[10]+64*b[8]*b[9]*b[10]*b[11]+64*b[9]*b[10]*b[11]*b[12]+64*b[10]*b[11]*b[12]*b[13]+64*b[11]*b[12]*b[13]*b[14]+64*b[12]*b[13]*b[14]*b[15]+64*b[13]*b[14]*b[15]*b[16]+64*b[14]*b[15]*b[16]*b[17]+64*b[15]*b[16]*b[17]*b[18]+64*b[16]*b[17]*b[18]*b[19]+64*b[17]*b[18]*b[19]*b[20]+64*b[18]*b[19]*b[20]*b[21]+64*b[19]*b[20]*b[21]*b[22]+64*b[20]*b[21]*b[22]*b[23]+64*b[21]*b[22]*b[23]*b[24]+64*b[22]*b[23]*b[24]*b[25]+64*b[23]*b[24]*b[25]*b[26]+64*b[24]*b[25]*b[26]*b[27]+64*b[25]*b[26]*b[27]*b[28]+64*b[26]*b[27]*b[28]*b[29]+64*b[27]*b[28]*b[29]*b[30]-32*b[1]*b[2]*b[3]-32*b[1]*b[2]*b[4]-32*b[1]*b[3]*b[4]-64*b[2]*b[3]*b[4]-32*b[2]*b[3]*b[5]-32*b[2]*b[4]*b[5]-64*b[3]*b[4]*b[5]-32*b[3]*b[4]*b[6]-32*b[3]*b[5]*b[6]-64*b[4]*b[5]*b[6]-32*b[4]*b[5]*b[7]-32*b[4]*b[6]*b[7]-64*b[5]*b[6]*b[7]-32*b[5]*b[6]*b[8]-32*b[5]*b[7]*b[8]-64*b[6]*b[7]*b[8]-32*b[6]*b[7]*b[9]-32*b[6]*b[8]*b[9]-64*b[7]*b[8]*b[9]-32*b[7]*b[8]*b[10]-32*b[7]*b[9]*b[10]-64*b[8]*b[9]*b[10]-32*b[8]*b[9]*b[11]-32*b[8]*b[10]*b[11]-64*b[9]*b[10]*b[11]-32*b[9]*b[10]*b[12]-32*b[9]*b[11]*b[12]-64*b[10]*b[11]*b[12]-32*b[10]*b[11]*b[13]-32*b[10]*b[12]*b[13]-64*b[11]*b[12]*b[13]-32*b[11]*b[12]*b[14]-32*b[11]*b[13]*b[14]-64*b[12]*b[13]*b[14]-32*b[12]*b[13]*b[15]-32*b[12]*b[14]*b[15]-64*b[13]*b[14]*b[15]-32*b[13]*b[14]*b[16]-32*b[13]*b[15]*b[16]-64*b[14]*b[15]*b[16]-32*b[14]*b[15]*b[17]-32*b[14]*b[16]*b[17]-64*b[15]*b[16]*b[17]-32*b[15]*b[16]*b[18]-32*b[15]*b[17]*b[18]-64*b[16]*b[17]*b[18]-32*b[16]*b[17]*b[19]-32*b[16]*b[18]*b[19]-64*b[17]*b[18]*b[19]-32*b[17]*b[18]*b[20]-32*b[17]*b[19]*b[20]-64*b[18]*b[19]*b[20]-32*b[18]*b[19]*b[21]-32*b[18]*b[20]*b[21]-64*b[19]*b[20]*b[21]-32*b[19]*b[20]*b[22]-32*b[19]*b[21]*b[22]-64*b[20]*b[21]*b[22]-32*b[20]*b[21]*b[23]-32*b[20]*b[22]*b[23]-64*b[21]*b[22]*b[23]-32*b[21]*b[22]*b[24]-32*b[21]*b[23]*b[24]-64*b[22]*b[23]*b[24]-32*b[22]*b[23]*b[25]-32*b[22]*b[24]*b[25]-64*b[23]*b[24]*b[25]-32*b[23]*b[24]*b[26]-32*b[23]*b[25]*b[26]-64*b[24]*b[25]*b[26]-32*b[24]*b[25]*b[27]-32*b[24]*b[26]*b[27]-64*b[25]*b[26]*b[27]-32*b[25]*b[26]*b[28]-32*b[25]*b[27]*b[28]-64*b[26]*b[27]*b[28]-32*b[26]*b[27]*b[29]-32*b[26]*b[28]*b[29]-64*b[27]*b[28]*b[29]-32*b[27]*b[28]*b[30]-32*b[27]*b[29]*b[30]-32*b[28]*b[29]*b[30]+16*b[1]*b[2]+24*b[1]*b[3]+16*b[1]*b[4]+32*b[2]*b[3]+48*b[2]*b[4]+16*b[2]*b[5]+48*b[3]*b[4]+48*b[3]*b[5]+16*b[3]*b[6]+48*b[4]*b[5]+48*b[4]*b[6]+16*b[4]*b[7]+48*b[5]*b[6]+48*b[5]*b[7]+16*b[5]*b[8]+48*b[6]*b[7]+48*b[6]*b[8]+16*b[6]*b[9]+48*b[7]*b[8]+48*b[7]*b[9]+16*b[7]*b[10]+48*b[8]*b[9]+48*b[8]*b[10]+16*b[8]*b[11]+48*b[9]*b[10]+48*b[9]*b[11]+16*b[9]*b[12]+48*b[10]*b[11]+48*b[10]*b[12]+16*b[10]*b[13]+48*b[11]*b[12]+48*b[11]*b[13]+16*b[11]*b[14]+48*b[12]*b[13]+48*b[12]*b[14]+16*b[12]*b[15]+48*b[13]*b[14]+48*b[13]*b[15]+16*b[13]*b[16]+48*b[14]*b[15]+48*b[14]*b[16]+16*b[14]*b[17]+48*b[15]*b[16]+48*b[15]*b[17]+16*b[15]*b[18]+48*b[16]*b[17]+48*b[16]*b[18]+16*b[16]*b[19]+48*b[17]*b[18]+48*b[17]*b[19]+16*b[17]*b[20]+48*b[18]*b[19]+48*b[18]*b[20]+16*b[18]*b[21]+48*b[19]*b[20]+48*b[19]*b[21]+16*b[19]*b[22]+48*b[20]*b[21]+48*b[20]*b[22]+16*b[20]*b[23]+48*b[21]*b[22]+48*b[21]*b[23]+16*b[21]*b[24]+48*b[22]*b[23]+48*b[22]*b[24]+16*b[22]*b[25]+48*b[23]*b[24]+48*b[23]*b[25]+16*b[23]*b[26]+48*b[24]*b[25]+48*b[24]*b[26]+16*b[24]*b[27]+48*b[25]*b[26]+48*b[25]*b[27]+16*b[25]*b[28]+48*b[26]*b[27]+48*b[26]*b[28]+16*b[26]*b[29]+48*b[27]*b[28]+48*b[27]*b[29]+16*b[27]*b[30]+32*b[28]*b[29]+24*b[28]*b[30]+16*b[29]*b[30]-12*b[1]-24*b[2]-36*b[3]-48*b[4]-48*b[5]-48*b[6]-48*b[7]-48*b[8]-48*b[9]-48*b[10]-48*b[11]-48*b[12]-48*b[13]-48*b[14]-48*b[15]-48*b[16]-48*b[17]-48*b[18]-48*b[19]-48*b[20]-48*b[21]-48*b[22]-48*b[23]-48*b[24]-48*b[25]-48*b[26]-48*b[27]-36*b[28]-24*b[29]-12*b[30]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
