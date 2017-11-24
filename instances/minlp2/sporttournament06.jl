using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
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
setcategory(b[10], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[13], :Bin)
setcategory(b[1], :Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[3]-2*b[1]+2*b[3]+2*b[1]*b[7]-2*b[7]+2*b[2]*b[5]-2*b[2]-2*b[5]+2*b[2]*b[10]-4*b[10]-2*b[3]*b[4]+2*b[4]-2*b[3]*b[12]-2*b[3]*b[14]-2*b[4]*b[5]+2*b[4]*b[9]-2*b[9]-2*b[4]*b[15]+2*b[5]*b[6]-2*b[6]+2*b[5]*b[8]-2*b[8]+2*b[6]*b[9]-2*b[7]*b[8]+2*b[7]*b[12]+2*b[7]*b[13]+2*b[8]*b[10]+2*b[8]*b[15]+2*b[9]*b[11]-2*b[11]-2*b[9]*b[12]+2*b[10]*b[11]+2*b[10]*b[12]-2*b[13]*b[15]+2*b[14]*b[15]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
