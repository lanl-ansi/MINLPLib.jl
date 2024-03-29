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
@NLconstraint(m, e1, -(0.3328*x[1]*x[3]+1.0756*x[1]*x[6]+0.3701*x[1]*x[7]+0.9367*x[1]*x[13]-0.5283*x[1]*x[15]-0.3215*x[1]*x[20]+0.6694*x[2]*x[4]-0.9897*x[2]*x[6]+0.8503*x[2]*x[7]-0.7812*x[2]*x[8]-0.8106*x[2]*x[9]-1.9254*x[2]*x[10]-0.6353*x[2]*x[13]+1.5268*x[2]*x[14]-0.8012*x[2]*x[15]-1.6967*x[2]*x[17]+1.2279*x[3]*x[4]-0.1731*x[3]*x[6]+0.9478*x[3]*x[7]-0.8947*x[3]*x[9]-1.4854*x[3]*x[12]+1.7806*x[3]*x[13]+1.3957*x[3]*x[14]+0.9626*x[3]*x[15]-0.7728*x[3]*x[16]+0.9036*x[3]*x[17]-1.2246*x[4]*x[4]+0.6604*x[4]*x[5]+0.4603*x[4]*x[8]+1.5693*x[4]*x[9]-0.5358*x[4]*x[12]+0.4123*x[4]*x[15]-1.1173*x[4]*x[17]-1.3197*x[4]*x[18]+1.7676*x[4]*x[19]-0.1178*x[5]*x[6]+1.2849*x[5]*x[9]-1.6202*x[5]*x[10]-1.0262*x[5]*x[12]-0.6266*x[5]*x[20]+0.4719*x[6]*x[6]+1.5451*x[6]*x[9]+1.64*x[6]*x[11]+0.2159*x[6]*x[12]+0.5028*x[6]*x[13]-0.6707*x[6]*x[17]+0.2765*x[6]*x[18]-1.6695*x[7]*x[7]-0.0868*x[7]*x[10]+1.8155*x[7]*x[11]-0.8291*x[7]*x[12]-0.4132*x[7]*x[13]-1.9481*x[7]*x[14]+0.6688*x[7]*x[15]-1.726*x[7]*x[17]+0.2969*x[7]*x[19]-0.3586*x[8]*x[8]+0.5044*x[8]*x[9]+1.6561*x[8]*x[10]+1.5223*x[8]*x[13]-0.9697*x[8]*x[14]-1.4488*x[8]*x[15]+0.0109*x[8]*x[17]+1.7754*x[8]*x[19]+0.3588*x[9]*x[11]+1.9434*x[9]*x[12]+0.827*x[9]*x[14]-0.0268*x[9]*x[15]-1.5968*x[9]*x[18]-0.8282*x[9]*x[19]+1.6639*x[9]*x[20]-1.2026*x[10]*x[12]+1.3851*x[10]*x[15]-1.8265*x[10]*x[16]-0.3594*x[10]*x[17]-0.1428*x[10]*x[19]-0.7874*x[11]*x[12]-0.4054*x[11]*x[14]-1.2234*x[11]*x[16]-0.7753*x[11]*x[19]+0.9541*x[11]*x[20]+0.4016*x[12]*x[14]+1.1505*x[12]*x[15]-1.8053*x[12]*x[16]+0.4025*x[12]*x[17]-0.8073*x[12]*x[18]+1.6265*x[12]*x[19]-0.6199*x[12]*x[20]+1.3752*x[13]*x[14]-1.7762*x[13]*x[17]-0.9964*x[13]*x[18]+0.7342*x[13]*x[20]-0.4451*x[14]*x[15]-1.6489*x[14]*x[16]-0.7428*x[14]*x[19]-0.9223*x[14]*x[20]+0.3405*x[15]*x[17]+0.7933*x[15]*x[18]+0.3543*x[15]*x[19]+0.9529*x[16]*x[17]+0.0465*x[16]*x[20]-1.2576*x[17]*x[18]-1.3742*x[17]*x[19]-0.9768*x[18]*x[18]+0.6197*x[19]*x[20]-0.589*x[1]+0.6958*x[2]-0.0455*x[3]-0.267*x[4]+0.8622*x[5]-0.5897*x[6]+0.1178*x[7]+0.8772*x[8]-0.7239*x[9]+0.8153*x[10]+0.9875*x[11]+0.0661*x[12]+0.0747*x[13]-0.9466*x[14]+0.9993*x[15]+0.4921*x[16]+0.1736*x[17]-0.5295*x[18]-0.5874*x[19]-0.9963*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
