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
@NLconstraint(m, e1, -(0.3767*x[1]*x[1]-0.3868*x[1]*x[6]+0.4704*x[1]*x[8]+0.5043*x[1]*x[9]-0.2086*x[1]*x[10]-0.8244*x[1]*x[11]-0.9021*x[1]*x[14]+0.5587*x[1]*x[15]+0.3616*x[1]*x[17]-0.3769*x[1]*x[18]+0.0455*x[1]*x[19]+0.0116*x[1]*x[20]-0.1229*x[2]*x[2]+0.1753*x[2]*x[5]-0.4053*x[2]*x[7]-0.4102*x[2]*x[8]-0.8524*x[2]*x[9]+0.9499*x[2]*x[11]+0.4563*x[2]*x[12]+0.5162*x[2]*x[13]-0.3816*x[2]*x[15]-0.507*x[2]*x[16]-0.4862*x[2]*x[18]+0.2361*x[2]*x[19]+0.8756*x[2]*x[20]+0.9844*x[3]*x[3]-0.5504*x[3]*x[4]+0.8946*x[3]*x[6]+0.6956*x[3]*x[7]+0.4003*x[3]*x[8]+0.1089*x[3]*x[9]-0.1168*x[3]*x[10]-0.5016*x[3]*x[12]+0.7953*x[3]*x[14]-0.7085*x[3]*x[16]-0.1308*x[3]*x[17]-0.0852*x[3]*x[18]-0.3812*x[4]*x[4]-0.0382*x[4]*x[9]+0.3795*x[4]*x[10]+0.6216*x[4]*x[11]-0.2157*x[4]*x[15]-0.4137*x[4]*x[16]+0.152*x[4]*x[17]+0.4507*x[4]*x[18]-0.7145*x[4]*x[20]-0.3329*x[5]*x[5]-0.6792*x[5]*x[7]+0.0692*x[5]*x[8]+0.4467*x[5]*x[10]-0.5436*x[5]*x[11]-0.602*x[5]*x[13]+0.9452*x[5]*x[14]+0.9871*x[5]*x[15]-0.8361*x[5]*x[16]-0.4982*x[5]*x[18]-0.5683*x[5]*x[20]-0.6084*x[6]*x[6]+0.7005*x[6]*x[8]-0.9106*x[6]*x[9]+0.7278*x[6]*x[10]-0.8657*x[6]*x[12]-0.1454*x[6]*x[15]-0.7254*x[6]*x[16]-0.7618*x[6]*x[18]-0.3881*x[6]*x[20]+0.2265*x[7]*x[7]+0.3273*x[7]*x[9]+0.7918*x[7]*x[11]+0.5074*x[7]*x[14]+0.2597*x[7]*x[17]-0.558*x[7]*x[20]-0.0323*x[8]*x[13]+0.23*x[8]*x[14]+0.9753*x[8]*x[19]+0.1184*x[8]*x[20]-0.2582*x[9]*x[10]-0.3248*x[9]*x[11]+0.4909*x[9]*x[12]+0.1395*x[9]*x[13]-0.0877*x[9]*x[16]+0.2964*x[10]*x[12]+0.3672*x[10]*x[14]-0.6592*x[10]*x[17]-0.4539*x[10]*x[18]-0.1185*x[10]*x[19]-0.0846*x[10]*x[20]-0.2095*x[11]*x[11]+0.3767*x[11]*x[13]-0.4022*x[11]*x[16]-0.5895*x[11]*x[18]-0.6154*x[11]*x[20]-0.162*x[12]*x[12]+0.3813*x[12]*x[13]-0.7189*x[12]*x[15]-0.7125*x[12]*x[18]+0.3249*x[12]*x[19]+0.1514*x[13]*x[20]+0.5499*x[14]*x[16]+0.5506*x[14]*x[17]+0.5307*x[15]*x[16]+0.753*x[15]*x[18]-0.8016*x[16]*x[16]-0.331*x[16]*x[18]+0.2902*x[16]*x[19]-0.7368*x[16]*x[20]+0.6151*x[17]*x[18]+0.0837*x[18]*x[18]-0.4685*x[18]*x[19]-0.0823*x[19]*x[19]+0.0219*x[1]+0.0097*x[2]+0.9235*x[3]+0.1005*x[4]-0.6207*x[5]-0.5978*x[6]-0.5025*x[7]+0.9402*x[8]+0.5528*x[9]-0.4546*x[10]-0.0061*x[11]-0.2025*x[12]+0.2266*x[13]-0.8295*x[14]+0.474*x[15]+0.7257*x[16]-0.3179*x[17]+0.3889*x[18]+0.2838*x[19]-0.829*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 