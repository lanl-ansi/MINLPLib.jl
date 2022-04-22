using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
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
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.1598*x[1]*x[5]-0.8766*x[1]*x[6]+0.9205*x[1]*x[12]-0.3642*x[1]*x[14]-1.9772*x[1]*x[17]+0.6385*x[1]*x[18]-1.7632*x[1]*x[21]-1.6402*x[1]*x[27]-1.8429*x[1]*x[28]-1.8026*x[1]*x[30]-1.6904*x[2]*x[2]+1.5649*x[2]*x[5]+0.5958*x[2]*x[6]+0.7263*x[2]*x[7]-0.7301*x[2]*x[8]+1.488*x[2]*x[14]+1.7153*x[2]*x[15]-0.0485*x[2]*x[22]+1.2698*x[2]*x[26]-0.3527*x[2]*x[27]-1.5604*x[2]*x[28]+0.9352*x[2]*x[29]+1.4776*x[2]*x[30]+1.2748*x[3]*x[3]+1.2766*x[3]*x[4]+0.1117*x[3]*x[5]-1.0478*x[3]*x[9]-1.7112*x[3]*x[10]+0.4156*x[3]*x[12]+0.1671*x[3]*x[15]-0.5111*x[3]*x[17]+1.7741*x[3]*x[18]+0.5896*x[3]*x[20]-1.9948*x[3]*x[22]+1.1088*x[3]*x[24]-1.1527*x[3]*x[25]+1.5563*x[3]*x[26]+1.2368*x[3]*x[27]+0.6736*x[3]*x[28]-1.4841*x[3]*x[30]+1.158*x[4]*x[5]+0.6472*x[4]*x[6]-0.2211*x[4]*x[7]+0.8244*x[4]*x[9]+0.0824*x[4]*x[13]+1.8108*x[4]*x[16]+1.503*x[4]*x[18]+0.7123*x[4]*x[24]+1.1197*x[4]*x[25]+1.547*x[4]*x[26]+1.2437*x[4]*x[28]-0.5817*x[4]*x[29]+1.1874*x[5]*x[6]-0.2494*x[5]*x[7]+0.7569*x[5]*x[8]+1.7454*x[5]*x[10]+1.6901*x[5]*x[11]-0.8946*x[5]*x[12]-0.2069*x[5]*x[15]-1.3333*x[5]*x[16]-1.1171*x[5]*x[18]+1.3731*x[5]*x[19]+0.777*x[5]*x[20]+0.6038*x[5]*x[21]-0.7575*x[5]*x[22]-1.8511*x[5]*x[25]-1.0364*x[5]*x[26]-1.5966*x[5]*x[27]+1.1649*x[5]*x[28]-0.0388*x[6]*x[6]-1.012*x[6]*x[11]+1.6854*x[6]*x[13]+0.1529*x[6]*x[15]+0.1793*x[6]*x[16]-1.2727*x[6]*x[17]-0.6893*x[6]*x[19]+0.4953*x[6]*x[20]-0.597*x[6]*x[24]-1.3573*x[6]*x[26]+1.4976*x[6]*x[28]-0.9682*x[6]*x[29]-1.0373*x[7]*x[7]-1.6118*x[7]*x[8]+0.5019*x[7]*x[9]+1.0965*x[7]*x[11]+1.2377*x[7]*x[12]+1.3584*x[7]*x[13]+1.1983*x[7]*x[19]-1.4703*x[7]*x[20]+0.044*x[7]*x[23]+1.6681*x[7]*x[27]+1.1811*x[7]*x[28]-0.6122*x[7]*x[29]+1.0329*x[7]*x[30]-0.3044*x[8]*x[8]-0.0252*x[8]*x[9]+1.9473*x[8]*x[10]+0.8271*x[8]*x[11]-1.7543*x[8]*x[13]-1.606*x[8]*x[14]+1.8262*x[8]*x[17]+0.0856*x[8]*x[18]+0.582*x[8]*x[19]-1.4896*x[8]*x[20]+1.6421*x[8]*x[24]-1.4848*x[8]*x[26]+1.1909*x[8]*x[27]+1.2802*x[8]*x[28]-1.4403*x[9]*x[11]-1.2585*x[9]*x[15]+1.9252*x[9]*x[16]+1.7195*x[9]*x[17]+1.5185*x[9]*x[18]-0.4968*x[9]*x[21]-0.791*x[9]*x[22]+0.2241*x[9]*x[25]-0.5569*x[9]*x[28]+1.6272*x[9]*x[30]+0.6078*x[10]*x[12]+1.9758*x[10]*x[14]-0.1943*x[10]*x[16]+0.4317*x[10]*x[17]+1.4816*x[10]*x[18]+1.7118*x[10]*x[20]+1.7277*x[10]*x[23]+1.7015*x[10]*x[25]+1.7333*x[10]*x[26]-0.3557*x[10]*x[27]+0.0662*x[10]*x[28]-0.6414*x[10]*x[29]-0.9189*x[11]*x[14]-0.4231*x[11]*x[15]+1.9685*x[11]*x[16]+0.839*x[11]*x[20]+1.8588*x[11]*x[21]-0.5102*x[11]*x[22]-1.5592*x[11]*x[23]+0.363*x[11]*x[24]-1.9981*x[11]*x[26]-0.8859*x[11]*x[28]+1.8385*x[11]*x[29]-1.8092*x[12]*x[14]+1.9171*x[12]*x[15]-0.5119*x[12]*x[21]+1.0074*x[12]*x[25]-0.6105*x[12]*x[27]+0.1167*x[12]*x[28]+0.5866*x[12]*x[29]-1.6868*x[13]*x[16]+0.4566*x[13]*x[19]+1.7948*x[13]*x[20]+1.9884*x[13]*x[21]+0.3576*x[13]*x[23]+1.6104*x[13]*x[25]-0.0806*x[13]*x[30]+1.9604*x[14]*x[16]+0.7432*x[14]*x[17]+1.3232*x[14]*x[18]-1.0331*x[14]*x[20]+0.3822*x[14]*x[21]+0.7292*x[14]*x[22]+1.4818*x[14]*x[24]+1.9298*x[14]*x[25]+0.8851*x[14]*x[26]-1.5362*x[14]*x[29]+0.3002*x[15]*x[15]+0.1901*x[15]*x[18]+1.7036*x[15]*x[24]+1.3109*x[15]*x[27]+0.9354*x[15]*x[28]-0.0555*x[15]*x[29]+0.6771*x[16]*x[16]-1.8126*x[16]*x[18]+1.522*x[16]*x[19]+0.935*x[16]*x[20]-0.8062*x[16]*x[21]-1.5467*x[16]*x[23]-1.9103*x[16]*x[24]+0.7544*x[16]*x[26]-0.957*x[17]*x[17]+0.434*x[17]*x[20]+1.5033*x[17]*x[21]+1.296*x[17]*x[23]-1.6733*x[17]*x[24]-0.8141*x[17]*x[25]-1.38*x[17]*x[26]+1.8389*x[17]*x[27]-1.337*x[17]*x[29]-0.2847*x[17]*x[30]-0.0429*x[18]*x[19]+1.9295*x[18]*x[21]-1.5641*x[18]*x[24]-0.5811*x[18]*x[26]-0.6612*x[18]*x[28]-0.9488*x[18]*x[29]+0.2748*x[18]*x[30]+0.3257*x[19]*x[22]+1.8856*x[19]*x[25]+1.5409*x[19]*x[26]-0.0285*x[19]*x[29]+1.2981*x[20]*x[21]-1.6126*x[20]*x[23]+0.0853*x[20]*x[24]+0.358*x[20]*x[25]+1.385*x[20]*x[26]+0.9149*x[20]*x[27]-0.984*x[21]*x[21]+0.892*x[21]*x[22]-1.0154*x[21]*x[28]+1.1489*x[22]*x[23]-1.4756*x[22]*x[24]+0.0767*x[22]*x[25]+0.8851*x[22]*x[29]+1.3756*x[22]*x[30]-1.9717*x[23]*x[24]+1.4939*x[23]*x[25]+1.5252*x[23]*x[26]+1.5584*x[23]*x[30]+0.1543*x[24]*x[25]-0.6684*x[24]*x[26]-0.4475*x[24]*x[27]-1.7084*x[24]*x[28]-0.6603*x[24]*x[29]-0.2744*x[24]*x[30]+0.8006*x[25]*x[26]+1.8451*x[25]*x[29]+0.4808*x[26]*x[26]+0.1158*x[26]*x[27]-0.438*x[27]*x[28]+1.027*x[28]*x[29]+1.8462*x[28]*x[30]+0.1605*x[29]*x[29]-0.9742*x[1]-0.1023*x[2]-0.506*x[3]-0.2771*x[4]-0.5851*x[5]+0.4033*x[6]-0.969*x[7]+0.4623*x[8]+0.8593*x[9]+0.8792*x[10]+0.7004*x[11]-0.1326*x[12]+0.2992*x[13]-0.107*x[14]-0.0243*x[15]-0.3026*x[16]+0.4911*x[17]+0.0888*x[18]-0.2336*x[19]-0.5938*x[20]+0.957*x[21]-0.0037*x[22]-0.4063*x[23]+0.6278*x[24]+0.196*x[25]+0.5782*x[26]-0.7207*x[27]+0.2847*x[28]-0.1592*x[29]-0.2277*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

 
