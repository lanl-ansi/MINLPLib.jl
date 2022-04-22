using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.0228*x[3]^2-0.1388*x[3]+0.4472*x[5]^2+0.8772*x[5]+0.1274*x[1]*x[3]-0.441*x[1]*x[4]-0.7287*x[2]*x[4]+0.3995*x[2]*x[7]+0.524*x[2]*x[8]+0.5703*x[2]*x[13]-0.5487*x[3]*x[4]+0.4182*x[3]*x[9]-0.8855*x[3]*x[10]+0.1233*x[4]*x[14]+0.6385*x[5]*x[6]-0.971*x[5]*x[10]+0.4364*x[5]*x[11]-0.2309*x[6]*x[7]-0.5065*x[6]*x[10]+0.708*x[6]*x[13]-0.5821*x[6]*x[14]-0.2659*x[7]*x[8]+0.7293*x[7]*x[10]-0.4341*x[7]*x[13]-0.236*x[8]*x[12]-0.7457*x[8]*x[14]-0.4827*x[9]*x[10]+0.7667*x[9]*x[11]+0.4951*x[9]*x[12]-0.0869*x[10]*x[13]+0.5019*x[11]*x[13]+0.7639*x[12]*x[14]+0.7535*x[1]+0.643*x[2]+0.5275*x[4]-0.1985*x[6]-0.8288*x[7]-0.7497*x[8]-0.206*x[9]-0.7408*x[10]+0.7198*x[11]+0.6487*x[12]+0.8799*x[13]+0.2736*x[14]+0.4078*x[2]^2*x[6]-0.3624*x[1]^2*x[11]-0.394*x[2]^2*x[9]-0.55*x[2]^2*x[12]-0.1399*x[2]^2*x[13]-0.7814*x[3]^2*x[12]+0.4517*x[3]^2*x[14]+0.3284*x[4]^2*x[5]-0.7395*x[5]^2*x[4]+0.4705*x[5]^2*x[10]+0.6947*x[5]^2*x[11]+0.8395*x[6]^2*x[14]+0.7666*x[8]^2*x[4]-0.6729*x[8]^2*x[9]-0.0665*x[8]^2*x[11]+0.6579*x[8]^2*x[13]+0.8791*x[9]^2*x[8]-0.7572*x[10]^2*x[9]+0.9173*x[10]^2*x[12]-0.0711*x[11]^2*x[2]-0.7124*x[11]^2*x[6]+0.9107*x[11]^2*x[9]-0.3299*x[11]^2*x[12]+0.5945*x[12]^2*x[6]+0.1121*x[12]^2*x[11]-0.5605*x[12]^2*x[13]-0.7636*x[13]^2*x[11]-0.2145*x[13]^2*x[12]+0.1733*x[13]^2*x[15]+0.5316*x[14]^2*x[6]+0.7495*x[14]^2*x[10]-0.5315*x[15]^2*x[4]-0.0858*x[15]^2*x[9]-0.8865*x[15]^2*x[14]-0.4659*x[15]+0.4829*x[1]*x[2]*x[5]-0.4504*x[1]*x[2]*x[12]-0.6249*x[1]*x[2]*x[14]+0.7311*x[1]*x[3]*x[4]-0.3998*x[1]*x[4]*x[11]-0.1034*x[1]*x[4]*x[13]+0.7485*x[1]*x[5]*x[6]+0.091*x[1]*x[5]*x[7]+0.6386*x[1]*x[5]*x[8]+0.9841*x[1]*x[5]*x[12]-0.5345*x[1]*x[5]*x[14]-0.415*x[1]*x[6]*x[10]-0.7166*x[1]*x[7]*x[9]+0.3225*x[1]*x[7]*x[12]-0.7735*x[1]*x[7]*x[13]-0.2995*x[1]*x[7]*x[14]-0.0736*x[1]*x[8]*x[11]-0.567*x[1]*x[10]*x[13]-0.8463*x[2]*x[3]*x[7]-0.6042*x[2]*x[3]*x[8]+0.6305*x[2]*x[3]*x[11]+0.9172*x[2]*x[4]*x[6]-0.8365*x[2]*x[4]*x[7]-0.2061*x[2]*x[5]*x[8]-0.0354*x[2]*x[5]*x[14]-0.2343*x[2]*x[6]*x[7]-0.0337*x[2]*x[6]*x[11]+0.6773*x[2]*x[7]*x[10]-0.0043*x[2]*x[7]*x[13]+0.9754*x[2]*x[7]*x[14]-0.7671*x[2]*x[8]*x[13]-0.5055*x[2]*x[9]*x[10]-0.3708*x[2]*x[9]*x[13]-0.3284*x[2]*x[10]*x[14]+0.4742*x[2]*x[10]*x[15]-0.2781*x[2]*x[12]*x[13]+0.633*x[2]*x[13]*x[14]+0.054*x[3]*x[4]*x[6]-0.5764*x[3]*x[4]*x[8]-0.9033*x[3]*x[4]*x[12]-0.8757*x[3]*x[4]*x[13]-0.4811*x[3]*x[4]*x[14]+0.3817*x[3]*x[5]*x[13]-0.1077*x[3]*x[5]*x[14]-0.0849*x[3]*x[6]*x[8]+0.1648*x[3]*x[6]*x[9]-0.1373*x[3]*x[6]*x[13]+0.6438*x[3]*x[6]*x[14]-0.1015*x[3]*x[6]*x[15]+0.2656*x[3]*x[7]*x[8]-0.9388*x[3]*x[7]*x[9]-0.689*x[3]*x[7]*x[13]+0.2887*x[3]*x[7]*x[15]-0.1027*x[3]*x[8]*x[10]-0.0947*x[3]*x[8]*x[11]-0.4565*x[3]*x[8]*x[12]+0.2319*x[3]*x[8]*x[13]-0.7192*x[3]*x[9]*x[13]+0.1004*x[3]*x[10]*x[12]+0.3215*x[3]*x[10]*x[14]-0.2*x[3]*x[11]*x[14]+0.4114*x[3]*x[11]*x[15]+0.1118*x[3]*x[12]*x[14]-0.5341*x[4]*x[5]*x[7]+0.8762*x[4]*x[5]*x[9]-0.8618*x[4]*x[5]*x[10]-0.4507*x[4]*x[5]*x[11]+0.306*x[4]*x[6]*x[9]-0.4679*x[4]*x[6]*x[12]-0.5106*x[4]*x[6]*x[14]-0.3493*x[4]*x[7]*x[10]+0.5569*x[4]*x[7]*x[11]-0.6385*x[4]*x[7]*x[14]+0.4437*x[4]*x[8]*x[11]-0.1348*x[4]*x[8]*x[13]+0.9505*x[4]*x[8]*x[14]+0.7375*x[4]*x[9]*x[10]-0.4046*x[4]*x[9]*x[11]+0.0331*x[4]*x[10]*x[14]-0.5516*x[4]*x[11]*x[13]-0.9678*x[4]*x[11]*x[14]-0.6997*x[4]*x[13]*x[14]-0.0778*x[5]*x[6]*x[8]-0.0244*x[5]*x[6]*x[10]+0.2147*x[5]*x[6]*x[15]-0.4906*x[5]*x[7]*x[9]-0.0413*x[5]*x[7]*x[10]-0.0828*x[5]*x[7]*x[11]+0.2723*x[5]*x[8]*x[11]-0.0524*x[5]*x[8]*x[12]-0.373*x[5]*x[8]*x[13]+0.7498*x[5]*x[9]*x[11]-0.739*x[5]*x[9]*x[12]+0.5561*x[5]*x[9]*x[14]+0.5763*x[5]*x[10]*x[13]+0.4965*x[5]*x[11]*x[13]+0.2964*x[5]*x[11]*x[15]+0.3081*x[5]*x[12]*x[15]-0.8404*x[6]*x[7]*x[10]-0.7509*x[6]*x[7]*x[11]-0.0515*x[6]*x[8]*x[10]+0.6365*x[6]*x[8]*x[15]-0.1473*x[6]*x[9]*x[11]+0.2211*x[6]*x[9]*x[14]-0.0381*x[6]*x[10]*x[13]+0.6738*x[6]*x[10]*x[14]+0.1051*x[6]*x[10]*x[15]-0.5238*x[6]*x[12]*x[13]+0.7485*x[7]*x[8]*x[10]-0.1796*x[7]*x[8]*x[12]-0.9657*x[7]*x[8]*x[13]+0.0837*x[7]*x[9]*x[11]-0.4384*x[7]*x[9]*x[12]-0.9921*x[7]*x[9]*x[14]+0.53*x[7]*x[10]*x[13]+0.2788*x[7]*x[10]*x[14]-0.5659*x[7]*x[11]*x[13]-0.6879*x[7]*x[11]*x[14]-0.0997*x[7]*x[12]*x[13]+0.5724*x[8]*x[9]*x[10]+0.4588*x[8]*x[9]*x[12]+0.1364*x[8]*x[9]*x[13]+0.7468*x[8]*x[11]*x[12]-0.6471*x[8]*x[11]*x[13]+0.1825*x[8]*x[12]*x[13]+0.4464*x[9]*x[10]*x[13]-0.5253*x[9]*x[10]*x[15]+0.1136*x[9]*x[11]*x[14]-0.8466*x[9]*x[12]*x[14]-0.8913*x[9]*x[12]*x[15]-0.151*x[10]*x[11]*x[13]-0.316*x[10]*x[11]*x[14]+0.0448*x[10]*x[12]*x[13]+0.7122*x[10]*x[13]*x[14]+0.3562*x[10]*x[13]*x[15])+obj == 0.0)
@NLconstraint(m, e2, 0.6888*x[5]-0.7924*x[5]^2+0.551*x[12]-0.3193*x[12]^2+0.9889*x[14]^2+0.993*x[14]+(-0.4203*x[1]*x[15])-0.9075*x[2]*x[4]-0.3011*x[2]*x[11]+0.8768*x[2]*x[13]-0.1674*x[2]*x[14]+0.0073*x[4]*x[5]-0.0082*x[4]*x[6]+0.7704*x[4]*x[8]+0.068*x[4]*x[12]-0.4731*x[5]*x[7]-0.4153*x[5]*x[14]+0.3111*x[6]*x[10]+0.7855*x[6]*x[12]+0.0602*x[7]*x[11]+0.5345*x[7]*x[13]+0.934*x[8]*x[13]-0.3504*x[9]*x[12]+0.8489*x[10]*x[14]+0.7095*x[1]+0.5753*x[2]-0.4795*x[4]+0.9551*x[6]+0.575*x[7]+0.9019*x[8]+0.7015*x[9]+0.1337*x[10]-0.19*x[11]+0.8163*x[13]+0.5463*x[15]+0.5684*x[2]^2*x[3]-0.3565*x[1]^2*x[12]+0.6683*x[2]^2*x[5]-0.5745*x[2]^2*x[6]+0.2694*x[2]^2*x[8]-0.8576*x[2]^2*x[13]-0.2634*x[2]^2*x[15]-0.637*x[3]^2*x[1]+0.5026*x[3]^2*x[5]+0.1839*x[3]^2*x[11]+0.3437*x[4]^2*x[3]-0.918*x[4]^2*x[5]-0.2833*x[4]^2*x[6]-0.2758*x[5]^2*x[3]-0.8662*x[5]^2*x[6]-0.7484*x[5]^2*x[9]-0.9848*x[6]^2*x[2]-0.0937*x[6]^2*x[10]+0.3656*x[6]^2*x[11]+0.5057*x[6]^2*x[14]-0.5064*x[7]^2*x[4]+0.7041*x[7]^2*x[8]+0.5434*x[7]^2*x[11]+0.5088*x[8]^2*x[2]-0.4662*x[8]^2*x[9]+0.4056*x[8]^2*x[14]-0.5774*x[9]^2*x[3]-0.8037*x[10]^2*x[3]-0.9936*x[11]^2*x[1]-0.013*x[11]^2*x[8]+0.1453*x[11]^2*x[9]+0.7824*x[11]^2*x[13]+0.1222*x[11]^2*x[14]-0.8047*x[12]^2*x[4]+0.4128*x[12]^2*x[6]-0.1324*x[12]^2*x[8]-0.5547*x[12]^2*x[9]-0.2856*x[12]^2*x[13]-0.1524*x[12]^2*x[14]-0.1292*x[13]^2*x[1]-0.5161*x[13]^2*x[2]-0.7623*x[13]^2*x[3]-0.7997*x[14]^2*x[6]-0.2389*x[14]^2*x[9]-0.602*x[15]^2*x[12]+0.9544*x[3]+(-0.7012*x[1]*x[2]*x[3])-0.888*x[1]*x[2]*x[6]-0.3978*x[1]*x[2]*x[12]+0.3095*x[1]*x[2]*x[14]-0.872*x[1]*x[3]*x[5]+0.8574*x[1]*x[3]*x[9]-0.3846*x[1]*x[4]*x[10]-0.4531*x[1]*x[4]*x[12]+0.6358*x[1]*x[4]*x[15]+0.0403*x[1]*x[5]*x[6]-0.417*x[1]*x[5]*x[10]-0.0267*x[1]*x[6]*x[12]+0.6871*x[1]*x[6]*x[13]-0.822*x[1]*x[7]*x[8]-0.4777*x[1]*x[7]*x[14]+0.7473*x[1]*x[11]*x[13]-0.0238*x[1]*x[11]*x[14]+0.7001*x[1]*x[12]*x[13]-0.8921*x[1]*x[12]*x[14]-0.9144*x[1]*x[12]*x[15]-0.8874*x[2]*x[3]*x[11]-0.4114*x[2]*x[3]*x[14]-0.0762*x[2]*x[4]*x[5]+0.3089*x[2]*x[4]*x[7]+0.0433*x[2]*x[4]*x[13]+0.9275*x[2]*x[5]*x[14]+0.8085*x[2]*x[5]*x[15]-0.3797*x[2]*x[6]*x[13]+0.5789*x[2]*x[7]*x[9]+0.0011*x[2]*x[7]*x[10]-0.2899*x[2]*x[7]*x[14]+0.7685*x[2]*x[8]*x[11]-0.876*x[2]*x[8]*x[12]+0.5873*x[2]*x[8]*x[13]-0.0485*x[2]*x[9]*x[10]+0.1704*x[2]*x[9]*x[11]+0.0079*x[2]*x[9]*x[12]+0.2053*x[2]*x[10]*x[11]-0.2267*x[2]*x[10]*x[12]+0.2811*x[2]*x[10]*x[13]+0.8337*x[2]*x[10]*x[14]-0.8032*x[2]*x[12]*x[13]-0.5394*x[2]*x[13]*x[15]-0.8402*x[3]*x[4]*x[5]+0.5047*x[3]*x[4]*x[7]+0.8803*x[3]*x[4]*x[8]+0.7535*x[3]*x[4]*x[9]+0.9513*x[3]*x[4]*x[11]-0.1959*x[3]*x[4]*x[12]+0.4542*x[3]*x[5]*x[6]-0.2799*x[3]*x[5]*x[9]+0.0385*x[3]*x[5]*x[11]+0.5261*x[3]*x[5]*x[14]+0.6988*x[3]*x[6]*x[7]-0.9861*x[3]*x[6]*x[9]+0.5538*x[3]*x[6]*x[10]+0.1455*x[3]*x[6]*x[12]+0.8555*x[3]*x[6]*x[13]+0.3892*x[3]*x[7]*x[14]+0.2838*x[3]*x[8]*x[9]+0.2189*x[3]*x[8]*x[13]-0.7825*x[3]*x[9]*x[11]-0.5699*x[3]*x[9]*x[13]+0.6469*x[3]*x[9]*x[14]+0.2087*x[3]*x[11]*x[14]-0.746*x[3]*x[12]*x[13]-0.5506*x[3]*x[12]*x[14]+0.5561*x[3]*x[13]*x[14]-0.8001*x[3]*x[14]*x[15]-0.4622*x[4]*x[5]*x[8]+0.7214*x[4]*x[5]*x[15]+0.6383*x[4]*x[6]*x[7]+0.6816*x[4]*x[6]*x[13]-0.0034*x[4]*x[7]*x[10]+0.5225*x[4]*x[7]*x[13]-0.203*x[4]*x[7]*x[14]+0.5394*x[4]*x[8]*x[9]+0.0242*x[4]*x[8]*x[11]+0.688*x[4]*x[8]*x[12]+0.7187*x[4]*x[9]*x[10]+0.7028*x[4]*x[10]*x[13]+0.2824*x[4]*x[11]*x[12]-0.1984*x[4]*x[11]*x[13]+0.4952*x[5]*x[6]*x[10]+0.385*x[5]*x[6]*x[14]-0.0316*x[5]*x[7]*x[9]-0.0831*x[5]*x[7]*x[13]+0.5033*x[5]*x[7]*x[14]+0.7665*x[5]*x[8]*x[9]-0.594*x[5]*x[8]*x[12]-0.7645*x[5]*x[9]*x[11]-0.73*x[5]*x[10]*x[11]-0.5832*x[5]*x[11]*x[13]+0.5759*x[5]*x[11]*x[14]+0.2047*x[5]*x[13]*x[14]+0.7845*x[6]*x[7]*x[8]-0.8016*x[6]*x[7]*x[10]-0.162*x[6]*x[7]*x[14]-0.2157*x[6]*x[8]*x[9]-0.6638*x[6]*x[8]*x[11]-0.1627*x[6]*x[8]*x[13]-0.5488*x[6]*x[9]*x[10]+0.3356*x[6]*x[9]*x[11]-0.4191*x[6]*x[9]*x[12]-0.8286*x[6]*x[9]*x[13]-0.6236*x[6]*x[10]*x[11]+0.5733*x[6]*x[10]*x[12]-0.4241*x[6]*x[12]*x[14]+0.6548*x[6]*x[13]*x[14]+0.8962*x[6]*x[13]*x[15]-0.8122*x[7]*x[8]*x[10]+0.8507*x[7]*x[9]*x[11]+0.9598*x[7]*x[9]*x[12]-0.0655*x[7]*x[9]*x[14]+0.3828*x[7]*x[10]*x[12]-0.3839*x[7]*x[10]*x[13]+0.0985*x[7]*x[10]*x[14]+0.0077*x[7]*x[11]*x[12]-0.7849*x[7]*x[11]*x[13]-0.7292*x[7]*x[12]*x[14]-0.7354*x[7]*x[14]*x[15]-0.1194*x[8]*x[9]*x[13]-0.0755*x[8]*x[9]*x[14]+0.1819*x[8]*x[10]*x[13]-0.3762*x[8]*x[11]*x[12]-0.0425*x[8]*x[13]*x[14]+0.9598*x[9]*x[10]*x[13]+0.5274*x[9]*x[10]*x[14]+0.7735*x[9]*x[11]*x[15]-0.8089*x[9]*x[12]*x[14]-0.1776*x[10]*x[11]*x[15]+0.276*x[11]*x[12]*x[14]+0.5279*x[13]*x[14]*x[15] <= 83.18)
@NLconstraint(m, e3, 0.7039*x[4]-0.1832*x[4]^2+0.6729*x[1]*x[9]-0.5859*x[2]*x[3]+0.715*x[2]*x[7]-0.9167*x[2]*x[8]-0.1239*x[2]*x[13]-0.2289*x[2]*x[14]-0.2208*x[3]*x[6]-0.4464*x[3]*x[11]-0.505*x[3]*x[14]-0.9176*x[4]*x[10]+0.8642*x[4]*x[13]+0.068*x[5]*x[6]+0.0039*x[5]*x[7]+0.869*x[6]*x[7]-0.6331*x[6]*x[11]-0.3275*x[6]*x[14]-0.7781*x[7]*x[11]+0.2138*x[7]*x[13]+0.6616*x[8]*x[9]-0.2532*x[9]*x[11]-0.7003*x[9]*x[12]-0.7501*x[9]*x[14]+0.5888*x[10]*x[12]-0.4436*x[11]*x[12]-0.6921*x[11]*x[14]+0.248*x[13]*x[14]+0.1952*x[13]*x[15]+0.4657*x[1]+0.3989*x[2]+0.4724*x[3]+0.2866*x[5]-0.2434*x[6]+0.7623*x[7]-0.3705*x[8]-0.848*x[9]-0.3496*x[10]+0.4839*x[11]+0.4605*x[12]+0.0064*x[13]+0.0088*x[14]+0.5185*x[15]+(-0.6455*x[1]^2*x[7])-0.2998*x[2]^2*x[9]-0.2161*x[2]^2*x[10]-0.3437*x[2]^2*x[13]-0.023*x[2]^2*x[14]+0.3541*x[2]^2*x[15]-0.7876*x[3]^2*x[2]+0.1529*x[3]^2*x[5]+0.0307*x[3]^2*x[9]+0.5534*x[4]^2*x[3]+0.498*x[4]^2*x[8]+0.7059*x[4]^2*x[9]+0.4416*x[4]^2*x[12]+0.0562*x[4]^2*x[13]+0.0011*x[6]^2*x[3]-0.8934*x[6]^2*x[8]+0.0693*x[6]^2*x[9]-0.2505*x[7]^2*x[14]-0.2965*x[8]^2*x[2]+0.1588*x[8]^2*x[3]+0.1904*x[8]^2*x[5]-0.3623*x[8]^2*x[7]-0.3732*x[8]^2*x[9]-0.3537*x[9]^2*x[6]-0.2446*x[9]^2*x[11]+0.6584*x[10]^2*x[3]+0.9393*x[10]^2*x[14]+0.5757*x[11]^2*x[2]+0.2906*x[13]^2*x[1]-0.7988*x[13]^2*x[7]-0.5858*x[13]^2*x[12]+0.3037*x[14]^2*x[3]+0.9387*x[14]^2*x[10]+0.2162*x[14]^2*x[12]-0.2342*x[15]^2*x[14]+(-0.3572*x[1]*x[2]*x[5])-0.6601*x[1]*x[2]*x[9]+0.5694*x[1]*x[2]*x[14]+0.8991*x[1]*x[3]*x[4]-0.7682*x[1]*x[3]*x[7]+0.9932*x[1]*x[3]*x[9]-0.6549*x[1]*x[3]*x[12]+0.2626*x[1]*x[3]*x[15]+0.164*x[1]*x[4]*x[8]-0.825*x[1]*x[5]*x[7]+0.134*x[1]*x[6]*x[12]+0.4242*x[1]*x[6]*x[13]+0.821*x[1]*x[7]*x[9]-0.3404*x[1]*x[7]*x[10]+0.8423*x[1]*x[7]*x[15]+0.3914*x[1]*x[8]*x[11]-0.7044*x[1]*x[9]*x[10]-0.234*x[1]*x[9]*x[15]+0.6506*x[1]*x[12]*x[13]-0.4972*x[1]*x[13]*x[14]-0.8184*x[2]*x[3]*x[9]+0.6144*x[2]*x[3]*x[10]+0.9255*x[2]*x[3]*x[11]-0.145*x[2]*x[4]*x[9]+0.5347*x[2]*x[4]*x[12]+0.8705*x[2]*x[5]*x[12]-0.0342*x[2]*x[5]*x[15]-0.3515*x[2]*x[6]*x[10]+0.2768*x[2]*x[6]*x[11]+0.2265*x[2]*x[7]*x[8]-0.4784*x[2]*x[7]*x[9]-0.197*x[2]*x[7]*x[13]-0.2477*x[2]*x[7]*x[14]+0.9666*x[2]*x[8]*x[13]+0.4334*x[2]*x[9]*x[11]-0.8843*x[2]*x[9]*x[14]-0.6234*x[2]*x[9]*x[15]-0.2818*x[2]*x[10]*x[13]-0.1752*x[2]*x[10]*x[14]+0.2034*x[2]*x[11]*x[13]+0.4227*x[2]*x[12]*x[13]-0.3492*x[2]*x[13]*x[14]-0.7463*x[3]*x[4]*x[7]-0.0721*x[3]*x[4]*x[8]-0.5742*x[3]*x[4]*x[11]+0.929*x[3]*x[5]*x[6]+0.6468*x[3]*x[5]*x[7]+0.0843*x[3]*x[5]*x[8]+0.2454*x[3]*x[5]*x[10]+0.7709*x[3]*x[5]*x[11]+0.5069*x[3]*x[5]*x[13]+0.322*x[3]*x[5]*x[14]+0.7621*x[3]*x[6]*x[8]+0.5905*x[3]*x[6]*x[10]+0.4413*x[3]*x[6]*x[15]+0.5232*x[3]*x[7]*x[15]-0.9551*x[3]*x[8]*x[10]-0.3257*x[3]*x[8]*x[11]-0.2579*x[3]*x[8]*x[12]+0.9319*x[3]*x[8]*x[15]+0.9559*x[3]*x[9]*x[11]-0.0556*x[3]*x[10]*x[14]+0.2085*x[3]*x[11]*x[14]-0.5365*x[3]*x[12]*x[15]+0.2708*x[4]*x[5]*x[11]+0.3721*x[4]*x[5]*x[14]-0.0328*x[4]*x[5]*x[15]+0.4298*x[4]*x[6]*x[10]-0.9834*x[4]*x[6]*x[11]+0.2935*x[4]*x[6]*x[13]+0.2132*x[4]*x[6]*x[14]-0.9273*x[4]*x[7]*x[8]-0.121*x[4]*x[7]*x[12]+0.1051*x[4]*x[8]*x[13]+0.4108*x[4]*x[8]*x[14]+0.5418*x[4]*x[9]*x[10]+0.0277*x[4]*x[9]*x[12]-0.3497*x[4]*x[9]*x[13]-0.4459*x[4]*x[10]*x[14]-0.0472*x[4]*x[11]*x[13]+0.3376*x[4]*x[12]*x[13]+0.1485*x[4]*x[12]*x[15]+0.2644*x[5]*x[6]*x[8]-0.4352*x[5]*x[6]*x[10]+0.8201*x[5]*x[6]*x[11]-0.0503*x[5]*x[6]*x[14]-0.4793*x[5]*x[7]*x[9]+0.4928*x[5]*x[7]*x[10]+0.0551*x[5]*x[7]*x[12]+0.2198*x[5]*x[7]*x[13]+0.132*x[5]*x[7]*x[14]+0.2861*x[5]*x[8]*x[9]-0.8566*x[5]*x[8]*x[11]+0.7843*x[5]*x[8]*x[13]+0.548*x[5]*x[8]*x[14]-0.1747*x[5]*x[8]*x[15]-0.181*x[5]*x[10]*x[14]-0.3612*x[5]*x[11]*x[13]+0.1007*x[5]*x[12]*x[13]+0.0897*x[5]*x[13]*x[14]+0.7432*x[6]*x[7]*x[9]-0.4891*x[6]*x[7]*x[13]-0.7349*x[6]*x[7]*x[14]-0.8049*x[6]*x[8]*x[13]-0.4181*x[6]*x[8]*x[14]-0.2806*x[6]*x[9]*x[11]+0.8293*x[6]*x[9]*x[13]-0.5618*x[6]*x[9]*x[14]+0.7606*x[6]*x[10]*x[11]-0.3768*x[6]*x[10]*x[14]-0.6297*x[7]*x[8]*x[11]+0.7759*x[7]*x[9]*x[12]-0.5844*x[7]*x[9]*x[14]-0.98*x[7]*x[10]*x[11]+0.323*x[7]*x[10]*x[13]+0.6528*x[7]*x[10]*x[14]+0.0979*x[7]*x[11]*x[14]+0.7295*x[7]*x[12]*x[14]+0.0669*x[7]*x[13]*x[15]-0.2557*x[7]*x[14]*x[15]+0.5039*x[8]*x[9]*x[12]+0.6088*x[8]*x[9]*x[14]-0.2724*x[8]*x[10]*x[12]+0.7124*x[8]*x[11]*x[14]+0.5682*x[8]*x[12]*x[14]-0.1136*x[8]*x[12]*x[15]-0.1349*x[8]*x[13]*x[15]+0.146*x[9]*x[10]*x[12]+0.3609*x[9]*x[10]*x[14]-0.3619*x[9]*x[12]*x[15]+0.0794*x[9]*x[13]*x[14]-0.9344*x[10]*x[11]*x[14]+0.8216*x[10]*x[13]*x[15]+0.7576*x[11]*x[12]*x[13]+0.7474*x[11]*x[13]*x[14]+0.0371*x[12]*x[13]*x[15] <= 93.356)
@NLconstraint(m, e4, 0.0357*x[3]-0.1857*x[3]^2+0.4397*x[4]^3+0.3544*x[4]+(-0.9768*x[6]^2)-0.7004*x[6]+(-0.3615*x[7]^3)-0.0176*x[7]+(-0.5193*x[12]^2)-0.5439*x[12]+0.3217*x[1]*x[3]-0.5724*x[1]*x[2]+0.1022*x[1]*x[9]-0.4298*x[1]*x[14]+0.2996*x[2]*x[7]+0.962*x[2]*x[8]-0.7104*x[2]*x[14]-0.6615*x[4]*x[6]+0.9798*x[4]*x[7]+0.1262*x[4]*x[8]-0.9119*x[4]*x[12]+0.5995*x[4]*x[14]+0.1954*x[5]*x[7]+0.5985*x[5]*x[9]+0.2466*x[5]*x[11]+0.6327*x[5]*x[13]-0.4846*x[5]*x[15]+0.0328*x[6]*x[10]-0.3007*x[7]*x[9]-0.1892*x[7]*x[15]+0.0554*x[8]*x[11]+0.9875*x[8]*x[12]+0.9043*x[9]*x[10]-0.6036*x[9]*x[12]-0.0281*x[13]*x[14]-0.0137*x[1]+0.8636*x[2]+0.4231*x[5]-0.6787*x[8]-0.692*x[9]-0.4704*x[10]+0.9921*x[11]+0.4004*x[13]-0.4612*x[14]-0.9798*x[15]+(-0.5406*x[1]^2*x[15])-0.595*x[2]^2*x[3]-0.5691*x[2]^2*x[6]+0.0854*x[2]^2*x[7]-0.4163*x[2]^2*x[10]-0.2441*x[3]^2*x[9]-0.0406*x[4]^2*x[3]-0.4437*x[4]^2*x[8]-0.1534*x[4]^2*x[10]+0.9424*x[4]^2*x[11]+0.9345*x[4]^2*x[14]+0.8042*x[5]^2*x[1]+0.3251*x[5]^2*x[10]+0.4767*x[6]^2*x[1]+0.4639*x[6]^2*x[9]+0.2705*x[6]^2*x[13]+0.3575*x[7]^2*x[6]-0.5508*x[7]^2*x[11]+0.9266*x[7]^2*x[15]+0.5782*x[8]^2*x[2]+0.4269*x[8]^2*x[6]+0.4189*x[8]^2*x[7]-0.5705*x[8]^2*x[13]-0.4407*x[9]^2*x[3]-0.2429*x[9]^2*x[10]+0.2375*x[12]^2*x[3]+0.0161*x[12]^2*x[4]-0.8899*x[12]^2*x[8]-0.1255*x[12]^2*x[9]+0.2095*x[12]^2*x[11]-0.0353*x[13]^2*x[5]-0.8726*x[13]^2*x[6]+0.9022*x[13]^2*x[10]+0.0245*x[13]^2*x[12]+0.3343*x[14]^2*x[7]+0.089*x[14]^2*x[12]+0.1791*x[1]*x[2]*x[5]+0.2211*x[1]*x[3]*x[4]+0.0564*x[1]*x[3]*x[5]-0.8881*x[1]*x[3]*x[9]-0.4488*x[1]*x[3]*x[10]+0.3121*x[1]*x[4]*x[6]+0.6316*x[1]*x[4]*x[13]-0.5977*x[1]*x[5]*x[6]+0.3525*x[1]*x[5]*x[7]+0.6882*x[1]*x[5]*x[10]+0.877*x[1]*x[5]*x[11]-0.5079*x[1]*x[5]*x[12]+0.295*x[1]*x[6]*x[7]+0.657*x[1]*x[6]*x[14]+0.3262*x[1]*x[7]*x[10]+0.9483*x[1]*x[7]*x[12]-0.3614*x[1]*x[8]*x[10]+0.8537*x[1]*x[8]*x[13]-0.3994*x[1]*x[9]*x[10]-0.7083*x[1]*x[9]*x[14]-0.8846*x[1]*x[10]*x[11]+0.7497*x[1]*x[10]*x[13]+0.5993*x[2]*x[3]*x[7]-0.8056*x[2]*x[3]*x[8]+0.2242*x[2]*x[4]*x[5]+0.9162*x[2]*x[4]*x[8]-0.5718*x[2]*x[4]*x[12]+0.4941*x[2]*x[5]*x[7]+0.3342*x[2]*x[5]*x[12]-0.4356*x[2]*x[5]*x[13]+0.0273*x[2]*x[7]*x[11]+0.7548*x[2]*x[7]*x[12]-0.3396*x[2]*x[7]*x[13]+0.0704*x[2]*x[7]*x[14]+0.485*x[2]*x[7]*x[15]-0.455*x[2]*x[8]*x[9]+0.0363*x[2]*x[9]*x[10]-0.7254*x[2]*x[9]*x[12]+0.6165*x[2]*x[11]*x[13]-0.4172*x[2]*x[11]*x[14]-0.5753*x[2]*x[12]*x[13]-0.8164*x[3]*x[4]*x[5]+0.2386*x[3]*x[4]*x[6]-0.1008*x[3]*x[4]*x[8]-0.7992*x[3]*x[4]*x[14]-0.2832*x[3]*x[5]*x[7]+0.9013*x[3]*x[5]*x[8]-0.8407*x[3]*x[5]*x[12]-0.9973*x[3]*x[5]*x[15]-0.8611*x[3]*x[6]*x[9]-0.4458*x[3]*x[6]*x[10]-0.5497*x[3]*x[6]*x[11]-0.6199*x[3]*x[6]*x[14]+0.1184*x[3]*x[6]*x[15]+0.1374*x[3]*x[7]*x[10]+0.3266*x[3]*x[7]*x[12]+0.9106*x[3]*x[7]*x[14]+0.5251*x[3]*x[8]*x[9]-0.8568*x[3]*x[8]*x[10]+0.8797*x[3]*x[8]*x[14]+0.7652*x[3]*x[9]*x[10]+0.1662*x[3]*x[9]*x[14]+0.6006*x[3]*x[10]*x[12]+0.2645*x[3]*x[12]*x[13]+0.2142*x[3]*x[12]*x[15]+0.2238*x[3]*x[13]*x[14]-0.7398*x[3]*x[13]*x[15]+0.13*x[4]*x[5]*x[13]-0.2122*x[4]*x[5]*x[14]-0.7596*x[4]*x[6]*x[8]-0.9055*x[4]*x[6]*x[11]-0.9534*x[4]*x[6]*x[12]+0.9142*x[4]*x[6]*x[14]-0.4856*x[4]*x[6]*x[15]-0.5541*x[4]*x[7]*x[9]+0.8241*x[4]*x[7]*x[10]+0.3059*x[4]*x[7]*x[12]+0.9639*x[4]*x[7]*x[13]+0.2029*x[4]*x[7]*x[14]+0.1183*x[4]*x[8]*x[9]-0.2217*x[4]*x[8]*x[12]+0.7898*x[4]*x[9]*x[11]-0.0545*x[4]*x[10]*x[12]+0.9286*x[4]*x[10]*x[13]+0.7712*x[4]*x[11]*x[14]+0.5034*x[4]*x[11]*x[15]+0.4168*x[4]*x[12]*x[14]-0.3175*x[5]*x[6]*x[8]-0.0194*x[5]*x[6]*x[11]-0.6415*x[5]*x[6]*x[12]-0.0729*x[5]*x[7]*x[11]+0.3522*x[5]*x[8]*x[10]+0.3798*x[5]*x[9]*x[12]-0.2421*x[5]*x[10]*x[11]-0.3778*x[5]*x[10]*x[12]+0.0101*x[5]*x[11]*x[13]-0.819*x[5]*x[11]*x[15]-0.8305*x[5]*x[12]*x[14]+0.8167*x[5]*x[12]*x[15]-0.946*x[6]*x[7]*x[8]-0.7534*x[6]*x[8]*x[12]-0.3349*x[6]*x[9]*x[11]+0.4581*x[6]*x[9]*x[12]-0.772*x[6]*x[11]*x[13]-0.1844*x[6]*x[11]*x[15]+0.8987*x[6]*x[12]*x[13]+0.1684*x[6]*x[12]*x[15]-0.2098*x[7]*x[8]*x[9]-0.2858*x[7]*x[8]*x[11]+0.4471*x[7]*x[8]*x[12]+0.6957*x[7]*x[9]*x[11]-0.3989*x[7]*x[9]*x[15]+0.9298*x[7]*x[10]*x[11]-0.3741*x[7]*x[10]*x[12]-0.0843*x[7]*x[11]*x[12]-0.0498*x[7]*x[14]*x[15]-0.026*x[8]*x[9]*x[13]+0.2237*x[8]*x[9]*x[14]+0.6105*x[8]*x[10]*x[11]+0.9825*x[8]*x[12]*x[13]+0.124*x[8]*x[12]*x[14]-0.9016*x[8]*x[12]*x[15]-0.1099*x[8]*x[13]*x[15]-0.3797*x[8]*x[14]*x[15]-0.2419*x[9]*x[10]*x[12]+0.0228*x[9]*x[12]*x[15]+0.4542*x[10]*x[11]*x[12]-0.5921*x[10]*x[11]*x[15]-0.4367*x[10]*x[12]*x[14]-0.194*x[11]*x[12]*x[13]-0.8247*x[11]*x[12]*x[15]+0.0047*x[11]*x[13]*x[14]-0.475*x[12]*x[13]*x[14]+0.8363*x[12]*x[14]*x[15] <= 50.183)

 
