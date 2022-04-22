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
@NLconstraint(m, e2, 1.667*x[1]*x[7]+1.1174*x[2]*x[3]-1.4507*x[2]*x[9]-1.762*x[2]*x[10]+0.8026*x[2]*x[15]+1.4557*x[2]*x[17]+0.4529*x[3]*x[7]-0.9965*x[3]*x[20]-0.237*x[4]*x[6]+1.3703*x[4]*x[7]-0.7735*x[4]*x[14]+0.8382*x[4]*x[17]-1.4581*x[4]*x[19]+1.8905*x[5]*x[5]+1.963*x[5]*x[12]-0.0647*x[5]*x[13]-0.9675*x[5]*x[17]+1.3911*x[5]*x[19]-0.9725*x[6]*x[7]-1.0578*x[6]*x[10]-1.4171*x[6]*x[18]-1.7049*x[7]*x[7]+0.8599*x[7]*x[8]+0.0911*x[7]*x[14]+0.319*x[7]*x[19]-1.5141*x[8]*x[12]+1.3157*x[8]*x[15]-1.5602*x[8]*x[16]+0.1747*x[8]*x[18]+0.8828*x[8]*x[20]-0.7625*x[9]*x[10]+0.3506*x[9]*x[11]-1.4378*x[9]*x[14]+1.7714*x[9]*x[18]+0.7344*x[10]*x[13]+1.2432*x[10]*x[14]+0.5907*x[11]*x[15]+0.4863*x[11]*x[17]-0.2337*x[12]*x[14]-1.4289*x[12]*x[15]+1.1012*x[12]*x[16]-0.4074*x[13]*x[13]-1.0302*x[13]*x[14]-0.9647*x[13]*x[17]+1.9687*x[13]*x[19]+0.2368*x[13]*x[20]+1.7309*x[14]*x[15]+1.0147*x[14]*x[18]-0.4171*x[15]*x[15]+1.0324*x[15]*x[20]+1.8287*x[17]*x[18]+0.5333*x[19]*x[19]+0.5307*x[1]+0.753*x[2]-0.8016*x[3]-0.331*x[4]+0.2902*x[5]-0.7368*x[6]+0.6151*x[7]+0.0837*x[8]-0.4685*x[9]-0.0823*x[10]+0.0219*x[11]+0.0097*x[12]+0.9235*x[13]+0.1005*x[14]-0.6207*x[15]-0.5978*x[16]-0.5025*x[17]+0.9402*x[18]+0.5528*x[19]-0.4546*x[20] <= 49.695)
@NLconstraint(m, e3, 1.8543*x[1]*x[10]-0.392*x[1]*x[8]-0.8289*x[1]*x[12]+1.6524*x[2]*x[7]-0.3037*x[2]*x[9]+1.0706*x[2]*x[11]+1.5883*x[2]*x[19]+1.3266*x[3]*x[11]+1.298*x[3]*x[15]-1.3859*x[4]*x[8]+1.0739*x[4]*x[13]+1.6232*x[5]*x[5]+0.7204*x[5]*x[7]+0.9177*x[5]*x[9]+0.9087*x[5]*x[10]-0.7489*x[5]*x[11]+1.6292*x[5]*x[15]-0.9745*x[5]*x[16]+0.1274*x[5]*x[19]-0.7397*x[6]*x[8]-1.5344*x[6]*x[18]+0.7055*x[7]*x[7]+1.1618*x[7]*x[14]-1.367*x[7]*x[15]+1.8372*x[7]*x[20]+0.4882*x[8]*x[15]+0.4986*x[8]*x[17]+0.9937*x[8]*x[19]+1.7104*x[9]*x[10]-1.6589*x[9]*x[13]+1.1234*x[9]*x[14]-1.0402*x[9]*x[16]+1.458*x[10]*x[16]-0.0286*x[11]*x[16]+1.9522*x[11]*x[17]-1.0689*x[12]*x[14]+1.5417*x[12]*x[16]+0.2378*x[12]*x[17]-1.8456*x[12]*x[18]-1.658*x[13]*x[14]+0.8962*x[13]*x[15]-0.4439*x[14]*x[18]-1.2811*x[14]*x[20]-0.2185*x[15]*x[15]-0.3386*x[15]*x[16]-0.6359*x[15]*x[17]-0.7681*x[15]*x[18]-0.0355*x[16]*x[20]-0.3728*x[17]*x[17]-0.2363*x[17]*x[19]-0.8408*x[18]*x[19]+1.8811*x[20]*x[20]-0.9605*x[1]+0.9985*x[2]+0.9604*x[3]+0.2233*x[4]+0.1751*x[5]+0.9245*x[6]+0.7868*x[7]-0.5956*x[8]-0.9745*x[9]-0.49*x[10]+0.7809*x[11]-0.4609*x[12]+0.778*x[13]+0.0383*x[14]-0.2656*x[15]+0.9676*x[16]+0.7539*x[17]+0.3629*x[18]-0.2751*x[19]-0.6036*x[20] <= 18.723)
@NLconstraint(m, e4, (-0.0859*x[1]*x[2])-0.6436*x[1]*x[10]+0.6287*x[1]*x[17]+0.6069*x[2]*x[3]+0.4746*x[2]*x[4]+0.777*x[2]*x[12]+0.8266*x[2]*x[15]+0.2288*x[2]*x[18]-1.9306*x[3]*x[5]+1.6939*x[3]*x[6]-1.0294*x[3]*x[8]+1.9747*x[3]*x[11]-1.445*x[3]*x[13]-0.1552*x[3]*x[14]-0.4753*x[4]*x[4]+1.2309*x[4]*x[6]+0.0397*x[4]*x[15]-1.9527*x[4]*x[20]+0.5574*x[5]*x[15]-1.7424*x[5]*x[16]-1.6474*x[5]*x[17]+1.3817*x[6]*x[7]+0.8926*x[6]*x[8]+0.82*x[6]*x[9]+1.4272*x[6]*x[15]+0.4992*x[6]*x[17]+1.3194*x[6]*x[18]-0.3335*x[6]*x[19]+1.9137*x[6]*x[20]+1.3148*x[7]*x[7]+0.9445*x[7]*x[10]+0.455*x[7]*x[20]-0.1562*x[8]*x[9]+0.1295*x[8]*x[13]-1.1985*x[8]*x[14]+1.2874*x[8]*x[15]+1.3009*x[9]*x[13]+1.0801*x[9]*x[20]+0.147*x[10]*x[11]-0.9814*x[10]*x[14]+1.9221*x[10]*x[19]-0.3003*x[10]*x[20]-1.2497*x[11]*x[13]+1.3023*x[11]*x[14]-1.0213*x[13]*x[16]-1.9427*x[14]*x[18]-1.1855*x[15]*x[15]+0.2409*x[15]*x[16]+0.856*x[15]*x[18]-1.3619*x[16]*x[16]+1.6608*x[16]*x[18]-0.6083*x[16]*x[20]-0.0621*x[1]-0.674*x[2]+0.0977*x[3]-0.3899*x[4]-0.6912*x[5]+0.15*x[6]-0.7118*x[7]-0.6134*x[8]+0.3822*x[9]+0.9004*x[10]-0.7372*x[11]+0.42*x[12]-0.2405*x[13]-0.204*x[14]-0.998*x[15]-0.1736*x[16]+0.6076*x[17]+0.7557*x[18]-0.7184*x[19]-0.9139*x[20] <= 56.565)
@NLconstraint(m, e5, 1.894*x[1]*x[7]-1.0094*x[1]*x[10]-0.2223*x[1]*x[13]-1.1005*x[1]*x[17]+0.7866*x[2]*x[10]-0.2435*x[2]*x[12]-0.6227*x[2]*x[18]-0.5351*x[3]*x[5]-1.4488*x[3]*x[9]+0.1968*x[3]*x[12]-0.6627*x[3]*x[13]+0.1659*x[3]*x[15]+1.9599*x[3]*x[17]+1.1009*x[3]*x[18]-0.6578*x[3]*x[19]-1.3956*x[3]*x[20]+1.24*x[4]*x[4]-0.2933*x[4]*x[5]+1.9082*x[4]*x[14]+1.172*x[4]*x[15]+1.727*x[4]*x[20]-1.7517*x[5]*x[5]+1.3723*x[5]*x[7]+1.3204*x[5]*x[9]-1.4502*x[5]*x[11]-1.1138*x[5]*x[18]+0.6959*x[5]*x[19]+1.8264*x[6]*x[9]-1.0457*x[6]*x[10]+0.7079*x[6]*x[18]-0.5358*x[6]*x[19]-1.9877*x[7]*x[17]-1.9945*x[8]*x[11]-1.805*x[9]*x[13]+0.3789*x[9]*x[14]+0.9914*x[9]*x[17]-1.3346*x[9]*x[19]+1.3358*x[10]*x[14]+0.538*x[10]*x[15]+1.8422*x[10]*x[19]+0.7765*x[11]*x[13]-1.2622*x[11]*x[14]+1.6113*x[11]*x[15]-0.8559*x[12]*x[19]+0.6595*x[13]*x[15]+1.5161*x[13]*x[16]+0.4398*x[13]*x[19]+1.7565*x[14]*x[14]+1.3107*x[14]*x[20]+1.1073*x[15]*x[17]+0.7851*x[15]*x[18]-1.0249*x[18]*x[20]+0.8643*x[1]+0.533*x[2]+0.1871*x[3]-0.1905*x[4]+0.9994*x[5]-0.7306*x[6]-0.2797*x[7]-0.7742*x[8]+0.2634*x[9]-0.6882*x[10]-0.1916*x[11]-0.6292*x[12]+0.3706*x[13]+0.2252*x[14]-0.5111*x[15]-0.7106*x[16]+0.436*x[17]+0.6397*x[18]-0.7626*x[19]-0.7465*x[20] <= 28.634)
@NLconstraint(m, e6, 1.2871*x[1]*x[5]-0.8953*x[1]*x[12]-1.2742*x[1]*x[14]+1.3248*x[2]*x[2]-1.0415*x[2]*x[3]+0.9667*x[2]*x[4]-0.1849*x[2]*x[5]+1.6306*x[2]*x[6]-0.964*x[2]*x[8]-0.5246*x[2]*x[9]+1.0674*x[2]*x[10]+1.963*x[2]*x[11]-1.1491*x[2]*x[17]-0.1184*x[3]*x[6]-0.4162*x[3]*x[11]-0.5624*x[3]*x[17]+0.5878*x[3]*x[19]+0.4155*x[4]*x[8]-0.5919*x[4]*x[9]+1.1935*x[4]*x[12]-0.2344*x[4]*x[14]+1.4148*x[4]*x[17]-0.42*x[5]*x[9]+1.8633*x[5]*x[17]-0.5642*x[5]*x[18]+0.8765*x[5]*x[19]+0.5145*x[6]*x[6]-1.1965*x[6]*x[7]+0.3559*x[6]*x[14]-0.2564*x[6]*x[15]-0.0435*x[6]*x[20]+1.9663*x[7]*x[12]-0.914*x[7]*x[15]+0.3176*x[7]*x[16]+0.711*x[8]*x[13]+0.5944*x[9]*x[9]-1.651*x[9]*x[13]-0.9838*x[9]*x[14]+0.4257*x[10]*x[12]+0.732*x[10]*x[13]-0.1848*x[10]*x[16]+0.5944*x[10]*x[18]-1.5456*x[10]*x[19]-1.8758*x[11]*x[11]-1.2626*x[11]*x[13]-1.5307*x[11]*x[14]-0.3621*x[11]*x[17]-0.6273*x[12]*x[13]+0.0926*x[12]*x[17]+1.9721*x[15]*x[16]+1.5207*x[16]*x[18]+0.0616*x[17]*x[18]-0.8113*x[1]+0.3038*x[2]+0.8093*x[3]+0.5277*x[4]+0.7849*x[5]+0.6706*x[6]+0.0152*x[7]-0.009*x[8]+0.0082*x[9]+0.5372*x[10]-0.2333*x[11]-0.8164*x[12]+0.8521*x[13]+0.4163*x[14]+0.6625*x[15]+0.6022*x[16]+0.1782*x[17]+0.63*x[18]+0.4385*x[19]+0.9963*x[20] <= 93.685)
@NLconstraint(m, e7, 1.7895*x[1]*x[2]-0.9541*x[1]*x[3]-0.6608*x[1]*x[7]-1.0332*x[1]*x[9]-1.4072*x[1]*x[10]+1.301*x[1]*x[12]-1.6924*x[2]*x[6]-0.0884*x[2]*x[12]-0.7052*x[2]*x[16]-0.1026*x[3]*x[11]-1.7334*x[3]*x[13]-0.1842*x[3]*x[17]-1.3357*x[3]*x[19]-0.2437*x[4]*x[10]+1.7146*x[4]*x[12]-1.2459*x[4]*x[18]+0.6768*x[5]*x[7]-0.5831*x[5]*x[10]+1.5431*x[5]*x[19]+0.9586*x[6]*x[10]+1.6047*x[6]*x[14]-1.6835*x[6]*x[16]-1.4392*x[6]*x[19]-1.9949*x[7]*x[10]-1.2534*x[7]*x[12]+1.9316*x[7]*x[17]+1.1265*x[7]*x[18]-1.7823*x[7]*x[20]-1.673*x[8]*x[10]+1.573*x[8]*x[11]+1.6562*x[8]*x[14]+1.0499*x[9]*x[16]+1.745*x[9]*x[18]-1.3287*x[9]*x[20]-1.5289*x[10]*x[14]-1.2088*x[10]*x[18]-0.1361*x[10]*x[19]-0.4612*x[11]*x[19]+0.9552*x[12]*x[13]-1.662*x[12]*x[17]+0.9386*x[13]*x[14]-1.0576*x[13]*x[16]+0.7041*x[13]*x[19]+0.5337*x[14]*x[15]+1.6083*x[14]*x[17]-0.0766*x[14]*x[19]+0.0734*x[15]*x[15]+1.7683*x[15]*x[17]+0.7362*x[15]*x[18]+1.5142*x[15]*x[19]-1.6586*x[16]*x[20]-1.7812*x[17]*x[19]-0.9407*x[1]-0.5041*x[2]-0.4612*x[3]+0.6372*x[4]-0.9423*x[5]+0.4769*x[6]+0.6691*x[7]-0.6518*x[8]+0.5892*x[9]+0.1282*x[10]-0.0097*x[11]-0.0037*x[12]-0.4974*x[13]-0.1368*x[14]-0.663*x[15]-0.3471*x[16]-0.9665*x[17]-0.6331*x[18]-0.0998*x[19]+0.9348*x[20] <= 22.077)
@NLconstraint(m, e8, (-1.1231*x[1]*x[14])-1.8626*x[1]*x[18]+0.327*x[2]*x[2]+1.6463*x[2]*x[10]-0.1286*x[2]*x[14]+0.8925*x[2]*x[18]-1.1592*x[2]*x[19]+0.292*x[3]*x[3]+0.4666*x[3]*x[4]-1.9703*x[3]*x[5]+1.604*x[3]*x[7]-0.2293*x[3]*x[8]+1.831*x[3]*x[9]-1.344*x[3]*x[10]+0.0006*x[3]*x[14]+1.5751*x[4]*x[10]-0.4506*x[4]*x[12]-0.7374*x[4]*x[13]+0.8911*x[4]*x[16]-1.6995*x[5]*x[12]+1.1905*x[5]*x[18]+0.4695*x[5]*x[19]+0.382*x[6]*x[9]+1.2022*x[6]*x[13]+0.9576*x[6]*x[14]+0.1715*x[7]*x[8]+0.1422*x[7]*x[9]-0.1221*x[7]*x[12]-1.7606*x[7]*x[20]+1.2539*x[8]*x[12]-1.3906*x[8]*x[18]+0.0369*x[9]*x[12]-1.7392*x[9]*x[13]-1.0026*x[9]*x[14]+1.9951*x[9]*x[15]-1.1637*x[9]*x[16]+0.9673*x[9]*x[20]+0.304*x[10]*x[18]+0.4996*x[11]*x[12]-1.1612*x[11]*x[14]-0.3673*x[12]*x[18]+0.2553*x[12]*x[20]+1.6607*x[13]*x[13]+1.8857*x[13]*x[14]+0.0063*x[14]*x[14]+0.8143*x[15]*x[17]-0.8207*x[15]*x[19]-0.4632*x[16]*x[16]-1.353*x[16]*x[17]-0.3346*x[17]*x[18]+0.0803*x[18]*x[18]+0.7918*x[18]*x[20]+0.9703*x[1]+0.9858*x[2]+0.859*x[3]+0.0264*x[4]-0.8325*x[5]-0.2402*x[6]+0.9962*x[7]-0.612*x[8]-0.7468*x[9]+0.5066*x[10]+0.5209*x[11]-0.8096*x[12]+0.2097*x[13]-0.8223*x[14]+0.8219*x[15]+0.8915*x[16]+0.4384*x[17]+0.0104*x[18]-0.6145*x[19]+0.3569*x[20] <= 45.823)
@NLconstraint(m, e9, 0.288*x[1]*x[17]-1.8829*x[1]*x[20]-0.4767*x[2]*x[3]-0.4357*x[2]*x[4]+1.863*x[2]*x[5]+1.4403*x[2]*x[7]-0.1935*x[2]*x[10]-1.4438*x[2]*x[17]-0.4843*x[3]*x[4]+0.4833*x[3]*x[8]-0.4773*x[3]*x[11]+0.9615*x[3]*x[14]+0.3636*x[4]*x[8]+0.3913*x[4]*x[9]-1.8953*x[4]*x[11]+1.0736*x[4]*x[15]-1.58*x[4]*x[19]+1.7416*x[5]*x[5]+1.0889*x[5]*x[9]-0.4771*x[5]*x[12]-0.4416*x[5]*x[14]-0.0924*x[5]*x[15]-1.5454*x[5]*x[16]-0.081*x[5]*x[18]-0.858*x[6]*x[15]-0.1025*x[6]*x[20]+1.3387*x[7]*x[8]+1.7997*x[7]*x[9]-1.25*x[7]*x[10]-1.6331*x[7]*x[15]-0.7224*x[7]*x[16]-0.745*x[7]*x[18]-1.765*x[8]*x[12]-1.866*x[8]*x[15]-1.8189*x[8]*x[19]-1.2604*x[9]*x[12]-1.0622*x[9]*x[13]-0.7302*x[9]*x[17]-0.8948*x[9]*x[20]-0.868*x[10]*x[14]-1.9463*x[11]*x[12]-0.0355*x[11]*x[13]-1.0562*x[11]*x[14]+0.5524*x[11]*x[15]-1.9893*x[11]*x[18]+1.9029*x[11]*x[19]-1.6215*x[13]*x[13]+1.5016*x[13]*x[15]+0.284*x[14]*x[16]-1.3517*x[15]*x[18]+1.2022*x[17]*x[18]+1.7104*x[18]*x[20]-0.1622*x[1]-0.0369*x[2]-0.5992*x[3]+0.9241*x[4]+0.9873*x[5]+0.5992*x[6]+0.8133*x[7]+0.4239*x[8]-0.1981*x[9]+0.5006*x[10]-0.5385*x[11]+0.1593*x[12]-0.0871*x[13]-0.9382*x[14]-0.0148*x[15]-0.4904*x[16]+0.5096*x[17]-0.4809*x[18]-0.4848*x[19]+0.3062*x[20] <= 96.591)
@NLconstraint(m, e10, 1.0756*x[1]*x[6]-0.2715*x[1]*x[12]+0.9367*x[1]*x[13]-0.1951*x[1]*x[14]+1.1552*x[2]*x[10]+1.5268*x[2]*x[14]-0.0368*x[2]*x[16]-1.6967*x[2]*x[17]-0.6452*x[2]*x[20]-0.961*x[3]*x[7]-1.6975*x[3]*x[9]+0.068*x[3]*x[12]-0.5934*x[3]*x[15]+0.816*x[4]*x[7]-0.0439*x[4]*x[10]+0.2156*x[4]*x[17]-0.6318*x[5]*x[6]+1.2849*x[5]*x[9]-0.5381*x[5]*x[15]+0.3521*x[5]*x[20]+0.4291*x[6]*x[10]-0.0539*x[7]*x[11]-0.3175*x[7]*x[12]+1.6705*x[7]*x[14]-1.5327*x[7]*x[15]+0.4177*x[7]*x[18]+1.9647*x[7]*x[19]+0.5044*x[8]*x[9]-0.7283*x[8]*x[12]+1.5223*x[8]*x[13]-0.9697*x[8]*x[14]+0.0109*x[8]*x[17]-1.5603*x[9]*x[10]+1.1111*x[9]*x[12]-1.8319*x[9]*x[15]-1.9996*x[9]*x[16]-0.7956*x[10]*x[15]-1.9951*x[10]*x[19]+1.2308*x[11]*x[13]+1.1905*x[11]*x[14]+1.3445*x[11]*x[15]-0.6441*x[11]*x[19]+0.9541*x[11]*x[20]-1.0312*x[12]*x[16]-1.7827*x[12]*x[18]+1.8304*x[13]*x[15]-1.6907*x[13]*x[19]+0.7342*x[13]*x[20]-0.9223*x[14]*x[20]-1.3326*x[15]*x[15]+0.0465*x[16]*x[20]+0.108*x[17]*x[18]-0.6343*x[1]+0.7847*x[2]+0.2423*x[3]-0.357*x[4]-0.2066*x[5]-0.1247*x[6]-0.9086*x[7]-0.4053*x[8]-0.6526*x[9]-0.7753*x[10]+0.6139*x[11]+0.0606*x[12]-0.4917*x[13]+0.82*x[14]-0.8487*x[15]-0.4958*x[16]-0.4949*x[17]+0.7862*x[18]+0.7091*x[19]-0.6288*x[20] <= 85.414)
@NLconstraint(m, e11, (-0.5283*x[1]*x[15])-0.9504*x[1]*x[17]+0.7254*x[2]*x[3]+0.6694*x[2]*x[4]+0.2467*x[2]*x[7]-0.7048*x[3]*x[14]+0.9626*x[3]*x[15]+1.3073*x[3]*x[17]-1.2149*x[4]*x[5]-0.5358*x[4]*x[12]+1.9794*x[4]*x[13]+1.5365*x[4]*x[14]+1.0108*x[4]*x[15]+1.3168*x[4]*x[17]+1.7676*x[4]*x[19]-0.226*x[5]*x[8]+1.7205*x[5]*x[9]-0.3986*x[5]*x[10]+1.3806*x[5]*x[11]+0.5583*x[6]*x[13]+1.5187*x[6]*x[15]+1.3982*x[6]*x[16]+0.3418*x[6]*x[18]-0.8291*x[7]*x[12]+0.6688*x[7]*x[15]-1.0515*x[7]*x[16]-0.7638*x[7]*x[17]+0.2969*x[7]*x[19]-1.9482*x[7]*x[20]+1.6561*x[8]*x[10]-1.6671*x[8]*x[17]+1.7754*x[8]*x[19]-1.5988*x[9]*x[10]-0.4995*x[9]*x[15]+1.7033*x[9]*x[17]+1.6061*x[9]*x[18]+1.3851*x[10]*x[15]-0.7874*x[11]*x[12]+0.4016*x[12]*x[14]+1.0219*x[12]*x[15]+1.3877*x[12]*x[17]+1.2285*x[12]*x[19]-1.7999*x[13]*x[14]-1.5294*x[13]*x[19]-0.9156*x[14]*x[14]-0.4451*x[14]*x[15]-1.6489*x[14]*x[16]+0.5921*x[14]*x[18]-0.5504*x[15]*x[16]+1.7027*x[15]*x[17]+0.6363*x[15]*x[19]-0.4805*x[18]*x[20]+0.1445*x[1]-0.773*x[2]+0.1692*x[3]+0.8432*x[4]+0.8133*x[5]+0.1169*x[6]-0.1312*x[7]+0.9717*x[8]+0.3126*x[9]+0.4154*x[10]-0.0105*x[11]+0.4772*x[12]+0.1875*x[13]+0.9525*x[14]-0.3099*x[15]-0.239*x[16]+0.5059*x[17]+0.466*x[18]-0.334*x[19]+0.8077*x[20] <= 65.741)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
