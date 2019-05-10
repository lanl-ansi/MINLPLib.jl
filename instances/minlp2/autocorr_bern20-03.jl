using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 8*b[1]*b[3]-4*b[1]-8*b[3]+8*b[2]*b[4]-4*b[2]-8*b[4]+8*b[3]*b[5]-8*b[5]+8*b[4]*b[6]-8*b[6]+8*b[5]*b[7]-8*b[7]+8*b[6]*b[8]-8*b[8]+8*b[7]*b[9]-8*b[9]+8*b[8]*b[10]-8*b[10]+8*b[9]*b[11]-8*b[11]+8*b[10]*b[12]-8*b[12]+8*b[11]*b[13]-8*b[13]+8*b[12]*b[14]-8*b[14]+8*b[13]*b[15]-8*b[15]+8*b[14]*b[16]-8*b[16]+8*b[15]*b[17]-8*b[17]+8*b[16]*b[18]-8*b[18]+8*b[17]*b[19]-4*b[19]+8*b[18]*b[20]-4*b[20]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
