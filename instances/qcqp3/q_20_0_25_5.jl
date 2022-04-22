using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.9983*x[1]*x[7]+1.3977*x[1]*x[8]-0.3472*x[1]*x[9]-0.0231*x[1]*x[20]-1.3325*x[2]*x[5]+0.7866*x[2]*x[10]-1.7672*x[2]*x[12]-1.2887*x[2]*x[14]-1.1395*x[3]*x[4]-1.4811*x[3]*x[5]+1.3578*x[3]*x[8]-0.8284*x[3]*x[11]-0.4811*x[3]*x[14]+0.1659*x[3]*x[15]-1.5817*x[3]*x[16]-0.08*x[3]*x[20]+0.7898*x[4]*x[5]-1.3042*x[4]*x[11]-0.9941*x[4]*x[16]-1.1779*x[4]*x[18]-1.6524*x[4]*x[20]+0.5146*x[5]*x[9]+0.1446*x[5]*x[14]+0.606*x[5]*x[17]+0.1986*x[6]*x[6]-1.3831*x[6]*x[8]+0.1757*x[6]*x[18]+1.911*x[7]*x[13]+1.8207*x[7]*x[19]-0.0407*x[8]*x[18]+1.778*x[9]*x[12]+0.6506*x[9]*x[13]-1.9534*x[9]*x[15]-1.444*x[9]*x[17]+0.879*x[9]*x[19]-1.1032*x[10]*x[13]+1.1078*x[11]*x[13]+0.0896*x[11]*x[14]-1.7539*x[12]*x[18]-0.8559*x[12]*x[19]+0.4027*x[13]*x[14]-0.3845*x[13]*x[19]-0.3148*x[14]*x[15]+1.8725*x[14]*x[17]+0.8669*x[14]*x[19]-1.0884*x[15]*x[16]-1.9835*x[15]*x[17]+1.0295*x[15]*x[18]+0.1515*x[16]*x[17]-1.4368*x[16]*x[18]+1.0129*x[19]*x[19]-1.0629*x[19]*x[20]-0.0985*x[1]+0.3703*x[2]+0.6679*x[3]+0.8643*x[4]+0.533*x[5]+0.1871*x[6]-0.1905*x[7]+0.9994*x[8]-0.7306*x[9]-0.2797*x[10]-0.7742*x[11]+0.2634*x[12]-0.6882*x[13]-0.1916*x[14]-0.6292*x[15]+0.3706*x[16]+0.2252*x[17]-0.5111*x[18]-0.7106*x[19]+0.436*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
