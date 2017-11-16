using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, b[b_Idx])
setcategory(b[12], :Bin)
setcategory(b[2], :Bin)
setcategory(b[14], :Bin)
setcategory(b[8], :Bin)
setcategory(b[15], :Bin)
setcategory(b[11], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[3], :Bin)
setcategory(b[5], :Bin)
setcategory(b[16], :Bin)
setcategory(b[10], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[13], :Bin)
setcategory(b[1], :Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(10*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+7*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]+b[3]*b[4]*b[6]*b[7]*b[8]+12*b[3]*b[4]*b[8]*b[11]+8*b[6]*b[7]*b[8]*b[12]+3*b[6]*b[7]*b[9]*b[14]*b[16]+b[9]*b[10]*b[14]*b[16]+5*b[5]*b[10]*b[14]*b[15]*b[16]+3*b[1]*b[2]*b[11]*b[12])+objvar == 0.0)
@NLconstraint(m, e2, 3*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]-12*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-8*b[3]*b[4]*b[6]*b[7]*b[8]+b[3]*b[4]*b[8]*b[11]-7*b[1]*b[2]*b[11]*b[12]+2*b[13]*b[14]*b[15]*b[16] <= -2.0)
@NLconstraint(m, e3, b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-10*b[3]*b[4]*b[6]*b[7]*b[8]-5*b[6]*b[7]*b[8]*b[12]+b[6]*b[7]*b[9]*b[14]*b[16]+7*b[9]*b[10]*b[14]*b[16]+b[5]*b[10]*b[14]*b[15]*b[16] <= -1.0)
@NLconstraint(m, e4, 5*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]-3*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-b[3]*b[4]*b[6]*b[7]*b[8]-2*b[5]*b[10]*b[14]*b[15]*b[16]+b[13]*b[14]*b[15]*b[16] <= -1.0)
@NLconstraint(m, e5, 3*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-5*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+b[3]*b[4]*b[6]*b[7]*b[8]+2*b[5]*b[10]*b[14]*b[15]*b[16]-b[13]*b[14]*b[15]*b[16] <= 1.0)
@NLconstraint(m, e6, (-4*b[3]*b[4]*b[6]*b[7]*b[8])-2*b[3]*b[4]*b[8]*b[11]-5*b[6]*b[7]*b[9]*b[14]*b[16]+b[9]*b[10]*b[14]*b[16]-9*b[5]*b[10]*b[14]*b[15]*b[16]-2*b[1]*b[2]*b[11]*b[12] <= -3.0)
@NLconstraint(m, e7, 9*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-12*b[3]*b[4]*b[8]*b[11]-7*b[6]*b[7]*b[8]*b[12]+6*b[6]*b[7]*b[9]*b[14]*b[16]+2*b[5]*b[10]*b[14]*b[15]*b[16]-15*b[1]*b[2]*b[11]*b[12]+3*b[13]*b[14]*b[15]*b[16] <= -7.0)
@NLconstraint(m, e8, 5*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-8*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+2*b[3]*b[4]*b[6]*b[7]*b[8]-7*b[3]*b[4]*b[8]*b[11]-b[6]*b[7]*b[8]*b[12]-5*b[9]*b[10]*b[14]*b[16]-10*b[1]*b[2]*b[11]*b[12] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
