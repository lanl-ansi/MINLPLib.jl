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
@NLconstraint(m, e1, -(0.2947*x[1]*x[3]-0.5315*x[1]*x[2]-0.3557*x[1]*x[4]+0.944*x[1]*x[5]+0.0588*x[1]*x[6]+0.6365*x[1]*x[8]+0.8022*x[1]*x[9]+0.4358*x[1]*x[10]+0.2108*x[1]*x[11]+0.469*x[1]*x[12]+0.9107*x[1]*x[13]-0.58*x[1]*x[15]+0.334*x[1]*x[16]+0.1885*x[1]*x[19]-0.8538*x[1]*x[20]-0.5055*x[2]*x[2]-0.359*x[2]*x[3]+0.2528*x[2]*x[11]+0.6898*x[2]*x[12]-0.2722*x[2]*x[16]-0.0381*x[2]*x[18]+0.6859*x[2]*x[19]-0.7807*x[2]*x[20]-0.6035*x[3]*x[3]+0.5607*x[3]*x[4]-0.9033*x[3]*x[5]-0.2758*x[3]*x[7]+0.9996*x[3]*x[13]-0.3574*x[3]*x[14]+0.5771*x[3]*x[15]+0.3081*x[3]*x[17]+0.0909*x[3]*x[18]+0.9055*x[3]*x[19]+0.776*x[4]*x[4]-0.8326*x[4]*x[6]+0.633*x[4]*x[7]+0.8591*x[4]*x[8]-0.3945*x[4]*x[13]+0.4562*x[4]*x[16]-0.3822*x[4]*x[18]+0.6947*x[4]*x[19]-0.1666*x[4]*x[20]+0.8415*x[5]*x[5]+0.5483*x[5]*x[8]-0.7353*x[5]*x[9]+0.1118*x[5]*x[11]-0.0323*x[5]*x[12]-0.3556*x[5]*x[13]+0.7519*x[5]*x[15]-0.6891*x[5]*x[16]-0.4931*x[5]*x[17]+0.9618*x[5]*x[18]-0.2274*x[6]*x[12]+0.2147*x[6]*x[14]-0.2073*x[6]*x[15]+0.8744*x[6]*x[17]-0.6576*x[6]*x[19]-0.4052*x[6]*x[20]-0.1077*x[7]*x[8]+0.8342*x[7]*x[9]-0.2035*x[7]*x[12]+0.6935*x[7]*x[13]+0.4454*x[7]*x[16]-0.5659*x[7]*x[18]-0.7187*x[7]*x[20]-0.8429*x[8]*x[8]-0.0239*x[8]*x[12]+0.524*x[8]*x[13]-0.7281*x[8]*x[14]-0.2129*x[8]*x[17]-0.3298*x[8]*x[19]-0.2309*x[8]*x[20]-0.3602*x[9]*x[9]+0.3476*x[9]*x[10]-0.387*x[9]*x[11]+0.6715*x[9]*x[12]-0.9569*x[9]*x[14]-0.1556*x[9]*x[15]+0.5716*x[9]*x[17]+0.3225*x[9]*x[18]+0.7753*x[10]*x[13]+0.4374*x[10]*x[14]-0.436*x[10]*x[19]+0.0424*x[10]*x[20]-0.1449*x[11]*x[11]+0.2316*x[11]*x[13]-0.56*x[11]*x[14]-0.3493*x[11]*x[18]-0.1295*x[12]*x[12]+0.4615*x[12]*x[14]-0.0463*x[12]*x[20]+0.0662*x[13]*x[14]-0.0665*x[13]*x[15]+0.6147*x[13]*x[16]-0.3503*x[13]*x[19]-0.5162*x[14]*x[17]-0.6964*x[14]*x[20]-0.866*x[15]*x[16]+0.1128*x[15]*x[18]+0.6509*x[15]*x[19]+0.1687*x[15]*x[20]-0.0215*x[16]*x[18]+0.238*x[16]*x[20]+0.5724*x[17]*x[17]-0.7207*x[18]*x[18]+0.0395*x[18]*x[19]-0.0721*x[18]*x[20]-0.2659*x[19]*x[19]-0.9378*x[19]*x[20]+0.1484*x[20]*x[20]-0.6685*x[1]+0.4182*x[2]+0.3688*x[3]+0.9656*x[4]+0.9691*x[5]+0.0743*x[6]-0.0858*x[7]-0.0454*x[8]+0.2056*x[9]+0.4922*x[10]-0.3046*x[11]-0.0938*x[12]-0.2787*x[13]-0.9258*x[14]-0.2343*x[15]-0.2857*x[16]+0.2122*x[17]-0.5204*x[18]+0.3224*x[19]+0.7375*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.6475*x[1]*x[2]-0.6684*x[1]*x[1]-0.746*x[1]*x[8]+0.6344*x[1]*x[9]+0.6919*x[1]*x[11]-0.7677*x[1]*x[12]+0.7141*x[1]*x[13]-0.7623*x[1]*x[14]+0.5413*x[1]*x[15]-0.6105*x[1]*x[16]+0.4703*x[1]*x[19]-0.0607*x[1]*x[20]+0.0242*x[2]*x[2]+0.2489*x[2]*x[5]+0.3417*x[2]*x[7]+0.9613*x[2]*x[9]+0.4637*x[2]*x[10]-0.1776*x[2]*x[11]-0.0544*x[2]*x[13]-0.9435*x[2]*x[14]+0.2121*x[2]*x[15]-0.743*x[2]*x[20]+0.8574*x[3]*x[3]-0.3505*x[3]*x[6]+0.3437*x[3]*x[10]+0.6615*x[3]*x[14]-0.0252*x[3]*x[15]+0.1819*x[3]*x[16]-0.8842*x[3]*x[19]-0.4714*x[4]*x[4]-0.6205*x[4]*x[6]+0.0073*x[4]*x[10]-0.9792*x[4]*x[13]+0.7914*x[4]*x[14]+0.9226*x[4]*x[16]+0.9889*x[4]*x[17]+0.7397*x[4]*x[20]-0.245*x[5]*x[5]+0.6105*x[5]*x[7]+0.5038*x[5]*x[8]+0.4128*x[5]*x[9]+0.2132*x[5]*x[10]+0.1285*x[5]*x[11]-0.7898*x[5]*x[12]+0.6215*x[5]*x[15]+0.0079*x[5]*x[16]+0.5106*x[5]*x[17]-0.7853*x[5]*x[20]-0.5468*x[6]*x[7]+0.0604*x[6]*x[8]+0.8803*x[6]*x[9]-0.334*x[6]*x[10]-0.9923*x[6]*x[11]+0.2405*x[6]*x[12]-0.6334*x[6]*x[14]-0.3846*x[6]*x[19]-0.5737*x[6]*x[20]-0.7883*x[7]*x[8]+0.8251*x[7]*x[10]-0.4482*x[7]*x[13]+0.9275*x[7]*x[14]+0.171*x[7]*x[17]+0.09*x[7]*x[19]+0.8541*x[7]*x[20]+0.0144*x[8]*x[8]-0.0755*x[8]*x[10]+0.9606*x[8]*x[11]+0.6343*x[8]*x[12]+0.3078*x[8]*x[17]-0.0775*x[8]*x[20]+0.3828*x[9]*x[9]+0.5395*x[9]*x[14]+0.9012*x[9]*x[16]-0.9689*x[9]*x[20]+0.3845*x[10]*x[14]-0.0238*x[10]*x[15]-0.0323*x[10]*x[18]+0.7596*x[10]*x[20]-0.2669*x[11]*x[11]+0.9424*x[11]*x[12]+0.8962*x[11]*x[14]+0.7098*x[11]*x[16]+0.3377*x[11]*x[18]-0.1729*x[12]*x[12]+0.8505*x[12]*x[15]+0.0985*x[12]*x[16]-0.1821*x[12]*x[17]+0.4377*x[12]*x[20]-0.4439*x[13]*x[13]+0.8841*x[13]*x[14]+0.5759*x[13]*x[15]-0.1448*x[13]*x[16]+0.9139*x[13]*x[17]-0.7908*x[13]*x[19]-0.1476*x[13]*x[20]-0.2899*x[14]*x[16]+0.7686*x[14]*x[18]-0.5945*x[14]*x[20]-0.1198*x[15]*x[15]+0.7154*x[15]*x[16]+0.5225*x[15]*x[18]+0.3776*x[16]*x[16]-0.0605*x[16]*x[17]+0.752*x[16]*x[20]-0.8778*x[17]*x[17]+0.5873*x[17]*x[20]-0.7479*x[18]*x[18]-0.8307*x[18]*x[20]+0.7048*x[19]*x[19]+0.8768*x[20]*x[20]-0.1885*x[1]-0.4685*x[2]-0.9922*x[3]-0.7219*x[4]-0.872*x[5]+0.5727*x[6]+0.4148*x[7]-0.2303*x[8]-0.2605*x[9]+0.3656*x[10]-0.5287*x[11]+0.1833*x[12]-0.2923*x[13]+0.7568*x[14]-0.8286*x[15]-0.3817*x[16]-0.3106*x[17]-0.2608*x[18]+0.8512*x[19]+0.5057*x[20] <= 82.046)
@NLconstraint(m, e3, 0.9196*x[1]*x[1]-0.5201*x[1]*x[6]-0.203*x[1]*x[9]-0.0683*x[1]*x[11]-0.2334*x[1]*x[12]-0.8612*x[1]*x[13]-0.9447*x[1]*x[14]-0.888*x[1]*x[16]-0.4564*x[1]*x[17]+0.3112*x[1]*x[18]-0.23*x[1]*x[19]+0.1573*x[1]*x[20]-0.5488*x[2]*x[6]+0.621*x[2]*x[7]+0.6033*x[2]*x[10]+0.982*x[2]*x[14]+0.9365*x[2]*x[16]-0.602*x[2]*x[19]-0.7652*x[2]*x[20]-0.3269*x[3]*x[3]-0.516*x[3]*x[4]-0.0082*x[3]*x[5]-0.0441*x[3]*x[8]-0.368*x[3]*x[11]-0.5254*x[3]*x[13]-0.063*x[3]*x[15]-0.4622*x[3]*x[17]+0.9094*x[4]*x[5]-0.0426*x[4]*x[6]+0.8333*x[4]*x[11]+0.089*x[4]*x[14]-0.2886*x[4]*x[16]-0.3996*x[4]*x[19]+0.8993*x[4]*x[20]+0.385*x[5]*x[5]+0.5066*x[5]*x[10]-0.1557*x[5]*x[11]+0.748*x[5]*x[17]+0.3633*x[5]*x[18]-0.7849*x[5]*x[19]+0.0146*x[5]*x[20]+0.5338*x[6]*x[6]-0.3816*x[6]*x[7]+0.008*x[6]*x[8]-0.594*x[6]*x[9]-0.0696*x[6]*x[12]-0.358*x[6]*x[13]-0.1545*x[6]*x[14]+0.1987*x[6]*x[15]-0.0316*x[6]*x[17]+0.3277*x[6]*x[18]+0.1668*x[6]*x[19]-0.0007*x[7]*x[7]-0.045*x[7]*x[8]-0.4662*x[7]*x[9]+0.2858*x[7]*x[10]+0.8696*x[7]*x[11]+0.5078*x[7]*x[12]-0.9537*x[7]*x[13]-0.8921*x[7]*x[15]+0.1068*x[7]*x[17]+0.8432*x[7]*x[18]+0.9348*x[7]*x[20]+0.7156*x[8]*x[8]+0.5279*x[8]*x[9]+0.3882*x[8]*x[10]-0.123*x[8]*x[11]+0.1876*x[8]*x[12]-0.8419*x[8]*x[14]+0.5789*x[8]*x[15]+0.1667*x[8]*x[20]+0.7243*x[9]*x[11]-0.0487*x[9]*x[12]+0.1821*x[9]*x[16]-0.1194*x[9]*x[18]+0.1913*x[9]*x[20]+0.0667*x[10]*x[10]+0.6946*x[10]*x[13]-0.7144*x[10]*x[14]+0.2189*x[10]*x[15]-0.2628*x[10]*x[19]-0.4081*x[10]*x[20]-0.5907*x[11]*x[12]-0.605*x[11]*x[13]-0.918*x[11]*x[14]-0.1293*x[11]*x[17]-0.7027*x[11]*x[18]-0.8331*x[11]*x[20]-0.8596*x[12]*x[12]+0.5684*x[12]*x[15]-0.2999*x[12]*x[17]-0.2691*x[12]*x[20]-0.5111*x[13]*x[17]+0.6968*x[13]*x[20]+0.6816*x[14]*x[14]+0.9654*x[14]*x[15]+0.3204*x[14]*x[17]+0.8281*x[14]*x[19]+0.0819*x[15]*x[15]-0.6689*x[15]*x[17]+0.1937*x[15]*x[19]-0.3142*x[15]*x[20]-0.9861*x[16]*x[16]+0.5543*x[16]*x[17]+0.7947*x[16]*x[19]-0.7712*x[16]*x[20]-0.8626*x[18]*x[18]-0.4114*x[18]*x[19]+0.6527*x[18]*x[20]-0.5795*x[20]*x[20]+0.7166*x[1]+0.454*x[2]-0.1984*x[3]-0.2906*x[4]-0.533*x[5]-0.898*x[6]+0.7787*x[7]+0.0433*x[8]+0.542*x[9]-0.2475*x[10]-0.4779*x[11]-0.3856*x[12]-0.8662*x[13]-0.6399*x[14]+0.3572*x[15]+0.3587*x[16]+0.8256*x[17]+0.1222*x[18]-0.7222*x[19]+0.3784*x[20] <= 8.632)
@NLconstraint(m, e4, 0.1312*x[1]*x[1]+0.8597*x[1]*x[2]-0.1459*x[1]*x[4]-0.9549*x[1]*x[5]-0.4777*x[1]*x[6]-0.5644*x[1]*x[8]+0.5685*x[1]*x[9]+0.0673*x[1]*x[10]+0.587*x[1]*x[11]-0.1324*x[1]*x[12]+0.9876*x[1]*x[13]-0.1858*x[1]*x[14]-0.9725*x[1]*x[15]+0.0203*x[1]*x[16]-0.822*x[1]*x[18]+0.8302*x[1]*x[19]+0.5988*x[1]*x[20]-0.9642*x[2]*x[2]-0.9569*x[2]*x[3]-0.3565*x[2]*x[4]-0.8457*x[2]*x[7]-0.4404*x[2]*x[8]-0.1326*x[2]*x[10]-0.4731*x[2]*x[11]-0.976*x[2]*x[12]-0.8107*x[2]*x[13]+0.8056*x[2]*x[14]-0.1674*x[2]*x[16]-0.0411*x[2]*x[18]-0.6713*x[2]*x[19]+0.4268*x[2]*x[20]+0.1265*x[3]*x[6]-0.7825*x[3]*x[10]-0.2866*x[3]*x[11]-0.5925*x[3]*x[15]+0.0415*x[3]*x[17]+0.0822*x[3]*x[20]+0.5394*x[4]*x[6]+0.1474*x[4]*x[8]+0.0025*x[4]*x[11]+0.6314*x[4]*x[14]+0.4003*x[4]*x[15]+0.7522*x[4]*x[16]+0.8645*x[4]*x[17]-0.2838*x[4]*x[18]+0.6548*x[5]*x[6]+0.7078*x[5]*x[8]+0.4645*x[5]*x[9]-0.0199*x[5]*x[11]+0.4601*x[5]*x[18]-0.013*x[5]*x[19]-0.9135*x[5]*x[20]+0.0289*x[6]*x[8]-0.6376*x[6]*x[10]+0.7704*x[6]*x[11]+0.1257*x[6]*x[12]-0.938*x[6]*x[13]+0.959*x[6]*x[15]+0.5632*x[6]*x[16]-0.9144*x[6]*x[17]+0.5839*x[6]*x[18]-0.0167*x[6]*x[20]-0.8559*x[7]*x[7]-0.8681*x[7]*x[9]+0.2694*x[7]*x[15]-0.0307*x[7]*x[19]+0.2842*x[8]*x[8]-0.457*x[8]*x[9]-0.3432*x[8]*x[12]+0.4952*x[8]*x[14]-0.45*x[8]*x[17]+0.6593*x[8]*x[19]-0.2797*x[9]*x[9]+0.0778*x[9]*x[10]+0.1786*x[9]*x[12]-0.4008*x[9]*x[16]+0.403*x[9]*x[17]-0.7645*x[10]*x[12]-0.5487*x[10]*x[20]+0.969*x[11]*x[11]+0.872*x[11]*x[15]-0.1185*x[11]*x[16]-0.7354*x[11]*x[17]+0.2347*x[11]*x[19]+0.5356*x[11]*x[20]+0.3745*x[12]*x[13]-0.5577*x[12]*x[14]-0.0183*x[12]*x[20]+0.015*x[13]*x[16]-0.8012*x[13]*x[19]+0.5088*x[13]*x[20]+0.9962*x[14]*x[14]+0.5418*x[14]*x[15]-0.9215*x[14]*x[16]+0.0655*x[14]*x[17]-0.6586*x[14]*x[19]-0.6866*x[14]*x[20]-0.9789*x[15]*x[15]-0.637*x[15]*x[18]-0.3182*x[15]*x[20]-0.5291*x[16]*x[19]+0.9856*x[16]*x[20]-0.9894*x[17]*x[17]+0.6358*x[17]*x[19]-0.2879*x[17]*x[20]-0.5231*x[18]*x[18]+0.3327*x[18]*x[20]-0.0966*x[19]*x[19]+0.6306*x[19]*x[20]+0.7127*x[20]*x[20]+0.5613*x[1]-0.2856*x[2]-0.4175*x[3]+0.6464*x[4]-0.0698*x[5]-0.2642*x[6]-0.1627*x[7]-0.4747*x[8]-0.7988*x[9]-0.9417*x[10]-0.3567*x[11]+0.4259*x[12]+0.7637*x[13]-0.9947*x[14]+0.7473*x[15]+0.5393*x[16]+0.5771*x[17]+0.4628*x[18]+0.9068*x[19]+0.276*x[20] <= 63.679)
@NLconstraint(m, e5, 0.1847*x[1]*x[3]-0.4547*x[1]*x[1]+0.2861*x[1]*x[4]+0.8902*x[1]*x[5]-0.5664*x[1]*x[6]+0.3529*x[1]*x[7]-0.2534*x[1]*x[8]+0.4298*x[1]*x[10]-0.4875*x[1]*x[11]+0.8915*x[1]*x[12]-0.1995*x[1]*x[13]-0.0837*x[1]*x[15]-0.2505*x[1]*x[16]+0.0291*x[1]*x[18]-0.6996*x[2]*x[4]+0.1113*x[2]*x[5]-0.8804*x[2]*x[7]-0.8184*x[2]*x[8]-0.6964*x[2]*x[10]-0.7774*x[2]*x[12]-0.6308*x[2]*x[13]-0.6123*x[2]*x[17]+0.5534*x[2]*x[18]+0.8369*x[2]*x[19]-0.595*x[3]*x[6]-0.5918*x[3]*x[7]+0.2019*x[3]*x[10]+0.7059*x[3]*x[11]+0.3293*x[3]*x[14]+0.5068*x[3]*x[15]+0.3269*x[3]*x[16]-0.0543*x[3]*x[17]-0.2724*x[3]*x[19]+0.6365*x[3]*x[20]+0.1639*x[4]*x[4]-0.844*x[4]*x[6]+0.9713*x[4]*x[10]-0.6234*x[4]*x[12]-0.4512*x[4]*x[14]+0.8888*x[4]*x[18]+0.742*x[5]*x[5]-0.8561*x[5]*x[6]-0.3492*x[5]*x[8]-0.0628*x[5]*x[10]-0.4902*x[5]*x[12]+0.8282*x[5]*x[13]+0.2306*x[5]*x[14]-0.181*x[5]*x[15]+0.822*x[5]*x[16]-0.1695*x[5]*x[17]+0.1113*x[5]*x[18]-0.4105*x[5]*x[20]-0.4793*x[6]*x[7]-0.4795*x[6]*x[8]+0.9655*x[6]*x[9]-0.7349*x[6]*x[10]-0.3122*x[6]*x[16]+0.4413*x[6]*x[17]-0.5348*x[6]*x[18]-0.6837*x[7]*x[8]+0.2546*x[7]*x[9]-0.9163*x[7]*x[10]+0.6144*x[7]*x[15]+0.8549*x[7]*x[16]-0.5123*x[7]*x[20]+0.2443*x[8]*x[8]+0.8951*x[8]*x[9]-0.4459*x[8]*x[11]+0.857*x[8]*x[12]-0.1655*x[8]*x[20]+0.9867*x[9]*x[9]+0.6741*x[9]*x[10]+0.0669*x[9]*x[14]-0.1246*x[9]*x[15]-0.675*x[9]*x[18]-0.3104*x[10]*x[10]-0.0337*x[10]*x[11]+0.7621*x[10]*x[13]-0.137*x[10]*x[15]-0.6343*x[10]*x[16]+0.6298*x[10]*x[19]-0.6227*x[10]*x[20]+0.4416*x[11]*x[12]-0.968*x[11]*x[13]+0.4316*x[11]*x[15]-0.6793*x[11]*x[20]-0.4464*x[12]*x[13]-0.1935*x[12]*x[15]+0.2689*x[12]*x[16]+0.1219*x[12]*x[19]-0.966*x[12]*x[20]-0.7044*x[13]*x[15]+0.6773*x[13]*x[16]+0.375*x[13]*x[17]-0.451*x[13]*x[18]-0.2801*x[13]*x[20]+0.8201*x[14]*x[14]+0.9166*x[14]*x[15]+0.1648*x[14]*x[16]-0.1704*x[14]*x[17]+0.8156*x[15]*x[15]-0.6195*x[15]*x[18]-0.1848*x[15]*x[20]-0.7269*x[16]*x[20]-0.7463*x[17]*x[17]+0.9915*x[18]*x[18]-0.9485*x[18]*x[19]+0.7561*x[19]*x[19]+0.5456*x[19]*x[20]+0.6506*x[20]*x[20]-0.058*x[1]-0.2014*x[2]-0.7284*x[3]-0.4896*x[4]+0.6468*x[5]-0.3403*x[6]+0.6566*x[7]-0.1754*x[8]+0.6853*x[9]-0.7988*x[10]-0.5103*x[11]+0.7315*x[12]-0.9345*x[13]+0.7093*x[14]+0.2906*x[15]+0.7879*x[16]+0.9452*x[17]+0.8852*x[18]+0.9405*x[19]-0.2342*x[20] <= 22.624)
@NLconstraint(m, e6, 0.929*x[1]*x[1]+0.9683*x[1]*x[2]+0.998*x[1]*x[3]-0.7589*x[1]*x[4]-0.1379*x[1]*x[5]+0.5232*x[1]*x[6]-0.8608*x[1]*x[8]+0.6217*x[1]*x[9]+0.2881*x[1]*x[10]+0.5888*x[1]*x[12]-0.1124*x[1]*x[13]+0.175*x[1]*x[14]+0.6079*x[1]*x[15]+0.9337*x[1]*x[16]-0.3619*x[1]*x[18]+0.9383*x[1]*x[19]-0.0646*x[1]*x[20]+0.3864*x[2]*x[4]-0.6684*x[2]*x[6]-0.3257*x[2]*x[8]+0.8*x[2]*x[12]+0.8705*x[2]*x[15]-0.9563*x[2]*x[16]-0.8744*x[2]*x[17]+0.5694*x[2]*x[19]-0.8593*x[2]*x[20]+0.4709*x[3]*x[4]+0.1105*x[3]*x[8]-0.5418*x[3]*x[9]-0.6337*x[3]*x[13]+0.8697*x[3]*x[15]-0.7822*x[3]*x[16]-0.505*x[3]*x[18]+0.0043*x[3]*x[20]+0.6423*x[4]*x[7]-0.0911*x[4]*x[9]+0.807*x[4]*x[14]+0.7295*x[4]*x[16]+0.8742*x[4]*x[20]+0.6979*x[5]*x[7]-0.2998*x[5]*x[10]+0.0944*x[5]*x[16]+0.8293*x[5]*x[18]-0.4528*x[5]*x[20]-0.2579*x[6]*x[6]-0.7645*x[6]*x[7]-0.3043*x[6]*x[8]+0.0011*x[6]*x[9]+0.2473*x[6]*x[10]+0.704*x[6]*x[12]-0.5423*x[6]*x[14]+0.6189*x[6]*x[16]+0.3376*x[6]*x[17]+0.6742*x[6]*x[20]-0.7279*x[7]*x[9]-0.3133*x[7]*x[10]+0.2514*x[7]*x[11]+0.5905*x[7]*x[12]+0.255*x[7]*x[13]-0.791*x[7]*x[14]+0.2296*x[7]*x[18]+0.824*x[7]*x[20]-0.1752*x[8]*x[8]-0.313*x[8]*x[9]+0.7763*x[8]*x[10]+0.5926*x[8]*x[12]+0.9574*x[8]*x[13]+0.0371*x[8]*x[14]+0.9083*x[8]*x[15]+0.9147*x[8]*x[20]-0.2288*x[9]*x[9]+0.1329*x[9]*x[12]-0.5618*x[9]*x[13]-0.7448*x[9]*x[20]+0.2006*x[10]*x[10]+0.4615*x[10]*x[13]-0.4785*x[10]*x[14]-0.1562*x[10]*x[15]+0.0039*x[10]*x[16]-0.776*x[10]*x[20]+0.4408*x[11]*x[11]-0.251*x[11]*x[12]-0.6331*x[11]*x[13]+0.2349*x[11]*x[16]-0.3791*x[11]*x[20]-0.3546*x[12]*x[13]+0.9141*x[12]*x[14]-0.0503*x[12]*x[15]+0.3015*x[12]*x[17]+0.7525*x[12]*x[18]+0.982*x[12]*x[19]+0.294*x[12]*x[20]+0.8216*x[13]*x[13]+0.0608*x[13]*x[15]-0.175*x[13]*x[19]-0.9407*x[13]*x[20]-0.9625*x[14]*x[17]-0.6455*x[14]*x[20]-0.5305*x[15]*x[15]+0.6237*x[15]*x[16]-0.8085*x[15]*x[17]-0.4449*x[16]*x[16]+0.8705*x[16]*x[17]-0.2702*x[16]*x[19]+0.6978*x[17]*x[17]+0.9408*x[17]*x[20]+0.2852*x[18]*x[19]+0.5313*x[18]*x[20]+0.0117*x[19]*x[19]+0.0965*x[20]*x[20]+0.5039*x[1]-0.0598*x[2]-0.5261*x[3]-0.7333*x[4]+0.4481*x[5]-0.5742*x[6]+0.5064*x[7]-0.9793*x[8]-0.4643*x[9]-0.1421*x[10]-0.825*x[11]-0.84*x[12]-0.0843*x[13]+0.4622*x[14]-0.7781*x[15]+0.3501*x[16]-0.3084*x[17]-0.1213*x[18]+0.7179*x[19]-0.4891*x[20] <= 81.528)
@NLconstraint(m, e7, 0.2995*x[1]*x[1]-0.1681*x[1]*x[6]+0.6528*x[1]*x[8]+0.1352*x[1]*x[10]-0.0072*x[1]*x[11]+0.9694*x[1]*x[13]-0.7516*x[1]*x[15]+0.9319*x[1]*x[16]-0.591*x[1]*x[17]-0.0126*x[1]*x[18]-0.0186*x[1]*x[19]-0.3624*x[2]*x[4]+0.1904*x[2]*x[6]+0.282*x[2]*x[10]-0.4844*x[2]*x[13]-0.7074*x[2]*x[14]+0.431*x[2]*x[15]+0.7454*x[2]*x[17]+0.9852*x[2]*x[20]-0.0513*x[3]*x[3]-0.1349*x[3]*x[4]-0.3628*x[3]*x[5]-0.8426*x[3]*x[9]-0.5526*x[3]*x[10]+0.5095*x[3]*x[11]+0.438*x[3]*x[12]+0.2057*x[3]*x[13]-0.7871*x[3]*x[15]-0.5712*x[3]*x[16]+0.5045*x[3]*x[17]+0.5347*x[3]*x[18]+0.7617*x[3]*x[19]-0.4607*x[3]*x[20]-0.2243*x[4]*x[5]+0.2641*x[4]*x[6]-0.4352*x[4]*x[7]-0.6985*x[4]*x[9]+0.7424*x[4]*x[10]+0.619*x[4]*x[13]-0.4542*x[4]*x[17]-0.7611*x[4]*x[18]-0.7753*x[4]*x[19]-0.4623*x[4]*x[20]+0.1529*x[5]*x[5]+0.4657*x[5]*x[8]+0.3989*x[5]*x[9]+0.4724*x[5]*x[13]+0.7039*x[5]*x[14]+0.2866*x[5]*x[15]-0.2434*x[5]*x[16]+0.7623*x[5]*x[17]-0.3705*x[5]*x[20]-0.848*x[6]*x[6]-0.3496*x[6]*x[7]+0.4839*x[6]*x[11]+0.4605*x[6]*x[12]+0.0064*x[6]*x[13]+0.0088*x[6]*x[14]+0.5185*x[6]*x[15]+0.8671*x[6]*x[16]+0.1833*x[6]*x[17]+0.8457*x[7]*x[8]+0.054*x[7]*x[12]+0.631*x[7]*x[13]+0.124*x[7]*x[14]+0.6139*x[7]*x[15]-0.4948*x[7]*x[18]+0.9518*x[7]*x[20]+0.4964*x[8]*x[8]-0.819*x[8]*x[9]-0.1992*x[8]*x[15]+0.6861*x[8]*x[16]-0.143*x[8]*x[17]-0.6152*x[8]*x[20]+0.9639*x[9]*x[9]-0.2351*x[9]*x[10]-0.1402*x[10]*x[11]-0.8872*x[10]*x[14]+0.9807*x[10]*x[16]+0.485*x[10]*x[17]-0.2111*x[10]*x[18]+0.1393*x[10]*x[20]+0.5124*x[11]*x[13]-0.3847*x[11]*x[19]+0.3798*x[11]*x[20]-0.6042*x[12]*x[12]+0.895*x[12]*x[18]-0.2512*x[13]*x[13]-0.5547*x[13]*x[14]+0.9142*x[13]*x[16]+0.3635*x[13]*x[19]+0.8599*x[13]*x[20]+0.6195*x[14]*x[14]+0.9003*x[14]*x[15]+0.089*x[14]*x[16]-0.8077*x[14]*x[17]-0.2086*x[14]*x[19]-0.85*x[14]*x[20]+0.2996*x[15]*x[15]-0.0686*x[15]*x[16]-0.7222*x[15]*x[18]-0.8937*x[15]*x[19]+0.0082*x[16]*x[16]-0.8056*x[16]*x[18]+0.9465*x[16]*x[19]+0.4173*x[16]*x[20]+0.2813*x[17]*x[18]-0.0885*x[18]*x[18]+0.9298*x[19]*x[20]+0.7946*x[20]*x[20]+0.6649*x[1]-0.8578*x[2]+0.3994*x[3]+0.6165*x[4]+0.7399*x[5]-0.5912*x[6]-0.6336*x[7]-0.0119*x[8]-0.4437*x[9]-0.0178*x[10]-0.2215*x[11]+0.9576*x[12]-0.5441*x[13]-0.4856*x[14]-0.6661*x[15]+0.6343*x[16]-0.603*x[17]+0.5243*x[18]+0.0161*x[19]+0.4329*x[20] <= 78.061)
@NLconstraint(m, e8, 0.0506*x[1]*x[3]+0.6572*x[1]*x[5]+0.0175*x[1]*x[6]-0.5705*x[1]*x[7]-0.7242*x[1]*x[9]-0.4465*x[1]*x[10]+0.9982*x[1]*x[11]-0.4846*x[1]*x[12]+0.8714*x[1]*x[13]+0.7342*x[1]*x[16]-0.4808*x[1]*x[17]+0.728*x[1]*x[18]-0.0353*x[1]*x[20]-0.1058*x[2]*x[3]-0.1495*x[2]*x[7]-0.4942*x[2]*x[9]-0.9871*x[2]*x[10]+0.3525*x[2]*x[12]-0.4119*x[2]*x[13]+0.2841*x[2]*x[15]-0.3618*x[2]*x[16]-0.0649*x[2]*x[18]+0.3522*x[2]*x[19]-0.2112*x[2]*x[20]+0.3867*x[3]*x[3]-0.1519*x[3]*x[4]-0.8769*x[3]*x[9]+0.0273*x[3]*x[14]+0.6033*x[3]*x[16]-0.1914*x[3]*x[20]-0.5637*x[4]*x[4]+0.5812*x[4]*x[5]-0.6328*x[4]*x[6]-0.3498*x[4]*x[8]-0.6987*x[4]*x[9]+0.2386*x[4]*x[10]-0.5771*x[4]*x[11]-0.2246*x[4]*x[14]+0.102*x[4]*x[16]-0.3016*x[4]*x[20]+0.4639*x[5]*x[6]-0.6827*x[5]*x[7]-0.1214*x[5]*x[8]-0.3329*x[5]*x[10]-0.0932*x[5]*x[11]+0.3575*x[5]*x[14]-0.2308*x[5]*x[17]-0.4076*x[5]*x[19]-0.1961*x[6]*x[6]+0.4876*x[6]*x[8]-0.0729*x[6]*x[9]-0.2998*x[6]*x[12]+0.1353*x[6]*x[15]-0.7873*x[6]*x[19]+0.516*x[6]*x[20]-0.7254*x[7]*x[7]+0.7873*x[7]*x[9]+0.2826*x[7]*x[11]-0.7814*x[7]*x[12]-0.0485*x[7]*x[14]-0.8568*x[7]*x[20]-0.1114*x[8]*x[8]+0.7247*x[8]*x[10]+0.0172*x[8]*x[11]+0.9488*x[8]*x[13]-0.1099*x[8]*x[20]+0.9041*x[9]*x[9]-0.0795*x[9]*x[14]-0.1536*x[9]*x[17]+0.951*x[9]*x[18]+0.9266*x[9]*x[19]+0.1739*x[9]*x[20]+0.5519*x[10]*x[10]+0.323*x[10]*x[12]+0.1931*x[10]*x[14]-0.2419*x[10]*x[16]+0.3053*x[10]*x[17]+0.0585*x[11]*x[11]-0.5084*x[11]*x[12]+0.1766*x[11]*x[14]+0.1183*x[11]*x[20]+0.554*x[12]*x[12]-0.2105*x[12]*x[13]+0.8837*x[12]*x[14]+0.9874*x[12]*x[15]-0.0498*x[12]*x[16]+0.5861*x[12]*x[17]-0.2136*x[12]*x[19]-0.1092*x[13]*x[13]+0.4325*x[13]*x[14]-0.5508*x[13]*x[15]-0.2616*x[13]*x[19]+0.102*x[13]*x[20]-0.3562*x[14]*x[14]+0.4302*x[14]*x[15]-0.3349*x[14]*x[17]-0.4784*x[14]*x[19]+0.3387*x[14]*x[20]+0.6014*x[15]*x[15]+0.8598*x[15]*x[17]-0.4367*x[15]*x[18]-0.8786*x[15]*x[19]-0.0735*x[16]*x[17]+0.0852*x[17]*x[17]-0.7136*x[17]*x[18]-0.9455*x[17]*x[20]-0.4887*x[18]*x[18]+0.7386*x[19]*x[19]+0.6327*x[19]*x[20]-0.6455*x[20]*x[20]-0.878*x[1]+0.8109*x[2]+0.4316*x[3]-0.4172*x[4]-0.233*x[5]+0.1463*x[6]-0.0328*x[7]-0.6807*x[8]+0.5251*x[9]-0.2919*x[10]-0.3982*x[11]-0.6645*x[12]+0.5651*x[13]-0.8407*x[14]-0.0889*x[15]-0.3253*x[16]+0.4019*x[17]+0.6658*x[18]-0.772*x[19]+0.1239*x[20] <= 78.844)
@NLconstraint(m, e9, (-0.914*x[1]*x[1])-0.1425*x[1]*x[2]-0.4216*x[1]*x[3]-0.3768*x[1]*x[4]+0.4938*x[1]*x[7]+0.2466*x[1]*x[8]-0.5471*x[1]*x[12]+0.394*x[1]*x[13]-0.1254*x[1]*x[14]+0.1049*x[1]*x[15]+0.6957*x[1]*x[16]+0.3588*x[1]*x[17]-0.3712*x[1]*x[19]-0.0628*x[1]*x[20]-0.7158*x[2]*x[2]-0.9751*x[2]*x[6]+0.7747*x[2]*x[7]+0.3516*x[2]*x[8]+0.7497*x[2]*x[10]-0.8198*x[2]*x[11]+0.3823*x[2]*x[14]-0.0522*x[2]*x[16]+0.0554*x[2]*x[17]+0.9734*x[2]*x[18]-0.5969*x[2]*x[19]-0.6195*x[2]*x[20]-0.5527*x[3]*x[3]+0.4397*x[3]*x[5]-0.8411*x[3]*x[6]+0.5603*x[3]*x[7]-0.5856*x[3]*x[12]-0.9119*x[3]*x[14]-0.908*x[3]*x[17]-0.3375*x[3]*x[19]-0.5677*x[4]*x[6]-0.6615*x[4]*x[7]-0.8117*x[4]*x[11]-0.1446*x[4]*x[12]-0.5729*x[4]*x[15]+0.9798*x[4]*x[16]-0.9301*x[4]*x[17]+0.191*x[4]*x[20]-0.9978*x[5]*x[9]+0.1022*x[5]*x[14]-0.8697*x[5]*x[15]-0.7751*x[5]*x[19]-0.7782*x[5]*x[20]-0.1857*x[6]*x[6]+0.306*x[6]*x[8]-0.8812*x[6]*x[9]-0.1258*x[6]*x[10]+0.8218*x[6]*x[12]+0.0704*x[6]*x[15]-0.5558*x[6]*x[18]+0.4221*x[6]*x[20]+0.6985*x[7]*x[7]+0.8308*x[7]*x[8]+0.0047*x[7]*x[10]-0.6655*x[7]*x[12]+0.9433*x[7]*x[17]+0.64*x[7]*x[19]-0.6707*x[8]*x[8]+0.2142*x[8]*x[10]+0.6655*x[8]*x[11]-0.0551*x[8]*x[13]-0.4021*x[8]*x[14]-0.2415*x[8]*x[16]-0.3175*x[9]*x[9]+0.8041*x[9]*x[11]-0.2775*x[9]*x[12]-0.9748*x[9]*x[14]-0.5856*x[9]*x[15]+0.3121*x[9]*x[18]+0.2653*x[9]*x[19]-0.2496*x[10]*x[10]-0.8921*x[10]*x[11]-0.9173*x[10]*x[13]-0.5691*x[10]*x[15]+0.31*x[10]*x[17]-0.5894*x[10]*x[20]+0.2426*x[11]*x[12]-0.6376*x[11]*x[14]-0.1534*x[11]*x[15]+0.9646*x[11]*x[17]+0.5757*x[11]*x[18]+0.6382*x[11]*x[19]-0.7716*x[11]*x[20]+0.2375*x[12]*x[14]-0.5025*x[12]*x[16]-0.0754*x[12]*x[18]+0.8281*x[12]*x[20]+0.8313*x[13]*x[13]+0.3343*x[13]*x[17]-0.8296*x[13]*x[18]+0.521*x[14]*x[14]-0.0055*x[14]*x[19]+0.9875*x[14]*x[20]+0.6081*x[15]*x[15]+0.5566*x[15]*x[17]-0.9469*x[15]*x[19]-0.3913*x[15]*x[20]-0.5079*x[16]*x[16]+0.6493*x[16]*x[20]+0.5485*x[17]*x[17]+0.321*x[17]*x[18]-0.0856*x[17]*x[20]-0.3741*x[18]*x[18]+0.4744*x[18]*x[20]-0.0675*x[19]*x[19]-0.0409*x[20]*x[20]-0.1073*x[1]+0.4189*x[2]-0.6836*x[3]-0.862*x[4]+0.2463*x[5]-0.7889*x[6]+0.0956*x[7]-0.9722*x[8]-0.7773*x[9]-0.8881*x[10]+0.8374*x[11]-0.569*x[12]+0.4782*x[13]+0.2028*x[14]+0.7898*x[15]+0.1844*x[16]+0.8398*x[17]-0.7799*x[18]-0.1367*x[19]-0.5492*x[20] <= 35.094)
@NLconstraint(m, e10, 0.8665*x[1]*x[1]+0.4415*x[1]*x[3]+0.2541*x[1]*x[4]+0.765*x[1]*x[5]-0.6674*x[1]*x[6]+0.5069*x[1]*x[8]+0.9402*x[1]*x[10]+0.8364*x[1]*x[15]+0.0427*x[1]*x[17]-0.9237*x[1]*x[18]+0.6741*x[1]*x[19]-0.3245*x[1]*x[20]-0.3586*x[2]*x[2]-0.7221*x[2]*x[4]+0.9989*x[2]*x[7]+0.3302*x[2]*x[11]+0.156*x[2]*x[13]-0.8358*x[2]*x[15]-0.9855*x[2]*x[18]-0.0315*x[2]*x[19]-0.9995*x[3]*x[3]+0.8289*x[3]*x[6]-0.6743*x[3]*x[11]-0.9997*x[3]*x[14]-0.5631*x[3]*x[15]-0.0852*x[3]*x[16]-0.0139*x[3]*x[18]-0.8128*x[4]*x[4]+0.355*x[4]*x[5]-0.8296*x[4]*x[11]+0.3232*x[4]*x[12]+0.2724*x[4]*x[14]-0.0974*x[4]*x[16]+0.1227*x[4]*x[19]-0.9425*x[4]*x[20]+0.7209*x[5]*x[5]-0.5366*x[5]*x[6]-0.6193*x[5]*x[8]-0.5157*x[5]*x[9]-0.2917*x[5]*x[13]+0.2533*x[5]*x[14]+0.8524*x[5]*x[16]-0.2561*x[5]*x[18]+0.7511*x[6]*x[6]+0.5908*x[6]*x[8]+0.9108*x[6]*x[9]+0.2551*x[6]*x[12]+0.2488*x[6]*x[15]+0.2183*x[6]*x[16]-0.3677*x[6]*x[19]-0.0009*x[6]*x[20]+0.3158*x[7]*x[7]-0.8161*x[7]*x[10]+0.9419*x[7]*x[11]-0.8644*x[7]*x[13]-0.5212*x[7]*x[14]+0.464*x[7]*x[16]-0.271*x[7]*x[17]-0.0857*x[8]*x[10]-0.3691*x[8]*x[17]-0.4173*x[8]*x[18]+0.004*x[8]*x[20]-0.6496*x[9]*x[14]-0.761*x[9]*x[16]+0.3093*x[9]*x[17]+0.2295*x[9]*x[18]+0.2296*x[9]*x[20]+0.049*x[10]*x[10]-0.3828*x[10]*x[13]-0.9426*x[10]*x[14]+0.7637*x[10]*x[15]-0.4789*x[10]*x[16]+0.9888*x[10]*x[18]+0.1964*x[11]*x[13]-0.5389*x[11]*x[15]-0.7191*x[11]*x[18]-0.8861*x[11]*x[20]-0.7717*x[12]*x[13]-0.3953*x[12]*x[14]-0.3941*x[12]*x[15]+0.6865*x[12]*x[17]-0.0025*x[12]*x[19]-0.5174*x[12]*x[20]+0.4504*x[13]*x[13]+0.5266*x[13]*x[14]-0.7798*x[13]*x[16]+0.6955*x[13]*x[18]-0.0077*x[13]*x[19]+0.746*x[13]*x[20]-0.75*x[14]*x[14]+0.8265*x[14]*x[17]+0.5748*x[14]*x[18]-0.1888*x[14]*x[19]-0.679*x[15]*x[15]+0.4868*x[15]*x[16]-0.0946*x[15]*x[17]+0.1187*x[15]*x[18]-0.924*x[15]*x[19]+0.3238*x[15]*x[20]-0.9222*x[16]*x[16]+0.752*x[16]*x[17]+0.4859*x[16]*x[18]-0.2896*x[16]*x[19]+0.0582*x[16]*x[20]+0.4227*x[17]*x[18]-0.3968*x[17]*x[19]+0.2041*x[18]*x[20]+0.7384*x[19]*x[19]+0.1271*x[19]*x[20]+0.1087*x[20]*x[20]+0.8844*x[1]-0.6636*x[2]-0.2996*x[3]-0.4378*x[4]+0.0534*x[5]-0.4738*x[6]+0.601*x[7]-0.9627*x[8]+0.5336*x[9]+0.9146*x[10]-0.7379*x[11]-0.5105*x[12]-0.9365*x[13]+0.2491*x[14]-0.9926*x[15]-0.3194*x[16]-0.2571*x[17]-0.3985*x[18]+0.4735*x[19]+0.5987*x[20] <= 41.186)
@NLconstraint(m, e11, (-0.4833*x[1]*x[1])-0.8151*x[1]*x[2]-0.1125*x[1]*x[4]+0.6601*x[1]*x[6]-0.6356*x[1]*x[7]+0.1307*x[1]*x[9]-0.7991*x[1]*x[11]-0.2902*x[1]*x[14]-0.246*x[1]*x[15]+0.9384*x[1]*x[16]-0.9075*x[1]*x[17]+0.8793*x[1]*x[19]+0.1845*x[1]*x[20]+0.1869*x[2]*x[2]+0.2926*x[2]*x[3]-0.73*x[2]*x[4]-0.7714*x[2]*x[6]+0.3942*x[2]*x[9]-0.9578*x[2]*x[11]-0.6671*x[2]*x[13]+0.4808*x[2]*x[14]-0.7435*x[2]*x[15]+0.0416*x[2]*x[18]-0.9626*x[2]*x[20]-0.2167*x[3]*x[3]-0.5725*x[3]*x[4]-0.7771*x[3]*x[5]-0.6202*x[3]*x[13]+0.2029*x[3]*x[14]+0.8771*x[3]*x[15]-0.2929*x[3]*x[20]+0.3476*x[4]*x[4]+0.5995*x[4]*x[6]+0.3139*x[4]*x[8]+0.7075*x[4]*x[9]+0.5061*x[4]*x[13]+0.8856*x[4]*x[14]+0.3713*x[4]*x[15]+0.1012*x[4]*x[16]-0.4852*x[4]*x[19]+0.9331*x[4]*x[20]+0.4096*x[5]*x[5]+0.8272*x[5]*x[12]+0.3163*x[5]*x[13]+0.8112*x[5]*x[15]-0.1259*x[5]*x[16]+0.399*x[5]*x[17]+0.3364*x[5]*x[18]+0.3297*x[5]*x[20]+0.1672*x[6]*x[8]+0.3655*x[6]*x[9]+0.9159*x[6]*x[11]-0.6518*x[6]*x[14]+0.4597*x[6]*x[19]-0.731*x[6]*x[20]-0.0725*x[7]*x[7]-0.293*x[7]*x[8]+0.7722*x[7]*x[9]+0.9573*x[7]*x[11]-0.4913*x[7]*x[16]-0.2256*x[7]*x[17]-0.198*x[7]*x[20]+0.7177*x[8]*x[8]+0.5625*x[8]*x[10]+0.6199*x[8]*x[11]-0.119*x[8]*x[12]-0.2441*x[8]*x[15]+0.5489*x[8]*x[17]+0.8845*x[9]*x[9]-0.6351*x[9]*x[12]-0.0025*x[9]*x[17]-0.0292*x[9]*x[18]-0.1464*x[9]*x[19]+0.4892*x[9]*x[20]-0.6293*x[10]*x[10]+0.7333*x[10]*x[15]+0.4114*x[10]*x[17]+0.0087*x[10]*x[19]+0.4926*x[10]*x[20]-0.1924*x[11]*x[12]+0.7056*x[11]*x[14]-0.2025*x[11]*x[15]-0.6442*x[11]*x[18]-0.4869*x[11]*x[20]+0.2584*x[12]*x[12]-0.1511*x[12]*x[14]+0.2036*x[12]*x[16]+0.494*x[12]*x[17]+0.4887*x[12]*x[19]-0.7995*x[12]*x[20]-0.5137*x[13]*x[13]+0.2114*x[13]*x[15]+0.0789*x[13]*x[16]+0.5521*x[13]*x[18]-0.125*x[13]*x[20]+0.0131*x[14]*x[14]-0.5217*x[14]*x[19]-0.5173*x[14]*x[20]-0.678*x[15]*x[15]-0.2151*x[16]*x[16]-0.9528*x[16]*x[17]-0.0078*x[16]*x[18]+0.162*x[16]*x[20]+0.3303*x[17]*x[17]-0.9399*x[17]*x[18]-0.8162*x[17]*x[19]+0.957*x[18]*x[18]+0.5656*x[19]*x[19]+0.7222*x[19]*x[20]-0.6025*x[20]*x[20]-0.8055*x[1]+0.4685*x[2]-0.6594*x[3]-0.4787*x[4]-0.2312*x[5]-0.1104*x[6]-0.7886*x[7]-0.2323*x[8]-0.904*x[9]-0.405*x[10]+0.5906*x[11]-0.8488*x[12]-0.117*x[13]+0.8336*x[14]+0.932*x[15]+0.4213*x[16]-0.7158*x[17]-0.8992*x[18]+0.462*x[19]+0.3697*x[20] <= 11.805)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 