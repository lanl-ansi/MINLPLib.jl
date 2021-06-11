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
@NLconstraint(m, e1, -(-0.6117*x[1]*x[2]-1.8129*x[1]*x[3]-0.3188*x[1]*x[12]+0.6034*x[1]*x[14]-1.595*x[2]*x[6]-0.0785*x[2]*x[12]-1.5977*x[3]*x[5]+1.0218*x[3]*x[7]+1.007*x[3]*x[15]-0.7261*x[3]*x[19]-1.2991*x[4]*x[8]+0.3496*x[4]*x[12]+0.4493*x[4]*x[14]-1.4674*x[5]*x[8]+1.8742*x[5]*x[9]+1.4198*x[5]*x[14]+1.7508*x[6]*x[14]-0.9245*x[7]*x[10]+1.4228*x[7]*x[13]+0.6879*x[7]*x[15]-1.5367*x[7]*x[16]-0.6437*x[7]*x[18]-1.9394*x[8]*x[11]+0.4742*x[8]*x[14]-0.0775*x[8]*x[15]-0.2181*x[8]*x[18]+1.9917*x[9]*x[12]+1.7145*x[9]*x[15]+0.7704*x[9]*x[20]+1.0388*x[10]*x[10]-0.5008*x[10]*x[15]+1.6354*x[10]*x[16]+0.216*x[11]*x[14]+0.6619*x[11]*x[17]-0.7848*x[11]*x[18]-0.1379*x[11]*x[19]-1.4819*x[11]*x[20]-0.1725*x[12]*x[14]+1.8637*x[12]*x[20]+1.5893*x[13]*x[15]+1.0944*x[13]*x[16]+1.7884*x[13]*x[17]+1.961*x[13]*x[19]+0.0147*x[14]*x[14]+0.3278*x[14]*x[17]+1.2552*x[14]*x[19]+1.815*x[15]*x[20]+0.8361*x[16]*x[17]+0.9861*x[17]*x[17]-1.5423*x[18]*x[19]+0.6317*x[18]*x[20]-0.9728*x[20]*x[20]+0.7333*x[1]+0.2647*x[2]-0.5144*x[3]-0.6792*x[4]-0.9575*x[5]-0.6195*x[6]-0.3753*x[7]+0.6193*x[8]+0.1474*x[9]+0.6525*x[10]-0.4271*x[11]-0.679*x[12]-0.3382*x[13]-0.4683*x[14]+0.0896*x[15]+0.107*x[16]-0.9568*x[17]-0.7025*x[18]-0.7902*x[19]+0.2284*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
