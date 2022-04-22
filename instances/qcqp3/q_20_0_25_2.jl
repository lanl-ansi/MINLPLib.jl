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
@NLconstraint(m, e1, -(1.667*x[1]*x[7]+1.1174*x[2]*x[3]-1.4507*x[2]*x[9]-1.762*x[2]*x[10]+0.8026*x[2]*x[15]+1.4557*x[2]*x[17]+0.4529*x[3]*x[7]-0.9965*x[3]*x[20]-0.237*x[4]*x[6]+1.3703*x[4]*x[7]-0.7735*x[4]*x[14]+0.8382*x[4]*x[17]-1.4581*x[4]*x[19]+1.8905*x[5]*x[5]+1.963*x[5]*x[12]-0.0647*x[5]*x[13]-0.9675*x[5]*x[17]+1.3911*x[5]*x[19]-0.9725*x[6]*x[7]-1.0578*x[6]*x[10]-1.4171*x[6]*x[18]-1.7049*x[7]*x[7]+0.8599*x[7]*x[8]+0.0911*x[7]*x[14]+0.319*x[7]*x[19]-1.5141*x[8]*x[12]+1.3157*x[8]*x[15]-1.5602*x[8]*x[16]+0.1747*x[8]*x[18]+0.8828*x[8]*x[20]-0.7625*x[9]*x[10]+0.3506*x[9]*x[11]-1.4378*x[9]*x[14]+1.7714*x[9]*x[18]+0.7344*x[10]*x[13]+1.2432*x[10]*x[14]+0.5907*x[11]*x[15]+0.4863*x[11]*x[17]-0.2337*x[12]*x[14]-1.4289*x[12]*x[15]+1.1012*x[12]*x[16]-0.4074*x[13]*x[13]-1.0302*x[13]*x[14]-0.9647*x[13]*x[17]+1.9687*x[13]*x[19]+0.2368*x[13]*x[20]+1.7309*x[14]*x[15]+1.0147*x[14]*x[18]-0.4171*x[15]*x[15]+1.0324*x[15]*x[20]+1.8287*x[17]*x[18]+0.5333*x[19]*x[19]+0.5307*x[1]+0.753*x[2]-0.8016*x[3]-0.331*x[4]+0.2902*x[5]-0.7368*x[6]+0.6151*x[7]+0.0837*x[8]-0.4685*x[9]-0.0823*x[10]+0.0219*x[11]+0.0097*x[12]+0.9235*x[13]+0.1005*x[14]-0.6207*x[15]-0.5978*x[16]-0.5025*x[17]+0.9402*x[18]+0.5528*x[19]-0.4546*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
