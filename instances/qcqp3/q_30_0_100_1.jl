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
@NLconstraint(m, e1, -(0.9951*x[1]*x[1]+0.1336*x[1]*x[2]+0.9318*x[1]*x[3]+0.4959*x[1]*x[4]-0.2652*x[1]*x[5]-0.0387*x[1]*x[6]-0.8525*x[1]*x[7]-0.9893*x[1]*x[8]-0.3058*x[1]*x[9]-0.3155*x[1]*x[10]-0.5641*x[1]*x[11]-0.7337*x[1]*x[12]+0.801*x[1]*x[13]-0.2265*x[1]*x[14]-0.109*x[1]*x[15]+0.3239*x[1]*x[16]-0.9678*x[1]*x[17]+0.3017*x[1]*x[18]+0.2928*x[1]*x[19]-0.354*x[1]*x[20]+0.7114*x[1]*x[21]-0.1974*x[1]*x[22]-0.5863*x[1]*x[23]+0.9371*x[1]*x[24]+0.1968*x[1]*x[25]+0.346*x[1]*x[26]-0.0862*x[1]*x[27]-0.34*x[1]*x[28]-0.7992*x[1]*x[29]+0.5109*x[1]*x[30]+0.2114*x[2]*x[2]+0.4381*x[2]*x[3]+0.7947*x[2]*x[4]+0.3165*x[2]*x[5]-0.6986*x[2]*x[6]+0.2246*x[2]*x[7]+0.9573*x[2]*x[8]+0.9983*x[2]*x[9]-0.4864*x[2]*x[10]+0.1017*x[2]*x[11]+0.3181*x[2]*x[12]+0.108*x[2]*x[13]+0.9555*x[2]*x[14]+0.8038*x[2]*x[15]+0.3158*x[2]*x[16]+0.4577*x[2]*x[17]-0.1951*x[2]*x[18]+0.8573*x[2]*x[19]-0.7043*x[2]*x[20]+0.3491*x[2]*x[21]+0.5392*x[2]*x[22]-0.3214*x[2]*x[23]-0.7684*x[2]*x[24]+0.2287*x[2]*x[25]+0.6412*x[2]*x[26]+0.8942*x[2]*x[27]+0.4623*x[2]*x[28]-0.0048*x[2]*x[29]-0.2504*x[2]*x[30]-0.157*x[3]*x[3]+0.1058*x[3]*x[4]+0.9958*x[3]*x[5]+0.9808*x[3]*x[6]+0.4926*x[3]*x[7]+0.9075*x[3]*x[8]-0.8135*x[3]*x[9]+0.468*x[3]*x[10]+0.5035*x[3]*x[11]+0.8937*x[3]*x[12]+0.4124*x[3]*x[13]+0.6276*x[3]*x[14]+0.1172*x[3]*x[15]-0.8766*x[3]*x[16]-0.0392*x[3]*x[17]+0.1954*x[3]*x[18]-0.7249*x[3]*x[19]+0.1748*x[3]*x[20]+0.0399*x[3]*x[21]+0.7718*x[3]*x[22]-0.3924*x[3]*x[23]+0.3393*x[3]*x[24]+0.3299*x[3]*x[25]+0.0074*x[3]*x[26]-0.4768*x[3]*x[27]-0.8469*x[3]*x[28]-0.7975*x[3]*x[29]+0.0985*x[3]*x[30]-0.2488*x[4]*x[4]-0.9697*x[4]*x[5]+0.5858*x[4]*x[6]+0.2418*x[4]*x[7]+0.5472*x[4]*x[8]+0.9072*x[4]*x[9]-0.7715*x[4]*x[10]-0.3631*x[4]*x[11]+0.1936*x[4]*x[12]-0.9037*x[4]*x[13]-0.7716*x[4]*x[14]-0.5681*x[4]*x[15]-0.7989*x[4]*x[16]-0.8533*x[4]*x[17]-0.5063*x[4]*x[18]-0.1132*x[4]*x[19]-0.5833*x[4]*x[20]+0.134*x[4]*x[21]-0.9514*x[4]*x[22]-0.1594*x[4]*x[23]-0.2043*x[4]*x[24]+0.9532*x[4]*x[25]+0.3852*x[4]*x[26]-0.9901*x[4]*x[27]-0.7402*x[4]*x[28]-0.9064*x[4]*x[29]+0.6796*x[4]*x[30]+0.357*x[5]*x[5]+0.1639*x[5]*x[6]+0.4671*x[5]*x[7]-0.7679*x[5]*x[8]+0.6806*x[5]*x[9]+0.67*x[5]*x[10]+0.4931*x[5]*x[11]+0.6864*x[5]*x[12]+0.0577*x[5]*x[13]+0.331*x[5]*x[14]+0.4615*x[5]*x[15]-0.1788*x[5]*x[16]-0.2886*x[5]*x[17]+0.4708*x[5]*x[18]-0.0574*x[5]*x[19]-0.0747*x[5]*x[20]+0.5194*x[5]*x[21]+0.4049*x[5]*x[22]-0.4841*x[5]*x[23]+0.8754*x[5]*x[24]-0.0878*x[5]*x[25]+0.617*x[5]*x[26]+0.8177*x[5]*x[27]+0.3898*x[5]*x[28]-0.561*x[5]*x[29]+0.7099*x[5]*x[30]+0.4888*x[6]*x[6]-0.3978*x[6]*x[7]+0.3439*x[6]*x[8]+0.2374*x[6]*x[9]+0.9351*x[6]*x[10]+0.9805*x[6]*x[11]-0.324*x[6]*x[12]+0.8415*x[6]*x[13]-0.3219*x[6]*x[14]+0.8619*x[6]*x[15]+0.0931*x[6]*x[16]-0.069*x[6]*x[17]-0.6462*x[6]*x[18]-0.244*x[6]*x[19]-0.6496*x[6]*x[20]-0.2863*x[6]*x[21]+0.3314*x[6]*x[22]+0.2371*x[6]*x[23]-0.0621*x[6]*x[24]-0.3675*x[6]*x[25]-0.4622*x[6]*x[26]-0.6002*x[6]*x[27]-0.1691*x[6]*x[28]+0.9586*x[6]*x[29]+0.0864*x[6]*x[30]-0.741*x[7]*x[7]+0.6095*x[7]*x[8]+0.6916*x[7]*x[9]+0.4181*x[7]*x[10]+0.0579*x[7]*x[11]+0.3277*x[7]*x[12]+0.8015*x[7]*x[13]+0.8823*x[7]*x[14]-0.7712*x[7]*x[15]+0.7333*x[7]*x[16]+0.2647*x[7]*x[17]-0.5144*x[7]*x[18]-0.6792*x[7]*x[19]-0.9575*x[7]*x[20]-0.6195*x[7]*x[21]-0.3753*x[7]*x[22]+0.6193*x[7]*x[23]+0.1474*x[7]*x[24]+0.6525*x[7]*x[25]-0.4271*x[7]*x[26]-0.679*x[7]*x[27]-0.3382*x[7]*x[28]-0.4683*x[7]*x[29]+0.0896*x[7]*x[30]+0.107*x[8]*x[8]-0.9568*x[8]*x[9]-0.7025*x[8]*x[10]-0.7902*x[8]*x[11]+0.2284*x[8]*x[12]-0.1874*x[8]*x[13]+0.8031*x[8]*x[14]+0.8857*x[8]*x[15]-0.6868*x[8]*x[16]+0.8739*x[8]*x[17]-0.7291*x[8]*x[18]-0.2574*x[8]*x[19]-0.357*x[8]*x[20]+0.4299*x[8]*x[21]+0.4594*x[8]*x[22]-0.2428*x[8]*x[23]+0.6579*x[8]*x[24]+0.9073*x[8]*x[25]-0.3832*x[8]*x[26]+0.1595*x[8]*x[27]-0.5331*x[8]*x[28]+0.6888*x[8]*x[29]-0.4837*x[8]*x[30]+0.6795*x[9]*x[9]+0.0753*x[9]*x[10]+0.2431*x[9]*x[11]-0.0184*x[9]*x[12]-0.4303*x[9]*x[13]-0.5289*x[9]*x[14]+0.3028*x[9]*x[15]+0.2143*x[9]*x[16]-0.2037*x[9]*x[17]+0.6976*x[9]*x[18]+0.2752*x[9]*x[19]-0.4824*x[9]*x[20]-0.2823*x[9]*x[21]+0.1237*x[9]*x[22]-0.7571*x[9]*x[23]+0.9569*x[9]*x[24]-0.2336*x[9]*x[25]+0.4414*x[9]*x[26]-0.2835*x[9]*x[27]+0.8198*x[9]*x[28]+0.0874*x[9]*x[29]+0.9194*x[9]*x[30]+0.8589*x[10]*x[10]+0.2666*x[10]*x[11]-0.4088*x[10]*x[12]-0.6505*x[10]*x[13]+0.6852*x[10]*x[14]+0.2372*x[10]*x[15]+0.4118*x[10]*x[16]-0.5151*x[10]*x[17]+0.5959*x[10]*x[18]-0.218*x[10]*x[19]-0.7801*x[10]*x[20]+0.5074*x[10]*x[21]-0.9404*x[10]*x[22]+0.4013*x[10]*x[23]+0.0504*x[10]*x[24]+0.5051*x[10]*x[25]+0.2954*x[10]*x[26]+0.7422*x[10]*x[27]+0.6614*x[10]*x[28]+0.9144*x[10]*x[29]-0.5555*x[10]*x[30]+0.159*x[11]*x[11]+0.9815*x[11]*x[12]+0.6799*x[11]*x[13]-0.6504*x[11]*x[14]+0.4191*x[11]*x[15]-0.3969*x[11]*x[16]-0.9499*x[11]*x[17]+0.8335*x[11]*x[18]+0.3776*x[11]*x[19]+0.5135*x[11]*x[20]+0.8655*x[11]*x[21]-0.89*x[11]*x[22]-0.0021*x[11]*x[23]-0.881*x[11]*x[24]-0.6563*x[11]*x[25]+0.3767*x[11]*x[26]-0.3868*x[11]*x[27]+0.4704*x[11]*x[28]+0.5043*x[11]*x[29]-0.2086*x[11]*x[30]-0.8244*x[12]*x[12]-0.9021*x[12]*x[13]+0.5587*x[12]*x[14]+0.3616*x[12]*x[15]-0.3769*x[12]*x[16]+0.0455*x[12]*x[17]+0.0116*x[12]*x[18]-0.1229*x[12]*x[19]+0.1753*x[12]*x[20]-0.4053*x[12]*x[21]-0.4102*x[12]*x[22]-0.8524*x[12]*x[23]+0.9499*x[12]*x[24]+0.4563*x[12]*x[25]+0.5162*x[12]*x[26]-0.3816*x[12]*x[27]-0.507*x[12]*x[28]-0.4862*x[12]*x[29]+0.2361*x[12]*x[30]+0.8756*x[13]*x[13]+0.9844*x[13]*x[14]-0.5504*x[13]*x[15]+0.8946*x[13]*x[16]+0.6956*x[13]*x[17]+0.4003*x[13]*x[18]+0.1089*x[13]*x[19]-0.1168*x[13]*x[20]-0.5016*x[13]*x[21]+0.7953*x[13]*x[22]-0.7085*x[13]*x[23]-0.1308*x[13]*x[24]-0.0852*x[13]*x[25]-0.3812*x[13]*x[26]-0.0382*x[13]*x[27]+0.3795*x[13]*x[28]+0.6216*x[13]*x[29]-0.2157*x[13]*x[30]-0.4137*x[14]*x[14]+0.152*x[14]*x[15]+0.4507*x[14]*x[16]-0.7145*x[14]*x[17]-0.3329*x[14]*x[18]-0.6792*x[14]*x[19]+0.0692*x[14]*x[20]+0.4467*x[14]*x[21]-0.5436*x[14]*x[22]-0.602*x[14]*x[23]+0.9452*x[14]*x[24]+0.9871*x[14]*x[25]-0.8361*x[14]*x[26]-0.4982*x[14]*x[27]-0.5683*x[14]*x[28]-0.6084*x[14]*x[29]+0.7005*x[14]*x[30]-0.9106*x[15]*x[15]+0.7278*x[15]*x[16]-0.8657*x[15]*x[17]-0.1454*x[15]*x[18]-0.7254*x[15]*x[19]-0.7618*x[15]*x[20]-0.3881*x[15]*x[21]+0.2265*x[15]*x[22]+0.3273*x[15]*x[23]+0.7918*x[15]*x[24]+0.5074*x[15]*x[25]+0.2597*x[15]*x[26]-0.558*x[15]*x[27]-0.0323*x[15]*x[28]+0.23*x[15]*x[29]+0.9753*x[15]*x[30]+0.1184*x[16]*x[16]-0.2582*x[16]*x[17]-0.3248*x[16]*x[18]+0.4909*x[16]*x[19]+0.1395*x[16]*x[20]-0.0877*x[16]*x[21]+0.2964*x[16]*x[22]+0.3672*x[16]*x[23]-0.6592*x[16]*x[24]-0.4539*x[16]*x[25]-0.1185*x[16]*x[26]-0.0846*x[16]*x[27]-0.2095*x[16]*x[28]+0.3767*x[16]*x[29]-0.4022*x[16]*x[30]-0.5895*x[17]*x[17]-0.6154*x[17]*x[18]-0.162*x[17]*x[19]+0.3813*x[17]*x[20]-0.7189*x[17]*x[21]-0.7125*x[17]*x[22]+0.3249*x[17]*x[23]+0.1514*x[17]*x[24]+0.5499*x[17]*x[25]+0.5506*x[17]*x[26]+0.5307*x[17]*x[27]+0.753*x[17]*x[28]-0.8016*x[17]*x[29]-0.331*x[17]*x[30]+0.2902*x[18]*x[18]-0.7368*x[18]*x[19]+0.6151*x[18]*x[20]+0.0837*x[18]*x[21]-0.4685*x[18]*x[22]-0.0823*x[18]*x[23]+0.0219*x[18]*x[24]+0.0097*x[18]*x[25]+0.9235*x[18]*x[26]+0.1005*x[18]*x[27]-0.6207*x[18]*x[28]-0.5978*x[18]*x[29]-0.5025*x[18]*x[30]+0.9402*x[19]*x[19]+0.5528*x[19]*x[20]-0.4546*x[19]*x[21]-0.0061*x[19]*x[22]-0.2025*x[19]*x[23]+0.2266*x[19]*x[24]-0.8295*x[19]*x[25]+0.474*x[19]*x[26]+0.7257*x[19]*x[27]-0.3179*x[19]*x[28]+0.3889*x[19]*x[29]+0.2838*x[19]*x[30]-0.829*x[20]*x[20]+0.416*x[20]*x[21]+0.1849*x[20]*x[22]-0.5344*x[20]*x[23]-0.8496*x[20]*x[24]-0.3513*x[20]*x[25]+0.8262*x[20]*x[26]-0.5914*x[20]*x[27]-0.0945*x[20]*x[28]+0.4543*x[20]*x[29]-0.9433*x[20]*x[30]+0.0341*x[21]*x[21]+0.5353*x[21]*x[22]+0.7887*x[21]*x[23]+0.889*x[21]*x[24]-0.4204*x[21]*x[25]+0.0629*x[21]*x[26]-0.5343*x[21]*x[27]-0.3744*x[21]*x[28]-0.717*x[21]*x[29]-0.3148*x[21]*x[30]-0.6929*x[22]*x[22]+0.6984*x[22]*x[23]+0.9441*x[22]*x[24]-0.1182*x[22]*x[25]+0.5489*x[22]*x[26]-0.0876*x[22]*x[27]+0.729*x[22]*x[28]+0.456*x[22]*x[29]+0.2747*x[22]*x[30]+0.4481*x[23]*x[23]+0.2084*x[23]*x[24]-0.9474*x[23]*x[25]-0.4145*x[23]*x[26]-0.6056*x[23]*x[27]+0.8973*x[23]*x[28]+0.0637*x[23]*x[29]-0.9793*x[23]*x[30]-0.0957*x[24]*x[24]+0.9272*x[24]*x[25]+0.9722*x[24]*x[26]-0.3182*x[24]*x[27]+0.9186*x[24]*x[28]-0.3466*x[24]*x[29]+0.4085*x[24]*x[30]+0.5809*x[25]*x[25]+0.4471*x[25]*x[26]+0.4579*x[25]*x[27]-0.1092*x[25]*x[28]-0.2364*x[25]*x[29]+0.8444*x[25]*x[30]+0.4968*x[26]*x[26]-0.1465*x[26]*x[27]-0.5651*x[26]*x[28]+0.4588*x[26]*x[29]+0.5938*x[26]*x[30]+0.1168*x[27]*x[27]+0.7708*x[27]*x[28]-0.2337*x[27]*x[29]-0.5184*x[27]*x[30]-0.3698*x[28]*x[28]-0.1342*x[28]*x[29]-0.904*x[28]*x[30]-0.1518*x[29]*x[29]+0.4747*x[29]*x[30]+0.7456*x[30]*x[30]-0.384*x[1]+0.6866*x[2]+0.6322*x[3]-0.1864*x[4]+0.73*x[5]+0.7045*x[6]+0.0242*x[7]+0.5528*x[8]-0.0143*x[9]-0.5903*x[10]-0.1097*x[11]-0.1329*x[12]-0.8906*x[13]+0.401*x[14]+0.8385*x[15]-0.222*x[16]-0.5022*x[17]-0.2673*x[18]+0.9973*x[19]+0.3242*x[20]-0.6405*x[21]+0.7448*x[22]-0.5121*x[23]-0.7672*x[24]+0.6364*x[25]+0.0713*x[26]+0.9761*x[27]-0.1674*x[28]+0.6164*x[29]-0.5201*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

 
