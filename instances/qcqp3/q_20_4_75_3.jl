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
@NLconstraint(m, e1, -(0.4575*x[1]*x[1]+0.2925*x[1]*x[2]+0.6509*x[1]*x[5]-0.5194*x[1]*x[6]-0.5375*x[1]*x[7]-0.8567*x[1]*x[9]-0.7567*x[1]*x[11]+0.0559*x[1]*x[12]-0.5979*x[1]*x[13]-0.5328*x[1]*x[14]+0.4108*x[1]*x[15]-0.9746*x[1]*x[16]-0.8816*x[1]*x[18]-0.6054*x[1]*x[19]+0.8048*x[2]*x[2]-0.4608*x[2]*x[3]-0.5202*x[2]*x[4]-0.0126*x[2]*x[5]+0.4756*x[2]*x[6]-0.1092*x[2]*x[7]+0.3646*x[2]*x[9]-0.604*x[2]*x[12]+0.8765*x[2]*x[20]+0.5905*x[3]*x[3]-0.5705*x[3]*x[4]-0.5678*x[3]*x[7]-0.9959*x[3]*x[9]-0.0773*x[3]*x[10]-0.4033*x[3]*x[11]+0.5307*x[3]*x[13]+0.8639*x[3]*x[20]+0.9249*x[4]*x[5]+0.5844*x[4]*x[6]-0.3302*x[4]*x[7]-0.8971*x[4]*x[9]+0.9343*x[4]*x[10]-0.4812*x[4]*x[12]-0.0224*x[4]*x[15]-0.0381*x[4]*x[16]-0.6702*x[4]*x[20]+0.0765*x[5]*x[7]-0.5192*x[5]*x[9]+0.15*x[5]*x[14]+0.7511*x[5]*x[17]+0.2959*x[5]*x[18]+0.6925*x[6]*x[7]-0.7939*x[6]*x[8]-0.4419*x[6]*x[11]-0.4714*x[6]*x[13]+0.0146*x[6]*x[14]+0.9626*x[6]*x[17]+0.0541*x[6]*x[18]-0.7318*x[6]*x[19]-0.6666*x[7]*x[7]+0.6844*x[7]*x[9]+0.2667*x[7]*x[10]+0.9428*x[7]*x[12]-0.8373*x[7]*x[15]+0.1923*x[7]*x[16]+0.9925*x[7]*x[17]-0.9806*x[7]*x[20]-0.9013*x[8]*x[8]-0.7989*x[8]*x[12]+0.959*x[8]*x[14]+0.6824*x[8]*x[15]-0.0939*x[8]*x[16]+0.9649*x[8]*x[18]+0.887*x[8]*x[20]+0.1799*x[9]*x[9]-0.3306*x[9]*x[10]+0.3269*x[9]*x[12]+0.5563*x[9]*x[14]+0.0427*x[9]*x[15]-0.5169*x[10]*x[10]-0.1694*x[10]*x[11]-0.8772*x[10]*x[13]-0.6835*x[10]*x[15]+0.0361*x[10]*x[17]-0.4938*x[10]*x[20]-0.0824*x[11]*x[14]-0.803*x[11]*x[15]-0.1227*x[11]*x[16]+0.3447*x[11]*x[17]-0.5165*x[11]*x[18]+0.8204*x[11]*x[19]-0.0419*x[11]*x[20]+0.7291*x[12]*x[12]+0.1793*x[12]*x[14]-0.2906*x[12]*x[15]-0.4859*x[12]*x[16]+0.7745*x[12]*x[18]+0.5955*x[12]*x[20]-0.5433*x[13]*x[15]+0.0963*x[13]*x[19]+0.9131*x[13]*x[20]-0.9212*x[14]*x[14]-0.5989*x[14]*x[15]+0.3632*x[14]*x[16]+0.7655*x[14]*x[19]-0.2558*x[15]*x[15]-0.3053*x[15]*x[16]+0.1917*x[15]*x[18]+0.0578*x[16]*x[16]+0.5697*x[16]*x[18]+0.8762*x[16]*x[19]-0.1523*x[16]*x[20]-0.8181*x[17]*x[20]+0.0412*x[18]*x[18]-0.3223*x[19]*x[20]+0.8437*x[20]*x[20]-0.4429*x[1]+0.4707*x[2]-0.3139*x[3]-0.9997*x[4]-0.6852*x[5]-0.4383*x[6]+0.8332*x[7]-0.9454*x[8]-0.7802*x[9]+0.1448*x[10]-0.3755*x[11]+0.4462*x[12]+0.2352*x[13]+0.1629*x[14]+0.2847*x[15]+0.6619*x[16]-0.872*x[17]+0.7458*x[18]+0.7365*x[19]+0.5659*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, (-0.506*x[1]*x[2])-0.2771*x[1]*x[3]-0.5851*x[1]*x[4]+0.4033*x[1]*x[5]-0.969*x[1]*x[6]+0.4623*x[1]*x[7]+0.8593*x[1]*x[8]+0.8792*x[1]*x[9]+0.7004*x[1]*x[11]-0.1326*x[1]*x[13]+0.2992*x[1]*x[14]-0.107*x[1]*x[15]-0.0243*x[1]*x[17]-0.3026*x[1]*x[18]+0.4911*x[1]*x[19]+0.0888*x[1]*x[20]-0.2336*x[2]*x[5]-0.5938*x[2]*x[6]+0.957*x[2]*x[10]-0.0037*x[2]*x[11]-0.4063*x[2]*x[12]+0.6278*x[2]*x[14]+0.196*x[2]*x[15]+0.5782*x[2]*x[16]-0.7207*x[2]*x[19]+0.2847*x[2]*x[20]-0.1592*x[3]*x[3]-0.2277*x[3]*x[5]+0.0512*x[3]*x[8]+0.6212*x[3]*x[9]-0.9616*x[3]*x[12]-0.8938*x[3]*x[13]-0.2326*x[3]*x[17]+0.102*x[3]*x[18]+0.9971*x[3]*x[20]+0.7663*x[4]*x[5]-0.5352*x[4]*x[6]+0.5066*x[4]*x[9]-0.387*x[4]*x[10]-0.2135*x[4]*x[12]+0.0129*x[4]*x[14]-0.4558*x[4]*x[15]-0.6481*x[4]*x[20]-0.7218*x[5]*x[5]-0.7735*x[5]*x[10]+0.5381*x[5]*x[11]+0.9237*x[5]*x[12]+0.088*x[5]*x[14]-0.1725*x[5]*x[15]-0.7814*x[5]*x[17]-0.2254*x[5]*x[19]+0.3023*x[6]*x[6]-0.9957*x[6]*x[7]+0.8797*x[6]*x[9]+0.3441*x[6]*x[10]-0.6929*x[6]*x[12]-0.6938*x[6]*x[13]+0.5092*x[6]*x[16]+0.5327*x[6]*x[18]+0.9047*x[6]*x[20]+0.5129*x[7]*x[7]-0.2257*x[7]*x[8]+0.683*x[7]*x[10]+0.9313*x[7]*x[13]+0.7966*x[7]*x[15]-0.0138*x[7]*x[16]-0.5195*x[7]*x[18]-0.4867*x[7]*x[19]+0.2583*x[8]*x[8]-0.3795*x[8]*x[12]+0.7816*x[8]*x[13]+0.5152*x[8]*x[15]-0.1462*x[8]*x[16]+0.936*x[8]*x[17]+0.7522*x[9]*x[9]+0.6735*x[9]*x[10]+0.3848*x[9]*x[14]-0.7218*x[9]*x[15]-0.0423*x[9]*x[16]-0.0761*x[9]*x[19]+0.2217*x[9]*x[20]-0.9153*x[10]*x[11]-0.6715*x[10]*x[13]-0.3961*x[10]*x[17]-0.8626*x[10]*x[20]-0.0404*x[11]*x[11]-0.3617*x[11]*x[13]-0.1537*x[11]*x[18]+0.8246*x[12]*x[12]-0.1935*x[12]*x[16]-0.2477*x[12]*x[18]-0.7696*x[12]*x[20]+0.9909*x[13]*x[13]+0.0748*x[13]*x[15]-0.8779*x[13]*x[18]-0.8327*x[13]*x[20]+0.7868*x[14]*x[14]+0.1163*x[14]*x[15]-0.942*x[14]*x[18]-0.6458*x[14]*x[19]-0.8999*x[14]*x[20]+0.4182*x[15]*x[15]+0.2392*x[15]*x[16]+0.5241*x[15]*x[18]-0.2673*x[16]*x[16]+0.5598*x[16]*x[17]+0.0393*x[16]*x[19]-0.4651*x[17]*x[17]-0.4112*x[18]*x[18]+0.554*x[19]*x[20]-0.669*x[1]-0.6671*x[2]-0.0306*x[3]+0.7802*x[4]-0.9761*x[5]+0.5948*x[6]-0.6119*x[7]+0.3109*x[8]+0.9424*x[9]-0.6722*x[10]-0.6334*x[11]+0.8146*x[12]-0.5433*x[13]+0.504*x[14]-0.2001*x[15]-0.4751*x[16]-0.0336*x[17]+0.0878*x[18]+0.2829*x[19]-0.0083*x[20] <= 64.844)
@NLconstraint(m, e3, 0.4815*x[1]*x[5]-0.6051*x[1]*x[1]+0.3643*x[1]*x[6]+0.963*x[1]*x[7]-0.0217*x[1]*x[9]+0.3736*x[1]*x[10]-0.1637*x[1]*x[11]+0.3246*x[1]*x[12]+0.8406*x[1]*x[13]-0.4054*x[1]*x[15]-0.1194*x[1]*x[16]-0.6792*x[1]*x[17]-0.0179*x[1]*x[19]+0.5678*x[1]*x[20]-0.6136*x[2]*x[2]-0.0113*x[2]*x[3]-0.7408*x[2]*x[4]+0.4983*x[2]*x[6]+0.7166*x[2]*x[14]+0.7196*x[2]*x[16]+0.8041*x[2]*x[18]-0.417*x[3]*x[3]-0.4665*x[3]*x[4]-0.9472*x[3]*x[6]+0.3186*x[3]*x[7]+0.0008*x[3]*x[9]+0.4112*x[3]*x[11]-0.549*x[3]*x[12]+0.714*x[3]*x[18]+0.3726*x[3]*x[20]+0.2059*x[4]*x[4]+0.3263*x[4]*x[6]+0.0664*x[4]*x[7]-0.3905*x[4]*x[10]-0.396*x[4]*x[12]+0.2489*x[4]*x[13]-0.3591*x[5]*x[5]+0.8875*x[5]*x[6]-0.1074*x[5]*x[7]+0.3386*x[5]*x[8]+0.1374*x[5]*x[10]+0.0261*x[5]*x[12]-0.6731*x[5]*x[13]+0.2712*x[5]*x[14]+0.8375*x[5]*x[16]+0.7226*x[5]*x[19]-0.6796*x[5]*x[20]+0.0595*x[6]*x[10]-0.26*x[6]*x[12]-0.3089*x[6]*x[13]+0.9926*x[6]*x[16]-0.2871*x[6]*x[17]-0.9585*x[6]*x[20]+0.1679*x[7]*x[9]+0.3712*x[7]*x[11]-0.6788*x[7]*x[13]-0.5049*x[7]*x[15]+0.6338*x[7]*x[18]-0.6546*x[7]*x[20]+0.7588*x[8]*x[8]-0.9789*x[8]*x[9]-0.1334*x[8]*x[12]-0.1394*x[8]*x[18]+0.2722*x[8]*x[19]-0.615*x[8]*x[20]+0.3584*x[9]*x[9]+0.4657*x[9]*x[10]+0.6566*x[9]*x[12]-0.6826*x[9]*x[14]+0.1999*x[9]*x[17]-0.0253*x[9]*x[20]-0.1107*x[10]*x[12]-0.8714*x[10]*x[13]-0.0102*x[10]*x[14]+0.4648*x[10]*x[15]-0.0905*x[10]*x[16]+0.5086*x[10]*x[17]-0.2488*x[10]*x[18]+0.4272*x[10]*x[19]+0.5776*x[11]*x[13]+0.2769*x[11]*x[14]-0.063*x[11]*x[15]-0.7313*x[11]*x[18]+0.7715*x[11]*x[20]+0.1597*x[12]*x[13]+0.7531*x[12]*x[14]-0.5785*x[12]*x[15]-0.8593*x[12]*x[17]-0.4655*x[12]*x[18]+0.0644*x[12]*x[20]-0.906*x[13]*x[15]-0.6081*x[13]*x[17]+0.4693*x[13]*x[18]-0.1253*x[13]*x[19]-0.4972*x[13]*x[20]+0.5691*x[14]*x[14]+0.5647*x[14]*x[20]+0.2197*x[15]*x[15]-0.4624*x[15]*x[16]+0.1284*x[15]*x[18]-0.5544*x[15]*x[19]-0.7919*x[16]*x[16]+0.4457*x[16]*x[19]-0.5018*x[16]*x[20]-0.1074*x[17]*x[17]+0.3765*x[17]*x[18]-0.5653*x[17]*x[19]+0.6294*x[18]*x[18]-0.2739*x[18]*x[19]-0.4372*x[19]*x[20]+0.512*x[1]-0.844*x[2]+0.9969*x[3]-0.5885*x[4]-0.1144*x[5]-0.6107*x[6]+0.7908*x[7]+0.182*x[8]+0.9472*x[9]+0.4685*x[10]+0.1261*x[11]-0.2826*x[12]-0.9628*x[13]-0.1975*x[14]-0.8846*x[15]-0.3241*x[16]+0.2676*x[17]-0.8234*x[18]-0.403*x[19]+0.9641*x[20] <= 11.449)
@NLconstraint(m, e4, 0.0376*x[1]*x[2]-0.7834*x[1]*x[6]-0.7464*x[1]*x[8]-0.7768*x[1]*x[9]+0.9599*x[1]*x[10]-0.5774*x[1]*x[12]-0.717*x[1]*x[14]+0.2833*x[1]*x[16]+0.4515*x[1]*x[17]+0.1883*x[1]*x[18]-0.4221*x[1]*x[19]-0.5294*x[1]*x[20]-0.1498*x[2]*x[5]-0.9796*x[2]*x[10]+0.5184*x[2]*x[11]-0.7527*x[2]*x[12]-0.2411*x[2]*x[14]-0.2212*x[2]*x[16]-0.3065*x[2]*x[18]+0.1302*x[2]*x[19]+0.5883*x[2]*x[20]+0.432*x[3]*x[3]+0.2389*x[3]*x[7]-0.7093*x[3]*x[10]-0.9992*x[3]*x[11]+0.8763*x[3]*x[13]+0.7087*x[3]*x[14]-0.0649*x[3]*x[18]+0.6267*x[4]*x[4]-0.768*x[4]*x[8]+0.3104*x[4]*x[11]+0.2314*x[4]*x[12]-0.0697*x[4]*x[13]-0.4129*x[4]*x[15]-0.1365*x[4]*x[17]-0.8296*x[4]*x[18]-0.2968*x[4]*x[19]-0.862*x[4]*x[20]-0.4875*x[5]*x[5]-0.1104*x[5]*x[6]-0.6234*x[5]*x[8]+0.0948*x[5]*x[9]-0.5229*x[5]*x[11]-0.786*x[5]*x[13]+0.3301*x[5]*x[17]+0.1155*x[5]*x[19]-0.9235*x[5]*x[20]-0.9514*x[6]*x[6]-0.9054*x[6]*x[9]+0.4058*x[6]*x[10]-0.5633*x[6]*x[15]-0.0991*x[6]*x[17]-0.0021*x[6]*x[18]-0.2952*x[6]*x[19]-0.5508*x[7]*x[7]-0.1529*x[7]*x[11]+0.0526*x[7]*x[12]+0.9086*x[7]*x[13]+0.5866*x[7]*x[15]-0.8777*x[7]*x[16]+0.0181*x[7]*x[20]+0.2463*x[8]*x[8]+0.1697*x[8]*x[9]-0.9148*x[8]*x[11]+0.4976*x[8]*x[15]-0.7257*x[8]*x[16]-0.5447*x[8]*x[17]-0.3333*x[8]*x[18]+0.7602*x[8]*x[19]-0.6432*x[8]*x[20]+0.4335*x[9]*x[10]+0.6657*x[9]*x[12]-0.3522*x[9]*x[14]-0.3207*x[9]*x[15]-0.9375*x[9]*x[20]-0.2883*x[10]*x[10]-0.313*x[10]*x[11]-0.8875*x[10]*x[14]-0.4723*x[10]*x[15]+0.6583*x[10]*x[18]-0.605*x[10]*x[19]+0.464*x[10]*x[20]-0.4779*x[11]*x[11]+0.142*x[11]*x[13]-0.7121*x[11]*x[14]+0.8174*x[11]*x[15]+0.6158*x[11]*x[16]+0.8037*x[11]*x[17]-0.0199*x[11]*x[20]+0.6277*x[12]*x[19]+0.3422*x[12]*x[20]+0.0111*x[13]*x[13]+0.5486*x[13]*x[14]-0.0931*x[13]*x[15]+0.8128*x[13]*x[18]-0.0344*x[13]*x[19]+0.4717*x[13]*x[20]-0.9813*x[14]*x[18]+0.7195*x[14]*x[20]+0.4506*x[15]*x[18]+0.9142*x[15]*x[19]-0.5671*x[15]*x[20]-x[16]*x[19]+0.4309*x[17]*x[17]-0.7718*x[17]*x[18]+0.2419*x[17]*x[20]+0.5704*x[18]*x[18]-0.1569*x[18]*x[19]+0.8264*x[18]*x[20]-0.6979*x[20]*x[20]-0.1654*x[1]+0.0075*x[2]-0.103*x[3]+0.1481*x[4]-0.4042*x[5]-0.8684*x[6]+0.7861*x[7]+0.6305*x[8]-0.7861*x[9]+0.3864*x[10]+0.1221*x[11]-0.2269*x[12]+0.7585*x[13]+0.7047*x[14]-0.9711*x[15]+0.7653*x[16]+0.3736*x[17]-0.6228*x[18]+0.7512*x[19]+0.8001*x[20] <= 60.574)
@NLconstraint(m, e5, (-0.2234*x[1]*x[1])-0.5767*x[1]*x[3]+0.9638*x[1]*x[4]-0.8306*x[1]*x[6]-0.4428*x[1]*x[7]+0.7551*x[1]*x[8]+0.1343*x[1]*x[10]-0.0174*x[1]*x[11]+0.1535*x[1]*x[12]+0.4655*x[1]*x[13]+0.6368*x[1]*x[14]-0.3349*x[1]*x[15]-0.3947*x[1]*x[16]+0.4457*x[1]*x[17]-0.7811*x[1]*x[20]+0.0561*x[2]*x[2]+0.9949*x[2]*x[4]+0.0175*x[2]*x[5]+0.3907*x[2]*x[6]+0.8208*x[2]*x[7]-0.4831*x[2]*x[12]+0.0998*x[2]*x[15]+0.9517*x[2]*x[17]+0.6618*x[2]*x[19]-0.1377*x[2]*x[20]-0.0534*x[3]*x[3]-0.1808*x[3]*x[5]+0.4959*x[3]*x[6]+0.8739*x[3]*x[8]+0.4761*x[3]*x[12]-0.76*x[3]*x[13]+0.1344*x[3]*x[18]+0.4302*x[3]*x[19]+0.2268*x[4]*x[4]-0.8581*x[4]*x[5]-0.9698*x[4]*x[7]-0.4175*x[4]*x[8]-0.6777*x[4]*x[10]-0.2106*x[4]*x[12]-0.8518*x[4]*x[13]-0.2044*x[4]*x[20]-0.2839*x[5]*x[8]-0.9479*x[5]*x[11]+0.7982*x[5]*x[12]-0.6029*x[5]*x[14]+0.4451*x[5]*x[15]-0.3462*x[5]*x[19]-0.4838*x[5]*x[20]-0.1554*x[6]*x[6]+0.6486*x[6]*x[7]-0.2053*x[6]*x[14]-0.2599*x[6]*x[16]-0.5853*x[6]*x[20]-0.3857*x[7]*x[7]-0.526*x[7]*x[8]+0.5559*x[7]*x[10]-0.1299*x[7]*x[11]+0.5735*x[7]*x[13]-0.3121*x[7]*x[15]-0.2527*x[7]*x[17]+0.6901*x[7]*x[19]-0.224*x[7]*x[20]-0.504*x[8]*x[8]-0.3558*x[8]*x[12]+0.692*x[8]*x[14]+0.2166*x[8]*x[15]-0.3207*x[8]*x[17]-0.7537*x[8]*x[18]+0.3029*x[8]*x[20]-0.9003*x[9]*x[9]-0.5601*x[9]*x[11]+0.1253*x[9]*x[12]+0.3511*x[9]*x[14]+0.4034*x[9]*x[15]+0.5915*x[10]*x[11]-0.9321*x[10]*x[17]-0.7018*x[10]*x[18]+0.9676*x[11]*x[11]+0.0077*x[11]*x[12]+0.6789*x[11]*x[14]-0.9712*x[11]*x[15]-0.1112*x[11]*x[18]-0.7022*x[11]*x[19]+0.2821*x[12]*x[12]-0.4521*x[12]*x[13]+0.3044*x[12]*x[15]+0.8173*x[12]*x[17]-0.6102*x[12]*x[18]+0.4353*x[12]*x[20]+0.8494*x[13]*x[13]-0.0141*x[13]*x[14]-0.2351*x[13]*x[17]-0.5149*x[13]*x[18]+0.4171*x[13]*x[19]-0.4851*x[13]*x[20]+0.2186*x[14]*x[14]-0.5165*x[14]*x[15]-0.0409*x[14]*x[20]-0.0684*x[15]*x[15]+0.8067*x[15]*x[17]-0.741*x[15]*x[20]+0.244*x[16]*x[16]+0.4082*x[16]*x[17]-0.8271*x[16]*x[18]+0.0259*x[16]*x[19]+0.5978*x[16]*x[20]+0.6645*x[17]*x[17]-0.8019*x[17]*x[18]+0.4188*x[18]*x[18]-0.9602*x[20]*x[20]+0.2757*x[1]-0.9884*x[2]+0.5653*x[3]+0.184*x[4]-0.2369*x[5]-0.8693*x[6]-0.8708*x[7]-0.1068*x[8]+0.324*x[9]+0.2638*x[10]+0.6292*x[11]+0.1876*x[12]+0.6185*x[13]+0.0757*x[14]-0.6704*x[15]+0.9749*x[16]-0.3579*x[17]+0.362*x[18]+0.282*x[19]-0.3487*x[20] <= 75.309)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
