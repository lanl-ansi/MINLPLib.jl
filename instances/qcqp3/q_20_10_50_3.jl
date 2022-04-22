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
@NLconstraint(m, e1, -(1.9394*x[1]*x[8]-1.5883*x[1]*x[1]+1.3948*x[1]*x[14]-0.9529*x[1]*x[15]+0.4854*x[2]*x[4]+0.6498*x[2]*x[5]+0.9298*x[2]*x[6]+0.4026*x[2]*x[10]+0.4893*x[2]*x[11]-0.8962*x[2]*x[12]+1.3599*x[2]*x[14]+1.3999*x[2]*x[15]-1.1901*x[2]*x[17]+1.9457*x[2]*x[19]+0.4726*x[3]*x[4]-0.9012*x[3]*x[11]-0.3335*x[3]*x[12]+0.4352*x[3]*x[13]-0.7254*x[3]*x[17]-0.6449*x[3]*x[18]-0.7359*x[3]*x[19]-0.8879*x[4]*x[4]-0.3685*x[4]*x[5]-1.3126*x[4]*x[6]+1.2823*x[4]*x[7]-1.4452*x[4]*x[9]+0.687*x[4]*x[10]-0.0203*x[4]*x[12]-0.0557*x[4]*x[14]+0.1779*x[4]*x[15]-0.0931*x[4]*x[17]+0.4867*x[4]*x[18]+0.4556*x[5]*x[5]+1.8204*x[5]*x[6]+0.0983*x[5]*x[7]-0.0148*x[5]*x[8]-1.2811*x[5]*x[9]-0.279*x[5]*x[10]+0.4676*x[5]*x[13]+0.8109*x[5]*x[14]+1.1616*x[5]*x[17]+1.6243*x[6]*x[6]+0.9401*x[6]*x[7]-0.6956*x[6]*x[8]+1.1062*x[6]*x[9]-0.4806*x[6]*x[10]+0.3063*x[6]*x[11]+0.3694*x[6]*x[15]+0.1902*x[6]*x[16]-0.5404*x[6]*x[18]+1.7113*x[6]*x[20]+1.8135*x[7]*x[8]+0.232*x[7]*x[9]+1.2972*x[7]*x[13]-1.9895*x[7]*x[16]+0.5425*x[7]*x[17]+0.1661*x[7]*x[18]-1.688*x[8]*x[10]+1.8875*x[8]*x[12]-1.0931*x[8]*x[13]+1.3661*x[8]*x[14]+0.6681*x[8]*x[15]-1.8558*x[8]*x[16]+0.6463*x[8]*x[17]+1.6617*x[8]*x[20]+0.4596*x[9]*x[11]-0.7195*x[9]*x[14]-0.0882*x[9]*x[15]-1.6163*x[9]*x[16]-1.2032*x[9]*x[17]+1.6166*x[9]*x[19]+0.5881*x[10]*x[10]-0.7916*x[10]*x[11]+1.3502*x[10]*x[12]+0.0323*x[10]*x[16]-0.8404*x[10]*x[17]-1.5849*x[10]*x[19]+1.0211*x[11]*x[12]+1.1474*x[11]*x[14]-1.9376*x[11]*x[16]-0.6242*x[11]*x[18]+1.2644*x[11]*x[19]-0.5397*x[11]*x[20]+1.6402*x[12]*x[12]+0.4927*x[12]*x[13]-1.7365*x[12]*x[14]-1.8013*x[12]*x[15]+1.7187*x[12]*x[17]-1.0903*x[13]*x[14]+0.3443*x[13]*x[17]+0.9832*x[13]*x[18]+1.2947*x[13]*x[20]+1.529*x[14]*x[16]+1.4589*x[14]*x[17]+1.2037*x[14]*x[19]-0.7459*x[15]*x[16]+0.2553*x[15]*x[19]-0.7756*x[15]*x[20]-1.5275*x[16]*x[17]+0.6975*x[17]*x[18]+1.2966*x[17]*x[19]-1.4654*x[17]*x[20]+0.015*x[18]*x[19]-1.3972*x[18]*x[20]-1.1032*x[19]*x[20]-0.0491*x[1]-0.2858*x[2]-0.8833*x[3]+0.7314*x[4]+0.7672*x[5]+0.1579*x[6]+0.8723*x[7]+0.2373*x[8]-0.2206*x[9]+0.0543*x[10]-0.5607*x[11]+0.9532*x[12]+0.7351*x[13]+0.4121*x[14]+0.9756*x[15]-0.5804*x[16]-0.8704*x[17]-0.922*x[18]-0.0936*x[19]-0.0882*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, (-0.4774*x[1]*x[1])-0.9848*x[1]*x[9]+0.1266*x[1]*x[11]+0.5154*x[1]*x[14]-0.4301*x[1]*x[17]+1.9619*x[1]*x[18]-0.7255*x[2]*x[3]-1.3483*x[2]*x[5]-1.1038*x[2]*x[6]+1.6951*x[2]*x[7]-0.2104*x[2]*x[8]+1.0666*x[2]*x[9]-1.9259*x[2]*x[10]+1.1612*x[2]*x[12]+0.9518*x[2]*x[13]-1.7075*x[2]*x[14]-0.9809*x[2]*x[16]+0.7802*x[2]*x[17]+1.0708*x[2]*x[18]+0.6057*x[3]*x[4]+1.2233*x[3]*x[6]-1.4363*x[3]*x[10]-0.4414*x[3]*x[11]+1.7633*x[3]*x[13]+0.0075*x[3]*x[15]-1.8912*x[3]*x[16]-1.621*x[3]*x[18]+1.784*x[4]*x[4]-0.0065*x[4]*x[5]-0.1011*x[4]*x[7]+1.5295*x[4]*x[9]-1.6085*x[4]*x[11]+0.691*x[4]*x[12]+1.7901*x[4]*x[14]+1.8321*x[4]*x[15]-0.267*x[4]*x[17]-1.4305*x[4]*x[18]-0.1132*x[4]*x[19]-1.789*x[4]*x[20]-1.8751*x[5]*x[7]+1.6507*x[5]*x[8]+0.0207*x[5]*x[9]-0.8888*x[5]*x[10]+0.3527*x[5]*x[11]-1.3547*x[5]*x[13]-0.428*x[5]*x[17]+1.7528*x[5]*x[18]+1.101*x[6]*x[10]-1.2741*x[6]*x[12]+1.8839*x[6]*x[14]-0.5329*x[6]*x[15]+1.9879*x[6]*x[17]+0.0852*x[6]*x[18]+0.6841*x[6]*x[20]+0.2679*x[7]*x[10]-1.0454*x[7]*x[12]+1.4701*x[7]*x[13]+1.5265*x[7]*x[15]-0.5967*x[7]*x[17]-0.374*x[7]*x[19]+0.3093*x[8]*x[10]+0.1883*x[8]*x[12]-0.7399*x[8]*x[16]-1.2229*x[8]*x[18]+1.9753*x[8]*x[19]+1.4986*x[8]*x[20]+0.9584*x[9]*x[10]-0.2548*x[9]*x[15]+1.4888*x[9]*x[19]+1.6108*x[10]*x[10]-1.7452*x[10]*x[11]-1.1307*x[10]*x[14]+0.0758*x[10]*x[16]+0.3819*x[10]*x[17]+0.7763*x[11]*x[14]+0.51*x[11]*x[15]+0.4828*x[11]*x[16]-0.1785*x[11]*x[17]-0.5245*x[11]*x[19]-0.6394*x[12]*x[13]+1.0484*x[12]*x[14]-1.6371*x[12]*x[17]+0.8458*x[12]*x[18]-1.1403*x[12]*x[20]-1.8239*x[13]*x[15]-1.1388*x[13]*x[16]+0.9907*x[13]*x[17]-0.9177*x[13]*x[20]-0.3571*x[14]*x[14]-1.6051*x[14]*x[15]+1.6793*x[14]*x[18]+1.0418*x[14]*x[19]+1.6403*x[15]*x[16]+1.1312*x[15]*x[17]+0.7455*x[15]*x[18]-1.8552*x[15]*x[19]-0.7036*x[16]*x[16]-1.9555*x[16]*x[17]-0.7055*x[16]*x[18]-1.6326*x[16]*x[19]-1.4682*x[17]*x[18]+1.1936*x[17]*x[19]-1.4039*x[18]*x[18]+0.6659*x[18]*x[19]-1.7397*x[18]*x[20]-0.9207*x[1]+0.014*x[2]+0.7442*x[3]+0.1839*x[4]+0.9156*x[5]-0.1284*x[6]-0.8249*x[7]+0.1905*x[8]+0.3632*x[9]+0.3833*x[10]-0.9387*x[11]+0.2297*x[12]-0.4234*x[13]-0.2062*x[14]+0.696*x[15]+0.8989*x[16]-0.9968*x[17]-0.6102*x[18]+0.402*x[19]+0.5401*x[20] <= 56.481)
@NLconstraint(m, e3, 1.7913*x[1]*x[2]-1.005*x[1]*x[1]+0.6838*x[1]*x[3]-0.0624*x[1]*x[5]+1.417*x[1]*x[11]-1.7326*x[1]*x[18]+1.986*x[2]*x[3]+1.2304*x[2]*x[5]+1.119*x[2]*x[6]+1.9985*x[2]*x[8]-1.7102*x[2]*x[9]-1.4001*x[2]*x[11]-1.7132*x[2]*x[14]+0.2638*x[2]*x[15]-0.3714*x[2]*x[16]-1.945*x[2]*x[18]-1.7718*x[2]*x[19]+0.4522*x[3]*x[5]+0.0701*x[3]*x[9]-0.0218*x[3]*x[12]-0.6019*x[3]*x[13]-0.5033*x[3]*x[14]-0.6182*x[3]*x[18]+1.7498*x[3]*x[20]-1.1064*x[4]*x[6]-1.7864*x[4]*x[7]-1.3131*x[4]*x[8]-0.1281*x[4]*x[9]+1.0474*x[4]*x[11]-0.0645*x[4]*x[12]-0.4906*x[4]*x[14]-0.366*x[4]*x[15]-0.9334*x[4]*x[16]-1.503*x[4]*x[19]+0.8632*x[4]*x[20]+0.2767*x[5]*x[8]+1.6244*x[5]*x[10]-1.1019*x[5]*x[12]+1.7574*x[5]*x[13]-1.421*x[5]*x[14]+0.8021*x[5]*x[15]-0.7015*x[5]*x[18]+0.1464*x[6]*x[7]-1.8228*x[6]*x[8]+0.3547*x[6]*x[10]+0.5895*x[6]*x[11]+0.6225*x[6]*x[12]-1.9941*x[6]*x[13]+0.9691*x[6]*x[16]-0.0615*x[6]*x[18]-0.7944*x[6]*x[19]+1.258*x[7]*x[8]-1.1616*x[7]*x[9]+0.0603*x[7]*x[10]-0.1603*x[7]*x[11]+1.8599*x[7]*x[13]+0.5235*x[7]*x[14]+0.7276*x[7]*x[15]+0.5738*x[7]*x[16]-1.6536*x[7]*x[17]+0.754*x[7]*x[18]-1.9072*x[8]*x[9]-1.4665*x[8]*x[14]-0.0859*x[8]*x[15]-0.9746*x[8]*x[16]-0.9349*x[8]*x[18]-0.1364*x[8]*x[19]-0.4901*x[8]*x[20]+0.2155*x[9]*x[13]+1.1972*x[9]*x[14]+1.3613*x[9]*x[15]-0.5712*x[9]*x[17]+0.1698*x[9]*x[18]-1.3796*x[9]*x[19]+0.8411*x[10]*x[15]-1.9648*x[10]*x[17]-1.8869*x[10]*x[19]-1.062*x[10]*x[20]-0.7504*x[11]*x[15]-1.5095*x[11]*x[16]-0.5301*x[11]*x[17]-1.0858*x[11]*x[18]+1.6838*x[11]*x[20]-1.2394*x[12]*x[13]+0.5363*x[12]*x[15]-1.5222*x[12]*x[16]-1.9398*x[12]*x[17]+1.0726*x[12]*x[19]-1.3074*x[13]*x[15]+0.2238*x[13]*x[16]+1.7362*x[13]*x[18]+1.8699*x[13]*x[19]+1.4399*x[13]*x[20]+1.7649*x[14]*x[15]-1.7308*x[14]*x[16]-0.5673*x[14]*x[17]-1.2238*x[14]*x[18]+0.2233*x[14]*x[20]+0.2776*x[15]*x[15]+0.0186*x[15]*x[18]+0.8431*x[16]*x[18]-0.2326*x[17]*x[18]-0.777*x[18]*x[19]+0.4382*x[18]*x[20]+1.1672*x[20]*x[20]-0.6354*x[1]+0.8549*x[2]+0.1598*x[3]-0.7215*x[4]+0.615*x[5]-0.1993*x[6]-0.4871*x[7]-0.2927*x[8]+0.6599*x[9]-0.9076*x[10]+0.9188*x[11]-0.5947*x[12]+0.7155*x[13]-0.0413*x[14]+0.8798*x[15]-0.9255*x[16]+0.9238*x[17]-0.0802*x[18]-0.8738*x[19]-0.0823*x[20] <= 8.639)
@NLconstraint(m, e4, 0.3096*x[1]*x[4]+1.8415*x[1]*x[10]-0.1751*x[1]*x[13]+0.0025*x[1]*x[14]-1.9072*x[1]*x[15]-0.7325*x[1]*x[17]+1.4943*x[2]*x[3]-1.3227*x[2]*x[5]-0.8071*x[2]*x[7]-1.4255*x[2]*x[8]-1.1344*x[2]*x[9]-0.3545*x[2]*x[13]-0.7969*x[2]*x[15]-1.7428*x[2]*x[19]+0.9857*x[2]*x[20]-1.4432*x[3]*x[6]-0.3811*x[3]*x[7]-1.1997*x[3]*x[10]+0.8895*x[3]*x[11]-0.8046*x[3]*x[13]+0.01*x[3]*x[15]+0.8457*x[3]*x[16]-1.8889*x[3]*x[17]+1.3919*x[3]*x[18]+0.97*x[3]*x[19]+1.8165*x[3]*x[20]-1.6704*x[4]*x[4]-1.921*x[4]*x[13]+0.5261*x[4]*x[15]-0.838*x[5]*x[5]-1.3647*x[5]*x[7]+1.6003*x[5]*x[8]+1.534*x[5]*x[10]+1.333*x[5]*x[11]+1.3653*x[5]*x[12]+0.7479*x[5]*x[13]-0.8986*x[5]*x[14]-1.7402*x[5]*x[16]+1.4488*x[5]*x[17]-1.544*x[5]*x[19]+0.409*x[6]*x[7]-1.7738*x[6]*x[9]+1.0376*x[6]*x[10]+1.8328*x[6]*x[11]+0.3564*x[6]*x[14]-1.089*x[6]*x[15]+0.6835*x[6]*x[17]-0.3654*x[6]*x[19]+0.6922*x[7]*x[9]+1.5798*x[7]*x[10]+0.8363*x[7]*x[12]+0.0308*x[7]*x[13]-0.5394*x[7]*x[14]-0.1946*x[7]*x[15]-1.6677*x[7]*x[19]+0.5709*x[7]*x[20]-0.7836*x[8]*x[9]-1.4637*x[8]*x[11]-1.8837*x[8]*x[13]+1.6932*x[8]*x[14]-0.0175*x[8]*x[16]-1.7848*x[8]*x[18]-0.9763*x[8]*x[19]-1.9122*x[8]*x[20]+1.8055*x[9]*x[9]-1.9945*x[9]*x[10]+1.1736*x[9]*x[11]+1.048*x[9]*x[14]+0.0608*x[9]*x[15]-0.9034*x[9]*x[16]+0.6267*x[9]*x[17]-0.3425*x[9]*x[18]+0.7364*x[10]*x[12]-1.3754*x[10]*x[14]-0.2946*x[10]*x[18]-1.4081*x[10]*x[19]+1.08*x[11]*x[12]+0.325*x[11]*x[13]-0.8552*x[11]*x[14]-1.0754*x[11]*x[15]+0.4205*x[11]*x[16]+1.094*x[11]*x[18]+0.9293*x[12]*x[14]-0.3183*x[12]*x[16]-0.4576*x[12]*x[17]-1.4328*x[12]*x[20]+0.0854*x[13]*x[13]+1.7155*x[13]*x[16]+0.0138*x[13]*x[17]+0.7692*x[13]*x[18]+0.6972*x[14]*x[17]+0.1177*x[14]*x[18]-1.955*x[14]*x[19]+1.0615*x[15]*x[15]-0.3192*x[15]*x[16]+1.5113*x[15]*x[18]-0.4638*x[15]*x[19]+1.0847*x[15]*x[20]+0.2546*x[16]*x[17]+0.5526*x[16]*x[19]-1.2782*x[17]*x[17]+1.3059*x[17]*x[18]-0.8794*x[18]*x[19]+1.4812*x[19]*x[19]-0.4218*x[19]*x[20]+0.2707*x[1]+0.6371*x[2]+0.3757*x[3]+0.0495*x[4]+0.7994*x[5]-0.977*x[6]-0.6611*x[7]+0.5247*x[8]-0.453*x[9]-0.9342*x[10]-0.7508*x[11]-0.5356*x[12]-0.0965*x[13]+0.6205*x[14]-0.7085*x[15]-0.8815*x[16]-0.4944*x[17]-0.6929*x[18]-0.0442*x[19]-0.7032*x[20] <= 34.118)
@NLconstraint(m, e5, 0.4725*x[1]*x[10]-0.5952*x[1]*x[9]+1.322*x[1]*x[14]-0.9416*x[1]*x[15]+1.0964*x[1]*x[19]-0.5442*x[1]*x[20]+1.9562*x[2]*x[4]-0.418*x[2]*x[6]+1.2017*x[2]*x[10]+0.1704*x[2]*x[12]-1.5823*x[2]*x[13]-1.7775*x[2]*x[14]+1.3519*x[2]*x[15]-0.5967*x[2]*x[16]+0.7146*x[2]*x[17]+1.5444*x[2]*x[18]-0.909*x[2]*x[19]-1.2614*x[2]*x[20]+1.0253*x[3]*x[3]+1.9234*x[3]*x[4]+1.0334*x[3]*x[5]-0.3258*x[3]*x[6]-0.8949*x[3]*x[8]+1.1509*x[3]*x[9]+1.28*x[3]*x[12]-1.5572*x[3]*x[15]+0.6263*x[3]*x[17]-0.9175*x[4]*x[5]+1.5939*x[4]*x[6]-1.3231*x[4]*x[7]-1.6218*x[4]*x[8]+1.5232*x[4]*x[10]-0.4068*x[4]*x[12]-1.3086*x[4]*x[14]+0.2922*x[4]*x[15]+1.9718*x[4]*x[16]+1.1074*x[4]*x[19]+1.686*x[5]*x[8]-0.4617*x[5]*x[10]-1.213*x[5]*x[11]-1.6015*x[5]*x[13]-0.5371*x[5]*x[14]+1.7949*x[5]*x[16]+1.9005*x[5]*x[18]-0.7733*x[5]*x[19]-0.0741*x[6]*x[6]+1.6227*x[6]*x[7]-1.2265*x[6]*x[8]+1.7188*x[6]*x[9]-1.3176*x[6]*x[13]-1.4313*x[6]*x[14]-0.6975*x[6]*x[15]-0.6625*x[6]*x[16]+0.9316*x[6]*x[17]+1.496*x[6]*x[18]+1.6793*x[6]*x[19]+1.7282*x[7]*x[10]-0.5296*x[7]*x[14]+1.5046*x[7]*x[16]-1.5417*x[7]*x[17]-1.6859*x[7]*x[19]-0.2275*x[8]*x[11]-1.477*x[8]*x[12]-1.8607*x[8]*x[13]-1.273*x[8]*x[14]+1.0733*x[8]*x[16]+0.8091*x[8]*x[17]+1.1531*x[8]*x[18]-0.9217*x[9]*x[12]-0.1801*x[9]*x[13]+1.394*x[9]*x[14]+0.568*x[9]*x[16]+0.8924*x[9]*x[17]+0.9886*x[9]*x[18]-0.0634*x[10]*x[11]+0.0543*x[10]*x[13]-1.8866*x[10]*x[17]-1.5488*x[10]*x[19]-0.1132*x[11]*x[12]-0.2809*x[11]*x[13]-1.4215*x[11]*x[14]-0.2816*x[11]*x[15]-1.6718*x[11]*x[16]-0.5569*x[11]*x[17]+0.9464*x[12]*x[12]+0.7902*x[12]*x[13]-0.323*x[12]*x[14]-0.7158*x[12]*x[16]-1.3227*x[12]*x[18]-0.0943*x[12]*x[19]+0.8784*x[13]*x[15]-0.8553*x[13]*x[18]-1.8614*x[13]*x[20]-1.6305*x[14]*x[15]-1.2237*x[14]*x[17]-0.4679*x[14]*x[20]-1.5816*x[15]*x[18]-0.2933*x[15]*x[19]-0.617*x[16]*x[16]-0.3753*x[16]*x[18]-1.7063*x[16]*x[19]+0.005*x[16]*x[20]-0.3243*x[18]*x[19]-1.1133*x[18]*x[20]-1.9621*x[19]*x[19]-0.7491*x[1]-0.6519*x[2]-0.1361*x[3]+0.3888*x[4]+0.3583*x[5]+0.6346*x[6]-0.7302*x[7]+0.2642*x[8]+0.2195*x[9]-0.489*x[10]+0.0989*x[11]+0.4297*x[12]-0.5513*x[13]-0.421*x[14]+0.1651*x[15]-0.0258*x[16]-0.0428*x[17]-0.78*x[18]-0.2733*x[19]-0.2168*x[20] <= 76.861)
@NLconstraint(m, e6, 0.4382*x[1]*x[11]+1.777*x[1]*x[13]+0.9172*x[1]*x[14]-0.934*x[1]*x[15]-0.9032*x[1]*x[16]-1.6809*x[1]*x[17]+0.5022*x[1]*x[19]-1.2107*x[2]*x[3]-0.6996*x[2]*x[4]+0.9355*x[2]*x[5]+1.2751*x[2]*x[6]-1.5208*x[2]*x[7]+0.5715*x[2]*x[8]+0.7296*x[2]*x[11]+1.2413*x[2]*x[12]+1.1041*x[2]*x[13]+1.9518*x[2]*x[14]+0.983*x[2]*x[18]+1.4423*x[3]*x[3]+0.6115*x[3]*x[4]-1.0736*x[3]*x[5]-0.1585*x[3]*x[10]+0.7448*x[3]*x[12]+0.4749*x[3]*x[13]+0.539*x[3]*x[14]+1.8652*x[3]*x[15]-0.3089*x[3]*x[16]+1.0204*x[3]*x[17]-1.0765*x[3]*x[18]+1.633*x[3]*x[19]+1.4726*x[4]*x[4]+0.3754*x[4]*x[7]+1.8754*x[4]*x[8]+0.9925*x[4]*x[9]+1.3039*x[4]*x[10]+1.5356*x[4]*x[12]-0.1559*x[4]*x[15]-0.7778*x[4]*x[17]+1.5839*x[4]*x[18]+1.0834*x[4]*x[19]-0.1635*x[4]*x[20]-0.4974*x[5]*x[7]-0.2785*x[5]*x[10]+0.0043*x[5]*x[12]+1.7312*x[5]*x[13]+1.7105*x[5]*x[14]-0.2799*x[5]*x[16]-1.0626*x[5]*x[19]-1.0183*x[6]*x[6]-1.9459*x[6]*x[9]+0.1007*x[6]*x[10]+1.358*x[6]*x[11]+1.6481*x[6]*x[12]-1.8855*x[6]*x[15]+1.7685*x[6]*x[17]+0.7226*x[6]*x[18]-1.2548*x[6]*x[19]+0.5932*x[6]*x[20]-0.0827*x[7]*x[9]-1.4252*x[7]*x[10]+0.1593*x[7]*x[11]+0.3662*x[7]*x[16]+0.9135*x[7]*x[17]-1.3076*x[7]*x[18]+1.2794*x[7]*x[20]-1.3196*x[8]*x[9]+1.804*x[8]*x[10]+0.3287*x[8]*x[11]-1.6482*x[8]*x[13]+1.2325*x[8]*x[14]-0.4404*x[8]*x[18]-1.2946*x[9]*x[16]+0.9952*x[9]*x[17]-1.1142*x[9]*x[18]-1.6114*x[9]*x[19]+1.2456*x[10]*x[14]-1.1706*x[10]*x[17]+1.6232*x[10]*x[20]-1.5759*x[11]*x[11]-0.6425*x[11]*x[12]+1.9435*x[11]*x[13]-1.968*x[11]*x[14]+0.4331*x[11]*x[16]-0.4466*x[11]*x[19]+0.0656*x[11]*x[20]+1.2496*x[12]*x[15]-0.0393*x[12]*x[19]+0.2626*x[13]*x[13]+1.5353*x[13]*x[14]+1.645*x[13]*x[17]-0.0441*x[13]*x[19]+1.8871*x[14]*x[15]-1.832*x[14]*x[18]-0.9351*x[14]*x[19]-1.884*x[15]*x[18]+0.9906*x[15]*x[19]-0.3354*x[15]*x[20]-1.8913*x[16]*x[16]-0.5561*x[16]*x[19]+1.1766*x[17]*x[17]-0.7143*x[17]*x[18]-1.5007*x[17]*x[19]-1.0662*x[17]*x[20]+1.7275*x[19]*x[19]+0.3058*x[19]*x[20]+0.5545*x[1]-0.8519*x[2]-0.9463*x[3]-0.6376*x[4]-0.2133*x[5]-0.8927*x[6]-0.6521*x[7]+0.3247*x[8]-0.0991*x[9]+0.1369*x[10]+0.9108*x[11]-0.4506*x[12]+0.3934*x[13]-0.6389*x[14]+0.1201*x[15]-0.7376*x[16]+0.0244*x[17]+0.6113*x[18]+0.5277*x[19]+0.2063*x[20] <= 69.837)
@NLconstraint(m, e7, 0.6562*x[1]*x[8]-0.0883*x[1]*x[2]+0.3144*x[1]*x[13]+0.4286*x[1]*x[14]+0.0465*x[1]*x[15]-0.9614*x[1]*x[16]+0.7141*x[2]*x[2]-1.9807*x[2]*x[3]-1.6966*x[2]*x[4]+0.9895*x[2]*x[5]-0.8842*x[2]*x[6]+1.5981*x[2]*x[7]+0.3273*x[2]*x[11]+0.674*x[2]*x[12]+0.805*x[2]*x[16]-0.1325*x[2]*x[17]-0.5076*x[2]*x[19]-0.1524*x[3]*x[6]-1.6309*x[3]*x[7]-0.8754*x[3]*x[8]+0.805*x[3]*x[17]-0.0063*x[3]*x[19]+1.9798*x[4]*x[6]+0.0008*x[4]*x[8]+1.0563*x[4]*x[10]-0.5651*x[4]*x[11]+1.5558*x[4]*x[12]-0.6202*x[4]*x[16]-1.7077*x[4]*x[18]+1.0532*x[4]*x[20]+0.8882*x[5]*x[5]+1.7141*x[5]*x[6]+1.0624*x[5]*x[7]+1.5952*x[5]*x[9]-0.4666*x[5]*x[10]+1.058*x[5]*x[12]+0.7072*x[5]*x[14]+1.2015*x[5]*x[15]+1.0921*x[6]*x[9]+1.7054*x[6]*x[11]-1.619*x[6]*x[12]+1.0298*x[6]*x[13]+1.647*x[6]*x[14]-1.0716*x[6]*x[17]-1.8593*x[6]*x[18]+0.72*x[6]*x[20]-0.1509*x[7]*x[8]+1.4194*x[7]*x[12]-0.7963*x[7]*x[16]+1.6695*x[7]*x[18]+0.0924*x[7]*x[19]-1.848*x[8]*x[10]-0.6099*x[8]*x[11]+1.136*x[8]*x[13]+1.049*x[8]*x[14]-0.8358*x[8]*x[15]-1.5142*x[8]*x[19]+0.7317*x[9]*x[11]-1.4091*x[9]*x[12]-1.0872*x[9]*x[13]-1.5078*x[9]*x[14]+1.3195*x[9]*x[15]-1.8278*x[9]*x[16]-0.4869*x[9]*x[17]+0.4765*x[10]*x[10]+1.8152*x[10]*x[11]+1.0728*x[10]*x[12]+0.4688*x[10]*x[14]+1.4179*x[10]*x[16]+1.584*x[11]*x[11]+0.9453*x[11]*x[12]-1.8399*x[11]*x[13]-0.1823*x[11]*x[15]-0.9579*x[11]*x[16]+0.2747*x[11]*x[17]+1.0254*x[11]*x[18]-0.7211*x[12]*x[12]+1.0039*x[12]*x[13]+1.6637*x[12]*x[14]+0.6746*x[12]*x[16]-1.0827*x[12]*x[17]+0.5903*x[12]*x[18]+1.5758*x[13]*x[13]+0.2728*x[13]*x[14]-0.7442*x[13]*x[15]+1.8444*x[13]*x[16]+1.5264*x[13]*x[17]-0.7514*x[13]*x[18]+1.8164*x[13]*x[20]-0.2487*x[14]*x[15]+1.3695*x[14]*x[16]+0.1399*x[14]*x[17]-1.018*x[14]*x[18]+0.9259*x[14]*x[19]+1.8707*x[15]*x[16]+0.3235*x[15]*x[17]-1.4646*x[15]*x[18]+0.2906*x[15]*x[19]+1.5703*x[15]*x[20]-1.4907*x[16]*x[16]+1.9017*x[16]*x[18]+0.8413*x[17]*x[17]+1.6229*x[18]*x[19]+1.7058*x[18]*x[20]-1.0392*x[19]*x[20]-0.4114*x[1]+0.9795*x[2]-0.1077*x[3]-0.6987*x[4]+0.2325*x[5]+0.2258*x[6]-0.182*x[7]-0.7795*x[8]-0.3339*x[9]+0.0604*x[10]+0.5438*x[11]+0.3154*x[12]+0.525*x[13]-0.0018*x[14]-0.297*x[15]-0.3412*x[16]+0.0864*x[17]-0.5238*x[18]-0.5064*x[19]+0.7133*x[20] <= 53.952)
@NLconstraint(m, e8, 0.3379*x[1]*x[3]-1.3596*x[1]*x[9]+1.1576*x[1]*x[10]-0.3629*x[1]*x[11]-0.4338*x[1]*x[14]-1.3735*x[1]*x[19]+0.5551*x[2]*x[2]+0.241*x[2]*x[4]-1.4733*x[2]*x[6]+0.8312*x[2]*x[8]+1.4923*x[2]*x[9]-1.9685*x[2]*x[16]+0.0798*x[2]*x[17]-0.6582*x[2]*x[19]+1.1246*x[3]*x[4]+0.7611*x[3]*x[5]+1.122*x[3]*x[6]+0.6393*x[3]*x[7]+1.5948*x[3]*x[9]-1.2169*x[3]*x[14]+1.1821*x[3]*x[15]+0.7639*x[3]*x[16]-0.3615*x[3]*x[18]-0.1256*x[3]*x[19]-0.9228*x[4]*x[5]-1.3156*x[4]*x[6]-1.7582*x[4]*x[7]+1.4368*x[4]*x[9]+0.4884*x[4]*x[12]-1.8019*x[4]*x[13]+0.465*x[4]*x[14]-0.669*x[4]*x[17]-0.7806*x[4]*x[20]+1.5951*x[5]*x[7]-1.3804*x[5]*x[8]-1.0049*x[5]*x[10]-1.5386*x[5]*x[12]-0.469*x[5]*x[13]-1.9964*x[5]*x[14]+1.7843*x[5]*x[16]-0.33*x[5]*x[18]-0.751*x[5]*x[20]+1.9837*x[6]*x[8]-1.6085*x[6]*x[9]-0.8264*x[6]*x[11]-0.8606*x[6]*x[12]-0.3859*x[6]*x[14]-0.3778*x[6]*x[15]+1.7708*x[6]*x[16]+1.3084*x[6]*x[17]+1.288*x[6]*x[18]-1.296*x[7]*x[9]-1.9346*x[7]*x[12]-0.5304*x[7]*x[13]-0.156*x[7]*x[14]-1.5896*x[7]*x[15]-1.4199*x[7]*x[16]+0.9563*x[7]*x[17]+1.7221*x[7]*x[18]-0.02*x[7]*x[19]+1.3811*x[8]*x[9]+1.9335*x[8]*x[10]+1.341*x[8]*x[11]+1.801*x[8]*x[12]+0.2787*x[8]*x[15]-1.2485*x[8]*x[17]-0.7872*x[8]*x[18]+1.5799*x[8]*x[19]+0.7174*x[8]*x[20]+1.1892*x[9]*x[10]-0.5975*x[9]*x[14]-1.6955*x[9]*x[15]+0.4396*x[9]*x[17]-0.3191*x[9]*x[18]-0.8399*x[9]*x[19]-1.4858*x[9]*x[20]+1.5527*x[10]*x[10]-0.0107*x[10]*x[14]+0.7053*x[10]*x[15]+1.6911*x[10]*x[17]-0.4373*x[10]*x[18]+0.4855*x[10]*x[19]+1.9561*x[11]*x[11]+1.8259*x[11]*x[14]+1.6499*x[11]*x[15]+0.6594*x[11]*x[16]+1.7887*x[11]*x[18]+1.5463*x[12]*x[12]-0.1103*x[12]*x[13]-0.735*x[12]*x[16]+1.5695*x[12]*x[18]+0.8248*x[12]*x[19]+1.0372*x[13]*x[14]+0.7385*x[13]*x[15]-1.0372*x[13]*x[16]+1.3321*x[14]*x[14]-0.1494*x[14]*x[19]+0.4392*x[15]*x[16]-1.5669*x[16]*x[17]-1.8425*x[16]*x[18]-1.9611*x[16]*x[19]-0.9036*x[17]*x[19]-0.4982*x[18]*x[18]+0.4272*x[18]*x[19]-0.1817*x[19]*x[19]-0.6339*x[1]-0.9891*x[2]-0.7825*x[3]+0.8303*x[4]+0.3809*x[5]-0.4264*x[6]-0.115*x[7]-0.9701*x[8]+0.2788*x[9]-0.576*x[10]-0.7082*x[11]-0.1056*x[12]+0.1949*x[13]+0.3351*x[14]+0.6017*x[15]+0.9785*x[16]+0.0387*x[17]-0.7196*x[18]-0.8148*x[19]-0.8804*x[20] <= 17.703)
@NLconstraint(m, e9, 1.2341*x[1]*x[2]-0.1741*x[1]*x[12]-0.8847*x[1]*x[19]+1.4812*x[2]*x[3]-1.0943*x[2]*x[4]+0.1064*x[2]*x[5]+1.8087*x[2]*x[6]+1.9904*x[2]*x[7]+0.5244*x[2]*x[9]-1.154*x[2]*x[11]-0.465*x[2]*x[13]+1.622*x[2]*x[15]+1.8652*x[2]*x[16]+1.0309*x[2]*x[18]+0.9963*x[2]*x[19]+0.8878*x[3]*x[3]+0.5403*x[3]*x[4]-1.8688*x[3]*x[5]-0.3675*x[3]*x[6]+0.5145*x[3]*x[7]-0.6724*x[3]*x[8]-1.49*x[3]*x[9]-1.6132*x[3]*x[10]+0.8611*x[3]*x[11]-0.7328*x[3]*x[12]-0.7738*x[3]*x[14]-0.203*x[3]*x[16]+0.5203*x[3]*x[17]-0.7814*x[3]*x[18]+0.4409*x[3]*x[19]+1.6329*x[4]*x[5]-0.9388*x[4]*x[6]+1.8184*x[4]*x[7]-0.988*x[4]*x[8]-0.3672*x[4]*x[9]-0.3903*x[4]*x[13]-1.4172*x[4]*x[14]+0.1385*x[4]*x[16]-1.7622*x[4]*x[19]+1.1738*x[5]*x[6]+1.7372*x[5]*x[7]-1.6431*x[5]*x[8]-1.4417*x[5]*x[9]+0.9388*x[5]*x[10]+0.94*x[5]*x[11]+0.6277*x[5]*x[13]-0.8534*x[5]*x[14]-1.6774*x[5]*x[15]+1.743*x[5]*x[18]-1.7338*x[5]*x[19]-0.5275*x[6]*x[6]+0.6235*x[6]*x[11]+1.4264*x[6]*x[12]-0.6783*x[6]*x[14]+1.9761*x[6]*x[17]-0.1316*x[6]*x[18]+0.9161*x[7]*x[7]-1.094*x[7]*x[8]-0.6286*x[8]*x[10]+1.7897*x[8]*x[12]+0.7429*x[8]*x[13]-0.2782*x[8]*x[14]+0.1834*x[8]*x[15]+0.4178*x[8]*x[16]-1.338*x[8]*x[18]+1.6651*x[8]*x[19]+1.8615*x[9]*x[9]+1.3759*x[9]*x[15]-0.089*x[9]*x[16]-0.8282*x[9]*x[18]+0.4952*x[9]*x[19]+0.967*x[10]*x[14]-0.019*x[10]*x[17]+1.2887*x[10]*x[18]-0.62*x[10]*x[19]+0.0221*x[11]*x[11]+0.2627*x[11]*x[13]-1.7378*x[11]*x[16]+0.55*x[11]*x[17]+1.8347*x[11]*x[18]-0.1986*x[11]*x[19]+1.1341*x[12]*x[13]-1.3407*x[12]*x[14]-1.6359*x[12]*x[15]-0.4716*x[12]*x[16]+0.4251*x[12]*x[18]+0.3393*x[12]*x[19]-0.6173*x[12]*x[20]-0.7357*x[13]*x[14]+1.4183*x[13]*x[18]-0.8087*x[14]*x[14]-0.3991*x[14]*x[15]-0.4671*x[14]*x[17]-0.5241*x[14]*x[20]-1.0301*x[15]*x[16]-1.9129*x[15]*x[17]+1.4717*x[15]*x[18]+1.8674*x[15]*x[19]-0.1117*x[16]*x[16]+0.135*x[16]*x[18]-1.4041*x[16]*x[19]+0.1208*x[17]*x[17]+1.4773*x[17]*x[20]-1.8725*x[18]*x[19]+0.4131*x[19]*x[20]+0.1782*x[1]-0.2799*x[2]-0.0409*x[3]-0.6757*x[4]-0.4518*x[5]+0.2414*x[6]+0.0874*x[7]+0.3582*x[8]-0.2036*x[9]+0.5853*x[10]+0.7558*x[11]-0.7114*x[12]-0.0114*x[13]+0.9689*x[14]+0.8122*x[15]-0.282*x[16]+0.1775*x[17]+0.3657*x[18]+0.6749*x[19]+0.8646*x[20] <= 71.529)
@NLconstraint(m, e10, 1.5728*x[1]*x[19]-1.8475*x[1]*x[7]-1.4935*x[1]*x[20]-0.0615*x[2]*x[4]-1.8023*x[2]*x[5]+1.7663*x[2]*x[7]+0.8923*x[2]*x[8]-0.6699*x[2]*x[12]+0.5825*x[2]*x[14]+0.8129*x[2]*x[16]-1.3355*x[2]*x[17]+1.5083*x[2]*x[18]+1.702*x[3]*x[4]+1.893*x[3]*x[5]+0.7181*x[3]*x[6]-1.6144*x[3]*x[7]-0.5115*x[3]*x[8]-1.0972*x[3]*x[12]-0.9631*x[3]*x[13]+0.9557*x[3]*x[14]+1.468*x[3]*x[17]-0.8573*x[3]*x[18]+0.6815*x[3]*x[19]-0.6952*x[4]*x[5]-1.9289*x[4]*x[6]+1.7771*x[4]*x[7]-0.2551*x[4]*x[10]+0.1767*x[4]*x[11]-0.2643*x[4]*x[13]+0.5912*x[4]*x[15]-1.5288*x[4]*x[16]+1.752*x[4]*x[19]+0.9544*x[4]*x[20]+1.5423*x[5]*x[6]+0.7762*x[5]*x[7]+1.1177*x[5]*x[8]+0.6938*x[5]*x[9]+0.5254*x[5]*x[11]-1.2964*x[5]*x[13]-1.3357*x[5]*x[15]+0.3192*x[5]*x[16]-1.0562*x[5]*x[17]+0.4207*x[5]*x[19]-0.0833*x[6]*x[6]-1.2985*x[6]*x[7]-0.5831*x[6]*x[8]-1.227*x[6]*x[11]-0.0868*x[6]*x[12]+0.2192*x[6]*x[13]-1.0611*x[6]*x[15]+1.7413*x[6]*x[17]-1.5591*x[6]*x[19]+0.9996*x[6]*x[20]+0.3769*x[7]*x[7]-0.4076*x[7]*x[8]-1.3403*x[7]*x[9]+1.9138*x[7]*x[11]-1.8461*x[7]*x[12]+1.0098*x[7]*x[13]-0.8945*x[7]*x[14]+0.879*x[7]*x[15]+0.7267*x[7]*x[16]+1.8301*x[7]*x[19]-1.5456*x[7]*x[20]+0.6672*x[8]*x[12]+0.4378*x[8]*x[14]+0.5282*x[8]*x[16]-0.3745*x[8]*x[17]+1.6169*x[8]*x[19]-0.0031*x[9]*x[10]+0.0205*x[9]*x[11]+0.2917*x[9]*x[13]+1.0938*x[9]*x[14]+0.2718*x[9]*x[15]+0.1*x[9]*x[16]-1.0036*x[9]*x[17]+0.1306*x[9]*x[18]-0.0574*x[10]*x[17]-1.141*x[10]*x[18]+1.3905*x[11]*x[12]-1.8458*x[11]*x[13]+0.4676*x[11]*x[14]-1.5865*x[11]*x[15]-0.6629*x[11]*x[16]-0.65*x[11]*x[17]+1.423*x[11]*x[19]+1.9533*x[11]*x[20]-1.5804*x[12]*x[12]-0.4728*x[12]*x[14]-0.9816*x[12]*x[15]-0.6526*x[12]*x[17]-1.6568*x[12]*x[19]-1.0281*x[13]*x[14]-1.716*x[13]*x[16]-0.2316*x[13]*x[18]-0.3347*x[13]*x[19]+0.1119*x[13]*x[20]-0.9911*x[14]*x[15]+0.4324*x[14]*x[18]-1.9252*x[14]*x[19]-1.8518*x[15]*x[19]+1.5287*x[15]*x[20]+1.3181*x[16]*x[19]+1.1293*x[17]*x[20]+0.9878*x[20]*x[20]-0.69*x[1]+0.522*x[2]-0.0094*x[3]-0.7681*x[4]-0.7092*x[5]+0.4011*x[6]+0.559*x[7]-0.467*x[8]+0.043*x[9]+0.1095*x[10]-0.8166*x[11]-0.4604*x[12]-0.0464*x[13]+0.2967*x[14]+0.9009*x[15]-0.1387*x[16]+0.6497*x[17]-0.575*x[18]+0.3565*x[19]-0.4008*x[20] <= 73.801)
@NLconstraint(m, e11, 1.052*x[1]*x[9]-1.3739*x[1]*x[6]-0.9544*x[1]*x[11]-1.511*x[1]*x[16]+0.5049*x[1]*x[19]-1.5138*x[2]*x[4]-0.6888*x[2]*x[6]+1.578*x[2]*x[9]-1.1042*x[2]*x[10]-0.471*x[2]*x[11]+1.958*x[2]*x[12]+0.2151*x[2]*x[14]-0.5638*x[2]*x[15]-0.7215*x[2]*x[18]-0.5851*x[2]*x[20]-0.1858*x[3]*x[6]+1.562*x[3]*x[7]-0.8135*x[3]*x[11]+1.1679*x[3]*x[12]+0.1708*x[3]*x[14]-1.3192*x[3]*x[16]-0.9045*x[3]*x[17]+0.6818*x[3]*x[18]+1.1847*x[3]*x[19]+1.3231*x[4]*x[4]-1.2845*x[4]*x[6]-1.6786*x[4]*x[7]+0.02*x[4]*x[11]-0.8377*x[4]*x[13]-1.4241*x[4]*x[14]-1.6577*x[4]*x[15]-1.1632*x[4]*x[16]+0.5725*x[4]*x[19]-0.2247*x[5]*x[10]-0.2254*x[5]*x[12]-0.2462*x[5]*x[13]-0.0891*x[5]*x[14]+0.4529*x[5]*x[16]-1.6147*x[5]*x[20]-1.2025*x[6]*x[7]-0.2394*x[6]*x[8]-1.5327*x[6]*x[10]+0.1559*x[6]*x[12]+1.6829*x[6]*x[13]-0.416*x[6]*x[15]-1.4582*x[6]*x[17]-1.3395*x[7]*x[7]+0.072*x[7]*x[8]+1.9734*x[7]*x[11]+0.3358*x[7]*x[12]-1.6559*x[7]*x[13]+0.4149*x[7]*x[14]+1.465*x[7]*x[18]+1.6348*x[8]*x[11]+0.8573*x[8]*x[12]-0.6294*x[8]*x[13]+0.4616*x[8]*x[14]-0.2732*x[8]*x[15]-0.0133*x[8]*x[17]+1.2855*x[8]*x[18]+1.0384*x[9]*x[10]-1.9859*x[9]*x[11]-1.3745*x[9]*x[12]-0.041*x[9]*x[14]-0.0729*x[9]*x[15]-1.5514*x[9]*x[17]+0.7185*x[9]*x[18]-1.6382*x[10]*x[11]+1.1268*x[10]*x[14]+1.7973*x[10]*x[15]+0.9349*x[10]*x[17]+1.6053*x[10]*x[19]+0.2631*x[11]*x[12]-1.1841*x[11]*x[13]+1.3938*x[11]*x[14]+0.739*x[11]*x[17]-0.339*x[11]*x[18]+0.2523*x[12]*x[14]+1.845*x[12]*x[15]-0.0291*x[12]*x[17]-1.2524*x[12]*x[19]-1.4958*x[12]*x[20]-0.5361*x[13]*x[13]+1.8907*x[13]*x[14]+0.2354*x[13]*x[16]+0.2569*x[13]*x[19]-0.4608*x[13]*x[20]-0.3003*x[14]*x[14]+0.213*x[14]*x[15]-1.6182*x[14]*x[16]-0.5031*x[14]*x[18]-1.5045*x[14]*x[19]+0.7628*x[14]*x[20]+1.7532*x[15]*x[15]-0.1251*x[15]*x[16]-0.0476*x[15]*x[17]+0.2927*x[15]*x[18]-0.5704*x[15]*x[19]+0.7416*x[15]*x[20]-0.1026*x[16]*x[16]-0.0055*x[16]*x[19]-1.6287*x[16]*x[20]+0.8279*x[17]*x[19]+1.9355*x[18]*x[18]-0.7738*x[19]*x[19]+0.4083*x[1]-0.6598*x[2]+0.1814*x[3]-0.619*x[4]-0.3875*x[5]-0.1021*x[6]-0.1968*x[7]+0.4869*x[8]+0.5693*x[9]+0.441*x[10]+0.4262*x[11]+0.8998*x[12]-0.8564*x[13]+0.6578*x[14]+0.7147*x[15]-0.0198*x[16]-0.7631*x[17]+0.9722*x[18]-0.0173*x[19]-0.627*x[20] <= 6.262)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
