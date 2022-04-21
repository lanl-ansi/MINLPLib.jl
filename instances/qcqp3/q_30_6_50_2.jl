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
@NLconstraint(m, e1, -(1.8221*x[1]*x[6]-0.9474*x[1]*x[5]+0.1263*x[1]*x[10]-0.5952*x[1]*x[13]+1.8415*x[1]*x[14]+1.417*x[1]*x[16]+1.864*x[1]*x[18]-1.1818*x[1]*x[21]-1.9072*x[1]*x[22]-1.2419*x[1]*x[26]-0.5442*x[1]*x[30]+0.457*x[2]*x[2]-1.7335*x[2]*x[5]-0.8071*x[2]*x[9]+0.8435*x[2]*x[13]-1.0018*x[2]*x[14]+0.001*x[2]*x[17]+1.8652*x[2]*x[19]-1.7132*x[2]*x[20]+1.322*x[2]*x[21]-1.0339*x[2]*x[25]+1.7763*x[2]*x[26]+1.832*x[2]*x[27]-1.7428*x[2]*x[28]-1.1895*x[2]*x[29]-0.507*x[3]*x[5]-0.7305*x[3]*x[6]-0.1505*x[3]*x[7]+0.0088*x[3]*x[8]+0.6904*x[3]*x[9]-0.1645*x[3]*x[14]+1.3424*x[3]*x[18]+0.2638*x[3]*x[22]+0.3931*x[3]*x[23]-1.0098*x[3]*x[24]+0.7146*x[3]*x[25]-0.527*x[3]*x[26]-1.0832*x[3]*x[28]+0.9857*x[3]*x[29]+0.8283*x[4]*x[5]+0.4522*x[4]*x[7]+0.5628*x[4]*x[9]+1.0336*x[4]*x[10]-0.8949*x[4]*x[11]+0.9144*x[4]*x[13]-1.1997*x[4]*x[15]-1.056*x[4]*x[17]-1.67*x[4]*x[19]-0.8046*x[4]*x[20]+0.8036*x[4]*x[22]+0.8847*x[4]*x[23]+0.5308*x[4]*x[24]-1.5787*x[4]*x[28]+0.4687*x[5]*x[7]-0.1931*x[5]*x[8]+1.5939*x[5]*x[9]+1.9488*x[5]*x[10]-1.7864*x[5]*x[11]-0.095*x[5]*x[12]-1.1783*x[5]*x[13]+1.4043*x[5]*x[14]-0.6353*x[5]*x[15]-1.6217*x[5]*x[16]-1.921*x[5]*x[19]+1.4908*x[5]*x[22]-1.7629*x[5]*x[24]+0.8103*x[5]*x[27]-0.2214*x[5]*x[28]-1.6264*x[5]*x[29]+1.3797*x[6]*x[9]+1.7821*x[6]*x[10]+1.044*x[6]*x[12]+1.5232*x[6]*x[15]-0.0645*x[6]*x[18]+0.6367*x[6]*x[19]-1.5501*x[6]*x[20]-1.1503*x[6]*x[21]-1.4675*x[6]*x[23]-0.3605*x[6]*x[24]+0.8632*x[6]*x[29]+0.3224*x[6]*x[30]+1.6116*x[7]*x[8]-1.2651*x[7]*x[9]+1.686*x[7]*x[11]+1.2265*x[7]*x[12]+1.8868*x[7]*x[14]-1.7873*x[7]*x[15]+1.3653*x[7]*x[17]-1.3689*x[7]*x[18]-1.7438*x[7]*x[19]-0.8986*x[7]*x[20]-0.0901*x[7]*x[22]+1.9475*x[7]*x[23]+1.9005*x[7]*x[27]+1.3198*x[8]*x[11]-1.6123*x[8]*x[12]+1.7188*x[8]*x[13]-0.6203*x[8]*x[15]+1.144*x[8]*x[16]-0.2196*x[8]*x[20]+1.1972*x[8]*x[22]+0.9691*x[8]*x[24]+1.84*x[8]*x[25]-0.7015*x[8]*x[27]-0.7733*x[8]*x[28]+0.6681*x[9]*x[10]+0.1464*x[9]*x[11]-0.4127*x[9]*x[12]-1.193*x[9]*x[15]+1.8328*x[9]*x[16]+0.6225*x[9]*x[17]+0.7897*x[9]*x[18]-0.489*x[9]*x[19]+0.4389*x[9]*x[22]+0.0226*x[9]*x[24]-1.9747*x[9]*x[25]+0.4244*x[9]*x[26]+0.9786*x[9]*x[27]+1.4202*x[10]*x[12]+1.0155*x[10]*x[13]-0.8331*x[10]*x[14]+0.6364*x[10]*x[16]-0.5394*x[10]*x[21]+0.2926*x[10]*x[22]-0.2815*x[10]*x[23]+1.5046*x[10]*x[25]-1.6859*x[10]*x[28]+0.2655*x[10]*x[29]+0.5709*x[10]*x[30]-1.1616*x[11]*x[13]-0.8705*x[11]*x[14]-0.2275*x[11]*x[16]+0.0308*x[11]*x[19]-1.355*x[11]*x[20]-1.9656*x[11]*x[21]+1.4696*x[11]*x[24]+0.8091*x[11]*x[26]+1.7256*x[11]*x[27]-1.9072*x[12]*x[14]-1.5831*x[12]*x[17]+1.8194*x[12]*x[18]-1.8837*x[12]*x[19]-1.7441*x[12]*x[20]+1.7157*x[12]*x[21]+0.2934*x[12]*x[22]-0.9746*x[12]*x[24]+1.7824*x[12]*x[25]-1.7629*x[12]*x[26]+0.8812*x[12]*x[27]+1.179*x[12]*x[28]-0.4125*x[12]*x[29]-0.4943*x[12]*x[30]+1.8055*x[13]*x[13]-1.9945*x[13]*x[15]-0.2903*x[13]*x[20]-1.5131*x[13]*x[21]+1.0433*x[13]*x[23]-1.7025*x[13]*x[24]+0.5784*x[13]*x[25]+0.8961*x[13]*x[27]-0.3425*x[13]*x[28]-1.7305*x[13]*x[29]+0.6056*x[14]*x[19]+0.0234*x[14]*x[20]+0.5275*x[14]*x[21]+0.8411*x[14]*x[22]-1.7903*x[14]*x[24]-0.5712*x[14]*x[25]+1.4951*x[14]*x[28]+0.7364*x[15]*x[18]-0.5238*x[15]*x[20]+1.629*x[15]*x[22]-0.77*x[15]*x[23]+1.7596*x[15]*x[26]+1.9547*x[15]*x[27]-1.9964*x[15]*x[28]+1.08*x[16]*x[17]+0.9312*x[16]*x[18]+0.6032*x[16]*x[19]+1.0319*x[16]*x[20]-0.2279*x[16]*x[21]-1.2956*x[16]*x[22]+0.835*x[16]*x[23]-1.5095*x[16]*x[24]-1.954*x[16]*x[27]+0.3558*x[16]*x[30]-1.8838*x[17]*x[18]-1.7134*x[17]*x[25]+1.2965*x[17]*x[27]-0.8156*x[17]*x[28]-0.5922*x[18]*x[19]+0.7902*x[18]*x[20]+0.9293*x[18]*x[21]+1.4541*x[18]*x[23]-0.2224*x[18]*x[24]-1.3227*x[18]*x[26]-1.443*x[18]*x[28]-1.2098*x[18]*x[29]+0.2238*x[19]*x[23]+0.7514*x[19]*x[25]+1.8699*x[19]*x[28]+1.9871*x[19]*x[30]-1.0547*x[20]*x[21]+0.2547*x[20]*x[24]+0.5207*x[20]*x[26]-1.0336*x[20]*x[27]+0.2233*x[20]*x[30]+1.7649*x[21]*x[22]+0.3617*x[21]*x[25]-1.9057*x[21]*x[27]+1.2887*x[21]*x[28]+1.0615*x[22]*x[23]-0.1947*x[22]*x[24]-0.4638*x[22]*x[28]-1.9837*x[22]*x[30]-1.0376*x[23]*x[25]+0.2546*x[23]*x[26]-1.586*x[23]*x[27]+1.9027*x[23]*x[28]-1.694*x[23]*x[29]-1.2053*x[24]*x[26]+0.726*x[24]*x[30]+0.6396*x[25]*x[26]-0.247*x[25]*x[28]-0.5569*x[25]*x[29]-0.2326*x[26]*x[27]+0.0137*x[26]*x[28]+1.5081*x[26]*x[29]-1.6341*x[27]*x[28]-0.5248*x[28]*x[28]-1.6153*x[29]*x[29]+1.2214*x[29]*x[30]-0.0616*x[1]-0.2309*x[2]-0.6019*x[3]+0.9167*x[4]+0.3173*x[5]+0.6549*x[6]-0.6119*x[7]-0.7518*x[8]-0.7743*x[9]+0.5127*x[10]-0.455*x[11]-0.9155*x[12]-0.209*x[13]+0.5847*x[14]-0.8711*x[15]-0.2983*x[16]-0.4491*x[17]-0.5129*x[18]-0.0371*x[19]-0.897*x[20]+0.9657*x[21]+0.1532*x[22]+0.0012*x[23]-0.0566*x[24]-0.6391*x[25]-0.2788*x[26]-0.8109*x[27]+0.0684*x[28]+0.3682*x[29]-0.7107*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, 1.8821*x[1]*x[5]+1.9316*x[1]*x[9]-1.285*x[1]*x[19]+1.777*x[1]*x[20]-0.9614*x[1]*x[24]-0.5689*x[1]*x[28]+0.584*x[2]*x[3]+1.8424*x[2]*x[4]-0.0452*x[2]*x[5]-0.4267*x[2]*x[6]+1.3052*x[2]*x[7]-0.4868*x[2]*x[8]+0.7926*x[2]*x[9]+1.1139*x[2]*x[10]+0.6562*x[2]*x[12]+0.6013*x[2]*x[15]+0.111*x[2]*x[18]+0.9094*x[2]*x[21]-0.934*x[2]*x[22]-1.4638*x[2]*x[23]-1.244*x[2]*x[24]+1.4686*x[2]*x[25]+1.5505*x[2]*x[28]-0.351*x[2]*x[29]+1.4423*x[3]*x[4]-0.6996*x[3]*x[5]+0.6494*x[3]*x[6]+1.2796*x[3]*x[9]-1.5208*x[3]*x[11]-0.332*x[3]*x[12]+0.4391*x[3]*x[13]-1.7045*x[3]*x[16]-1.5693*x[3]*x[18]+0.4768*x[3]*x[21]+1.7774*x[3]*x[24]-0.9616*x[3]*x[25]-1.9003*x[3]*x[27]+0.7677*x[4]*x[8]-0.8754*x[4]*x[11]+1.1545*x[4]*x[12]+0.1246*x[4]*x[13]+1.5438*x[4]*x[14]+1.0866*x[4]*x[16]+0.3*x[4]*x[17]+1.2057*x[4]*x[18]+0.3145*x[4]*x[19]-1.4465*x[4]*x[21]+0.5633*x[4]*x[22]-0.8558*x[4]*x[23]+1.8394*x[4]*x[25]-1.0765*x[4]*x[26]-1.2556*x[5]*x[7]+1.2709*x[5]*x[8]+1.4045*x[5]*x[10]+0.2544*x[5]*x[13]-1.3718*x[5]*x[14]-1.0009*x[5]*x[15]-1.7525*x[5]*x[16]-1.9752*x[5]*x[17]-1.6053*x[5]*x[19]-1.3028*x[5]*x[20]+1.4871*x[5]*x[22]-0.759*x[5]*x[24]-0.9475*x[5]*x[26]+1.0495*x[5]*x[27]-1.2351*x[6]*x[8]+1.1622*x[6]*x[9]+1.766*x[6]*x[10]-1.5426*x[6]*x[13]+0.7776*x[6]*x[14]+1.3039*x[6]*x[15]-0.5651*x[6]*x[16]+1.5356*x[6]*x[18]-1.4531*x[6]*x[19]-1.875*x[6]*x[20]-0.8399*x[6]*x[22]-0.6202*x[6]*x[24]+1.5839*x[6]*x[27]+1.0834*x[6]*x[28]+0.8337*x[6]*x[30]+0.216*x[7]*x[12]+0.8245*x[7]*x[13]-1.4392*x[7]*x[16]-0.6201*x[7]*x[20]+0.7072*x[7]*x[21]-1.436*x[7]*x[22]-0.9776*x[7]*x[23]+1.7579*x[7]*x[24]+1.8901*x[7]*x[29]+1.0624*x[8]*x[10]+0.1183*x[8]*x[13]+1.6007*x[8]*x[14]+0.0671*x[8]*x[16]-1.1116*x[8]*x[18]-0.9968*x[8]*x[19]-0.1109*x[8]*x[21]+1.2015*x[8]*x[23]-0.9724*x[8]*x[24]-0.9001*x[8]*x[26]+0.713*x[8]*x[28]-0.3689*x[8]*x[29]-1.9439*x[8]*x[30]-1.606*x[9]*x[9]+1.1624*x[9]*x[11]-1.2265*x[9]*x[12]+1.5477*x[9]*x[14]+1.358*x[9]*x[16]+0.5525*x[9]*x[18]-0.1714*x[9]*x[20]-1.2779*x[9]*x[21]+0.8765*x[9]*x[23]+0.3132*x[9]*x[24]+1.2779*x[9]*x[25]-1.4983*x[9]*x[27]-0.1378*x[9]*x[28]+0.2236*x[9]*x[29]+0.1415*x[9]*x[30]+1.4763*x[10]*x[11]-1.4603*x[10]*x[13]-1.6173*x[10]*x[15]+1.8514*x[10]*x[17]+1.3358*x[10]*x[18]-0.7963*x[10]*x[24]-1.5417*x[10]*x[26]-1.4732*x[10]*x[27]+0.6313*x[11]*x[12]-0.0827*x[11]*x[13]+1.4566*x[11]*x[14]-0.7933*x[11]*x[16]+1.7531*x[11]*x[17]+1.642*x[11]*x[18]+0.0297*x[11]*x[19]+1.049*x[11]*x[20]-0.8375*x[11]*x[23]-1.0769*x[11]*x[25]+1.6789*x[11]*x[26]-1.8749*x[11]*x[27]+1.5424*x[11]*x[29]+1.2794*x[11]*x[30]+1.0744*x[12]*x[12]+0.3697*x[12]*x[13]+0.8575*x[12]*x[15]+1.18*x[12]*x[16]+1.7445*x[12]*x[18]+0.1431*x[12]*x[19]+1.2325*x[12]*x[20]-1.8018*x[12]*x[21]-0.8358*x[12]*x[23]-0.7348*x[12]*x[26]-0.1789*x[12]*x[27]-0.4404*x[12]*x[28]+0.1871*x[13]*x[17]+1.5036*x[13]*x[19]+0.0535*x[13]*x[20]+0.6754*x[13]*x[23]+0.3313*x[13]*x[25]-0.7916*x[14]*x[15]+1.8215*x[14]*x[17]+0.6481*x[14]*x[18]+0.465*x[14]*x[20]+0.4688*x[14]*x[21]-1.6385*x[14]*x[23]+0.7491*x[14]*x[25]+0.4366*x[14]*x[26]-1.3136*x[14]*x[28]-1.5599*x[15]*x[15]+1.4941*x[15]*x[16]+1.0728*x[15]*x[18]-1.1543*x[15]*x[19]-1.981*x[15]*x[20]+0.6985*x[15]*x[21]+1.9108*x[15]*x[22]+0.6127*x[15]*x[27]-0.8204*x[15]*x[28]-1.8208*x[16]*x[18]+1.9435*x[16]*x[19]-0.4296*x[16]*x[20]-1.968*x[16]*x[21]+1.9858*x[16]*x[23]+1.0554*x[16]*x[24]-0.5569*x[16]*x[26]+0.4863*x[16]*x[27]+1.2278*x[16]*x[28]+0.546*x[17]*x[17]-1.8801*x[17]*x[19]-1.281*x[17]*x[21]-1.1026*x[17]*x[22]+0.7291*x[17]*x[23]-0.6601*x[17]*x[24]-0.0914*x[17]*x[27]+0.1448*x[18]*x[20]-1.066*x[18]*x[21]-0.5832*x[18]*x[24]-1.0827*x[18]*x[25]+1.8535*x[18]*x[27]+1.5349*x[18]*x[28]+0.9176*x[18]*x[30]-0.9781*x[19]*x[19]-0.5123*x[19]*x[20]+1.066*x[19]*x[23]+1.3337*x[19]*x[25]+0.8672*x[19]*x[27]-0.0441*x[19]*x[28]+0.7845*x[20]*x[20]+0.9878*x[20]*x[22]+0.4292*x[20]*x[25]+1.9148*x[20]*x[28]-1.2075*x[20]*x[30]+1.5505*x[21]*x[22]-1.8182*x[21]*x[23]-1.4605*x[21]*x[25]-1.6864*x[21]*x[26]-1.018*x[21]*x[27]+1.397*x[21]*x[28]+1.8504*x[21]*x[29]-0.3618*x[22]*x[23]-0.0253*x[22]*x[25]-1.6563*x[22]*x[26]-0.1331*x[22]*x[28]+1.2262*x[22]*x[29]+1.7266*x[23]*x[23]-0.195*x[23]*x[26]+1.1181*x[23]*x[27]+1.2886*x[23]*x[28]+0.7046*x[23]*x[29]-0.3354*x[23]*x[30]+1.1483*x[24]*x[26]+1.9017*x[25]*x[26]+0.8252*x[26]*x[29]-1.577*x[27]*x[27]+1.7058*x[27]*x[30]+1.7275*x[29]*x[29]-0.5497*x[1]-0.8967*x[2]+0.4948*x[3]-0.3662*x[4]-0.3087*x[5]-0.0755*x[6]-0.6671*x[7]+0.9632*x[8]+0.5266*x[9]+0.4679*x[10]+0.084*x[11]-0.0912*x[12]+0.0769*x[13]-0.9091*x[14]+0.1636*x[15]+0.1302*x[16]+0.3172*x[17]+0.8319*x[18]-0.7974*x[19]+0.7251*x[20]-0.2891*x[21]+0.4135*x[22]+0.1982*x[23]+0.2814*x[24]+0.5019*x[25]+0.2049*x[26]-0.4927*x[27]-0.7387*x[28]+0.7246*x[29]-0.7171*x[30] <= 91.664)
@NLconstraint(m, e3, 0.3379*x[1]*x[4]-1.565*x[1]*x[6]+0.3727*x[1]*x[7]-1.3335*x[1]*x[13]+0.7664*x[1]*x[18]+0.4286*x[1]*x[20]+0.4067*x[1]*x[21]+0.932*x[1]*x[23]-1.9807*x[2]*x[4]+0.1235*x[2]*x[8]+1.5981*x[2]*x[10]+1.5867*x[2]*x[12]-0.1453*x[2]*x[13]-1.154*x[2]*x[16]-1.9433*x[2]*x[19]-0.8752*x[2]*x[20]-0.4338*x[2]*x[21]-1.6469*x[2]*x[23]+0.1567*x[2]*x[26]+0.7326*x[2]*x[27]+1.1125*x[2]*x[28]+1.0098*x[2]*x[30]+0.6223*x[3]*x[4]-1.6733*x[3]*x[5]-1.6689*x[3]*x[6]+0.4493*x[3]*x[7]+0.7812*x[3]*x[11]+0.8312*x[3]*x[12]-1.0704*x[3]*x[14]-0.418*x[3]*x[16]+0.674*x[3]*x[18]-0.3152*x[3]*x[20]+1.8652*x[3]*x[24]+0.0798*x[3]*x[25]-1.4946*x[3]*x[26]-0.1295*x[3]*x[27]-0.6582*x[3]*x[29]-0.7418*x[4]*x[6]-0.9199*x[4]*x[10]+0.1209*x[4]*x[11]-1.5647*x[4]*x[12]-1.49*x[4]*x[13]-1.7323*x[4]*x[14]-1.4981*x[4]*x[15]+1.7869*x[4]*x[20]+0.1076*x[4]*x[21]-1.2847*x[4]*x[22]+1.1821*x[4]*x[23]+0.5903*x[4]*x[24]-0.7155*x[4]*x[25]-0.3615*x[4]*x[26]+0.1694*x[4]*x[27]-0.7814*x[4]*x[28]+0.4409*x[4]*x[29]+1.8316*x[5]*x[6]-0.2113*x[5]*x[7]-0.9447*x[5]*x[9]+1.4853*x[5]*x[10]-1.5102*x[5]*x[11]+1.4518*x[5]*x[15]+1.2418*x[5]*x[16]-0.5744*x[5]*x[18]-0.2875*x[5]*x[19]-1.8019*x[5]*x[20]-1.3807*x[5]*x[21]-0.203*x[5]*x[24]-1.1866*x[5]*x[26]+0.6817*x[5]*x[29]-1.4063*x[6]*x[11]+1.9489*x[6]*x[12]+1.2002*x[6]*x[13]-1.3109*x[6]*x[14]-0.028*x[6]*x[15]-1.8154*x[6]*x[16]+0.2648*x[6]*x[19]-1.0373*x[6]*x[21]-1.1516*x[6]*x[22]-0.8739*x[6]*x[23]-1.7855*x[6]*x[24]-0.9504*x[6]*x[25]+1.743*x[6]*x[27]+1.103*x[7]*x[9]+1.5952*x[7]*x[13]-1.0049*x[7]*x[14]+0.94*x[7]*x[16]+0.5319*x[7]*x[19]+1.5476*x[7]*x[21]-1.6774*x[7]*x[22]+1.7843*x[7]*x[24]-0.4332*x[7]*x[27]-0.33*x[7]*x[28]-1.7338*x[7]*x[29]+1.1738*x[8]*x[9]-1.3804*x[8]*x[12]+1.5127*x[8]*x[15]+0.2873*x[8]*x[16]-1.0129*x[8]*x[17]-1.817*x[8]*x[20]-0.6494*x[8]*x[21]-0.3778*x[8]*x[22]+1.7708*x[8]*x[23]-0.1316*x[8]*x[27]+1.0283*x[8]*x[28]+0.72*x[8]*x[29]+1.6496*x[8]*x[30]-1.722*x[9]*x[10]+1.9837*x[9]*x[11]-1.5052*x[9]*x[12]-0.3453*x[9]*x[14]+1.7054*x[9]*x[16]+1.0954*x[9]*x[18]+1.589*x[9]*x[19]-0.6783*x[9]*x[21]-1.7504*x[9]*x[24]+0.8313*x[9]*x[25]+1.288*x[9]*x[26]+1.0913*x[9]*x[27]-0.4934*x[9]*x[28]-1.2823*x[9]*x[30]+0.9161*x[10]*x[11]-0.0281*x[10]*x[16]-0.8222*x[10]*x[18]+0.3068*x[10]*x[19]-1.561*x[10]*x[20]+1.9634*x[10]*x[27]-1.9125*x[10]*x[28]-0.1031*x[10]*x[30]-1.6568*x[11]*x[12]-0.6825*x[11]*x[15]+1.801*x[11]*x[18]-0.5304*x[11]*x[19]+0.2787*x[11]*x[22]+0.1834*x[11]*x[23]-0.8004*x[11]*x[25]-1.6764*x[11]*x[26]+1.4557*x[11]*x[27]-0.0199*x[11]*x[28]+1.3811*x[12]*x[13]-0.6286*x[12]*x[15]+0.4695*x[12]*x[16]+1.6267*x[12]*x[17]+1.7897*x[12]*x[18]+0.2028*x[12]*x[20]-0.702*x[12]*x[27]-1.5142*x[12]*x[28]+1.6651*x[12]*x[29]+0.7281*x[12]*x[30]-1.2597*x[13]*x[15]+0.7317*x[13]*x[16]+1.8149*x[13]*x[17]-0.8673*x[13]*x[19]-1.0872*x[13]*x[20]-0.3191*x[13]*x[27]-1.9487*x[13]*x[29]-1.4858*x[13]*x[30]+1.0233*x[14]*x[14]+1.1892*x[14]*x[15]+1.8152*x[14]*x[17]-0.124*x[14]*x[18]+0.6963*x[14]*x[20]-0.5975*x[14]*x[22]-0.9919*x[14]*x[24]+1.6911*x[14]*x[26]-0.8253*x[14]*x[27]+0.952*x[14]*x[28]+1.9697*x[14]*x[29]-1.3974*x[14]*x[30]-1.1425*x[15]*x[15]+1.4426*x[15]*x[16]+1.3713*x[15]*x[17]+0.7914*x[15]*x[21]-0.3781*x[15]*x[22]-0.5685*x[15]*x[28]+0.2961*x[15]*x[29]+1.0711*x[16]*x[17]+1.2892*x[16]*x[19]+0.2627*x[16]*x[20]+1.6499*x[16]*x[22]-1.9474*x[16]*x[24]+1.7887*x[16]*x[27]-1.4392*x[16]*x[30]+1.7129*x[17]*x[18]-0.1103*x[17]*x[19]+0.1551*x[17]*x[20]+1.5823*x[17]*x[21]-0.5502*x[17]*x[24]+0.9944*x[17]*x[26]-1.1521*x[18]*x[19]+1.2035*x[18]*x[20]-0.9313*x[18]*x[21]+0.7917*x[18]*x[23]-1.4678*x[18]*x[24]+0.4463*x[18]*x[25]+1.3064*x[18]*x[27]+1.4583*x[18]*x[28]+0.8248*x[18]*x[29]-0.364*x[19]*x[19]+1.0372*x[19]*x[21]-0.7442*x[19]*x[22]+1.8444*x[19]*x[24]-1.8181*x[19]*x[27]+0.2092*x[19]*x[28]+1.0501*x[20]*x[23]+1.6886*x[20]*x[26]-0.1494*x[20]*x[28]-0.2565*x[21]*x[22]-0.3991*x[21]*x[23]+1.675*x[21]*x[25]+0.6424*x[21]*x[26]+1.1349*x[21]*x[28]-1.9948*x[21]*x[29]-0.5241*x[21]*x[30]+1.4196*x[22]*x[23]+1.8937*x[22]*x[24]+1.8674*x[22]*x[28]-1.4907*x[23]*x[24]+0.1079*x[23]*x[26]-1.8425*x[23]*x[28]-0.1117*x[24]*x[24]+1.7703*x[24]*x[26]-1.9611*x[24]*x[29]+1.3532*x[25]*x[26]+0.5078*x[25]*x[27]-0.9036*x[25]*x[29]+0.3827*x[26]*x[27]+1.6229*x[26]*x[28]+0.931*x[26]*x[29]+1.4773*x[26]*x[30]-0.4982*x[27]*x[28]+1.6605*x[27]*x[29]+0.4272*x[28]*x[29]-0.2234*x[29]*x[30]-0.5543*x[1]-0.7841*x[2]-0.9344*x[3]-0.5497*x[4]-0.3764*x[5]+0.8686*x[6]+0.2653*x[7]+0.3753*x[8]-0.3678*x[9]-0.3638*x[10]-0.4103*x[11]+0.4169*x[12]-0.7363*x[13]-0.7086*x[14]-0.3021*x[15]+0.6239*x[16]+0.2089*x[17]-0.4077*x[18]-0.2911*x[19]-0.547*x[20]+0.597*x[21]+0.7385*x[22]-0.4478*x[23]+0.1979*x[24]+0.7132*x[25]+0.1782*x[26]-0.2799*x[27]-0.0409*x[28]-0.6757*x[29]-0.4518*x[30] <= 62.07)
@NLconstraint(m, e4, 1.7895*x[1]*x[9]-1.0062*x[1]*x[15]+0.5383*x[1]*x[23]+0.2099*x[1]*x[24]-1.7232*x[1]*x[27]-1.4935*x[1]*x[29]-0.4835*x[2]*x[7]-1.4731*x[2]*x[11]+1.6456*x[2]*x[12]+0.9954*x[2]*x[14]+0.2234*x[2]*x[16]-0.6699*x[2]*x[17]+0.5825*x[2]*x[21]-0.0262*x[2]*x[22]+0.8129*x[2]*x[24]-1.511*x[2]*x[25]-1.9801*x[2]*x[28]-0.5851*x[2]*x[30]+0.843*x[3]*x[5]-0.0615*x[3]*x[6]-1.8023*x[3]*x[7]-0.6888*x[3]*x[9]-1.4093*x[3]*x[10]+1.6706*x[3]*x[12]+1.578*x[3]*x[13]+1.958*x[3]*x[17]-0.7124*x[3]*x[18]-1.8455*x[3]*x[21]+0.9557*x[3]*x[22]+1.4294*x[3]*x[25]+1.0953*x[3]*x[27]+1.9643*x[4]*x[4]+1.0439*x[4]*x[5]+1.702*x[4]*x[6]+1.893*x[4]*x[8]+0.7181*x[4]*x[9]-1.2101*x[4]*x[12]-1.4183*x[4]*x[15]+0.383*x[4]*x[16]+1.1679*x[4]*x[17]-1.0972*x[4]*x[18]+1.0085*x[4]*x[21]-0.5234*x[4]*x[26]-0.8573*x[4]*x[27]-1.3907*x[4]*x[29]+1.9262*x[5]*x[5]+0.6468*x[5]*x[6]-0.6952*x[5]*x[7]+1.1249*x[5]*x[8]-1.3285*x[5]*x[9]+1.7771*x[5]*x[11]-0.2551*x[5]*x[15]+1.7079*x[5]*x[17]-0.0511*x[5]*x[18]-0.896*x[5]*x[21]-0.8063*x[5]*x[22]+0.5912*x[5]*x[23]-1.1632*x[5]*x[24]-0.563*x[5]*x[26]+0.6815*x[5]*x[28]-1.6104*x[5]*x[29]+1.3423*x[6]*x[8]+0.8055*x[6]*x[9]+0.121*x[6]*x[10]-1.3596*x[6]*x[11]+0.6938*x[6]*x[14]+1.7327*x[6]*x[15]+0.1767*x[6]*x[16]+0.257*x[6]*x[17]-0.7143*x[6]*x[18]-1.3288*x[6]*x[19]-0.2643*x[6]*x[20]-0.5671*x[6]*x[21]+1.752*x[6]*x[28]+0.6337*x[6]*x[29]+0.9544*x[6]*x[30]+0.8805*x[7]*x[8]+1.2649*x[7]*x[9]-0.2247*x[7]*x[15]-0.2254*x[7]*x[18]-1.2964*x[7]*x[19]+0.0998*x[7]*x[20]-0.8016*x[7]*x[21]-1.6147*x[7]*x[29]+1.9512*x[8]*x[9]-1.9067*x[8]*x[10]-0.9345*x[8]*x[11]+1.1177*x[8]*x[12]+0.2765*x[8]*x[14]-1.227*x[8]*x[16]-0.6872*x[8]*x[17]+0.7051*x[8]*x[19]-1.1656*x[8]*x[20]-1.3357*x[8]*x[22]-1.5591*x[8]*x[29]-1.2985*x[9]*x[10]-0.2394*x[9]*x[11]+0.3044*x[9]*x[13]-1.1426*x[9]*x[14]+0.5934*x[9]*x[15]-0.1856*x[9]*x[16]+0.2192*x[9]*x[19]-1.0611*x[9]*x[22]+0.879*x[9]*x[23]+1.7413*x[9]*x[26]-1.399*x[9]*x[29]-1.3395*x[10]*x[11]-1.3403*x[10]*x[13]-0.3935*x[10]*x[14]+1.9138*x[10]*x[16]-0.8267*x[10]*x[18]-0.8945*x[10]*x[20]-1.6785*x[10]*x[21]+0.2684*x[10]*x[22]+0.7267*x[10]*x[24]-0.5919*x[10]*x[26]+1.465*x[10]*x[27]+0.9501*x[10]*x[30]-0.4076*x[11]*x[11]-1.7784*x[11]*x[12]+1.9734*x[11]*x[16]-0.7818*x[11]*x[17]+0.7314*x[11]*x[18]+1.0098*x[11]*x[19]+0.5459*x[11]*x[21]-0.6232*x[11]*x[22]+0.6815*x[11]*x[23]+0.5282*x[11]*x[25]-0.3745*x[11]*x[26]-0.756*x[11]*x[27]+1.6169*x[11]*x[28]-1.5456*x[11]*x[29]-1.9208*x[11]*x[30]+0.6044*x[12]*x[14]+1.0575*x[12]*x[19]+0.8557*x[12]*x[21]+0.478*x[12]*x[23]+0.471*x[12]*x[24]+1.2855*x[12]*x[26]-0.0031*x[13]*x[14]-0.9129*x[13]*x[16]+0.2917*x[13]*x[20]+0.0838*x[13]*x[21]-1.5514*x[13]*x[25]+1.7235*x[13]*x[28]+1.2995*x[13]*x[29]+1.0384*x[14]*x[15]+0.6347*x[14]*x[16]-1.1941*x[14]*x[23]+0.1*x[14]*x[24]+0.3992*x[14]*x[25]-0.0574*x[14]*x[26]-0.0896*x[14]*x[27]-0.3232*x[15]*x[17]-1.383*x[15]*x[19]+0.2485*x[15]*x[22]-1.4477*x[15]*x[23]+0.2076*x[15]*x[24]+0.9349*x[15]*x[25]-1.141*x[15]*x[26]+1.6244*x[15]*x[30]+0.2808*x[16]*x[16]-1.6332*x[16]*x[17]+0.1281*x[16]*x[18]-1.5636*x[16]*x[19]-0.399*x[16]*x[20]+1.3938*x[16]*x[21]+0.3484*x[16]*x[22]-1.5865*x[16]*x[23]-1.5449*x[16]*x[24]-1.7471*x[16]*x[25]+1.5665*x[16]*x[26]-0.1976*x[16]*x[27]+1.423*x[16]*x[29]+1.9533*x[16]*x[30]-0.217*x[17]*x[17]-1.5804*x[17]*x[18]-1.3634*x[17]*x[19]-1.8458*x[17]*x[20]-0.4072*x[17]*x[21]+1.3312*x[17]*x[22]-0.6526*x[17]*x[25]+0.1023*x[17]*x[28]-0.9413*x[17]*x[29]-0.4728*x[18]*x[21]+0.1783*x[18]*x[22]-0.9816*x[18]*x[23]+0.9402*x[18]*x[24]+1.7288*x[18]*x[25]-0.0291*x[18]*x[26]+0.4004*x[18]*x[28]-1.6568*x[18]*x[29]-0.5361*x[19]*x[19]+1.8907*x[19]*x[21]+1.8685*x[19]*x[24]-1.4882*x[19]*x[26]-1.5159*x[19]*x[27]-1.7514*x[19]*x[28]-0.3347*x[19]*x[29]-1.0281*x[20]*x[21]-1.716*x[20]*x[23]-1.568*x[20]*x[25]-1.7231*x[20]*x[28]+0.1119*x[20]*x[30]+1.7605*x[21]*x[21]+1.0749*x[21]*x[23]-0.9339*x[21]*x[24]-1.6182*x[21]*x[25]-0.5031*x[21]*x[27]-0.1251*x[22]*x[24]-1.9252*x[22]*x[29]+1.5287*x[22]*x[30]+1.7532*x[23]*x[23]+0.882*x[23]*x[24]+0.2927*x[23]*x[27]-0.5704*x[23]*x[29]-1.6287*x[23]*x[30]-1.0901*x[24]*x[25]-1.4228*x[24]*x[26]-0.4165*x[24]*x[27]+0.9444*x[24]*x[28]-0.3209*x[25]*x[25]+0.8612*x[25]*x[28]+1.3893*x[25]*x[29]+1.7153*x[25]*x[30]+0.5895*x[26]*x[26]+0.0467*x[26]*x[28]-1.1791*x[26]*x[30]+0.9805*x[27]*x[29]-0.7738*x[28]*x[28]-1.9575*x[28]*x[29]+0.9878*x[30]*x[30]-0.9521*x[1]+0.1942*x[2]+0.9321*x[3]+0.9764*x[4]-0.9998*x[5]-0.7999*x[6]+0.7468*x[7]-0.1968*x[8]-0.1726*x[9]+0.6475*x[10]-0.1037*x[11]+0.3659*x[12]+0.982*x[13]-0.9166*x[14]+0.4904*x[15]-0.8716*x[16]-0.1661*x[17]-0.6265*x[18]+0.8042*x[19]-0.9942*x[20]+0.8549*x[21]-0.5867*x[22]+0.9976*x[23]-0.5369*x[24]-0.1162*x[25]+0.4608*x[26]-0.3305*x[27]+0.4178*x[28]+0.9707*x[29]-0.2123*x[30] <= 29.256)
@NLconstraint(m, e5, 1.9332*x[1]*x[4]+1.6424*x[1]*x[5]-0.8279*x[1]*x[6]-1.1196*x[1]*x[12]-0.4465*x[1]*x[15]+0.5015*x[1]*x[20]+1.113*x[1]*x[21]-0.9755*x[1]*x[23]+0.5565*x[1]*x[24]+0.3199*x[1]*x[26]+1.8889*x[2]*x[2]+1.7737*x[2]*x[3]+1.5812*x[2]*x[4]+1.7944*x[2]*x[6]-1.1034*x[2]*x[9]-1.8694*x[2]*x[15]+0.2199*x[2]*x[16]+1.1607*x[2]*x[17]+1.7972*x[2]*x[18]+1.2797*x[2]*x[19]+0.9638*x[2]*x[22]+1.5186*x[2]*x[23]+1.63*x[2]*x[24]-1.2375*x[2]*x[25]-0.4659*x[2]*x[28]-0.8008*x[2]*x[29]-0.3438*x[3]*x[4]-0.6386*x[3]*x[6]+0.6107*x[3]*x[7]-1.0145*x[3]*x[8]+1.7363*x[3]*x[11]+0.9484*x[3]*x[12]-0.7442*x[3]*x[15]-1.064*x[3]*x[16]+0.2968*x[3]*x[22]-1.4045*x[3]*x[24]+1.7914*x[3]*x[25]-0.9453*x[3]*x[26]+0.4594*x[3]*x[27]-1.5435*x[3]*x[28]+1.1869*x[3]*x[29]+1.8973*x[4]*x[5]+0.8498*x[4]*x[11]-0.8189*x[4]*x[12]+1.8704*x[4]*x[16]-1.7664*x[4]*x[17]-0.065*x[4]*x[18]-1.0958*x[4]*x[19]-0.6844*x[4]*x[20]+1.4235*x[4]*x[21]-0.4502*x[4]*x[23]+1.3034*x[4]*x[25]-1.4355*x[4]*x[26]+0.267*x[4]*x[27]-1.5458*x[4]*x[28]+0.594*x[4]*x[29]-0.7871*x[5]*x[6]-1.6175*x[5]*x[8]-1.6772*x[5]*x[9]-0.8988*x[5]*x[13]+1.9146*x[5]*x[15]+0.017*x[5]*x[17]-0.0016*x[5]*x[18]-1.4165*x[5]*x[19]+0.4392*x[5]*x[20]-0.7626*x[5]*x[22]+0.8091*x[5]*x[23]-0.3646*x[5]*x[24]+1.9478*x[5]*x[26]+1.3381*x[5]*x[27]+1.2882*x[5]*x[28]+0.7558*x[6]*x[6]-0.4794*x[6]*x[7]+0.433*x[6]*x[9]+1.298*x[6]*x[10]-0.8327*x[6]*x[12]-1.316*x[6]*x[15]-1.8038*x[6]*x[16]-1.1971*x[6]*x[18]-0.1169*x[6]*x[19]+0.423*x[6]*x[22]-1.1154*x[6]*x[24]-1.402*x[6]*x[25]-0.6408*x[6]*x[27]+1.0829*x[6]*x[28]-1.024*x[6]*x[29]+0.1942*x[6]*x[30]+0.9458*x[7]*x[8]+1.8165*x[7]*x[11]+1.5288*x[7]*x[12]+1.6335*x[7]*x[13]+0.9906*x[7]*x[15]-0.7689*x[7]*x[18]+0.7204*x[7]*x[20]+1.1142*x[7]*x[21]-0.9834*x[7]*x[23]+1.8396*x[7]*x[24]+1.8872*x[7]*x[25]-0.6595*x[7]*x[27]+0.3733*x[7]*x[28]+1.4914*x[8]*x[8]-1.8598*x[8]*x[9]-0.4114*x[8]*x[10]+0.6184*x[8]*x[13]-0.4374*x[8]*x[16]+0.5241*x[8]*x[19]+1.7183*x[8]*x[21]+1.3335*x[8]*x[24]-0.6198*x[8]*x[26]-1.3385*x[8]*x[27]-0.5671*x[8]*x[29]+0.5665*x[9]*x[10]-0.0512*x[9]*x[11]+1.0678*x[9]*x[12]-1.8654*x[9]*x[13]-1.6981*x[9]*x[15]+0.8576*x[9]*x[17]+0.316*x[9]*x[20]+0.2311*x[9]*x[22]+1.7176*x[9]*x[23]-0.7191*x[9]*x[24]-1.786*x[9]*x[25]+0.3838*x[9]*x[28]+0.8213*x[9]*x[29]-1.4697*x[10]*x[10]-1.2979*x[10]*x[11]+1.6459*x[10]*x[13]-0.4248*x[10]*x[15]+0.5842*x[10]*x[16]-0.3183*x[10]*x[17]-1.3438*x[10]*x[21]-1.3783*x[10]*x[22]-1.391*x[10]*x[26]-0.8219*x[11]*x[13]+0.8571*x[11]*x[14]+1.6082*x[11]*x[18]+0.8194*x[11]*x[19]-0.6973*x[11]*x[20]-0.4039*x[11]*x[21]+1.3084*x[11]*x[22]+1.7945*x[11]*x[25]+1.0719*x[11]*x[27]-0.5919*x[11]*x[30]+0.4409*x[12]*x[13]+0.0029*x[12]*x[14]-1.5444*x[12]*x[15]-1.1816*x[12]*x[16]-0.0482*x[12]*x[17]+0.0174*x[12]*x[18]-0.9689*x[12]*x[19]-1.1312*x[12]*x[20]+1.1688*x[12]*x[21]+1.1883*x[12]*x[22]-1.8248*x[12]*x[25]+1.3921*x[12]*x[27]-1.5586*x[13]*x[16]-1.3384*x[13]*x[17]+1.7404*x[13]*x[19]+0.6972*x[13]*x[22]+1.8515*x[13]*x[25]+1.3729*x[13]*x[26]-1.3348*x[13]*x[27]-0.4304*x[13]*x[28]+0.9467*x[14]*x[16]+0.9869*x[14]*x[19]+1.883*x[14]*x[20]-1.4874*x[14]*x[25]-0.6354*x[14]*x[28]-0.7067*x[15]*x[17]-0.6399*x[15]*x[18]+1.9694*x[15]*x[20]+1.471*x[15]*x[21]-1.2961*x[15]*x[22]-1.8089*x[15]*x[24]-1.123*x[15]*x[25]+1.0709*x[15]*x[26]-1.0488*x[16]*x[23]+1.6264*x[16]*x[25]-0.8844*x[16]*x[27]-0.8954*x[16]*x[28]+0.5457*x[17]*x[18]-0.267*x[17]*x[19]-0.2368*x[17]*x[20]+0.2803*x[17]*x[21]+0.665*x[17]*x[22]+1.1354*x[17]*x[23]-0.9703*x[17]*x[24]+0.8674*x[17]*x[26]-0.1563*x[17]*x[27]-1.2494*x[17]*x[28]-1.5374*x[17]*x[29]-1.5805*x[18]*x[18]+0.4235*x[18]*x[19]-1.5634*x[18]*x[21]+1.3747*x[18]*x[22]+0.124*x[18]*x[24]-1.2496*x[18]*x[28]+1.7157*x[18]*x[29]+1.5184*x[19]*x[21]-0.8816*x[19]*x[22]+0.4498*x[19]*x[23]+0.6622*x[19]*x[25]+0.5727*x[19]*x[26]-0.2078*x[19]*x[27]-0.5348*x[19]*x[29]-0.6932*x[20]*x[22]+1.9379*x[20]*x[23]+0.0908*x[20]*x[27]-1.3008*x[20]*x[29]-1.9942*x[21]*x[22]-1.7431*x[21]*x[25]-0.3045*x[21]*x[26]+0.3419*x[21]*x[29]-0.5509*x[21]*x[30]-0.0403*x[22]*x[23]+0.5566*x[22]*x[24]+1.6498*x[22]*x[25]-0.2291*x[22]*x[26]-0.4664*x[22]*x[28]-0.072*x[22]*x[30]+1.6567*x[23]*x[23]+0.9713*x[23]*x[25]-0.5093*x[24]*x[25]-1.4392*x[24]*x[26]+1.6446*x[24]*x[27]+0.9763*x[24]*x[28]-1.2179*x[24]*x[29]+1.7501*x[25]*x[29]-0.7629*x[25]*x[30]-1.7145*x[26]*x[28]+0.8599*x[27]*x[30]+0.6264*x[29]*x[30]-0.3016*x[1]-0.9201*x[2]-0.5586*x[3]-0.3299*x[4]-0.0708*x[5]-0.9304*x[6]-0.8868*x[7]+0.3732*x[8]-0.8416*x[9]-0.7231*x[10]-0.5479*x[11]+0.559*x[12]-0.9639*x[13]+0.6079*x[14]+0.6222*x[15]-0.815*x[16]+0.8592*x[17]-0.4705*x[18]-0.8175*x[19]+0.7238*x[20]+0.0108*x[21]-0.9291*x[22]+0.2756*x[23]+0.5427*x[24]+0.9796*x[25]+0.4208*x[26]+0.8821*x[27]-0.2858*x[28]-0.5554*x[29]+0.0515*x[30] <= 68.816)
@NLconstraint(m, e6, 0.1429*x[1]*x[2]+1.1207*x[1]*x[8]+1.5311*x[1]*x[10]-1.0039*x[1]*x[16]-1.9088*x[1]*x[20]+0.1324*x[1]*x[24]-1.2616*x[1]*x[25]-0.7402*x[2]*x[3]+0.9738*x[2]*x[5]+1.4085*x[2]*x[10]-0.3868*x[2]*x[14]+0.0338*x[2]*x[17]-1.5467*x[2]*x[21]+0.9061*x[2]*x[23]+0.5971*x[2]*x[24]+1.8867*x[2]*x[26]+0.2643*x[2]*x[27]-1.878*x[2]*x[28]-0.1653*x[3]*x[5]-1.547*x[3]*x[6]-1.8673*x[3]*x[7]-1.897*x[3]*x[8]-1.3147*x[3]*x[9]-1.6985*x[3]*x[11]+0.98*x[3]*x[13]+1.8952*x[3]*x[14]+0.0257*x[3]*x[15]+0.1276*x[3]*x[16]+0.7207*x[3]*x[17]-1.8455*x[3]*x[19]+1.9339*x[3]*x[23]-1.852*x[3]*x[24]+0.5319*x[3]*x[27]-1.6015*x[3]*x[29]+0.4691*x[4]*x[4]-0.2638*x[4]*x[5]+1.2283*x[4]*x[6]-1.9579*x[4]*x[7]+1.0662*x[4]*x[10]-1.4156*x[4]*x[12]+0.0998*x[4]*x[13]-1.0309*x[4]*x[14]+0.9565*x[4]*x[15]+0.2884*x[4]*x[19]+1.3114*x[4]*x[23]-0.0407*x[4]*x[24]+1.3463*x[4]*x[29]+1.2152*x[4]*x[30]+0.1275*x[5]*x[7]-0.2159*x[5]*x[8]+0.8575*x[5]*x[9]+1.989*x[5]*x[14]+1.1392*x[5]*x[16]-1.5377*x[5]*x[17]+1.6191*x[5]*x[20]+1.5404*x[5]*x[24]+0.2844*x[5]*x[25]+0.2252*x[5]*x[26]-1.9293*x[5]*x[27]+0.13*x[5]*x[28]-1.548*x[5]*x[30]+1.7186*x[6]*x[6]-0.7975*x[6]*x[7]+1.6518*x[6]*x[9]-0.5572*x[6]*x[10]-1.0974*x[6]*x[13]-0.4201*x[6]*x[14]-0.0075*x[6]*x[15]+0.0647*x[6]*x[16]-1.4023*x[6]*x[17]-0.3365*x[6]*x[18]-1.4799*x[6]*x[20]+0.7457*x[6]*x[22]+1.6005*x[6]*x[23]+0.5947*x[6]*x[24]+0.6723*x[6]*x[25]+1.6669*x[6]*x[26]+1.4901*x[6]*x[27]-0.5283*x[7]*x[7]-0.5908*x[7]*x[9]-1.6226*x[7]*x[20]+1.6339*x[7]*x[21]-1.4258*x[7]*x[22]-0.0095*x[7]*x[23]+0.9927*x[7]*x[24]+0.3729*x[7]*x[27]+1.0001*x[7]*x[28]-1.3069*x[7]*x[29]-0.0407*x[7]*x[30]+0.1666*x[8]*x[9]+1.4223*x[8]*x[10]-0.5397*x[8]*x[12]-0.8814*x[8]*x[13]-0.0249*x[8]*x[14]-1.7716*x[8]*x[15]-1.883*x[8]*x[16]-0.045*x[8]*x[17]-1.3441*x[8]*x[18]+0.7198*x[8]*x[19]-0.065*x[8]*x[22]+0.0333*x[8]*x[23]+1.9163*x[8]*x[24]-0.0029*x[9]*x[9]-1.5574*x[9]*x[10]-1.0096*x[9]*x[11]+0.8488*x[9]*x[12]-1.414*x[9]*x[13]-1.4933*x[9]*x[16]+1.2977*x[9]*x[18]-1.9935*x[9]*x[20]-1.2053*x[9]*x[24]+0.8457*x[9]*x[27]+1.5816*x[9]*x[29]-0.3374*x[10]*x[12]-1.4699*x[10]*x[13]+1.3017*x[10]*x[16]-1.1013*x[10]*x[17]-1.2102*x[10]*x[18]-1.0293*x[10]*x[19]+1.1521*x[10]*x[20]+1.0039*x[10]*x[22]+1.793*x[10]*x[23]+1.3743*x[10]*x[27]-1.8444*x[10]*x[28]+0.2401*x[10]*x[29]+0.1769*x[11]*x[12]-0.4915*x[11]*x[14]+0.288*x[11]*x[15]+1.4743*x[11]*x[16]-1.6037*x[11]*x[17]-0.2666*x[11]*x[19]+1.855*x[11]*x[20]+0.0009*x[11]*x[21]-1.6988*x[11]*x[22]+0.9217*x[11]*x[23]-0.9549*x[11]*x[25]-1.4963*x[11]*x[27]-0.7335*x[11]*x[28]+0.2551*x[11]*x[29]-1.5126*x[12]*x[16]+1.3326*x[12]*x[18]-0.9494*x[12]*x[19]-0.4717*x[12]*x[21]+0.315*x[12]*x[22]+1.9658*x[12]*x[23]-1.9296*x[12]*x[24]+0.3031*x[12]*x[26]-1.0963*x[12]*x[27]-0.0594*x[12]*x[28]-1.4567*x[12]*x[29]+1.1431*x[13]*x[15]-1.6552*x[13]*x[16]+1.3155*x[13]*x[18]+0.8926*x[13]*x[19]-0.0555*x[13]*x[20]-0.9328*x[13]*x[22]+0.5396*x[13]*x[24]-0.6425*x[13]*x[25]-1.5874*x[13]*x[26]+1.3887*x[14]*x[15]+0.0116*x[14]*x[17]+0.1765*x[14]*x[19]-1.0592*x[14]*x[20]-0.3109*x[14]*x[21]-0.2217*x[14]*x[22]+1.3698*x[14]*x[25]-1.3521*x[14]*x[26]-0.129*x[14]*x[28]+1.5017*x[14]*x[29]+0.9304*x[15]*x[16]-0.9701*x[15]*x[18]+0.1162*x[15]*x[21]-0.6474*x[15]*x[26]+0.5482*x[15]*x[28]+0.9437*x[16]*x[17]-1.8814*x[16]*x[18]+1.7486*x[16]*x[19]+0.1958*x[16]*x[20]+1.4802*x[16]*x[21]+0.5303*x[16]*x[23]+1.9938*x[16]*x[29]+1.9348*x[17]*x[18]-0.6288*x[17]*x[21]+0.7541*x[17]*x[23]+0.7472*x[17]*x[24]-1.785*x[17]*x[26]+0.9219*x[17]*x[28]+1.9031*x[18]*x[19]+0.5241*x[18]*x[20]+1.7856*x[18]*x[21]-0.1083*x[18]*x[23]+1.1735*x[18]*x[24]+1.6709*x[18]*x[28]+0.2294*x[18]*x[30]-1.0476*x[19]*x[19]-0.7047*x[19]*x[20]-1.2019*x[19]*x[21]+1.68*x[19]*x[28]-1.6147*x[19]*x[29]+0.0142*x[19]*x[30]+0.919*x[20]*x[23]-1.3796*x[20]*x[24]+1.7508*x[20]*x[25]+0.2023*x[20]*x[26]-1.2673*x[20]*x[28]+1.2526*x[21]*x[21]-0.6528*x[21]*x[22]-0.2285*x[21]*x[23]+1.5044*x[21]*x[24]+1.413*x[21]*x[25]+0.9125*x[21]*x[26]+1.0091*x[21]*x[28]+0.1175*x[21]*x[29]-0.2909*x[22]*x[25]-1.222*x[22]*x[26]-0.7878*x[22]*x[27]+0.5563*x[22]*x[29]+0.3926*x[23]*x[23]-1.9348*x[23]*x[27]+0.4981*x[23]*x[28]-1.5967*x[23]*x[29]+0.6449*x[24]*x[26]-0.7286*x[24]*x[27]-0.0453*x[24]*x[29]-0.2959*x[25]*x[25]-1.18*x[25]*x[28]-1.7605*x[26]*x[26]+0.4184*x[26]*x[27]-0.7012*x[27]*x[27]+0.9508*x[27]*x[29]-0.8161*x[28]*x[29]-0.133*x[29]*x[30]-0.4757*x[1]-0.4933*x[2]-0.6541*x[3]+0.2779*x[4]-0.8382*x[5]-0.6505*x[6]-0.3628*x[7]+0.053*x[8]+0.4743*x[9]+0.2083*x[10]+0.4819*x[11]+0.7511*x[12]+0.841*x[13]-0.4013*x[14]+0.7456*x[15]-0.2669*x[16]+0.8038*x[17]+0.6292*x[18]-0.4698*x[19]+0.1954*x[20]+0.3397*x[21]+0.6936*x[22]-0.2018*x[23]+0.568*x[24]-0.3095*x[25]+0.0061*x[26]+0.4082*x[27]-0.3831*x[28]-0.8327*x[29]+0.0671*x[30] <= 15.463)
@NLconstraint(m, e7, 1.6236*x[1]*x[4]-0.6204*x[1]*x[5]+0.2643*x[1]*x[11]-1.1402*x[1]*x[13]-0.3821*x[1]*x[14]+0.2585*x[1]*x[15]-0.1159*x[1]*x[17]+1.0506*x[1]*x[18]-1.2551*x[1]*x[20]-0.1475*x[1]*x[23]+0.5693*x[1]*x[24]-0.3714*x[1]*x[25]+0.3987*x[1]*x[26]+1.2049*x[1]*x[29]-0.3829*x[2]*x[2]+0.2172*x[2]*x[5]+0.7238*x[2]*x[8]-0.1588*x[2]*x[9]+1.8557*x[2]*x[13]+0.3314*x[2]*x[14]+0.3311*x[2]*x[15]-0.543*x[2]*x[17]+1.1584*x[2]*x[19]+0.0622*x[2]*x[20]-1.8914*x[2]*x[21]+1.7655*x[2]*x[23]+1.3495*x[2]*x[24]+1.0476*x[2]*x[25]+1.9552*x[2]*x[28]-1.0295*x[3]*x[4]-1.3427*x[3]*x[5]+0.0093*x[3]*x[9]+0.1325*x[3]*x[10]+0.573*x[3]*x[12]-1.2137*x[3]*x[13]+1.3701*x[3]*x[15]-1.4719*x[3]*x[18]-1.7297*x[3]*x[23]-0.9671*x[3]*x[24]+1.7708*x[3]*x[25]+0.0522*x[3]*x[27]+0.7422*x[3]*x[29]+0.7249*x[3]*x[30]-1.2768*x[4]*x[5]-0.3658*x[4]*x[6]-0.5001*x[4]*x[7]+0.5013*x[4]*x[10]-0.2967*x[4]*x[11]-0.4912*x[4]*x[12]+0.3081*x[4]*x[13]-1.2645*x[4]*x[16]+0.2956*x[4]*x[17]-0.9131*x[4]*x[18]-0.4264*x[4]*x[19]-1.1574*x[4]*x[20]+1.3252*x[4]*x[21]+0.028*x[4]*x[22]+1.616*x[4]*x[23]-0.8163*x[4]*x[24]+1.125*x[4]*x[25]+0.6728*x[4]*x[26]+0.6792*x[4]*x[27]+0.5168*x[4]*x[28]-1.0665*x[5]*x[5]-1.3447*x[5]*x[6]-0.789*x[5]*x[8]+0.8007*x[5]*x[10]+1.4323*x[5]*x[11]-0.5775*x[5]*x[12]+1.4331*x[5]*x[14]-1.9278*x[5]*x[20]+1.2448*x[5]*x[23]-0.8863*x[5]*x[26]+0.681*x[5]*x[28]-0.0948*x[6]*x[7]-0.4015*x[6]*x[8]-0.5443*x[6]*x[10]+0.6706*x[6]*x[15]-0.1751*x[6]*x[21]-1.6962*x[6]*x[22]-0.0648*x[6]*x[25]+1.9988*x[6]*x[26]-1.3907*x[6]*x[28]-0.556*x[6]*x[30]-1.1105*x[7]*x[10]-0.1168*x[7]*x[11]-0.9644*x[7]*x[12]+0.5093*x[7]*x[13]+0.2014*x[7]*x[15]-1.2899*x[7]*x[16]+0.8506*x[7]*x[19]+1.9467*x[7]*x[20]-0.5072*x[7]*x[22]-1.1369*x[7]*x[25]+0.1855*x[7]*x[26]-0.0338*x[7]*x[27]+1.2797*x[7]*x[28]-0.639*x[8]*x[9]-0.1256*x[8]*x[10]-1.9003*x[8]*x[11]-0.4215*x[8]*x[17]-1.7597*x[8]*x[18]+1.0651*x[8]*x[19]+1.697*x[8]*x[20]-1.9739*x[8]*x[21]+1.2951*x[8]*x[22]-1.0296*x[8]*x[23]-1.8965*x[8]*x[27]-1.3728*x[8]*x[28]+0.0492*x[9]*x[15]-0.5941*x[9]*x[16]-0.2676*x[9]*x[19]-1.0169*x[9]*x[20]+1.7539*x[9]*x[21]-0.5264*x[9]*x[22]+0.2859*x[9]*x[23]-0.0399*x[9]*x[25]+1.934*x[9]*x[27]-0.2348*x[9]*x[28]-0.2912*x[10]*x[11]+0.8048*x[10]*x[15]+1.8223*x[10]*x[16]+1.524*x[10]*x[17]+0.0756*x[10]*x[18]+0.0977*x[10]*x[22]-1.6168*x[10]*x[23]+1.0992*x[10]*x[24]-0.9921*x[10]*x[25]-0.1915*x[10]*x[26]+0.1882*x[10]*x[28]+1.8683*x[11]*x[16]+1.1773*x[11]*x[17]+1.7395*x[11]*x[21]-0.4301*x[11]*x[22]+0.2431*x[11]*x[23]-0.5644*x[11]*x[24]-1.1676*x[11]*x[25]+1.0629*x[11]*x[28]-0.63*x[11]*x[29]+0.8642*x[11]*x[30]+0.1427*x[12]*x[12]-0.7147*x[12]*x[13]-1.593*x[12]*x[18]+0.5326*x[12]*x[24]+1.1173*x[12]*x[25]+1.7675*x[12]*x[26]+0.4735*x[12]*x[28]+0.4927*x[12]*x[30]-0.9028*x[13]*x[16]+0.3345*x[13]*x[19]-1.4677*x[13]*x[23]-0.342*x[13]*x[24]-0.5146*x[13]*x[25]+1.7533*x[13]*x[26]+0.2682*x[13]*x[27]-1.8861*x[13]*x[28]-1.0915*x[13]*x[29]+1.1795*x[14]*x[15]-0.6835*x[14]*x[16]-1.1408*x[14]*x[18]+0.534*x[14]*x[19]+1.326*x[14]*x[22]+1.9422*x[14]*x[26]+1.0577*x[14]*x[27]-1.8344*x[14]*x[28]+1.779*x[14]*x[29]-0.2018*x[15]*x[17]+1.5364*x[15]*x[19]-0.3326*x[15]*x[20]-1.0784*x[15]*x[21]+1.8437*x[15]*x[22]+1.3427*x[15]*x[23]-0.1634*x[15]*x[25]+1.6956*x[16]*x[17]-0.8275*x[16]*x[20]+0.6952*x[16]*x[22]+1.9434*x[16]*x[23]+0.7558*x[16]*x[24]-0.8549*x[16]*x[25]+1.4695*x[16]*x[26]-0.1789*x[16]*x[27]-1.0791*x[16]*x[29]+0.0515*x[16]*x[30]-1.8301*x[17]*x[17]-0.1083*x[17]*x[25]+0.5106*x[17]*x[27]+0.8552*x[17]*x[28]+1.1323*x[17]*x[29]+0.9154*x[17]*x[30]+0.9504*x[18]*x[21]+0.3126*x[18]*x[22]+0.9869*x[18]*x[24]-1.018*x[18]*x[26]+0.1452*x[18]*x[28]-0.6991*x[18]*x[29]-1.8088*x[18]*x[30]-0.5094*x[19]*x[19]-1.2439*x[19]*x[21]+0.5015*x[19]*x[22]-0.1141*x[19]*x[24]+1.8407*x[19]*x[25]+0.0462*x[19]*x[26]+1.6648*x[19]*x[29]-0.5457*x[20]*x[21]+1.9796*x[20]*x[23]-1.6215*x[20]*x[24]+0.6203*x[20]*x[26]+0.4676*x[20]*x[27]+0.9841*x[20]*x[28]+0.629*x[20]*x[29]+1.225*x[21]*x[23]-0.5759*x[21]*x[25]-1.9409*x[21]*x[28]-1.8519*x[22]*x[23]+1.0085*x[22]*x[24]-1.4798*x[22]*x[25]+0.1935*x[22]*x[26]+0.1324*x[23]*x[27]-1.928*x[23]*x[28]-1.6194*x[24]*x[24]+1.7853*x[24]*x[25]+0.899*x[24]*x[28]-1.9952*x[25]*x[26]-1.2412*x[25]*x[27]-0.3512*x[25]*x[28]-1.5958*x[25]*x[29]+0.0019*x[26]*x[27]-1.8083*x[26]*x[29]+0.5619*x[27]*x[27]-0.5997*x[27]*x[28]+0.1475*x[27]*x[30]-0.973*x[28]*x[29]-0.124*x[1]+0.7734*x[2]-0.3914*x[3]-0.6939*x[4]+0.8602*x[5]-0.2486*x[6]+0.2434*x[7]+0.3224*x[8]+0.361*x[9]+0.7667*x[10]-0.0557*x[11]-0.278*x[12]-0.9492*x[13]+0.7739*x[14]+0.4349*x[15]-0.4115*x[16]-0.1058*x[17]-0.1075*x[18]+0.8938*x[19]-0.4808*x[20]-0.2226*x[21]+0.379*x[22]+0.3991*x[23]-0.3063*x[24]+0.7427*x[25]-0.2189*x[26]+0.3667*x[27]+0.2054*x[28]+0.0236*x[29]-0.5315*x[30] <= 73.362)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 