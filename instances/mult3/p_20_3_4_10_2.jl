using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.856*x[19]^2-0.3016*x[19]+0.4182*x[2]*x[4]-0.9364*x[1]*x[4]+0.4592*x[2]*x[12]-0.5774*x[4]*x[8]-0.255*x[4]*x[17]-0.1461*x[4]*x[19]-0.8234*x[7]*x[13]-0.148*x[7]*x[15]-0.2311*x[8]*x[13]+0.366*x[8]*x[19]-0.2288*x[10]*x[17]+0.4112*x[11]*x[14]-0.6788*x[12]*x[14]-0.0005*x[13]*x[17]-0.6767*x[14]*x[17]+0.5986*x[14]*x[18]+0.8792*x[15]*x[19]+0.201*x[1]+0.3907*x[2]+0.5785*x[4]+0.1005*x[7]-0.1216*x[8]+0.8168*x[10]-0.6426*x[11]-0.517*x[12]+0.1262*x[13]+0.5641*x[14]+0.1047*x[15]+0.332*x[17]-0.4309*x[18]+(-0.0054*x[1]^2*x[13])-0.7901*x[2]^2*x[5]-0.2194*x[2]^2*x[20]-0.1545*x[3]^2*x[6]+0.737*x[4]^2*x[11]+0.5092*x[4]^2*x[14]+0.8146*x[4]^2*x[19]+0.5614*x[5]^2*x[18]-0.3591*x[7]^2*x[13]+0.893*x[7]^2*x[18]+0.4206*x[8]^2*x[1]-0.2871*x[8]^2*x[20]+0.5678*x[9]^2*x[6]-0.0243*x[9]^2*x[13]+0.3385*x[11]^2*x[14]+0.1137*x[11]^2*x[17]+0.7597*x[12]^2*x[13]+0.5089*x[13]^2*x[10]+0.2892*x[14]^2*x[8]+0.822*x[15]^2*x[16]-0.4624*x[16]^2*x[13]+0.0894*x[18]^2*x[4]-0.8949*x[19]^2*x[7]-0.9742*x[19]^2*x[17]+0.5618*x[3]+0.6697*x[5]+0.1999*x[6]+0.597*x[9]+0.8031*x[16]-0.8074*x[20]+(-0.8062*x[1]*x[2]*x[14])-0.2326*x[1]*x[2]*x[16]+0.5632*x[1]*x[3]*x[4]+0.3193*x[1]*x[4]*x[12]+0.2794*x[1]*x[4]*x[14]-0.8841*x[1]*x[6]*x[7]-0.1975*x[1]*x[8]*x[12]-0.3446*x[1]*x[8]*x[13]+0.2846*x[1]*x[8]*x[18]-0.5631*x[1]*x[9]*x[14]-0.8723*x[1]*x[13]*x[14]-0.6119*x[1]*x[16]*x[18]+0.1163*x[2]*x[3]*x[18]-0.3318*x[2]*x[3]*x[20]-0.5341*x[2]*x[4]*x[11]-0.2583*x[2]*x[4]*x[15]-0.1253*x[2]*x[5]*x[15]-0.1613*x[2]*x[5]*x[17]-0.4655*x[2]*x[5]*x[18]+0.262*x[2]*x[6]*x[13]-0.1537*x[2]*x[7]*x[10]+0.8788*x[2]*x[7]*x[19]-0.9674*x[2]*x[9]*x[15]-0.6715*x[2]*x[10]*x[13]+0.6766*x[2]*x[10]*x[15]+0.074*x[2]*x[13]*x[19]-0.9901*x[2]*x[15]*x[17]+0.1117*x[2]*x[15]*x[19]-0.5885*x[2]*x[15]*x[20]-0.2058*x[2]*x[17]*x[20]-0.8378*x[2]*x[18]*x[20]+0.656*x[3]*x[4]*x[15]+0.1*x[3]*x[4]*x[16]-0.8325*x[3]*x[4]*x[18]-0.3397*x[3]*x[5]*x[6]+0.4983*x[3]*x[5]*x[10]-0.5018*x[3]*x[5]*x[15]+0.5164*x[3]*x[5]*x[20]-0.3402*x[3]*x[6]*x[13]+0.8893*x[3]*x[6]*x[14]+0.508*x[3]*x[7]*x[10]+0.649*x[3]*x[7]*x[17]+0.9909*x[3]*x[8]*x[9]-0.9957*x[3]*x[8]*x[13]+0.7918*x[3]*x[8]*x[16]+0.5566*x[3]*x[8]*x[17]-0.9236*x[3]*x[9]*x[13]-0.95*x[3]*x[9]*x[19]-0.5171*x[3]*x[12]*x[15]-0.0485*x[3]*x[12]*x[20]-0.2674*x[3]*x[14]*x[16]+0.9828*x[3]*x[14]*x[20]+0.2866*x[3]*x[16]*x[17]+0.088*x[3]*x[16]*x[19]-0.4792*x[3]*x[17]*x[20]-0.1926*x[4]*x[6]*x[8]+0.3151*x[4]*x[6]*x[14]-0.0179*x[4]*x[7]*x[9]-0.6671*x[4]*x[7]*x[16]-0.1297*x[4]*x[8]*x[14]-0.7346*x[4]*x[8]*x[19]-0.2277*x[4]*x[9]*x[13]+0.7715*x[4]*x[10]*x[13]+0.0337*x[4]*x[11]*x[19]-0.0253*x[4]*x[12]*x[17]-0.9789*x[4]*x[17]*x[18]-0.1334*x[4]*x[18]*x[19]+0.4033*x[5]*x[6]*x[8]-0.8193*x[5]*x[6]*x[11]-0.4005*x[5]*x[7]*x[17]+0.0875*x[5]*x[7]*x[19]+0.3584*x[5]*x[9]*x[13]+0.6792*x[5]*x[9]*x[19]-0.369*x[5]*x[10]*x[15]+0.3643*x[5]*x[11]*x[15]+0.9472*x[5]*x[12]*x[18]+0.0279*x[5]*x[13]*x[16]-0.2739*x[5]*x[14]*x[16]+0.5066*x[5]*x[18]*x[20]-0.6481*x[6]*x[8]*x[11]-0.3722*x[6]*x[8]*x[17]-0.3264*x[6]*x[9]*x[13]-0.0336*x[6]*x[9]*x[15]+0.9489*x[6]*x[9]*x[20]-0.7873*x[6]*x[10]*x[11]-0.4867*x[6]*x[10]*x[18]-0.3992*x[6]*x[10]*x[19]-0.4067*x[6]*x[11]*x[12]-0.2165*x[6]*x[13]*x[19]+0.4763*x[6]*x[14]*x[16]+0.4402*x[6]*x[16]*x[17]+0.789*x[6]*x[16]*x[19]-0.535*x[7]*x[9]*x[13]-0.2251*x[7]*x[10]*x[12]+0.196*x[7]*x[10]*x[16]+0.3974*x[7]*x[11]*x[19]+0.6814*x[7]*x[12]*x[17]-0.1462*x[7]*x[15]*x[18]+0.6175*x[7]*x[16]*x[19]-0.4665*x[7]*x[17]*x[18]+0.6978*x[8]*x[9]*x[19]-0.7503*x[8]*x[10]*x[11]+0.4987*x[8]*x[10]*x[14]+0.4272*x[8]*x[10]*x[15]-0.8388*x[8]*x[10]*x[20]-0.5938*x[8]*x[11]*x[15]-0.5194*x[8]*x[13]*x[17]+0.8361*x[8]*x[14]*x[19]+0.0393*x[8]*x[15]*x[16]+0.683*x[8]*x[15]*x[19]-0.9363*x[8]*x[16]*x[18]+0.5037*x[8]*x[17]*x[20]+0.3246*x[9]*x[10]*x[14]+0.6687*x[9]*x[11]*x[14]+0.0261*x[9]*x[12]*x[14]+0.006*x[9]*x[12]*x[15]+0.1085*x[9]*x[12]*x[19]+0.5755*x[9]*x[13]*x[14]-0.0051*x[9]*x[15]*x[20]-0.3572*x[9]*x[16]*x[17]-0.6776*x[10]*x[11]*x[19]+0.147*x[10]*x[12]*x[17]+0.6018*x[10]*x[13]*x[15]-0.0251*x[11]*x[17]*x[20]-0.1424*x[11]*x[18]*x[19]-0.0133*x[12]*x[13]*x[18]+0.3263*x[12]*x[14]*x[17]+0.9647*x[12]*x[14]*x[19]-0.6796*x[13]*x[17]*x[18]-0.7218*x[14]*x[17]*x[18]+0.7507*x[14]*x[18]*x[19]+0.1175*x[15]*x[17]*x[20])+ obj == 0.0)
@NLconstraint(m, e2, 0.0671*x[11]-0.6591*x[11]^2+0.2362*x[1]*x[5]+0.2757*x[1]*x[14]-0.1195*x[2]*x[4]+0.5234*x[2]*x[6]+0.324*x[2]*x[9]-0.5633*x[2]*x[14]-0.5612*x[2]*x[16]-0.2106*x[4]*x[7]+0.1098*x[6]*x[11]-0.4327*x[6]*x[19]-0.9479*x[8]*x[9]+0.666*x[8]*x[11]+0.6645*x[11]*x[16]+0.7493*x[12]*x[13]-0.9235*x[12]*x[14]-0.2369*x[12]*x[16]+0.8423*x[13]*x[18]-0.6622*x[14]*x[18]+0.761*x[16]*x[17]+0.1692*x[16]*x[20]-0.0649*x[17]*x[19]-0.3978*x[1]+0.209*x[2]+0.4228*x[4]+0.4711*x[5]-0.6339*x[6]-0.587*x[7]-0.5134*x[8]+0.923*x[9]+0.6648*x[12]+0.95*x[13]-0.3784*x[14]+0.1359*x[16]+0.8168*x[17]-0.3877*x[18]-0.6286*x[19]-0.1827*x[20]+0.9324*x[2]^2*x[4]-0.7768*x[3]^2*x[11]-0.4668*x[3]^2*x[15]-0.5619*x[5]^2*x[4]-0.37*x[5]^2*x[13]-0.1128*x[6]^2*x[4]-0.0409*x[6]^2*x[13]-0.2883*x[7]^2*x[2]-0.7811*x[7]^2*x[15]-0.3065*x[8]^2*x[3]-0.504*x[8]^2*x[17]-0.8182*x[9]^2*x[16]+0.4152*x[10]^2*x[9]-0.12*x[10]^2*x[16]+0.4655*x[12]^2*x[10]+0.3846*x[12]^2*x[11]-0.0697*x[13]^2*x[3]-0.6108*x[13]^2*x[6]-0.7583*x[15]^2*x[7]-0.7461*x[15]^2*x[19]+0.0757*x[16]^2*x[12]+0.2115*x[18]^2*x[5]-0.977*x[19]^2*x[4]+0.9015*x[19]^2*x[7]+0.9592*x[19]^2*x[14]-0.3974*x[3]-0.3726*x[10]-0.4831*x[15]+0.188*x[1]*x[2]*x[20]-0.2686*x[1]*x[2]*x[14]-0.6282*x[1]*x[3]*x[5]+0.2419*x[1]*x[3]*x[15]+0.8404*x[1]*x[8]*x[11]-0.7022*x[1]*x[9]*x[17]-0.953*x[1]*x[9]*x[19]-0.349*x[1]*x[12]*x[19]+0.9142*x[1]*x[15]*x[17]+0.7653*x[1]*x[17]*x[18]+0.7453*x[1]*x[18]*x[20]+0.1902*x[1]*x[19]*x[20]-0.4866*x[2]*x[3]*x[6]-0.6224*x[2]*x[3]*x[17]+0.9676*x[2]*x[4]*x[16]+0.3511*x[2]*x[5]*x[12]-0.7008*x[2]*x[6]*x[10]-0.605*x[2]*x[6]*x[17]+0.8684*x[2]*x[7]*x[8]-0.6479*x[2]*x[7]*x[10]-0.5725*x[2]*x[9]*x[10]-0.7257*x[2]*x[12]*x[15]+0.2196*x[2]*x[12]*x[20]-0.0656*x[2]*x[13]*x[14]+0.0181*x[2]*x[16]*x[19]+0.0533*x[2]*x[17]*x[19]+0.3336*x[3]*x[4]*x[12]-0.0395*x[3]*x[4]*x[19]-0.5141*x[3]*x[5]*x[11]-0.4428*x[3]*x[5]*x[20]+0.4517*x[3]*x[6]*x[7]+0.2631*x[3]*x[6]*x[12]-0.8882*x[3]*x[7]*x[12]-0.6689*x[3]*x[7]*x[15]-0.862*x[3]*x[8]*x[9]-0.367*x[3]*x[8]*x[13]+0.6889*x[3]*x[9]*x[13]-0.9623*x[3]*x[9]*x[20]+0.6634*x[3]*x[12]*x[17]+0.4082*x[3]*x[13]*x[18]+0.0614*x[3]*x[14]*x[15]+0.1221*x[3]*x[14]*x[16]+0.4334*x[3]*x[15]*x[18]-0.1485*x[3]*x[16]*x[20]+0.4515*x[4]*x[5]*x[13]-0.1843*x[4]*x[5]*x[16]-0.2844*x[4]*x[6]*x[9]+0.8174*x[4]*x[6]*x[12]+0.7964*x[4]*x[7]*x[13]-0.0086*x[4]*x[7]*x[16]+0.4335*x[4]*x[7]*x[18]+0.2502*x[4]*x[8]*x[10]-0.1654*x[4]*x[9]*x[18]-0.6891*x[4]*x[10]*x[18]+0.5372*x[4]*x[14]*x[17]+0.4099*x[4]*x[16]*x[18]+0.7274*x[5]*x[6]*x[7]-0.9796*x[5]*x[6]*x[9]+0.9101*x[5]*x[6]*x[13]-0.4838*x[5]*x[7]*x[15]-0.7529*x[5]*x[7]*x[16]-0.1529*x[5]*x[8]*x[10]-0.5229*x[5]*x[9]*x[11]+0.4247*x[5]*x[9]*x[12]+0.0859*x[5]*x[9]*x[17]+0.6467*x[5]*x[10]*x[11]+0.2477*x[5]*x[10]*x[18]+0.8762*x[5]*x[13]*x[15]+0.7031*x[5]*x[14]*x[20]-0.3965*x[5]*x[16]*x[19]-0.2361*x[6]*x[7]*x[8]-0.1812*x[6]*x[8]*x[12]+0.8386*x[6]*x[8]*x[18]+0.5735*x[6]*x[9]*x[16]+0.6875*x[6]*x[10]*x[13]-0.1218*x[6]*x[10]*x[14]-0.1674*x[6]*x[12]*x[14]-0.6344*x[6]*x[13]*x[17]-0.6102*x[6]*x[13]*x[18]+0.6067*x[6]*x[15]*x[19]-0.4322*x[7]*x[9]*x[13]-0.8684*x[7]*x[10]*x[12]-0.7043*x[7]*x[11]*x[16]+0.0874*x[7]*x[12]*x[18]-0.7537*x[7]*x[13]*x[17]+0.282*x[7]*x[14]*x[20]-0.0086*x[7]*x[15]*x[18]-0.4155*x[7]*x[16]*x[19]+0.0462*x[8]*x[9]*x[13]-0.5853*x[8]*x[9]*x[17]+0.539*x[8]*x[9]*x[20]+0.6144*x[8]*x[10]*x[11]-0.5403*x[8]*x[10]*x[18]-0.5149*x[8]*x[10]*x[19]-0.1315*x[8]*x[12]*x[19]-0.476*x[8]*x[13]*x[15]-0.5078*x[8]*x[16]*x[19]-0.2575*x[9]*x[10]*x[18]-0.8734*x[9]*x[10]*x[19]+0.5611*x[9]*x[11]*x[20]-0.5562*x[9]*x[12]*x[19]+0.2242*x[9]*x[13]*x[15]-0.4471*x[9]*x[13]*x[16]+0.758*x[9]*x[14]*x[17]-0.1407*x[9]*x[15]*x[18]+0.4761*x[9]*x[15]*x[19]+0.8408*x[9]*x[16]*x[18]-0.3648*x[9]*x[16]*x[19]+0.6391*x[9]*x[17]*x[19]-0.4614*x[9]*x[17]*x[20]+0.1366*x[10]*x[12]*x[16]-0.7856*x[10]*x[14]*x[20]-0.7211*x[10]*x[15]*x[16]-0.0344*x[10]*x[16]*x[18]-0.6399*x[11]*x[12]*x[17]-0.8498*x[11]*x[14]*x[16]+0.5285*x[11]*x[14]*x[18]+0.5568*x[11]*x[14]*x[19]+0.8208*x[11]*x[14]*x[20]-0.1377*x[11]*x[17]*x[20]-0.9077*x[11]*x[18]*x[20]-0.8581*x[12]*x[13]*x[15]-0.7093*x[13]*x[15]*x[16]-0.7515*x[13]*x[16]*x[17]+0.8894*x[13]*x[16]*x[20]-0.9843*x[14]*x[15]*x[16]+0.1598*x[14]*x[17]*x[19] <= 27.615)
@NLconstraint(m, e3, 0.5333*x[1]*x[18]-0.631*x[2]*x[5]+0.1939*x[2]*x[6]+0.9609*x[2]*x[10]-0.0097*x[2]*x[11]-0.1694*x[4]*x[7]+0.1586*x[4]*x[10]-0.2867*x[4]*x[11]+0.6008*x[5]*x[9]-0.4147*x[5]*x[10]+0.1335*x[5]*x[17]+0.7802*x[6]*x[11]-0.7342*x[8]*x[18]+0.5773*x[10]*x[14]-0.9827*x[11]*x[16]-0.1543*x[11]*x[19]-0.4526*x[13]*x[18]-0.4023*x[1]+0.3196*x[2]-0.345*x[4]-0.9455*x[5]+0.6196*x[6]-0.3309*x[7]-0.6374*x[8]-0.6004*x[9]+0.0882*x[10]+0.9549*x[11]+0.182*x[13]-0.4531*x[14]+0.8046*x[16]-0.794*x[17]+0.8876*x[18]-0.7547*x[19]+0.3131*x[2]^2*x[8]+0.6176*x[2]^2*x[9]+0.9521*x[4]^2*x[17]+0.4285*x[4]^2*x[18]-0.8972*x[5]^2*x[10]+0.9369*x[5]^2*x[20]+0.7583*x[8]^2*x[2]+0.7783*x[8]^2*x[12]-0.8309*x[10]^2*x[6]-0.3569*x[11]^2*x[5]-0.7375*x[11]^2*x[8]-0.3874*x[12]^2*x[7]+0.3862*x[12]^2*x[18]-0.4119*x[12]^2*x[19]+0.1411*x[14]^2*x[1]+0.7937*x[14]^2*x[5]+0.3451*x[14]^2*x[11]-0.2231*x[16]^2*x[3]-0.7488*x[16]^2*x[6]-0.2077*x[17]^2*x[6]+0.3807*x[18]^2*x[12]+0.1292*x[3]-0.6273*x[12]-0.7755*x[20]+0.4391*x[1]*x[4]*x[8]-0.1336*x[1]*x[3]*x[6]-0.7009*x[1]*x[6]*x[12]-0.2343*x[1]*x[7]*x[17]+0.2336*x[1]*x[8]*x[14]+0.1967*x[1]*x[8]*x[19]+0.3422*x[1]*x[9]*x[13]+0.6319*x[1]*x[10]*x[19]+0.2165*x[1]*x[11]*x[13]-0.2193*x[1]*x[12]*x[14]+0.6502*x[1]*x[13]*x[18]-0.4354*x[1]*x[15]*x[18]-0.0524*x[2]*x[3]*x[16]+0.0694*x[2]*x[4]*x[5]+0.7053*x[2]*x[4]*x[16]+0.2058*x[2]*x[5]*x[6]-0.6963*x[2]*x[5]*x[8]-0.7369*x[2]*x[5]*x[19]-0.7063*x[2]*x[6]*x[12]-0.4487*x[2]*x[6]*x[14]-0.1072*x[2]*x[7]*x[11]+0.6888*x[2]*x[8]*x[17]-0.8689*x[2]*x[8]*x[20]-0.6377*x[2]*x[9]*x[19]+0.0096*x[2]*x[10]*x[18]+0.7327*x[2]*x[12]*x[19]+0.172*x[2]*x[13]*x[14]+0.2586*x[2]*x[15]*x[17]-0.5023*x[2]*x[17]*x[19]+0.5705*x[3]*x[4]*x[5]-0.3524*x[3]*x[4]*x[9]+0.3787*x[3]*x[4]*x[11]-0.4789*x[3]*x[4]*x[15]+0.5532*x[3]*x[4]*x[18]+0.6559*x[3]*x[5]*x[11]+0.7787*x[3]*x[6]*x[15]-0.9515*x[3]*x[6]*x[18]+0.9547*x[3]*x[7]*x[17]-0.7589*x[3]*x[8]*x[10]+0.0812*x[3]*x[8]*x[11]+0.6663*x[3]*x[9]*x[13]-0.8136*x[3]*x[9]*x[14]-0.7632*x[3]*x[9]*x[16]+0.1967*x[3]*x[10]*x[17]+0.897*x[3]*x[11]*x[14]+0.925*x[3]*x[13]*x[18]-0.543*x[3]*x[15]*x[19]+0.4563*x[3]*x[16]*x[18]-0.7533*x[3]*x[18]*x[19]-0.6347*x[4]*x[5]*x[14]-0.3627*x[4]*x[5]*x[15]-0.5231*x[4]*x[6]*x[9]-0.9605*x[4]*x[6]*x[14]+0.678*x[4]*x[6]*x[19]+0.0042*x[4]*x[6]*x[20]-0.3796*x[4]*x[7]*x[13]+0.8872*x[4]*x[8]*x[12]-0.9825*x[4]*x[8]*x[13]-0.5647*x[4]*x[8]*x[15]-0.6643*x[4]*x[8]*x[19]+0.6545*x[4]*x[9]*x[12]+0.5829*x[4]*x[9]*x[14]-0.1668*x[4]*x[9]*x[16]+0.6297*x[4]*x[10]*x[12]-0.1185*x[4]*x[11]*x[19]+0.7387*x[4]*x[13]*x[15]+0.1439*x[4]*x[13]*x[16]+0.0579*x[4]*x[14]*x[16]+0.6882*x[4]*x[14]*x[18]+0.9497*x[4]*x[15]*x[16]+0.911*x[5]*x[6]*x[10]+0.8905*x[5]*x[8]*x[10]-0.1778*x[5]*x[8]*x[12]+0.0888*x[5]*x[8]*x[17]-0.1271*x[5]*x[9]*x[10]+0.6912*x[5]*x[9]*x[18]+0.2575*x[5]*x[12]*x[14]+0.6208*x[5]*x[12]*x[19]+0.2886*x[5]*x[12]*x[20]+0.8175*x[5]*x[13]*x[15]-0.7195*x[5]*x[13]*x[19]-0.5726*x[5]*x[14]*x[17]+0.9412*x[5]*x[15]*x[19]+0.3015*x[5]*x[16]*x[17]+0.9348*x[5]*x[17]*x[19]+0.4857*x[6]*x[7]*x[10]+0.2513*x[6]*x[7]*x[11]+0.9127*x[6]*x[8]*x[13]+0.6127*x[6]*x[9]*x[16]-0.3725*x[6]*x[10]*x[13]-0.0207*x[6]*x[12]*x[20]+0.7702*x[6]*x[13]*x[14]-0.969*x[6]*x[13]*x[20]+0.8429*x[6]*x[14]*x[15]-0.806*x[6]*x[15]*x[20]-0.6387*x[7]*x[11]*x[13]+0.3886*x[7]*x[11]*x[15]-0.5469*x[7]*x[11]*x[16]+0.4992*x[7]*x[11]*x[17]+0.8692*x[7]*x[11]*x[20]+0.5223*x[7]*x[12]*x[18]+0.4531*x[7]*x[13]*x[14]-0.7281*x[7]*x[13]*x[17]-0.8411*x[7]*x[15]*x[16]+0.4991*x[7]*x[18]*x[19]-0.3361*x[8]*x[9]*x[17]+0.2511*x[8]*x[9]*x[19]-0.9176*x[8]*x[10]*x[17]-0.8591*x[8]*x[10]*x[19]+0.278*x[8]*x[11]*x[17]+0.1322*x[8]*x[12]*x[18]+0.3303*x[8]*x[15]*x[20]-0.7101*x[8]*x[17]*x[20]+0.4636*x[9]*x[11]*x[16]-0.8592*x[9]*x[11]*x[17]+0.8914*x[9]*x[11]*x[20]+0.6411*x[9]*x[12]*x[13]-0.5406*x[9]*x[13]*x[17]+0.3698*x[9]*x[14]*x[15]+0.2045*x[10]*x[11]*x[12]-0.5224*x[10]*x[11]*x[13]+0.1075*x[10]*x[11]*x[15]-0.4398*x[10]*x[11]*x[17]+0.3626*x[10]*x[11]*x[18]+0.2621*x[10]*x[15]*x[18]+0.4504*x[10]*x[16]*x[18]+0.884*x[10]*x[17]*x[19]-0.0924*x[11]*x[14]*x[17]+0.0569*x[11]*x[15]*x[17]+0.7411*x[12]*x[13]*x[17]+0.0707*x[12]*x[14]*x[19]-0.7331*x[12]*x[17]*x[19]+0.2594*x[13]*x[16]*x[18]+0.5022*x[14]*x[17]*x[18]+0.8914*x[15]*x[16]*x[17]-0.4535*x[15]*x[18]*x[19]+0.8044*x[15]*x[18]*x[20]-0.1208*x[15] <= 17.565)
@NLconstraint(m, e4, 0.0689*x[18]-0.8383*x[18]^3+0.3599*x[2]*x[4]-0.8677*x[1]*x[5]+0.3623*x[4]*x[11]-0.559*x[4]*x[15]-0.8701*x[5]*x[10]-0.0016*x[5]*x[13]+0.4111*x[7]*x[17]-0.3083*x[10]*x[15]-0.0656*x[11]*x[17]-0.6751*x[11]*x[19]-0.2461*x[12]*x[13]+0.9598*x[1]+0.9333*x[2]+0.9621*x[4]-0.1878*x[5]-0.3825*x[7]+0.366*x[10]+0.9596*x[11]+0.2204*x[12]+0.5593*x[13]-0.6494*x[15]-0.1836*x[17]-0.3602*x[19]+0.1387*x[2]^2*x[7]-0.9841*x[2]^2*x[3]+0.1383*x[2]^2*x[8]-0.0239*x[2]^2*x[15]-0.4711*x[3]^2*x[15]+0.613*x[4]^2*x[11]+0.2244*x[5]^2*x[3]+0.1759*x[5]^2*x[7]+0.421*x[7]^2*x[13]-0.488*x[8]^2*x[10]-0.3685*x[8]^2*x[15]+0.0232*x[12]^2*x[11]+0.5994*x[13]^2*x[12]+0.3751*x[14]^2*x[5]+0.0505*x[14]^2*x[6]+0.6114*x[15]^2*x[3]-0.5198*x[15]^2*x[6]+0.4976*x[16]^2*x[8]-0.8614*x[17]^2*x[8]+0.0873*x[18]^2*x[10]-0.1419*x[18]^2*x[12]+0.9019*x[19]^2*x[2]+0.3916*x[19]^2*x[6]+0.3738*x[19]^2*x[7]+0.2479*x[19]^2*x[12]-0.4735*x[19]^2*x[17]-0.6315*x[3]-0.0141*x[6]+0.7384*x[8]-0.9086*x[14]+0.5117*x[16]+(-0.7008*x[1]*x[2]*x[8])-0.8414*x[1]*x[2]*x[15]-0.8066*x[1]*x[2]*x[16]-0.1851*x[1]*x[3]*x[10]-0.0144*x[1]*x[4]*x[16]+0.0775*x[1]*x[5]*x[7]+0.3342*x[1]*x[5]*x[12]-0.1919*x[1]*x[5]*x[13]-0.6156*x[1]*x[6]*x[11]+0.5486*x[1]*x[7]*x[18]-0.2159*x[1]*x[9]*x[16]-0.5136*x[1]*x[12]*x[13]+0.876*x[1]*x[12]*x[15]-0.9401*x[1]*x[13]*x[17]-0.3963*x[1]*x[18]*x[19]+0.3892*x[1]*x[18]*x[20]+0.6641*x[2]*x[3]*x[4]+0.368*x[2]*x[3]*x[16]+0.936*x[2]*x[3]*x[17]-0.1048*x[2]*x[4]*x[8]-0.9137*x[2]*x[4]*x[18]+0.425*x[2]*x[5]*x[9]+0.8126*x[2]*x[5]*x[10]-0.5276*x[2]*x[5]*x[11]+0.9452*x[2]*x[5]*x[18]-0.2716*x[2]*x[5]*x[19]+0.0808*x[2]*x[6]*x[20]+0.222*x[2]*x[8]*x[10]-0.4433*x[2]*x[8]*x[12]-0.9581*x[2]*x[9]*x[13]+0.752*x[2]*x[9]*x[17]-0.4407*x[2]*x[13]*x[15]-0.1425*x[2]*x[14]*x[16]-0.4074*x[2]*x[15]*x[17]-0.7218*x[2]*x[17]*x[18]-0.1898*x[3]*x[4]*x[7]-0.2722*x[3]*x[4]*x[17]-0.285*x[3]*x[5]*x[10]-0.2053*x[3]*x[6]*x[16]-0.1136*x[3]*x[8]*x[13]-0.2406*x[3]*x[8]*x[18]+0.5012*x[3]*x[12]*x[13]+0.761*x[3]*x[12]*x[19]+0.113*x[3]*x[13]*x[15]-0.1636*x[3]*x[13]*x[16]+0.3037*x[3]*x[13]*x[20]-0.8108*x[4]*x[5]*x[11]-0.1108*x[4]*x[5]*x[19]-0.801*x[4]*x[6]*x[11]-0.5742*x[4]*x[7]*x[9]+0.0038*x[4]*x[7]*x[12]+0.3866*x[4]*x[7]*x[13]+0.9224*x[4]*x[7]*x[15]-0.2257*x[4]*x[7]*x[19]+0.0343*x[4]*x[8]*x[13]+0.9124*x[4]*x[8]*x[19]-0.5983*x[4]*x[10]*x[11]+0.5031*x[4]*x[10]*x[13]+0.844*x[4]*x[10]*x[15]+0.8075*x[4]*x[11]*x[13]+0.9061*x[4]*x[11]*x[18]+0.2549*x[4]*x[12]*x[13]+0.323*x[4]*x[15]*x[16]+0.5001*x[4]*x[16]*x[19]-0.192*x[5]*x[6]*x[9]+0.9895*x[5]*x[6]*x[11]-0.8974*x[5]*x[7]*x[9]-0.1761*x[5]*x[7]*x[10]-0.1719*x[5]*x[8]*x[9]+0.7982*x[5]*x[9]*x[16]+0.612*x[5]*x[10]*x[17]-0.1498*x[5]*x[11]*x[13]-0.9553*x[5]*x[11]*x[16]+0.7038*x[5]*x[12]*x[19]-0.6995*x[5]*x[12]*x[20]+0.7422*x[5]*x[14]*x[17]+0.4339*x[5]*x[15]*x[18]+0.0729*x[5]*x[16]*x[17]+0.2241*x[5]*x[16]*x[18]-0.0932*x[5]*x[17]*x[19]+0.2175*x[5]*x[19]*x[20]-0.1795*x[6]*x[7]*x[11]-0.381*x[6]*x[7]*x[17]+0.2241*x[6]*x[8]*x[15]+0.7723*x[6]*x[9]*x[12]+0.9525*x[6]*x[10]*x[11]-0.2371*x[6]*x[10]*x[20]-0.4361*x[6]*x[14]*x[18]-0.0927*x[6]*x[14]*x[19]+0.9803*x[6]*x[16]*x[19]+0.2312*x[7]*x[8]*x[19]-0.1863*x[7]*x[8]*x[20]-0.7675*x[7]*x[10]*x[11]+0.6205*x[7]*x[12]*x[15]+0.322*x[7]*x[12]*x[19]-0.4839*x[7]*x[13]*x[17]-0.7852*x[7]*x[14]*x[15]-0.2334*x[7]*x[14]*x[18]+0.9576*x[7]*x[15]*x[19]+0.3872*x[7]*x[16]*x[19]-0.9375*x[7]*x[18]*x[19]-0.2813*x[8]*x[9]*x[12]-0.4329*x[8]*x[9]*x[17]+0.7703*x[8]*x[9]*x[20]-0.9206*x[8]*x[10]*x[12]+0.3148*x[8]*x[10]*x[20]-0.4814*x[8]*x[12]*x[17]-0.5653*x[8]*x[12]*x[19]+0.82*x[8]*x[14]*x[15]-0.676*x[8]*x[14]*x[17]-0.1355*x[8]*x[16]*x[17]+0.1054*x[8]*x[18]*x[19]+0.9511*x[9]*x[10]*x[13]-0.1052*x[9]*x[12]*x[19]-0.902*x[9]*x[15]*x[18]+0.1627*x[9]*x[16]*x[19]-0.2159*x[9]*x[16]*x[20]-0.8887*x[9]*x[18]*x[19]-0.6325*x[10]*x[11]*x[20]-0.1908*x[10]*x[12]*x[13]+0.7392*x[10]*x[12]*x[15]+0.3593*x[10]*x[16]*x[18]+0.9232*x[11]*x[12]*x[14]-0.4655*x[11]*x[12]*x[18]+0.1587*x[11]*x[13]*x[18]-0.0916*x[11]*x[14]*x[15]+0.8338*x[11]*x[15]*x[20]-0.7546*x[12]*x[13]*x[18]-0.0517*x[12]*x[13]*x[19]-0.4588*x[12]*x[14]*x[15]-0.808*x[12]*x[15]*x[16]-0.3477*x[12]*x[15]*x[18]+0.8197*x[13]*x[15]*x[18]-0.2625*x[14]*x[15]*x[19]+0.212*x[15]*x[16]*x[17]-0.7508*x[15]*x[17]*x[19]+0.5809*x[16]*x[17]*x[19]+0.4802*x[9]-0.2773*x[20] <= 14.091)
@NLconstraint(m, e5, 0.6073*x[2]*x[16]+0.8024*x[3]*x[10]+0.7748*x[3]*x[13]+0.4638*x[3]*x[16]+0.938*x[4]*x[11]+0.7441*x[4]*x[12]+0.962*x[4]*x[15]-0.1331*x[5]*x[9]-0.0147*x[5]*x[12]-0.1791*x[6]*x[8]-0.832*x[6]*x[18]-0.1609*x[7]*x[16]+0.7524*x[9]*x[19]-0.6265*x[10]*x[14]-0.5612*x[10]*x[18]-0.1934*x[13]*x[16]+0.0911*x[14]*x[17]+0.6285*x[14]*x[19]-0.4794*x[15]*x[19]-0.269*x[2]-0.7643*x[3]-0.5893*x[4]+0.7299*x[5]+0.0287*x[6]+0.0537*x[7]+0.5552*x[8]-0.704*x[9]+0.3741*x[10]-0.3121*x[11]-0.0597*x[12]-0.3758*x[13]-0.2002*x[14]-0.5202*x[15]+0.0932*x[16]+0.7008*x[17]+0.4314*x[18]-0.4929*x[19]+0.4686*x[3]^2*x[9]-0.7751*x[3]^2*x[8]+0.3324*x[3]^2*x[14]-0.8008*x[3]^2*x[16]+0.3059*x[6]^2*x[2]+0.2749*x[6]^2*x[7]-0.4042*x[7]^2*x[2]+0.7271*x[7]^2*x[3]-0.269*x[9]^2*x[11]+0.0477*x[10]^2*x[3]-0.0887*x[11]^2*x[6]+0.44*x[11]^2*x[13]-0.0255*x[14]^2*x[5]-0.1543*x[14]^2*x[15]+0.2878*x[15]^2*x[8]-0.1681*x[16]^2*x[2]+0.2143*x[17]^2*x[7]+0.3503*x[17]^2*x[15]-0.3715*x[18]^2*x[14]-0.5337*x[18]^2*x[17]+0.4304*x[1]*x[3]*x[8]+0.5509*x[1]*x[3]*x[16]-0.8751*x[1]*x[5]*x[17]+0.6049*x[1]*x[5]*x[20]+0.7568*x[1]*x[6]*x[7]+0.5259*x[1]*x[8]*x[9]-0.9052*x[1]*x[10]*x[12]-0.8254*x[1]*x[12]*x[18]-0.8298*x[1]*x[14]*x[17]+0.9421*x[1]*x[17]*x[19]+0.2287*x[2]*x[3]*x[4]-0.1452*x[2]*x[3]*x[17]+0.7287*x[2]*x[4]*x[5]+0.6934*x[2]*x[4]*x[8]+0.4692*x[2]*x[4]*x[11]+0.3479*x[2]*x[4]*x[14]-0.4546*x[2]*x[4]*x[15]-0.0225*x[2]*x[4]*x[18]-0.3507*x[2]*x[4]*x[19]-0.231*x[2]*x[5]*x[17]+0.2213*x[2]*x[6]*x[18]-0.0542*x[2]*x[7]*x[10]-0.7436*x[2]*x[7]*x[15]-0.5311*x[2]*x[7]*x[20]+0.2053*x[2]*x[8]*x[14]-0.7726*x[2]*x[8]*x[18]-0.2023*x[2]*x[9]*x[19]-0.7306*x[2]*x[13]*x[20]+0.9891*x[2]*x[14]*x[15]+0.3283*x[2]*x[16]*x[19]-0.433*x[2]*x[17]*x[20]+0.798*x[2]*x[18]*x[19]-0.4184*x[3]*x[5]*x[13]-0.6644*x[3]*x[5]*x[16]-0.5629*x[3]*x[5]*x[19]-0.4433*x[3]*x[7]*x[15]+0.6767*x[3]*x[7]*x[17]-0.5313*x[3]*x[8]*x[11]-0.0034*x[3]*x[8]*x[12]+0.2897*x[3]*x[8]*x[13]-0.9695*x[3]*x[8]*x[14]+0.8146*x[3]*x[8]*x[15]-0.3118*x[3]*x[8]*x[16]-0.956*x[3]*x[9]*x[16]+0.7536*x[3]*x[11]*x[15]-0.5956*x[3]*x[14]*x[18]-0.7714*x[3]*x[17]*x[20]-0.3475*x[4]*x[5]*x[19]+0.6783*x[4]*x[6]*x[16]-0.5293*x[4]*x[6]*x[18]-0.8445*x[4]*x[7]*x[10]+0.2243*x[4]*x[7]*x[17]-0.8903*x[4]*x[8]*x[13]-0.6945*x[4]*x[8]*x[18]-0.2891*x[4]*x[10]*x[15]-0.2236*x[4]*x[13]*x[14]-0.5725*x[4]*x[13]*x[19]+0.0793*x[4]*x[14]*x[15]-0.6197*x[4]*x[14]*x[16]-0.4757*x[4]*x[16]*x[18]+0.9639*x[5]*x[6]*x[13]-0.8514*x[5]*x[6]*x[20]+0.281*x[5]*x[7]*x[15]-0.8243*x[5]*x[7]*x[17]+0.9673*x[5]*x[8]*x[12]-0.7214*x[5]*x[8]*x[15]-0.9953*x[5]*x[9]*x[12]-0.8154*x[5]*x[9]*x[20]+0.4901*x[5]*x[10]*x[19]+0.1709*x[5]*x[11]*x[15]+0.9436*x[5]*x[11]*x[18]-0.7996*x[5]*x[13]*x[15]+0.5619*x[5]*x[15]*x[18]-0.9064*x[6]*x[8]*x[19]+0.4673*x[6]*x[9]*x[14]-0.7982*x[6]*x[10]*x[16]-0.6676*x[6]*x[10]*x[19]+0.5406*x[6]*x[11]*x[13]-0.3988*x[6]*x[11]*x[14]+0.5116*x[6]*x[12]*x[13]+0.3545*x[6]*x[13]*x[16]-0.9693*x[6]*x[13]*x[17]+0.8786*x[6]*x[14]*x[20]-0.2968*x[7]*x[8]*x[13]-0.7607*x[7]*x[9]*x[20]-0.9949*x[7]*x[10]*x[18]-0.9591*x[7]*x[11]*x[13]+0.0764*x[7]*x[11]*x[14]-0.8808*x[7]*x[11]*x[17]+0.7681*x[7]*x[11]*x[18]+0.5854*x[7]*x[13]*x[17]+0.5234*x[7]*x[14]*x[19]-0.2235*x[7]*x[15]*x[19]-0.2944*x[7]*x[17]*x[19]-0.438*x[7]*x[18]*x[19]-0.851*x[7]*x[19]*x[20]+0.3981*x[8]*x[9]*x[12]-0.5469*x[8]*x[9]*x[14]-0.065*x[8]*x[9]*x[16]+0.718*x[8]*x[10]*x[14]-0.9515*x[8]*x[10]*x[17]+0.5421*x[8]*x[13]*x[19]+0.0596*x[8]*x[13]*x[20]-0.7641*x[8]*x[19]*x[20]+0.4032*x[9]*x[11]*x[19]+0.5881*x[9]*x[14]*x[16]-0.7673*x[9]*x[15]*x[18]-0.1823*x[9]*x[15]*x[19]-0.9307*x[9]*x[19]*x[20]-0.3635*x[10]*x[11]*x[13]+0.5924*x[10]*x[12]*x[18]+0.2065*x[10]*x[13]*x[16]-0.5683*x[10]*x[14]*x[17]-0.5005*x[10]*x[14]*x[18]+0.6343*x[10]*x[14]*x[20]+0.5911*x[10]*x[16]*x[20]-0.1761*x[10]*x[17]*x[18]-0.8518*x[10]*x[19]*x[20]-0.5717*x[11]*x[12]*x[13]-0.4011*x[11]*x[12]*x[15]-0.6688*x[11]*x[12]*x[18]+0.1448*x[11]*x[13]*x[15]+0.5809*x[11]*x[14]*x[17]-0.3284*x[11]*x[14]*x[18]+0.4825*x[11]*x[15]*x[16]+0.3724*x[12]*x[13]*x[19]+0.2753*x[12]*x[17]*x[19]+0.3733*x[12]*x[17]*x[20]-0.0997*x[12]*x[18]*x[20]-0.9072*x[13]*x[14]*x[15]+0.1871*x[13]*x[16]*x[18]+0.2626*x[14]*x[15]*x[17]-0.6243*x[14]*x[16]*x[17]+0.4942*x[14]*x[16]*x[18]+0.7694*x[14]*x[18]*x[19]+0.4813*x[16]*x[17]*x[19]+0.2893*x[1]+0.5588*x[20] <= 60.207)

 
