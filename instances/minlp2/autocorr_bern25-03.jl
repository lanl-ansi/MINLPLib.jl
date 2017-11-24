using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, b[b_Idx])
setcategory(b[22], :Bin)
setcategory(b[18], :Bin)
setcategory(b[12], :Bin)
setcategory(b[2], :Bin)
setcategory(b[14], :Bin)
setcategory(b[8], :Bin)
setcategory(b[15], :Bin)
setcategory(b[20], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[25], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[3], :Bin)
setcategory(b[24], :Bin)
setcategory(b[23], :Bin)
setcategory(b[5], :Bin)
setcategory(b[16], :Bin)
setcategory(b[10], :Bin)
setcategory(b[17], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[21], :Bin)
setcategory(b[13], :Bin)
setcategory(b[1], :Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 8*b[1]*b[3]-4*b[1]-8*b[3]+8*b[2]*b[4]-4*b[2]-8*b[4]+8*b[3]*b[5]-8*b[5]+8*b[4]*b[6]-8*b[6]+8*b[5]*b[7]-8*b[7]+8*b[6]*b[8]-8*b[8]+8*b[7]*b[9]-8*b[9]+8*b[8]*b[10]-8*b[10]+8*b[9]*b[11]-8*b[11]+8*b[10]*b[12]-8*b[12]+8*b[11]*b[13]-8*b[13]+8*b[12]*b[14]-8*b[14]+8*b[13]*b[15]-8*b[15]+8*b[14]*b[16]-8*b[16]+8*b[15]*b[17]-8*b[17]+8*b[16]*b[18]-8*b[18]+8*b[17]*b[19]-8*b[19]+8*b[18]*b[20]-8*b[20]+8*b[19]*b[21]-8*b[21]+8*b[20]*b[22]-8*b[22]+8*b[21]*b[23]-8*b[23]+8*b[22]*b[24]-4*b[24]+8*b[23]*b[25]-4*b[25]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
