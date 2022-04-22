using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[1]*b[2]*b[4]*b[5]+128*b[2]*b[3]*b[4]*b[5]+64*b[2]*b[3]*b[5]*b[6]+128*b[3]*b[4]*b[5]*b[6]+64*b[3]*b[4]*b[6]*b[7]+128*b[4]*b[5]*b[6]*b[7]+64*b[4]*b[5]*b[7]*b[8]+128*b[5]*b[6]*b[7]*b[8]+64*b[5]*b[6]*b[8]*b[9]+128*b[6]*b[7]*b[8]*b[9]+64*b[6]*b[7]*b[9]*b[10]+128*b[7]*b[8]*b[9]*b[10]+64*b[7]*b[8]*b[10]*b[11]+128*b[8]*b[9]*b[10]*b[11]+64*b[8]*b[9]*b[11]*b[12]+128*b[9]*b[10]*b[11]*b[12]+64*b[9]*b[10]*b[12]*b[13]+128*b[10]*b[11]*b[12]*b[13]+64*b[10]*b[11]*b[13]*b[14]+128*b[11]*b[12]*b[13]*b[14]+64*b[11]*b[12]*b[14]*b[15]+128*b[12]*b[13]*b[14]*b[15]+64*b[12]*b[13]*b[15]*b[16]+128*b[13]*b[14]*b[15]*b[16]+64*b[13]*b[14]*b[16]*b[17]+128*b[14]*b[15]*b[16]*b[17]+64*b[14]*b[15]*b[17]*b[18]+128*b[15]*b[16]*b[17]*b[18]+64*b[15]*b[16]*b[18]*b[19]+128*b[16]*b[17]*b[18]*b[19]+64*b[16]*b[17]*b[19]*b[20]+64*b[17]*b[18]*b[19]*b[20]-32*b[1]*b[2]*b[3]-64*b[1]*b[2]*b[4]-32*b[1]*b[2]*b[5]-32*b[1]*b[3]*b[4]-32*b[1]*b[4]*b[5]-96*b[2]*b[3]*b[4]-96*b[2]*b[3]*b[5]-32*b[2]*b[3]*b[6]-96*b[2]*b[4]*b[5]-32*b[2]*b[5]*b[6]-128*b[3]*b[4]*b[5]-96*b[3]*b[4]*b[6]-32*b[3]*b[4]*b[7]-96*b[3]*b[5]*b[6]-32*b[3]*b[6]*b[7]-128*b[4]*b[5]*b[6]-96*b[4]*b[5]*b[7]-32*b[4]*b[5]*b[8]-96*b[4]*b[6]*b[7]-32*b[4]*b[7]*b[8]-128*b[5]*b[6]*b[7]-96*b[5]*b[6]*b[8]-32*b[5]*b[6]*b[9]-96*b[5]*b[7]*b[8]-32*b[5]*b[8]*b[9]-128*b[6]*b[7]*b[8]-96*b[6]*b[7]*b[9]-32*b[6]*b[7]*b[10]-96*b[6]*b[8]*b[9]-32*b[6]*b[9]*b[10]-128*b[7]*b[8]*b[9]-96*b[7]*b[8]*b[10]-32*b[7]*b[8]*b[11]-96*b[7]*b[9]*b[10]-32*b[7]*b[10]*b[11]-128*b[8]*b[9]*b[10]-96*b[8]*b[9]*b[11]-32*b[8]*b[9]*b[12]-96*b[8]*b[10]*b[11]-32*b[8]*b[11]*b[12]-128*b[9]*b[10]*b[11]-96*b[9]*b[10]*b[12]-32*b[9]*b[10]*b[13]-96*b[9]*b[11]*b[12]-32*b[9]*b[12]*b[13]-128*b[10]*b[11]*b[12]-96*b[10]*b[11]*b[13]-32*b[10]*b[11]*b[14]-96*b[10]*b[12]*b[13]-32*b[10]*b[13]*b[14]-128*b[11]*b[12]*b[13]-96*b[11]*b[12]*b[14]-32*b[11]*b[12]*b[15]-96*b[11]*b[13]*b[14]-32*b[11]*b[14]*b[15]-128*b[12]*b[13]*b[14]-96*b[12]*b[13]*b[15]-32*b[12]*b[13]*b[16]-96*b[12]*b[14]*b[15]-32*b[12]*b[15]*b[16]-128*b[13]*b[14]*b[15]-96*b[13]*b[14]*b[16]-32*b[13]*b[14]*b[17]-96*b[13]*b[15]*b[16]-32*b[13]*b[16]*b[17]-128*b[14]*b[15]*b[16]-96*b[14]*b[15]*b[17]-32*b[14]*b[15]*b[18]-96*b[14]*b[16]*b[17]-32*b[14]*b[17]*b[18]-128*b[15]*b[16]*b[17]-96*b[15]*b[16]*b[18]-32*b[15]*b[16]*b[19]-96*b[15]*b[17]*b[18]-32*b[15]*b[18]*b[19]-128*b[16]*b[17]*b[18]-96*b[16]*b[17]*b[19]-32*b[16]*b[17]*b[20]-96*b[16]*b[18]*b[19]-32*b[16]*b[19]*b[20]-96*b[17]*b[18]*b[19]-32*b[17]*b[18]*b[20]-64*b[17]*b[19]*b[20]-32*b[18]*b[19]*b[20]+32*b[1]*b[2]+24*b[1]*b[3]+32*b[1]*b[4]+24*b[1]*b[5]+64*b[2]*b[3]+80*b[2]*b[4]+64*b[2]*b[5]+24*b[2]*b[6]+96*b[3]*b[4]+104*b[3]*b[5]+64*b[3]*b[6]+24*b[3]*b[7]+128*b[4]*b[5]+104*b[4]*b[6]+64*b[4]*b[7]+24*b[4]*b[8]+128*b[5]*b[6]+104*b[5]*b[7]+64*b[5]*b[8]+24*b[5]*b[9]+128*b[6]*b[7]+104*b[6]*b[8]+64*b[6]*b[9]+24*b[6]*b[10]+128*b[7]*b[8]+104*b[7]*b[9]+64*b[7]*b[10]+24*b[7]*b[11]+128*b[8]*b[9]+104*b[8]*b[10]+64*b[8]*b[11]+24*b[8]*b[12]+128*b[9]*b[10]+104*b[9]*b[11]+64*b[9]*b[12]+24*b[9]*b[13]+128*b[10]*b[11]+104*b[10]*b[12]+64*b[10]*b[13]+24*b[10]*b[14]+128*b[11]*b[12]+104*b[11]*b[13]+64*b[11]*b[14]+24*b[11]*b[15]+128*b[12]*b[13]+104*b[12]*b[14]+64*b[12]*b[15]+24*b[12]*b[16]+128*b[13]*b[14]+104*b[13]*b[15]+64*b[13]*b[16]+24*b[13]*b[17]+128*b[14]*b[15]+104*b[14]*b[16]+64*b[14]*b[17]+24*b[14]*b[18]+128*b[15]*b[16]+104*b[15]*b[17]+64*b[15]*b[18]+24*b[15]*b[19]+128*b[16]*b[17]+104*b[16]*b[18]+64*b[16]*b[19]+24*b[16]*b[20]+96*b[17]*b[18]+80*b[17]*b[19]+32*b[17]*b[20]+64*b[18]*b[19]+24*b[18]*b[20]+32*b[19]*b[20]-24*b[1]-52*b[2]-76*b[3]-104*b[4]-128*b[5]-128*b[6]-128*b[7]-128*b[8]-128*b[9]-128*b[10]-128*b[11]-128*b[12]-128*b[13]-128*b[14]-128*b[15]-128*b[16]-104*b[17]-76*b[18]-52*b[19]-24*b[20]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
