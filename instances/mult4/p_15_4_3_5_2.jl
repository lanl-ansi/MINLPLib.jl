using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.4891*x[13]^4-0.6929*x[13]+(-0.9659*x[1]*x[3])-0.9413*x[2]*x[5]-0.9696*x[2]*x[14]-0.9793*x[6]*x[11]-0.9573*x[7]*x[13]-0.7218*x[1]-0.7735*x[2]+0.5381*x[3]+0.088*x[5]-0.1725*x[6]-0.7814*x[7]+0.8797*x[11]-0.6938*x[14]+(-0.6408*x[1]*x[2]*x[10])-0.594*x[1]*x[3]*x[8]-0.6852*x[1]*x[5]*x[14]-0.8373*x[1]*x[9]*x[15]-0.7983*x[2]*x[3]*x[10]-0.8364*x[2]*x[4]*x[7]-0.9363*x[2]*x[7]*x[12]-0.9364*x[2]*x[10]*x[15]-0.6654*x[2]*x[13]*x[14]-0.9013*x[2]*x[13]*x[15]-0.8567*x[3]*x[4]*x[8]-0.8772*x[3]*x[5]*x[8]-0.7759*x[3]*x[5]*x[10]-0.8868*x[3]*x[6]*x[10]-0.8452*x[3]*x[8]*x[10]-0.8556*x[3]*x[8]*x[12]-0.8866*x[3]*x[8]*x[14]-0.9046*x[4]*x[6]*x[12]-0.7104*x[4]*x[7]*x[9]-0.8971*x[5]*x[8]*x[15]-0.6181*x[5]*x[9]*x[10]-0.7802*x[5]*x[9]*x[11]-0.6551*x[5]*x[9]*x[15]-0.7207*x[6]*x[7]*x[10]-0.7796*x[6]*x[7]*x[13]-0.6641*x[6]*x[9]*x[13]-0.7436*x[6]*x[10]*x[11]-0.6838*x[6]*x[12]*x[13]-0.7351*x[7]*x[9]*x[13]-0.9093*x[8]*x[11]*x[14]-0.851*x[8]*x[12]*x[14]-0.6666*x[10]*x[13]*x[15]-0.7882*x[11]*x[12]*x[14]+0.9237*x[4]-0.2254*x[8]+0.3023*x[9]-0.9957*x[10]+0.3441*x[12]+0.5092*x[15]+0.0512*x[1]*x[2]*x[6]*x[12]-0.5328*x[1]*x[2]*x[4]*x[11]+0.6741*x[1]*x[2]*x[9]*x[11]+0.3039*x[1]*x[3]*x[7]*x[11]-0.4392*x[1]*x[3]*x[11]*x[15]+0.5527*x[1]*x[3]*x[12]*x[13]-0.5705*x[1]*x[4]*x[5]*x[7]+0.9226*x[1]*x[4]*x[6]*x[7]+0.8437*x[1]*x[5]*x[6]*x[11]-0.0194*x[1]*x[6]*x[13]*x[14]-0.0005*x[1]*x[8]*x[9]*x[12]-0.5182*x[2]*x[3]*x[4]*x[7]+0.2871*x[2]*x[3]*x[4]*x[10]+0.8533*x[2]*x[3]*x[6]*x[10]+0.8451*x[2]*x[3]*x[10]*x[11]-0.0799*x[2]*x[3]*x[11]*x[12]-0.1539*x[2]*x[3]*x[13]*x[14]+0.1786*x[2]*x[4]*x[5]*x[14]+0.6878*x[2]*x[4]*x[6]*x[9]-0.2551*x[2]*x[4]*x[7]*x[9]-0.0824*x[2]*x[4]*x[7]*x[10]+0.5997*x[2]*x[4]*x[8]*x[12]+0.9131*x[2]*x[4]*x[11]*x[13]+0.0747*x[2]*x[4]*x[12]*x[15]+0.4965*x[2]*x[4]*x[13]*x[14]-0.5187*x[2]*x[5]*x[6]*x[9]+0.5227*x[2]*x[5]*x[7]*x[9]+0.0392*x[2]*x[5]*x[8]*x[14]+0.7511*x[2]*x[5]*x[10]*x[13]+0.9595*x[2]*x[5]*x[12]*x[14]+0.8762*x[2]*x[6]*x[7]*x[8]+0.6108*x[2]*x[6]*x[7]*x[14]+0.7388*x[2]*x[6]*x[8]*x[9]+0.1137*x[2]*x[7]*x[8]*x[11]+0.7283*x[2]*x[8]*x[11]*x[13]+0.3785*x[2]*x[9]*x[10]*x[13]-0.3545*x[2]*x[9]*x[14]*x[15]-0.0666*x[2]*x[11]*x[12]*x[13]+0.4155*x[3]*x[4]*x[6]*x[8]-0.3787*x[3]*x[4]*x[6]*x[14]+0.6806*x[3]*x[4]*x[7]*x[13]+0.9736*x[3]*x[4]*x[9]*x[12]+0.5186*x[3]*x[4]*x[11]*x[12]+0.3404*x[3]*x[4]*x[11]*x[14]-0.3342*x[3]*x[5]*x[6]*x[7]+0.5405*x[3]*x[5]*x[6]*x[13]-0.387*x[3]*x[5]*x[7]*x[8]+0.5599*x[3]*x[5]*x[9]*x[13]+0.6056*x[3]*x[6]*x[9]*x[13]+0.9372*x[3]*x[6]*x[12]*x[14]-0.0381*x[3]*x[7]*x[8]*x[11]+0.2915*x[3]*x[7]*x[13]*x[14]+0.6628*x[3]*x[8]*x[9]*x[10]-0.4916*x[3]*x[9]*x[10]*x[11]+0.6049*x[3]*x[12]*x[14]*x[15]+0.7725*x[4]*x[5]*x[7]*x[10]+0.8048*x[4]*x[5]*x[8]*x[11]+0.5795*x[4]*x[5]*x[8]*x[14]-0.1247*x[4]*x[5]*x[9]*x[13]+0.3374*x[4]*x[5]*x[11]*x[14]+0.9976*x[4]*x[6]*x[7]*x[8]+0.3039*x[4]*x[6]*x[8]*x[15]-0.5397*x[4]*x[6]*x[9]*x[14]+0.2682*x[4]*x[6]*x[11]*x[12]+0.4025*x[4]*x[6]*x[12]*x[15]+0.5581*x[4]*x[6]*x[14]*x[15]+0.3269*x[4]*x[7]*x[8]*x[12]+0.8271*x[4]*x[7]*x[13]*x[14]+0.0826*x[4]*x[8]*x[11]*x[13]-0.4433*x[4]*x[8]*x[12]*x[14]+0.1779*x[4]*x[9]*x[10]*x[15]-0.4859*x[4]*x[9]*x[12]*x[13]+0.4111*x[4]*x[10]*x[11]*x[13]-0.1092*x[4]*x[11]*x[12]*x[14]+0.102*x[4]*x[12]*x[13]*x[15]+0.4774*x[5]*x[6]*x[10]*x[14]+0.3928*x[5]*x[7]*x[8]*x[11]+0.6555*x[5]*x[7]*x[8]*x[15]+0.579*x[5]*x[9]*x[13]*x[14]+0.4136*x[5]*x[10]*x[14]*x[15]+0.8577*x[5]*x[11]*x[13]*x[15]-0.3498*x[6]*x[7]*x[10]*x[14]-0.2558*x[6]*x[8]*x[9]*x[12]+0.8204*x[6]*x[8]*x[9]*x[13]+0.0107*x[6]*x[8]*x[10]*x[14]-0.1975*x[6]*x[8]*x[10]*x[15]-0.1372*x[6]*x[8]*x[12]*x[14]+0.7806*x[6]*x[8]*x[12]*x[15]-0.0939*x[6]*x[9]*x[14]*x[15]-0.0813*x[6]*x[11]*x[14]*x[15]+0.0743*x[6]*x[12]*x[13]*x[15]-0.066*x[8]*x[9]*x[10]*x[11]+0.9802*x[8]*x[9]*x[10]*x[13]-0.1219*x[8]*x[10]*x[13]*x[14]+0.7824*x[8]*x[11]*x[13]*x[15]+0.1227*x[8]*x[11]*x[14]*x[15]-0.5763*x[9]*x[10]*x[13]*x[14]+0.1278*x[9]*x[12]*x[13]*x[15]-0.4248*x[10]*x[12]*x[14]*x[15]-0.4031*x[13]^3*x[2]+0.0778*x[5]^2*x[9]^2-0.5155*x[3]^2*x[10]^2+0.8667*x[5]^2*x[11]^2+0.4122*x[10]^2*x[11]^2+0.0843*x[10]^2*x[13]^2+(-0.6799*x[2]^2*x[6])-0.7958*x[6]^2*x[5]-0.5938*x[12]^2*x[9]-0.7202*x[13]^2*x[9]-0.884*x[14]^2*x[6]+0.7937*x[1]^2*x[2]*x[6]+0.2509*x[2]^2*x[3]*x[12]+0.6835*x[2]^2*x[12]*x[14]+0.8727*x[3]^2*x[1]*x[6]+0.8969*x[3]^2*x[7]*x[11]+0.6946*x[3]^2*x[11]*x[13]+0.5236*x[4]^2*x[2]*x[5]-0.5077*x[4]^2*x[2]*x[13]+0.9739*x[4]^2*x[9]*x[14]+0.4575*x[4]^2*x[10]*x[13]-0.506*x[4]^2*x[11]*x[15]+0.179*x[5]^2*x[9]*x[13]+0.372*x[6]^2*x[3]*x[13]-0.0243*x[6]^2*x[9]*x[11]+0.0772*x[7]^2*x[3]*x[5]+0.8792*x[7]^2*x[10]*x[13]-0.4714*x[8]^2*x[3]*x[15]+0.4195*x[8]^2*x[5]*x[10]+0.7515*x[8]^2*x[6]*x[7]+0.2404*x[9]^2*x[1]*x[10]-0.0381*x[9]^2*x[3]*x[4]-0.5735*x[9]^2*x[3]*x[8]+0.4125*x[9]^2*x[5]*x[8]-0.4278*x[9]^2*x[7]*x[14]-0.1751*x[10]^2*x[5]*x[13]+0.7962*x[10]^2*x[7]*x[12]-0.199*x[10]^2*x[11]*x[12]-0.5851*x[11]^2*x[1]*x[14]-0.4766*x[11]^2*x[6]*x[14]+0.7112*x[12]^2*x[2]*x[6]-0.1821*x[12]^2*x[2]*x[10]-0.0278*x[12]^2*x[8]*x[15]+0.2491*x[13]^2*x[2]*x[3]+0.6039*x[13]^2*x[3]*x[7]-0.0142*x[13]^2*x[3]*x[12]-0.3871*x[13]^2*x[3]*x[14]-0.1423*x[13]^2*x[5]*x[9]+0.2352*x[13]^2*x[8]*x[12]-0.1155*x[13]^2*x[11]*x[14]+0.1038*x[14]^2*x[3]*x[6]-0.0257*x[14]^2*x[4]*x[6]+0.5307*x[14]^2*x[6]*x[12]+0.9344*x[14]^2*x[10]*x[11]+0.8656*x[15]^2*x[9]*x[10])+obj == 0.0)
@NLconstraint(m, e2, 0.4891*x[13]^4-0.1606*x[13]+(-0.942*x[2]*x[3])-0.9839*x[3]*x[13]-0.9484*x[4]*x[8]-0.9632*x[5]*x[6]-0.9558*x[5]*x[11]-0.9475*x[5]*x[15]-0.96*x[10]*x[13]-0.9992*x[13]*x[14]+0.8801*x[2]-0.0749*x[3]+0.4775*x[4]+0.539*x[5]-0.7211*x[6]+0.6841*x[8]+0.4184*x[10]+0.1598*x[11]+0.9786*x[14]+0.1005*x[15]+(-0.9235*x[1]*x[2]*x[11])-0.8388*x[1]*x[5]*x[10]-0.6546*x[1]*x[7]*x[13]-0.6671*x[1]*x[8]*x[13]-0.8868*x[1]*x[11]*x[13]-0.7257*x[2]*x[5]*x[8]-0.8074*x[2]*x[5]*x[11]-0.8846*x[2]*x[6]*x[10]-0.8235*x[2]*x[9]*x[11]-0.6268*x[2]*x[9]*x[12]-0.5873*x[3]*x[4]*x[6]-0.8978*x[3]*x[7]*x[10]-0.8969*x[3]*x[7]*x[14]-0.7207*x[3]*x[7]*x[15]-0.614*x[3]*x[13]*x[14]-0.862*x[4]*x[5]*x[7]-0.7257*x[4]*x[6]*x[13]-0.6792*x[4]*x[8]*x[12]-0.8723*x[4]*x[9]*x[12]-0.6334*x[4]*x[12]*x[14]-0.6081*x[5]*x[7]*x[11]-0.8841*x[5]*x[9]*x[15]-0.7873*x[5]*x[10]*x[14]-0.6392*x[6]*x[7]*x[10]-0.8796*x[6]*x[7]*x[13]-0.7861*x[6]*x[9]*x[11]-0.8949*x[6]*x[9]*x[13]-0.6432*x[6]*x[11]*x[13]-0.8714*x[7]*x[8]*x[11]-0.6228*x[9]*x[13]*x[14]-0.6107*x[9]*x[14]*x[15]-0.6953*x[10]*x[11]*x[12]-0.0395*x[1]-0.1826*x[7]+0.9129*x[9]-0.6438*x[12]+0.7507*x[1]*x[2]*x[3]*x[12]+0.9396*x[1]*x[2]*x[7]*x[11]+0.4047*x[1]*x[2]*x[10]*x[14]+0.9296*x[1]*x[3]*x[6]*x[14]+0.262*x[1]*x[3]*x[10]*x[13]+0.6105*x[1]*x[3]*x[14]*x[15]-0.3095*x[1]*x[4]*x[5]*x[6]+0.4233*x[1]*x[4]*x[7]*x[8]+0.0517*x[1]*x[4]*x[7]*x[10]-0.4221*x[1]*x[4]*x[7]*x[12]+0.7195*x[1]*x[4]*x[11]*x[14]+0.4685*x[1]*x[6]*x[7]*x[9]+0.5518*x[1]*x[6]*x[10]*x[14]-0.3309*x[1]*x[7]*x[10]*x[11]+0.4506*x[1]*x[7]*x[13]*x[15]-0.0931*x[1]*x[8]*x[11]*x[14]+0.5295*x[2]*x[3]*x[4]*x[5]+0.888*x[2]*x[3]*x[5]*x[11]+0.9293*x[2]*x[3]*x[6]*x[10]+0.8969*x[2]*x[3]*x[6]*x[11]-0.0423*x[2]*x[3]*x[7]*x[10]-0.5774*x[2]*x[3]*x[11]*x[14]-0.4668*x[2]*x[3]*x[14]*x[15]+0.2638*x[2]*x[4]*x[6]*x[9]-0.5544*x[2]*x[4]*x[7]*x[11]+0.512*x[2]*x[4]*x[7]*x[15]-0.3992*x[2]*x[4]*x[8]*x[11]+0.0948*x[2]*x[4]*x[9]*x[10]-0.0697*x[2]*x[5]*x[6]*x[7]-0.3961*x[2]*x[5]*x[7]*x[8]+0.893*x[2]*x[5]*x[7]*x[10]+0.5614*x[2]*x[5]*x[7]*x[11]+0.1481*x[2]*x[5]*x[12]*x[14]+0.863*x[2]*x[6]*x[8]*x[9]+0.6693*x[2]*x[7]*x[8]*x[10]-0.1529*x[2]*x[8]*x[12]*x[14]+0.5632*x[2]*x[8]*x[13]*x[15]+0.0181*x[2]*x[9]*x[10]*x[11]+0.6322*x[2]*x[9]*x[10]*x[12]+0.7019*x[2]*x[10]*x[12]*x[13]+0.4251*x[3]*x[4]*x[5]*x[12]+0.5948*x[3]*x[4]*x[10]*x[15]+0.1679*x[3]*x[4]*x[11]*x[12]-0.2434*x[3]*x[5]*x[8]*x[12]+0.2584*x[3]*x[5]*x[8]*x[14]-0.4868*x[3]*x[5]*x[10]*x[11]+0.0134*x[3]*x[5]*x[11]*x[15]+0.8246*x[3]*x[6]*x[7]*x[15]+0.656*x[3]*x[6]*x[11]*x[14]-0.2439*x[3]*x[6]*x[12]*x[14]+0.6566*x[3]*x[7]*x[8]*x[9]-0.1926*x[3]*x[7]*x[9]*x[11]+0.4309*x[3]*x[7]*x[10]*x[12]-0.1074*x[3]*x[8]*x[9]*x[10]-0.403*x[3]*x[8]*x[9]*x[15]+0.2712*x[3]*x[8]*x[13]*x[14]-0.5774*x[3]*x[9]*x[10]*x[11]+0.1302*x[3]*x[10]*x[11]*x[12]+0.3765*x[4]*x[5]*x[6]*x[12]+0.822*x[4]*x[5]*x[8]*x[9]+0.9313*x[4]*x[5]*x[8]*x[14]-0.4723*x[4]*x[5]*x[11]*x[13]-0.5633*x[4]*x[6]*x[7]*x[8]-0.3397*x[4]*x[8]*x[9]*x[11]+0.6799*x[4]*x[8]*x[9]*x[12]+0.3186*x[4]*x[8]*x[11]*x[13]-0.3364*x[4]*x[11]*x[12]*x[13]+0.7015*x[5]*x[6]*x[7]*x[9]+0.8893*x[5]*x[6]*x[8]*x[13]+0.1047*x[5]*x[6]*x[10]*x[14]+0.673*x[5]*x[7]*x[10]*x[12]+0.3643*x[5]*x[7]*x[10]*x[14]+0.2583*x[5]*x[7]*x[12]*x[13]+0.8941*x[5]*x[7]*x[13]*x[14]-0.2001*x[5]*x[8]*x[9]*x[10]+0.0894*x[5]*x[8]*x[9]*x[12]+0.5691*x[5]*x[9]*x[10]*x[12]+0.0573*x[5]*x[9]*x[11]*x[13]-0.2311*x[5]*x[10]*x[11]*x[12]+0.5351*x[6]*x[7]*x[9]*x[15]+0.9474*x[6]*x[9]*x[10]*x[14]-0.255*x[6]*x[9]*x[13]*x[15]+0.5086*x[6]*x[10]*x[11]*x[12]+0.5327*x[6]*x[12]*x[13]*x[14]+0.0657*x[7]*x[8]*x[9]*x[12]-0.1366*x[7]*x[8]*x[11]*x[15]+0.6944*x[7]*x[9]*x[10]*x[13]-0.3982*x[8]*x[9]*x[11]*x[13]-0.0083*x[10]*x[11]*x[12]*x[14]+0.0376*x[3]^3*x[15]+(-0.1204*x[5]^2*x[6]^2)-0.5171*x[11]^2*x[12]^2+(-0.6511*x[2]^2*x[11])-0.628*x[2]^2*x[14]-0.7369*x[8]^2*x[12]-0.8193*x[10]^2*x[14]-0.7353*x[14]^2*x[6]-0.9012*x[14]^2*x[9]+(-0.3754*x[1]^2*x[2]*x[10])-0.5359*x[1]^2*x[3]*x[4]+0.9483*x[1]^2*x[6]*x[13]+0.9214*x[1]^2*x[7]*x[8]-0.5785*x[2]^2*x[5]*x[8]+0.6508*x[2]^2*x[7]*x[10]+0.0748*x[2]^2*x[9]*x[14]-0.1923*x[2]^2*x[10]*x[12]+0.0604*x[3]^2*x[2]*x[4]+0.8329*x[3]^2*x[5]*x[8]+0.4763*x[4]^2*x[2]*x[5]+0.8168*x[4]^2*x[9]*x[12]+0.508*x[4]^2*x[11]*x[13]-0.0113*x[5]^2*x[1]*x[14]+0.0393*x[5]^2*x[3]*x[12]+0.2697*x[5]^2*x[4]*x[13]-0.4354*x[5]^2*x[6]*x[13]-0.1786*x[5]^2*x[9]*x[10]+0.3726*x[5]^2*x[10]*x[14]-0.3207*x[6]^2*x[1]*x[2]+0.4581*x[6]^2*x[1]*x[10]-0.26*x[6]^2*x[1]*x[15]+0.5628*x[6]^2*x[11]*x[14]+0.8264*x[7]^2*x[3]*x[8]+0.2094*x[7]^2*x[4]*x[12]-0.5259*x[8]^2*x[6]*x[7]+0.7597*x[8]^2*x[6]*x[15]+0.9265*x[8]^2*x[7]*x[11]+0.6298*x[8]^2*x[12]*x[13]-0.42*x[9]^2*x[4]*x[14]+0.6018*x[9]^2*x[5]*x[10]-0.1921*x[9]^2*x[5]*x[14]+0.6697*x[9]^2*x[7]*x[12]+0.6072*x[9]^2*x[8]*x[13]-0.0649*x[10]^2*x[3]*x[12]-0.0005*x[11]^2*x[3]*x[5]-0.1394*x[11]^2*x[4]*x[10]-0.2923*x[11]^2*x[6]*x[8]-0.5743*x[11]^2*x[6]*x[10]+0.4182*x[12]^2*x[6]*x[10]-0.0199*x[12]^2*x[8]*x[10]+0.3206*x[12]^2*x[9]*x[11]+0.7585*x[13]^2*x[1]*x[11]+0.5489*x[13]^2*x[2]*x[6]-0.063*x[13]^2*x[3]*x[9]+0.936*x[13]^2*x[3]*x[11]-0.1287*x[13]^2*x[7]*x[11]+0.4025*x[14]^2*x[1]*x[5]+0.142*x[14]^2*x[3]*x[12]-0.0251*x[14]^2*x[6]*x[11]-0.2882*x[14]^2*x[10]*x[13]+0.1307*x[14]^2*x[12]*x[15]+0.8138*x[15]^2*x[2]*x[10]-0.2509*x[15]^2*x[5]*x[7] <= 78.057)
@NLconstraint(m, e3, 0.4891*x[13]^4+0.6882*x[13]+(-0.9628*x[3]*x[6])-0.9712*x[3]*x[7]-0.9827*x[5]*x[14]-0.9884*x[9]*x[12]-0.9507*x[10]*x[14]+0.0195*x[3]-0.8537*x[5]+0.2314*x[6]+0.7529*x[7]-0.2999*x[9]+0.406*x[10]+0.7775*x[12]-0.293*x[14]+(-0.8019*x[1]*x[10]*x[11])-0.6172*x[1]*x[11]*x[14]-0.6257*x[2]*x[4]*x[7]-0.7816*x[2]*x[5]*x[9]-0.7856*x[2]*x[5]*x[10]-0.7566*x[2]*x[6]*x[8]-0.7738*x[2]*x[13]*x[15]-0.8591*x[3]*x[6]*x[9]-0.7777*x[3]*x[7]*x[9]-0.7*x[3]*x[12]*x[14]-0.7851*x[4]*x[5]*x[7]-0.6224*x[4]*x[6]*x[7]-0.7008*x[4]*x[6]*x[12]-0.5929*x[4]*x[7]*x[13]-0.6433*x[4]*x[8]*x[11]-0.6377*x[4]*x[8]*x[15]-0.6412*x[5]*x[6]*x[7]-0.7376*x[5]*x[6]*x[8]-0.6704*x[5]*x[11]*x[15]-0.6221*x[5]*x[12]*x[14]-0.8311*x[6]*x[8]*x[13]-0.6479*x[6]*x[9]*x[12]-0.733*x[7]*x[8]*x[15]-0.7018*x[8]*x[13]*x[15]-0.6211*x[9]*x[11]*x[14]-0.6387*x[10]*x[11]*x[14]-0.5984*x[10]*x[14]*x[15]-0.7805*x[1]+0.3566*x[2]+0.897*x[4]-0.4526*x[8]-0.6505*x[11]+0.8557*x[15]+0.4818*x[1]*x[2]*x[4]*x[8]+0.4302*x[1]*x[2]*x[5]*x[10]-0.5562*x[1]*x[2]*x[5]*x[12]-0.1863*x[1]*x[2]*x[6]*x[10]+0.7416*x[1]*x[2]*x[7]*x[12]-0.1561*x[1]*x[2]*x[10]*x[14]+0.3401*x[1]*x[3]*x[5]*x[11]+0.9459*x[1]*x[3]*x[6]*x[11]-0.5612*x[1]*x[3]*x[10]*x[14]+0.0827*x[1]*x[4]*x[5]*x[10]-0.2839*x[1]*x[4]*x[11]*x[14]-0.543*x[1]*x[6]*x[8]*x[14]+0.1862*x[1]*x[6]*x[10]*x[15]-0.311*x[1]*x[8]*x[10]*x[11]+0.1253*x[1]*x[10]*x[11]*x[12]+0.1898*x[1]*x[11]*x[12]*x[14]-0.0086*x[1]*x[13]*x[14]*x[15]-0.3207*x[2]*x[3]*x[4]*x[10]+0.9034*x[2]*x[3]*x[5]*x[12]+0.8852*x[2]*x[3]*x[6]*x[9]-0.0097*x[2]*x[3]*x[7]*x[14]+0.8886*x[2]*x[3]*x[8]*x[13]-0.1843*x[2]*x[3]*x[9]*x[11]+0.4318*x[2]*x[4]*x[6]*x[15]+0.0462*x[2]*x[4]*x[8]*x[9]+0.3321*x[2]*x[5]*x[6]*x[14]+0.6144*x[2]*x[5]*x[8]*x[9]+0.6875*x[2]*x[5]*x[9]*x[11]-0.5758*x[2]*x[5]*x[11]*x[13]+0.718*x[2]*x[6]*x[7]*x[13]-0.2844*x[2]*x[6]*x[10]*x[12]-0.3401*x[2]*x[7]*x[8]*x[13]-0.0426*x[2]*x[8]*x[11]*x[12]+0.4082*x[2]*x[8]*x[12]*x[13]-0.066*x[2]*x[8]*x[13]*x[14]-0.2298*x[2]*x[9]*x[10]*x[11]-0.3588*x[2]*x[9]*x[10]*x[15]+0.9399*x[3]*x[4]*x[5]*x[6]-0.1315*x[3]*x[4]*x[5]*x[7]+0.0813*x[3]*x[4]*x[9]*x[10]+0.6634*x[3]*x[4]*x[12]*x[13]+0.0008*x[3]*x[5]*x[6]*x[15]+0.1153*x[3]*x[5]*x[10]*x[14]-0.4597*x[3]*x[5]*x[11]*x[12]-0.1544*x[3]*x[5]*x[13]*x[14]-0.4645*x[3]*x[6]*x[7]*x[10]+0.846*x[3]*x[6]*x[10]*x[13]+0.167*x[3]*x[7]*x[8]*x[11]+0.5532*x[3]*x[7]*x[8]*x[14]+0.6467*x[3]*x[7]*x[9]*x[12]-0.0409*x[3]*x[8]*x[10]*x[14]+0.4579*x[3]*x[8]*x[12]*x[13]-0.0086*x[3]*x[9]*x[10]*x[13]+0.6618*x[3]*x[9]*x[11]*x[14]+0.7438*x[3]*x[9]*x[13]*x[14]+0.111*x[3]*x[10]*x[11]*x[13]+0.2755*x[3]*x[10]*x[12]*x[13]-0.4011*x[4]*x[5]*x[6]*x[8]+0.5375*x[4]*x[5]*x[7]*x[14]-0.4831*x[4]*x[5]*x[9]*x[14]-0.5149*x[4]*x[5]*x[10]*x[11]+0.7426*x[4]*x[5]*x[10]*x[14]+0.4511*x[4]*x[6]*x[8]*x[9]+0.0812*x[4]*x[6]*x[8]*x[11]-0.224*x[4]*x[6]*x[10]*x[13]+0.1936*x[4]*x[6]*x[10]*x[14]+0.3945*x[4]*x[7]*x[9]*x[10]+0.0974*x[4]*x[7]*x[10]*x[11]-0.0571*x[4]*x[7]*x[12]*x[14]+0.2045*x[4]*x[8]*x[12]*x[13]-0.3932*x[4]*x[9]*x[10]*x[15]-0.1387*x[4]*x[9]*x[12]*x[14]+0.4754*x[4]*x[10]*x[11]*x[14]+0.9053*x[4]*x[11]*x[12]*x[14]-0.0539*x[4]*x[11]*x[13]*x[15]+0.7992*x[5]*x[6]*x[10]*x[11]+0.4655*x[5]*x[6]*x[11]*x[12]+0.3015*x[5]*x[7]*x[9]*x[12]+0.6304*x[5]*x[7]*x[11]*x[14]+0.8423*x[5]*x[8]*x[10]*x[11]-0.3726*x[5]*x[8]*x[13]*x[15]+0.7677*x[5]*x[9]*x[11]*x[13]-0.1827*x[5]*x[9]*x[11]*x[14]+0.3907*x[5]*x[9]*x[14]*x[15]-0.4327*x[5]*x[11]*x[13]*x[14]+0.7195*x[6]*x[7]*x[9]*x[13]+0.2242*x[6]*x[7]*x[9]*x[14]+0.6875*x[6]*x[7]*x[10]*x[13]+0.282*x[6]*x[7]*x[12]*x[13]-0.3847*x[6]*x[7]*x[12]*x[15]+0.7702*x[6]*x[8]*x[9]*x[10]+0.2821*x[6]*x[8]*x[11]*x[14]-0.12*x[6]*x[9]*x[13]*x[14]+0.2477*x[7]*x[8]*x[12]*x[13]+0.1486*x[7]*x[9]*x[11]*x[13]+0.9592*x[7]*x[11]*x[14]*x[15]+0.638*x[8]*x[9]*x[11]*x[15]-0.5817*x[8]*x[10]*x[12]*x[14]-0.3782*x[10]*x[11]*x[12]*x[14]+0.3125*x[7]^3*x[13]+0.0191*x[10]^3*x[1]+0.4519*x[14]^3*x[9]+(-0.367*x[4]^2*x[8]^2)-0.2301*x[7]^2*x[14]^2+0.2638*x[9]^2*x[12]^2+(-0.6854*x[4]^2*x[7])-0.626*x[4]^2*x[12]-0.6339*x[4]^2*x[14]-0.6777*x[7]^2*x[2]-0.7811*x[8]^2*x[15]-0.6108*x[9]^2*x[8]-0.6497*x[10]^2*x[5]+(-0.0514*x[1]^2*x[3]*x[8])-0.3125*x[1]^2*x[9]*x[15]+0.7453*x[2]^2*x[6]*x[13]-0.2369*x[2]^2*x[7]*x[10]+0.981*x[2]^2*x[8]*x[12]-0.4246*x[2]^2*x[12]*x[14]+0.8914*x[3]^2*x[5]*x[14]+0.6986*x[3]^2*x[6]*x[8]+0.0058*x[3]^2*x[13]*x[15]+0.6892*x[4]^2*x[5]*x[10]-0.2599*x[4]^2*x[5]*x[12]+0.625*x[4]^2*x[9]*x[13]+0.2362*x[5]^2*x[2]*x[8]+0.9928*x[5]^2*x[3]*x[10]-0.2906*x[5]^2*x[4]*x[13]-0.5141*x[6]^2*x[3]*x[12]-0.1299*x[6]^2*x[12]*x[13]+0.9651*x[7]^2*x[1]*x[12]+0.7993*x[7]^2*x[2]*x[6]+0.6197*x[7]^2*x[3]*x[10]-0.3462*x[7]^2*x[5]*x[13]+0.2781*x[7]^2*x[8]*x[11]+0.1437*x[7]^2*x[11]*x[12]+0.8408*x[8]^2*x[1]*x[3]-0.5196*x[8]^2*x[1]*x[11]+0.2075*x[8]^2*x[1]*x[13]-0.1218*x[8]^2*x[6]*x[15]-0.5429*x[9]^2*x[3]*x[10]+0.3718*x[9]^2*x[5]*x[14]+0.3886*x[9]^2*x[7]*x[12]-0.4428*x[9]^2*x[8]*x[13]+0.1967*x[10]^2*x[5]*x[14]+0.5285*x[10]^2*x[7]*x[11]-0.0102*x[10]^2*x[12]*x[13]+0.0001*x[10]^2*x[14]*x[15]+0.622*x[11]^2*x[1]*x[12]+0.857*x[11]^2*x[2]*x[13]-0.4002*x[11]^2*x[3]*x[4]-0.3978*x[11]^2*x[5]*x[9]+0.6119*x[12]^2*x[2]*x[6]+0.3336*x[12]^2*x[3]*x[10]-0.1407*x[13]^2*x[2]*x[12]+0.6374*x[13]^2*x[9]*x[11]+0.1902*x[14]^2*x[1]*x[15]-0.5248*x[14]^2*x[3]*x[10]+0.6127*x[14]^2*x[4]*x[10]-0.2025*x[14]^2*x[5]*x[15]+0.1366*x[14]^2*x[6]*x[11]+0.6276*x[15]^2*x[3]*x[11] <= 55.571)
@NLconstraint(m, e4, 0.4891*x[13]^4+0.9339*x[13]+(-0.9825*x[2]*x[11])-0.9444*x[2]*x[12]-0.9956*x[3]*x[10]-0.9533*x[4]*x[8]-0.9827*x[7]*x[8]-0.9814*x[8]*x[12]-0.9397*x[9]*x[15]-0.9514*x[10]*x[14]-0.9665*x[11]*x[12]+0.9797*x[2]-0.0695*x[3]+0.3148*x[4]-0.5517*x[7]-0.8655*x[8]-0.5276*x[9]+0.1205*x[10]+0.5673*x[11]-0.4733*x[12]-0.2615*x[14]-0.8921*x[15]+(-0.8689*x[1]*x[2]*x[4])-0.6487*x[1]*x[3]*x[14]-0.805*x[1]*x[7]*x[14]-0.6777*x[2]*x[3]*x[12]-0.8048*x[2]*x[6]*x[11]-0.8189*x[2]*x[8]*x[12]-0.8396*x[2]*x[11]*x[14]-0.6998*x[2]*x[13]*x[14]-0.6347*x[3]*x[5]*x[8]-0.642*x[3]*x[5]*x[13]-0.7489*x[3]*x[6]*x[13]-0.7912*x[3]*x[6]*x[14]-0.8179*x[3]*x[7]*x[12]-0.7855*x[3]*x[9]*x[12]-0.7132*x[3]*x[10]*x[12]-0.8063*x[4]*x[7]*x[12]-0.9094*x[4]*x[9]*x[14]-0.6317*x[4]*x[11]*x[13]-0.7675*x[4]*x[12]*x[15]-0.6763*x[4]*x[13]*x[15]-0.8411*x[5]*x[12]*x[13]-0.6483*x[6]*x[9]*x[14]-0.8017*x[6]*x[10]*x[13]-0.6657*x[8]*x[11]*x[12]-0.7832*x[11]*x[12]*x[13]-0.2198*x[1]+0.3282*x[5]+0.0742*x[6]+0.9058*x[1]*x[2]*x[6]*x[11]-0.2867*x[1]*x[2]*x[12]*x[14]+0.7825*x[1]*x[3]*x[8]*x[12]+0.641*x[1]*x[4]*x[7]*x[15]+0.8824*x[1]*x[4]*x[8]*x[12]+0.5388*x[1]*x[4]*x[9]*x[10]-0.0687*x[1]*x[5]*x[6]*x[13]-0.2314*x[1]*x[5]*x[10]*x[13]-0.3814*x[1]*x[5]*x[11]*x[13]-0.2126*x[1]*x[6]*x[7]*x[14]-0.4023*x[1]*x[6]*x[9]*x[10]-0.3751*x[1]*x[7]*x[9]*x[15]+0.3395*x[1]*x[8]*x[12]*x[14]+0.2916*x[1]*x[9]*x[13]*x[15]+0.6404*x[1]*x[10]*x[11]*x[13]+0.261*x[2]*x[3]*x[4]*x[6]+0.6502*x[2]*x[3]*x[4]*x[12]-0.0185*x[2]*x[4]*x[8]*x[14]-0.4632*x[2]*x[4]*x[9]*x[15]+0.49*x[2]*x[5]*x[6]*x[12]+0.2267*x[2]*x[5]*x[7]*x[10]+0.6658*x[2]*x[5]*x[11]*x[12]-0.1669*x[2]*x[5]*x[12]*x[15]-0.2353*x[2]*x[8]*x[9]*x[12]-0.0084*x[2]*x[9]*x[14]*x[15]+0.821*x[2]*x[10]*x[13]*x[14]+0.0012*x[2]*x[11]*x[12]*x[13]-0.3878*x[3]*x[4]*x[5]*x[7]+0.6162*x[3]*x[4]*x[5]*x[9]-0.148*x[3]*x[4]*x[5]*x[13]-0.4094*x[3]*x[4]*x[6]*x[12]+0.9348*x[3]*x[4]*x[6]*x[14]+0.8564*x[3]*x[4]*x[10]*x[12]+0.8914*x[3]*x[4]*x[11]*x[14]+0.4817*x[3]*x[4]*x[12]*x[13]-0.5304*x[3]*x[4]*x[13]*x[14]+0.6182*x[3]*x[5]*x[10]*x[12]-0.5391*x[3]*x[5]*x[11]*x[12]+0.9127*x[3]*x[5]*x[13]*x[14]+0.9079*x[3]*x[6]*x[9]*x[13]+0.6545*x[3]*x[6]*x[10]*x[11]+0.2549*x[3]*x[6]*x[10]*x[14]+0.5705*x[3]*x[7]*x[9]*x[10]+0.7783*x[3]*x[7]*x[9]*x[14]-0.0663*x[3]*x[7]*x[12]*x[13]+0.7456*x[3]*x[8]*x[10]*x[11]+0.2151*x[3]*x[8]*x[11]*x[12]-0.0287*x[3]*x[8]*x[13]*x[14]+0.5161*x[3]*x[9]*x[11]*x[14]+0.4219*x[3]*x[10]*x[13]*x[14]+0.0244*x[4]*x[5]*x[6]*x[9]+0.9549*x[4]*x[5]*x[7]*x[9]-0.4825*x[4]*x[5]*x[12]*x[14]+0.0742*x[4]*x[6]*x[8]*x[15]-0.4118*x[4]*x[7]*x[8]*x[10]+0.9362*x[4]*x[7]*x[9]*x[13]+0.0376*x[4]*x[9]*x[11]*x[14]+0.3202*x[4]*x[10]*x[12]*x[14]+0.7705*x[4]*x[10]*x[14]*x[15]+0.5156*x[4]*x[11]*x[14]*x[15]+0.0605*x[5]*x[6]*x[7]*x[10]+0.8528*x[5]*x[6]*x[10]*x[15]+0.1967*x[5]*x[6]*x[11]*x[12]+0.8437*x[5]*x[6]*x[13]*x[15]-0.457*x[5]*x[7]*x[8]*x[11]+0.0912*x[5]*x[7]*x[8]*x[13]-0.2979*x[5]*x[7]*x[8]*x[14]+0.0505*x[5]*x[7]*x[8]*x[15]+0.2826*x[5]*x[7]*x[10]*x[11]+0.4196*x[5]*x[7]*x[11]*x[14]-0.2928*x[5]*x[8]*x[10]*x[12]+0.4884*x[5]*x[9]*x[10]*x[14]+0.4976*x[5]*x[9]*x[11]*x[14]+0.442*x[5]*x[11]*x[14]*x[15]-0.4509*x[6]*x[7]*x[9]*x[12]-0.4386*x[6]*x[7]*x[10]*x[11]+0.3026*x[6]*x[7]*x[11]*x[13]+0.9673*x[6]*x[7]*x[11]*x[15]+0.8757*x[6]*x[7]*x[12]*x[15]+0.0585*x[6]*x[9]*x[13]*x[14]+0.9665*x[6]*x[10]*x[13]*x[14]-0.3668*x[6]*x[11]*x[12]*x[13]+0.8319*x[7]*x[8]*x[9]*x[14]+0.2495*x[7]*x[8]*x[10]*x[15]-0.5185*x[7]*x[8]*x[12]*x[14]-0.04*x[7]*x[9]*x[12]*x[15]-0.5639*x[7]*x[11]*x[12]*x[14]-0.5737*x[7]*x[11]*x[13]*x[14]+0.3228*x[8]*x[9]*x[10]*x[14]+0.1439*x[8]*x[9]*x[11]*x[13]+0.6411*x[8]*x[10]*x[11]*x[12]+0.6834*x[8]*x[11]*x[14]*x[15]-0.183*x[9]*x[11]*x[12]*x[14]+0.7802*x[10]*x[11]*x[12]*x[13]+0.4464*x[11]*x[12]*x[13]*x[14]-0.0854*x[2]^2*x[5]^2+(-0.8204*x[1]^2*x[2])-0.706*x[2]^2*x[13]-0.6643*x[3]^2*x[7]-0.631*x[4]^2*x[9]-0.7218*x[5]^2*x[12]-0.8763*x[7]^2*x[13]+0.6458*x[1]^2*x[2]*x[5]-0.4567*x[2]^2*x[1]*x[3]-0.4595*x[2]^2*x[7]*x[13]+0.1846*x[3]^2*x[2]*x[5]+0.8046*x[3]^2*x[2]*x[14]+0.8122*x[3]^2*x[6]*x[13]+0.6695*x[3]^2*x[11]*x[12]+0.2621*x[4]^2*x[2]*x[9]-0.4897*x[4]^2*x[5]*x[8]+0.6196*x[4]^2*x[6]*x[9]-0.5585*x[4]^2*x[7]*x[14]+0.1012*x[4]^2*x[11]*x[13]+0.731*x[4]^2*x[11]*x[14]+0.3651*x[5]^2*x[1]*x[7]+0.198*x[5]^2*x[2]*x[11]+0.9032*x[5]^2*x[11]*x[13]+0.7937*x[6]^2*x[2]*x[15]+0.637*x[6]^2*x[3]*x[11]-0.2656*x[6]^2*x[3]*x[13]-0.2498*x[6]^2*x[7]*x[9]+0.3303*x[6]^2*x[9]*x[15]-0.5406*x[6]^2*x[11]*x[15]+0.8976*x[7]^2*x[4]*x[5]+0.6605*x[7]^2*x[4]*x[8]+0.0694*x[7]^2*x[10]*x[13]-0.3874*x[8]^2*x[2]*x[12]+0.4463*x[8]^2*x[2]*x[14]+0.4*x[8]^2*x[3]*x[6]+0.6451*x[8]^2*x[3]*x[7]+0.6542*x[8]^2*x[9]*x[11]-0.5641*x[8]^2*x[9]*x[13]-0.0251*x[8]^2*x[11]*x[14]+0.9235*x[9]^2*x[1]*x[13]-0.3477*x[9]^2*x[3]*x[10]-0.1543*x[9]^2*x[5]*x[15]-0.2546*x[9]^2*x[7]*x[13]+0.4395*x[9]^2*x[8]*x[10]+0.9475*x[10]^2*x[1]*x[6]-0.1094*x[10]^2*x[1]*x[14]+0.4901*x[11]^2*x[3]*x[5]-0.3361*x[11]^2*x[4]*x[13]+0.1104*x[11]^2*x[6]*x[9]-0.1678*x[11]^2*x[6]*x[14]-0.1139*x[11]^2*x[7]*x[8]+0.5295*x[12]^2*x[3]*x[10]+0.7703*x[12]^2*x[6]*x[13]+0.361*x[12]^2*x[7]*x[8]-0.4277*x[12]^2*x[11]*x[15]+0.7871*x[13]^2*x[1]*x[11]+0.366*x[13]^2*x[4]*x[11]-0.2532*x[13]^2*x[5]*x[7]+0.1253*x[13]^2*x[9]*x[10]-0.0558*x[13]^2*x[9]*x[11]+0.8443*x[13]^2*x[14]*x[15]+0.1672*x[15]^2*x[8]*x[10] <= 4.776)


 
