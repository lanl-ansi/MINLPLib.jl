using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.019*x[2]*x[5]-0.0968*x[1]*x[5]-1.6112*x[2]*x[11]+1.2329*x[2]*x[14]+0.9699*x[2]*x[20]-1.5505*x[3]*x[6]-1.6999*x[3]*x[9]-0.3984*x[3]*x[15]+0.836*x[3]*x[19]+0.2912*x[4]*x[10]+1.7388*x[4]*x[11]-1.206*x[4]*x[17]+1.2381*x[4]*x[18]+1.7742*x[5]*x[6]+0.5541*x[5]*x[7]-1.8546*x[5]*x[9]+1.0695*x[5]*x[15]-1.2672*x[5]*x[18]-0.0252*x[5]*x[19]-0.0356*x[6]*x[10]+0.9315*x[6]*x[12]-1.4149*x[6]*x[13]-1.1071*x[6]*x[15]+1.9037*x[6]*x[16]-0.4486*x[6]*x[18]-1.9825*x[7]*x[7]+0.3808*x[7]*x[10]+0.0296*x[7]*x[12]-1.2083*x[7]*x[14]+0.9209*x[7]*x[15]-1.696*x[7]*x[18]+1.0249*x[8]*x[12]+0.1782*x[8]*x[13]-1.1095*x[8]*x[19]-0.2804*x[8]*x[20]-0.7257*x[9]*x[10]-0.1062*x[9]*x[13]-0.2519*x[9]*x[15]-1.2305*x[9]*x[17]-1.4443*x[10]*x[13]-1.5032*x[10]*x[20]+1.037*x[11]*x[11]+0.248*x[11]*x[16]-1.5743*x[12]*x[15]+0.0408*x[12]*x[17]+1.6914*x[12]*x[19]-0.4679*x[12]*x[20]+1.4078*x[14]*x[15]+1.7198*x[14]*x[19]+1.9705*x[15]*x[18]+0.1781*x[16]*x[19]+1.3298*x[18]*x[19]+0.5243*x[1]+0.0161*x[2]+0.4329*x[3]+0.5612*x[4]+0.7646*x[5]+0.0567*x[6]+0.9825*x[7]-0.0281*x[8]-0.31*x[9]-0.7647*x[10]+0.3235*x[11]-0.4458*x[12]-0.0934*x[13]-0.4116*x[14]+0.3824*x[15]-0.9968*x[16]+0.877*x[17]-0.0841*x[18]+0.3932*x[19]+0.7865*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.6434*x[1]*x[4]+0.8617*x[1]*x[8]-0.6417*x[2]*x[2]+1.2632*x[2]*x[5]+0.0073*x[2]*x[7]-0.1072*x[2]*x[9]+1.924*x[2]*x[10]+1.1695*x[2]*x[13]-0.1346*x[3]*x[4]-1.9076*x[3]*x[5]-1.1864*x[3]*x[7]-0.8328*x[3]*x[11]+0.6038*x[3]*x[12]+1.392*x[3]*x[13]+0.4058*x[4]*x[9]-1.393*x[4]*x[18]+0.4484*x[5]*x[6]+0.6118*x[5]*x[9]+1.6484*x[5]*x[13]-0.4403*x[5]*x[15]+1.6907*x[5]*x[18]-0.561*x[5]*x[19]-1.3311*x[6]*x[7]-1.5362*x[6]*x[11]-0.4433*x[6]*x[16]+0.9296*x[6]*x[18]+1.4541*x[7]*x[8]+0.0458*x[7]*x[10]+0.9448*x[7]*x[16]+1.7974*x[7]*x[17]-1.681*x[7]*x[18]+1.314*x[7]*x[19]+1.0809*x[8]*x[15]+1.5359*x[8]*x[17]-0.6013*x[9]*x[12]-1.7336*x[9]*x[17]-1.9172*x[9]*x[19]+1.8212*x[10]*x[18]-0.5112*x[10]*x[19]+1.095*x[11]*x[11]-1.5031*x[11]*x[12]+1.1504*x[11]*x[14]-0.8093*x[11]*x[15]-1.8985*x[11]*x[16]+1.1333*x[11]*x[19]+1.2141*x[12]*x[14]-1.1421*x[12]*x[18]+1.9817*x[12]*x[19]+1.1548*x[14]*x[18]-0.3796*x[16]*x[18]+0.8706*x[16]*x[19]-0.569*x[16]*x[20]+0.733*x[1]-0.6901*x[2]+0.2645*x[3]-0.1081*x[4]-0.5496*x[5]-0.1118*x[6]+0.1489*x[7]-0.5541*x[8]-0.8412*x[9]+0.7228*x[10]+0.8124*x[11]-0.0281*x[12]+0.9592*x[13]-0.0044*x[14]+0.5196*x[15]+0.9777*x[16]-0.9016*x[17]-0.7199*x[18]-0.8327*x[19]+0.8309*x[20] <= 14.478)
@NLconstraint(m, e3, 0.7051*x[1]*x[6]+0.8303*x[1]*x[8]-0.9291*x[1]*x[15]-1.9165*x[1]*x[19]-0.3799*x[2]*x[6]-0.468*x[2]*x[9]+0.2723*x[3]*x[4]-1.7136*x[3]*x[10]+1.119*x[3]*x[11]-0.1442*x[3]*x[13]-1.4508*x[3]*x[15]-0.8929*x[4]*x[5]-1.3975*x[4]*x[7]-0.8814*x[4]*x[12]-0.2428*x[4]*x[15]+0.4537*x[4]*x[18]+1.1625*x[5]*x[9]-0.1811*x[5]*x[13]+1.2426*x[5]*x[16]+0.1482*x[5]*x[17]-1.0249*x[5]*x[20]+1.9081*x[6]*x[12]-1.661*x[6]*x[16]+1.456*x[6]*x[17]+1.7427*x[6]*x[20]+1.2892*x[7]*x[10]-0.7237*x[7]*x[13]-1.3702*x[7]*x[18]-0.6032*x[8]*x[11]-0.2235*x[8]*x[12]-0.8152*x[8]*x[14]+1.232*x[8]*x[15]-0.2989*x[9]*x[10]+1.3364*x[9]*x[11]-0.9365*x[9]*x[12]-1.7538*x[9]*x[14]-0.1458*x[9]*x[15]+0.0344*x[9]*x[17]+1.9748*x[9]*x[19]+1.8082*x[9]*x[20]-0.4225*x[10]*x[14]+1.2211*x[10]*x[15]-1.0167*x[11]*x[13]+1.213*x[11]*x[16]+0.0351*x[11]*x[17]+1.108*x[12]*x[12]+0.5613*x[12]*x[20]+1.8044*x[13]*x[18]+1.205*x[14]*x[16]-1.2612*x[15]*x[16]+1.6588*x[15]*x[20]+0.3478*x[19]*x[20]-0.0498*x[1]+0.5861*x[2]-0.2136*x[3]-0.1092*x[4]+0.4325*x[5]-0.5508*x[6]-0.2616*x[7]+0.102*x[8]-0.3562*x[9]+0.4302*x[10]-0.3349*x[11]-0.4784*x[12]+0.3387*x[13]+0.6014*x[14]+0.8598*x[15]-0.4367*x[16]-0.8786*x[17]-0.0735*x[18]+0.0852*x[19]-0.7136*x[20] <= 2.724)
@NLconstraint(m, e4, 0.6277*x[1]*x[10]-0.7989*x[1]*x[11]-0.7186*x[1]*x[13]+0.7138*x[2]*x[3]+1.6219*x[2]*x[4]+0.2432*x[2]*x[5]-0.4343*x[2]*x[13]+1.0216*x[2]*x[15]+0.6683*x[3]*x[6]-0.5664*x[3]*x[9]+1.3345*x[3]*x[15]+1.799*x[3]*x[16]+0.2478*x[3]*x[17]-0.96*x[3]*x[20]-1.0823*x[4]*x[5]-1.8152*x[4]*x[7]-1.1558*x[4]*x[10]-0.1941*x[4]*x[13]-1.6406*x[4]*x[14]-1.6814*x[4]*x[16]+1.6499*x[4]*x[17]+0.4476*x[4]*x[18]-0.0812*x[5]*x[5]+0.6229*x[5]*x[9]-0.7785*x[5]*x[16]-0.2674*x[5]*x[18]-0.9863*x[6]*x[13]+1.1359*x[6]*x[14]+0.0338*x[6]*x[16]+1.2653*x[6]*x[18]-0.0143*x[7]*x[9]+0.8039*x[7]*x[10]-0.4661*x[7]*x[15]+0.3485*x[8]*x[14]-0.7965*x[8]*x[15]+1.2329*x[8]*x[18]+1.4286*x[9]*x[10]-1.3614*x[10]*x[12]+1.1205*x[10]*x[16]-0.8609*x[10]*x[19]+1.8086*x[11]*x[13]+1.7177*x[12]*x[12]-0.052*x[12]*x[17]+1.6874*x[12]*x[19]+0.9085*x[13]*x[14]-0.7556*x[13]*x[16]+0.5143*x[14]*x[16]-1.1915*x[14]*x[17]+0.0497*x[16]*x[16]+1.243*x[16]*x[18]+0.4374*x[16]*x[20]-0.874*x[17]*x[18]-0.0056*x[1]-0.798*x[2]+0.0628*x[3]+0.5782*x[4]+0.0557*x[5]-0.3689*x[6]+0.9882*x[7]+0.5255*x[8]+0.8167*x[9]+0.2771*x[10]+0.4786*x[11]+0.2945*x[12]+0.9802*x[13]-0.5921*x[14]-0.9054*x[15]+0.0806*x[16]-0.3999*x[17]+0.5985*x[18]+0.7084*x[19]+0.6289*x[20] <= 8.658)
@NLconstraint(m, e5, 1.5494*x[1]*x[4]-1.1713*x[1]*x[8]-1.7394*x[1]*x[11]+1.7073*x[1]*x[18]-1.1381*x[2]*x[2]-1.1354*x[2]*x[7]-1.1694*x[2]*x[8]+1.9285*x[2]*x[9]+0.6191*x[2]*x[11]+1.8361*x[2]*x[12]-0.285*x[2]*x[13]-0.3714*x[3]*x[3]-0.2893*x[3]*x[4]-1.2398*x[3]*x[8]-0.2429*x[3]*x[13]+0.4751*x[3]*x[17]-0.8007*x[4]*x[4]+1.577*x[4]*x[9]+1.331*x[4]*x[13]-1.4376*x[4]*x[14]+0.6725*x[4]*x[15]+1.28*x[4]*x[19]+0.1441*x[5]*x[5]+0.26*x[5]*x[6]+1.8201*x[5]*x[8]+0.788*x[5]*x[13]-1.6822*x[5]*x[15]-1.8239*x[5]*x[16]+1.199*x[5]*x[18]+1.3769*x[5]*x[19]-1.2389*x[5]*x[20]+0.9876*x[6]*x[7]-1.9448*x[6]*x[9]-1.2205*x[6]*x[16]-0.4829*x[7]*x[10]-0.1257*x[7]*x[14]-1.3724*x[7]*x[18]+1.1323*x[8]*x[17]+1.1049*x[9]*x[10]+1.3914*x[9]*x[11]+0.1408*x[9]*x[18]-0.0109*x[9]*x[19]+1.1515*x[9]*x[20]+0.3697*x[10]*x[13]+0.1108*x[10]*x[14]-0.5717*x[10]*x[15]+1.7768*x[11]*x[11]-0.2927*x[11]*x[16]-0.4992*x[13]*x[13]-1.6395*x[14]*x[18]+0.2461*x[15]*x[17]+0.0095*x[17]*x[18]-0.5025*x[1]-0.0754*x[2]+0.8281*x[3]+0.8313*x[4]+0.3343*x[5]-0.8296*x[6]+0.521*x[7]-0.0055*x[8]+0.9875*x[9]+0.6081*x[10]+0.5566*x[11]-0.9469*x[12]-0.3913*x[13]-0.5079*x[14]+0.6493*x[15]+0.5485*x[16]+0.321*x[17]-0.0856*x[18]-0.3741*x[19]+0.4744*x[20] <= 46.624)
@NLconstraint(m, e6, 1.8966*x[1]*x[10]-1.434*x[1]*x[13]+0.5384*x[1]*x[14]+1.6748*x[2]*x[3]+0.4926*x[2]*x[4]-1.5224*x[2]*x[5]-1.7679*x[2]*x[6]-1.8951*x[2]*x[9]+0.1708*x[2]*x[10]+1.2981*x[2]*x[16]+0.0649*x[2]*x[20]+0.4207*x[3]*x[5]-1.7222*x[3]*x[8]-1.0983*x[3]*x[9]-1.9444*x[3]*x[11]+0.2757*x[3]*x[16]+0.2367*x[3]*x[19]+1.9704*x[4]*x[17]+0.1286*x[4]*x[19]+0.0922*x[5]*x[10]+0.2523*x[5]*x[11]+0.4057*x[5]*x[15]+0.8336*x[5]*x[16]-0.4245*x[5]*x[19]+0.8327*x[5]*x[20]+0.3501*x[6]*x[10]+1.2641*x[6]*x[11]-1.974*x[6]*x[13]+0.5202*x[6]*x[18]-1.2313*x[7]*x[8]-1.9528*x[7]*x[9]-1.4012*x[7]*x[15]+1.4377*x[7]*x[17]-0.96*x[7]*x[18]+0.3448*x[7]*x[20]+0.8537*x[8]*x[11]+0.1492*x[8]*x[15]+1.2016*x[8]*x[16]-0.7675*x[8]*x[19]-0.723*x[9]*x[9]+0.8379*x[9]*x[10]-0.2274*x[9]*x[11]+0.1129*x[10]*x[12]-1.5289*x[10]*x[17]-0.3512*x[11]*x[15]+0.3615*x[12]*x[13]-1.4127*x[12]*x[16]+1.6795*x[12]*x[18]+1.863*x[13]*x[18]-0.3688*x[14]*x[20]-1.7798*x[16]*x[17]+1.1077*x[17]*x[17]-0.6683*x[1]+0.8057*x[2]+0.8797*x[3]-0.305*x[4]-0.4579*x[5]-0.3178*x[6]-0.9377*x[7]-0.5977*x[8]-0.0137*x[9]+0.8636*x[10]+0.0357*x[11]+0.3544*x[12]+0.4231*x[13]-0.7004*x[14]-0.0176*x[15]-0.6787*x[16]-0.692*x[17]-0.4704*x[18]+0.9921*x[19]-0.5439*x[20] <= 70.022)
@NLconstraint(m, e7, 0.0073*x[1]*x[6]-0.1704*x[1]*x[5]+0.336*x[1]*x[8]-1.999*x[1]*x[10]-1.5303*x[1]*x[14]-1.8672*x[2]*x[14]-1.0732*x[2]*x[17]-0.9579*x[2]*x[18]-1.9*x[3]*x[7]-1.316*x[3]*x[9]+0.71*x[3]*x[10]-1.7639*x[3]*x[12]+0.4591*x[3]*x[13]+0.1556*x[3]*x[14]-0.6333*x[3]*x[17]-1.7287*x[3]*x[19]+0.3157*x[4]*x[7]+1.8803*x[4]*x[15]+0.4027*x[4]*x[18]+0.6603*x[4]*x[20]-0.5835*x[5]*x[6]-1.229*x[5]*x[10]-1.7479*x[5]*x[12]-0.3705*x[6]*x[8]-0.6542*x[6]*x[11]-0.542*x[6]*x[15]+0.6316*x[7]*x[10]-1.2993*x[7]*x[11]+1.4747*x[7]*x[12]-0.7173*x[7]*x[17]-0.2957*x[8]*x[8]-0.6847*x[8]*x[14]+1.7548*x[9]*x[9]-1.4436*x[9]*x[13]+0.084*x[9]*x[14]+0.9714*x[9]*x[15]+0.4473*x[10]*x[12]+0.2454*x[10]*x[13]+1.7329*x[10]*x[17]-0.7656*x[11]*x[13]-1.8474*x[11]*x[18]-0.5313*x[12]*x[13]-1.7689*x[12]*x[14]-1.0778*x[12]*x[20]+0.4366*x[13]*x[13]+1.5299*x[13]*x[15]+1.3071*x[13]*x[17]-0.5123*x[13]*x[19]-1.626*x[14]*x[15]-1.5707*x[14]*x[16]+1.8215*x[16]*x[18]+1.417*x[18]*x[20]-0.7191*x[1]-0.8861*x[2]-0.7717*x[3]-0.3953*x[4]-0.3941*x[5]+0.6865*x[6]-0.0025*x[7]-0.5174*x[8]+0.4504*x[9]+0.5266*x[10]-0.7798*x[11]+0.6955*x[12]-0.0077*x[13]+0.746*x[14]-0.75*x[15]+0.8265*x[16]+0.5748*x[17]-0.1888*x[18]-0.679*x[19]+0.4868*x[20] <= 45.272)
@NLconstraint(m, e8, 1.8291*x[1]*x[16]-0.6389*x[1]*x[13]-1.6766*x[1]*x[17]+0.0162*x[1]*x[18]+1.8758*x[2]*x[5]+0.6475*x[2]*x[12]-1.6428*x[2]*x[17]+0.9718*x[2]*x[18]-1.8731*x[3]*x[6]+0.0869*x[3]*x[11]-0.0148*x[3]*x[16]-0.8601*x[3]*x[18]-0.8756*x[4]*x[8]-0.1148*x[4]*x[10]-0.7208*x[4]*x[15]+1.1648*x[4]*x[17]-0.3267*x[4]*x[18]+0.4908*x[4]*x[19]+0.3549*x[5]*x[6]-0.5989*x[5]*x[9]-0.199*x[5]*x[18]+0.2906*x[5]*x[19]+0.4275*x[6]*x[7]+1.1392*x[6]*x[9]+1.9126*x[6]*x[10]+1.2019*x[6]*x[11]-1.2498*x[6]*x[12]-0.9303*x[6]*x[13]-1.3037*x[6]*x[15]+0.4231*x[6]*x[18]+0.947*x[7]*x[8]+1.4768*x[7]*x[12]-1.304*x[7]*x[13]-0.1041*x[7]*x[14]+0.8453*x[8]*x[11]-1.319*x[9]*x[10]+1.2128*x[9]*x[11]+0.206*x[9]*x[13]+0.935*x[9]*x[15]+0.373*x[9]*x[16]+1.6811*x[10]*x[12]-1.7746*x[10]*x[14]+0.0071*x[10]*x[16]-1.0344*x[10]*x[17]+1.8916*x[11]*x[13]+0.5322*x[11]*x[19]+1.7688*x[12]*x[12]-1.479*x[12]*x[15]-1.3582*x[12]*x[20]-1.554*x[13]*x[17]-0.6314*x[13]*x[18]-1.0667*x[18]*x[19]-0.1978*x[1]-0.2542*x[2]+0.9243*x[3]-0.8083*x[4]-0.2653*x[5]+0.077*x[6]-0.7158*x[7]-0.5911*x[8]+0.0418*x[9]+0.9632*x[10]+0.6341*x[11]+0.3428*x[12]+0.588*x[13]+0.3858*x[14]-0.1539*x[15]+0.5058*x[16]+0.8618*x[17]-0.0435*x[18]-0.9803*x[19]+0.4326*x[20] <= 29.032)
@NLconstraint(m, e9, 1.6084*x[1]*x[5]+1.5769*x[1]*x[8]-0.4335*x[1]*x[11]+1.591*x[1]*x[12]-1.1936*x[2]*x[7]-0.6744*x[2]*x[8]+0.5474*x[2]*x[12]+0.7814*x[2]*x[18]-1.2403*x[3]*x[5]-0.2251*x[3]*x[6]+0.3868*x[3]*x[8]-0.501*x[3]*x[9]-1.9156*x[3]*x[14]+0.7318*x[3]*x[15]+1.9438*x[3]*x[18]+1.6676*x[4]*x[10]+0.249*x[4]*x[12]-1.4869*x[4]*x[15]+0.2614*x[4]*x[17]-1.7166*x[5]*x[8]-0.6001*x[5]*x[9]+0.7207*x[5]*x[17]+0.0074*x[6]*x[11]-0.8998*x[6]*x[13]+1.934*x[6]*x[17]-0.4512*x[6]*x[20]+1.1487*x[7]*x[14]-1.1084*x[7]*x[15]-1.8187*x[7]*x[16]-0.3215*x[8]*x[10]+1.7394*x[8]*x[14]-0.2547*x[8]*x[16]-1.4746*x[8]*x[18]-1.815*x[8]*x[19]+0.9783*x[9]*x[10]+0.8873*x[9]*x[14]-0.4882*x[9]*x[16]+1.1251*x[9]*x[17]-1.6229*x[10]*x[17]-0.7819*x[10]*x[20]-1.4601*x[12]*x[13]+1.8317*x[12]*x[14]+1.5228*x[12]*x[19]+1.4149*x[13]*x[16]-0.7104*x[13]*x[19]+0.6593*x[14]*x[14]-0.2518*x[14]*x[18]+1.6544*x[14]*x[19]+1.0191*x[15]*x[17]+0.7427*x[15]*x[19]+0.2196*x[16]*x[19]-1.7579*x[17]*x[19]-0.6293*x[1]+0.7333*x[2]+0.4114*x[3]+0.0087*x[4]+0.4926*x[5]-0.1924*x[6]+0.7056*x[7]-0.2025*x[8]-0.6442*x[9]-0.4869*x[10]+0.2584*x[11]-0.1511*x[12]+0.2036*x[13]+0.494*x[14]+0.4887*x[15]-0.7995*x[16]-0.5137*x[17]+0.2114*x[18]+0.0789*x[19]+0.5521*x[20] <= 43.75)
@NLconstraint(m, e10, 1.9139*x[2]*x[3]-1.8739*x[2]*x[5]+0.5059*x[2]*x[6]-0.9269*x[2]*x[7]+1.8331*x[2]*x[10]-0.8556*x[2]*x[12]+0.6737*x[2]*x[14]+0.8085*x[3]*x[4]-1.808*x[3]*x[8]-1.2523*x[3]*x[9]+0.2843*x[3]*x[12]-1.3187*x[3]*x[15]+1.0101*x[4]*x[4]-0.1757*x[4]*x[5]-1.9055*x[4]*x[8]+0.0355*x[4]*x[10]-1.7985*x[4]*x[15]+0.0718*x[5]*x[6]+1.3991*x[5]*x[7]-0.8574*x[5]*x[8]+1.8252*x[5]*x[10]-1.6809*x[5]*x[14]+1.1133*x[5]*x[17]+0.0605*x[5]*x[20]-0.2207*x[6]*x[8]-1.0345*x[6]*x[11]+0.0275*x[6]*x[15]-1.9515*x[6]*x[20]+0.2306*x[7]*x[12]-0.0252*x[7]*x[14]-1.6976*x[7]*x[16]+1.9596*x[7]*x[17]-1.0347*x[8]*x[8]-1.9923*x[8]*x[9]-1.2553*x[8]*x[20]+1.3781*x[9]*x[15]+1.864*x[9]*x[18]+0.9761*x[10]*x[11]+0.6607*x[10]*x[12]+0.4912*x[11]*x[11]+0.6596*x[11]*x[15]+0.601*x[11]*x[16]+1.2684*x[11]*x[17]+1.3209*x[11]*x[19]+1.5568*x[12]*x[20]-1.0228*x[13]*x[17]-1.5278*x[14]*x[15]-1.4518*x[15]*x[17]+1.1851*x[15]*x[20]-1.205*x[16]*x[17]-0.9617*x[16]*x[18]-0.5606*x[18]*x[20]+0.1048*x[2]+0.1073*x[3]-0.6199*x[4]+0.8322*x[5]+0.1098*x[6]+0.9752*x[7]-0.9703*x[8]+0.0088*x[9]-0.7103*x[10]+0.677*x[11]+0.6921*x[12]-0.7641*x[13]+0.9954*x[14]-0.0397*x[15]-0.1343*x[16]+0.3851*x[17]+0.5156*x[18]-0.7568*x[19]+0.4062*x[20]+0.7074*x[1] <= 43.632)
@NLconstraint(m, e11, 1.438*x[1]*x[14]-1.3744*x[1]*x[10]+0.9584*x[1]*x[16]-0.6552*x[2]*x[6]+1.0726*x[2]*x[8]-1.1332*x[2]*x[14]-1.8867*x[2]*x[19]+1.672*x[3]*x[4]+0.1305*x[3]*x[18]+1.9301*x[3]*x[19]+1.4231*x[3]*x[20]+0.9463*x[4]*x[6]+0.0565*x[4]*x[8]+0.2361*x[4]*x[10]-1.302*x[4]*x[13]+0.5042*x[4]*x[16]-1.4833*x[4]*x[17]+0.3774*x[4]*x[18]+1.691*x[4]*x[20]-1.2473*x[5]*x[17]+1.3747*x[5]*x[18]+1.4764*x[6]*x[10]-1.0138*x[6]*x[13]+0.0726*x[6]*x[16]+0.7879*x[6]*x[19]+0.3502*x[7]*x[9]+1.32*x[7]*x[13]+0.5105*x[7]*x[15]-0.9221*x[7]*x[17]+0.7504*x[7]*x[19]+1.2247*x[8]*x[13]-0.4128*x[8]*x[14]-1.2751*x[8]*x[16]-0.4075*x[9]*x[11]+1.5194*x[9]*x[12]-0.703*x[9]*x[14]-1.2855*x[9]*x[18]-1.4909*x[9]*x[19]+0.4073*x[10]*x[13]-1.2763*x[10]*x[16]-1.2617*x[11]*x[16]-0.1022*x[11]*x[20]+1.3024*x[12]*x[14]+0.2727*x[12]*x[16]-1.88*x[12]*x[17]-1.5775*x[12]*x[19]-0.9019*x[13]*x[19]+0.7154*x[15]*x[18]+1.0402*x[15]*x[19]+0.9221*x[16]*x[20]+1.1963*x[18]*x[19]-0.3627*x[19]*x[20]+0.339*x[1]-0.9173*x[2]-0.7695*x[3]+0.2167*x[4]+0.5787*x[5]-0.7987*x[6]-0.4803*x[7]+0.0038*x[8]-0.8226*x[9]-0.6717*x[10]-0.5208*x[11]+0.6231*x[12]+0.4192*x[13]-0.0849*x[14]-0.755*x[15]+0.8824*x[16]+0.9265*x[17]-0.1015*x[18]-0.2032*x[19]-0.7009*x[20] <= 35.256)
@NLconstraint(m, e12, (-0.018*x[1]*x[13])-1.2422*x[1]*x[20]-1.3529*x[2]*x[2]+0.5087*x[2]*x[12]-1.7676*x[2]*x[17]+0.0347*x[2]*x[19]-1.3198*x[3]*x[5]+0.986*x[3]*x[8]+1.1696*x[3]*x[9]-1.3779*x[3]*x[14]+0.6124*x[3]*x[16]-1.5116*x[4]*x[6]-0.2585*x[4]*x[7]-1.9104*x[4]*x[11]+1.6447*x[4]*x[14]-0.0649*x[4]*x[17]-1.5623*x[5]*x[6]+1.9309*x[5]*x[11]-0.9271*x[5]*x[13]-0.7198*x[5]*x[16]+1.7965*x[6]*x[11]+1.8014*x[6]*x[13]-0.1249*x[6]*x[15]-1.5668*x[6]*x[17]-1.8116*x[7]*x[7]+0.5796*x[7]*x[9]+0.1959*x[7]*x[11]-0.1117*x[7]*x[12]+1.6531*x[7]*x[15]+1.0513*x[7]*x[19]-0.5369*x[8]*x[8]-0.3756*x[8]*x[13]-0.217*x[9]*x[10]-1.6155*x[9]*x[12]-1.8216*x[9]*x[18]-1.7037*x[10]*x[10]+0.5129*x[10]*x[11]-0.8148*x[10]*x[13]+1.4767*x[10]*x[19]-1.9882*x[11]*x[14]+1.5938*x[11]*x[18]-1.6268*x[12]*x[14]+1.5734*x[12]*x[15]-0.4446*x[13]*x[13]+0.2657*x[13]*x[20]+0.9403*x[14]*x[16]+0.2106*x[15]*x[17]-0.8847*x[15]*x[19]-1.5294*x[16]*x[16]-1.2895*x[16]*x[18]+1.5052*x[16]*x[19]+1.2496*x[17]*x[18]-0.8609*x[1]-0.2108*x[2]-0.6433*x[3]+0.2057*x[4]+0.326*x[5]+0.7377*x[6]+0.2164*x[7]+0.8023*x[8]-0.6842*x[9]-0.7273*x[10]+0.3102*x[11]-0.222*x[12]-0.5253*x[13]-0.2047*x[14]-0.7807*x[15]-0.3591*x[16]+0.1688*x[17]-0.0688*x[18]+0.1753*x[19]+0.9618*x[20] <= 90.576)
@NLconstraint(m, e13, 1.785*x[1]*x[16]-0.5493*x[1]*x[5]+0.1477*x[1]*x[17]-0.3977*x[1]*x[20]+1.6684*x[3]*x[5]+0.4287*x[3]*x[6]+0.7622*x[3]*x[7]-1.9841*x[3]*x[13]-0.8154*x[3]*x[14]-1.2189*x[3]*x[16]+1.2308*x[3]*x[18]-1.9688*x[3]*x[19]+1.5354*x[4]*x[9]+1.1668*x[4]*x[15]-1.0151*x[4]*x[19]+0.182*x[5]*x[5]+0.1452*x[5]*x[6]-0.5193*x[5]*x[7]-0.0208*x[5]*x[13]-1.2266*x[5]*x[14]+1.2494*x[5]*x[18]-1.801*x[6]*x[6]+0.0246*x[6]*x[9]+0.7008*x[6]*x[10]-0.1421*x[6]*x[13]+0.145*x[6]*x[14]-1.1032*x[7]*x[7]+1.3684*x[7]*x[9]-1.6307*x[7]*x[15]+0.0296*x[8]*x[18]+1.1005*x[9]*x[10]+0.1455*x[9]*x[11]+0.9453*x[9]*x[15]+1.9988*x[9]*x[17]+0.6563*x[9]*x[18]-1.2896*x[10]*x[11]-1.1558*x[11]*x[14]-1.2938*x[11]*x[16]-0.0046*x[11]*x[17]+1.4556*x[11]*x[18]-0.1434*x[11]*x[19]-0.6876*x[12]*x[12]+0.9862*x[12]*x[17]-1.2416*x[13]*x[17]-1.9966*x[13]*x[20]-1.774*x[14]*x[14]+0.6474*x[14]*x[15]-0.0889*x[14]*x[16]-0.5391*x[14]*x[18]-0.5681*x[17]*x[17]-0.5141*x[18]*x[18]-0.8068*x[19]*x[19]+0.0962*x[1]-0.9229*x[3]-0.7966*x[4]+0.3164*x[5]+0.7678*x[6]+0.3734*x[7]-0.8076*x[8]-0.8073*x[9]+0.693*x[10]-0.4195*x[11]-0.3825*x[12]-0.2211*x[13]+0.7856*x[14]+0.8429*x[15]-0.3005*x[16]-0.2265*x[17]-0.3509*x[18]+0.6469*x[19]+0.3731*x[20]-0.2414*x[2] <= 59.662)
@NLconstraint(m, e14, (-1.3349*x[1]*x[6])-1.4518*x[1]*x[11]-0.4689*x[1]*x[14]-0.571*x[1]*x[18]-1.216*x[2]*x[3]-0.9415*x[2]*x[6]-0.942*x[2]*x[9]+1.0907*x[2]*x[10]-0.6004*x[2]*x[13]-0.0039*x[3]*x[3]+0.1179*x[3]*x[8]-0.9291*x[3]*x[12]-1.883*x[3]*x[18]+0.6117*x[4]*x[10]-0.8368*x[4]*x[12]-1.442*x[5]*x[7]+0.1485*x[5]*x[9]-0.5373*x[5]*x[11]+1.9406*x[5]*x[17]-0.514*x[5]*x[19]+0.5238*x[6]*x[6]+1.2993*x[6]*x[11]-1.5672*x[6]*x[13]+0.6466*x[6]*x[18]-0.678*x[7]*x[8]-0.9402*x[7]*x[13]-1.865*x[7]*x[14]-0.2509*x[8]*x[12]-0.3716*x[8]*x[14]-0.7358*x[8]*x[15]+1.8982*x[8]*x[18]+0.295*x[9]*x[11]+1.2993*x[9]*x[17]-1.8856*x[9]*x[19]-1.9059*x[10]*x[18]+0.3054*x[10]*x[20]+0.8693*x[11]*x[17]-1.2184*x[11]*x[19]+0.2749*x[11]*x[20]+1.8843*x[12]*x[14]+0.9942*x[12]*x[15]+0.0234*x[12]*x[19]+1.5603*x[13]*x[17]+0.1015*x[13]*x[19]+0.7323*x[14]*x[17]+0.6735*x[14]*x[18]-0.785*x[15]*x[18]-1.6003*x[15]*x[19]-1.5635*x[16]*x[17]-0.1924*x[16]*x[18]+1.3152*x[17]*x[18]+0.6826*x[17]*x[19]-0.8313*x[1]+0.9*x[2]-0.4189*x[3]-0.6236*x[4]+0.3809*x[5]+0.3639*x[6]-0.3747*x[7]-0.2436*x[8]+0.5248*x[9]-0.8973*x[10]-0.0807*x[11]+0.8115*x[12]+0.2713*x[13]-0.9985*x[14]-0.2019*x[15]-0.2031*x[16]+0.9796*x[17]+0.8575*x[18]-0.84*x[19]+0.9524*x[20] <= 86.304)
@NLconstraint(m, e15, 1.8546*x[1]*x[17]-0.974*x[1]*x[15]+1.8544*x[2]*x[8]-1.0726*x[2]*x[9]+1.4992*x[2]*x[13]-0.4083*x[2]*x[15]-0.8631*x[2]*x[16]+1.7953*x[2]*x[19]+0.6344*x[3]*x[6]-0.497*x[3]*x[10]+1.1111*x[3]*x[15]-1.9817*x[3]*x[17]-1.9017*x[3]*x[20]-0.1669*x[4]*x[6]-0.0763*x[4]*x[10]+1.5587*x[4]*x[12]-1.1524*x[5]*x[13]-1.1921*x[5]*x[14]-0.7021*x[5]*x[15]+1.2151*x[5]*x[16]-0.9817*x[5]*x[17]+1.9593*x[5]*x[18]+1.7002*x[6]*x[10]-1.2997*x[6]*x[11]-0.8146*x[6]*x[17]-1.1738*x[6]*x[18]+1.9646*x[7]*x[7]+0.0398*x[7]*x[8]+1.4324*x[7]*x[12]+0.0318*x[7]*x[13]+1.6693*x[7]*x[16]-1.3185*x[7]*x[19]-0.4595*x[8]*x[12]+0.7472*x[8]*x[13]-1.8591*x[9]*x[9]-0.549*x[9]*x[11]+1.4855*x[9]*x[12]+0.2203*x[9]*x[19]+0.1661*x[10]*x[20]-1.4218*x[11]*x[20]+1.0579*x[12]*x[12]-0.3221*x[12]*x[17]+1.8717*x[13]*x[14]+1.0017*x[13]*x[18]-1.1079*x[14]*x[15]-0.1857*x[14]*x[17]+1.532*x[15]*x[15]-0.4844*x[15]*x[17]+1.691*x[15]*x[19]+1.793*x[17]*x[18]-0.333*x[17]*x[19]+1.4284*x[19]*x[20]-0.4956*x[1]+0.8858*x[2]-0.1841*x[3]-0.9755*x[4]-0.5142*x[5]-0.2685*x[6]+0.1053*x[7]+0.5918*x[8]+0.8662*x[9]+0.4306*x[10]-0.8576*x[11]-0.2207*x[12]-0.5381*x[13]+0.0343*x[14]+0.2637*x[15]+0.6268*x[16]-0.5338*x[17]-0.3151*x[18]-0.8537*x[19]+0.4269*x[20] <= 13.224)
@NLconstraint(m, e16, 1.2981*x[1]*x[2]-1.7041*x[1]*x[4]-1.7624*x[1]*x[9]-0.7733*x[1]*x[18]-0.8036*x[2]*x[7]+0.5444*x[2]*x[12]-1.7891*x[2]*x[14]-1.4697*x[2]*x[16]+0.4557*x[2]*x[17]+0.6428*x[2]*x[18]-0.6795*x[2]*x[19]-0.3065*x[3]*x[4]-0.9504*x[3]*x[8]-1.4124*x[3]*x[9]-0.2672*x[3]*x[14]+1.8493*x[4]*x[13]-0.9126*x[4]*x[14]-1.7059*x[5]*x[6]-1.7544*x[5]*x[8]+1.6943*x[5]*x[10]+0.6299*x[5]*x[12]+0.6767*x[5]*x[14]-0.5357*x[5]*x[18]+1.5434*x[6]*x[20]-1.2858*x[7]*x[8]+1.5034*x[7]*x[11]-0.42*x[8]*x[13]+0.6168*x[8]*x[14]-1.6108*x[8]*x[15]+1.487*x[8]*x[18]+0.6024*x[9]*x[10]+1.3189*x[9]*x[13]-1.6059*x[9]*x[15]-1.0782*x[9]*x[18]-0.8822*x[10]*x[17]-0.1128*x[10]*x[19]-1.9807*x[11]*x[11]-0.2729*x[11]*x[12]+1.0237*x[11]*x[13]-1.174*x[11]*x[14]-0.1094*x[11]*x[15]-0.1417*x[11]*x[16]+0.7974*x[12]*x[15]+0.5814*x[12]*x[18]+0.7227*x[13]*x[14]-0.6395*x[13]*x[19]-0.3041*x[14]*x[14]+0.2309*x[14]*x[16]-0.1474*x[15]*x[15]+1.6718*x[16]*x[17]+1.0491*x[17]*x[20]+1.8595*x[20]*x[20]-0.7102*x[1]-0.4604*x[2]+0.5979*x[3]+0.3113*x[4]-0.0027*x[5]-0.4858*x[6]+0.6099*x[7]-0.4662*x[8]-0.8457*x[9]-0.1566*x[10]+0.0515*x[11]-0.7082*x[12]-0.6283*x[13]-0.4027*x[14]-0.3875*x[15]+0.9238*x[16]-0.3516*x[17]+0.408*x[18]+0.4636*x[19]+0.0828*x[20] <= 1.06)
@NLconstraint(m, e17, (-0.3404*x[1]*x[6])-1.9456*x[1]*x[10]-1.4243*x[1]*x[18]+0.553*x[1]*x[19]-1.3931*x[2]*x[3]+0.4088*x[2]*x[6]-1.5249*x[2]*x[12]+1.4279*x[2]*x[13]-0.0871*x[2]*x[14]+0.7772*x[2]*x[15]-1.1235*x[2]*x[18]+0.4482*x[3]*x[4]+1.3719*x[3]*x[5]-0.1221*x[3]*x[6]-1.225*x[3]*x[12]-0.3843*x[3]*x[13]+0.7099*x[3]*x[17]-0.7821*x[4]*x[6]-0.9752*x[4]*x[12]+0.6826*x[4]*x[17]-1.7942*x[5]*x[10]-1.6685*x[5]*x[17]-0.5093*x[6]*x[9]-0.1819*x[6]*x[12]+1.5026*x[6]*x[13]-0.5302*x[6]*x[15]+1.7139*x[6]*x[16]+0.0303*x[7]*x[9]-1.9201*x[7]*x[10]-x[7]*x[12]+0.7845*x[7]*x[14]-1.3705*x[7]*x[18]-0.228*x[7]*x[20]-1.9552*x[8]*x[9]-1.7221*x[8]*x[15]+0.104*x[8]*x[17]+0.6465*x[9]*x[14]-0.3847*x[9]*x[16]+1.7768*x[9]*x[18]+1.2601*x[9]*x[20]+0.2391*x[10]*x[14]-1.7467*x[12]*x[12]-0.7399*x[12]*x[13]-0.9031*x[12]*x[14]-0.4532*x[12]*x[19]-1.4333*x[13]*x[18]+0.6386*x[14]*x[15]-1.5135*x[15]*x[16]-0.5496*x[15]*x[18]+0.4516*x[15]*x[19]+0.0397*x[16]*x[19]-1.6023*x[18]*x[20]+0.9281*x[1]+0.5723*x[2]-0.231*x[3]-0.9784*x[4]-0.5923*x[5]+0.116*x[6]-0.4129*x[7]-0.5565*x[8]-0.3392*x[9]+0.1411*x[10]+0.5894*x[12]-0.3476*x[13]-0.2435*x[14]+0.6405*x[15]+0.8674*x[16]+0.8428*x[17]+0.5987*x[18]+0.7513*x[19]+0.9516*x[20]+0.8926*x[11] <= 22.411)
@NLconstraint(m, e18, 1.7121*x[1]*x[14]-1.6596*x[1]*x[18]-1.6676*x[2]*x[4]+0.3867*x[2]*x[9]+0.9447*x[2]*x[10]+1.8044*x[2]*x[18]-1.9797*x[3]*x[4]-0.5408*x[3]*x[13]+1.8252*x[3]*x[18]-0.4644*x[4]*x[6]+1.3719*x[4]*x[12]-0.905*x[4]*x[13]+1.7099*x[4]*x[16]-0.9842*x[4]*x[18]+0.6243*x[4]*x[20]-0.2094*x[5]*x[5]+1.3742*x[5]*x[7]+0.1069*x[5]*x[9]-1.3784*x[5]*x[10]+0.4782*x[5]*x[14]-1.8835*x[5]*x[16]-0.0271*x[5]*x[17]-1.7467*x[6]*x[11]-1.8028*x[6]*x[13]+0.4972*x[6]*x[15]+0.5451*x[6]*x[16]-1.9171*x[6]*x[17]-1.5518*x[6]*x[20]-0.6701*x[7]*x[12]+1.1178*x[7]*x[14]+0.5299*x[7]*x[15]+0.4508*x[7]*x[19]-1.1879*x[8]*x[9]+1.8377*x[8]*x[10]+1.4955*x[8]*x[11]-0.9864*x[8]*x[15]-0.1441*x[8]*x[16]+0.592*x[9]*x[13]+1.885*x[9]*x[14]-0.0933*x[9]*x[17]+0.5295*x[9]*x[18]+0.2751*x[10]*x[12]+1.2523*x[10]*x[19]-0.0528*x[11]*x[17]-1.0022*x[11]*x[19]-1.6651*x[12]*x[17]-1.7*x[12]*x[19]-1.7314*x[15]*x[16]+0.3817*x[15]*x[18]+0.3323*x[17]*x[17]-0.4236*x[18]*x[19]+1.2122*x[19]*x[20]-0.7268*x[1]-0.394*x[2]-0.9202*x[3]-0.6623*x[4]-0.6637*x[5]-0.7004*x[6]-0.578*x[7]+0.2296*x[8]-0.0377*x[9]-0.6504*x[10]-0.794*x[11]+0.3307*x[12]+0.614*x[13]-0.1661*x[14]+0.466*x[15]+0.2668*x[16]+0.05*x[17]+0.2806*x[18]-0.5617*x[19]+0.2979*x[20] <= 67.686)
@NLconstraint(m, e19, 0.7177*x[2]*x[4]-1.7399*x[1]*x[6]-1.3302*x[2]*x[5]-1.9825*x[2]*x[7]-0.8214*x[2]*x[9]+1.542*x[2]*x[10]-1.0601*x[2]*x[11]-0.0628*x[2]*x[16]+0.4791*x[3]*x[4]-1.8383*x[3]*x[10]+1.5942*x[3]*x[12]-0.173*x[3]*x[13]-0.5411*x[3]*x[15]+0.7545*x[3]*x[16]-0.8446*x[3]*x[18]-0.7653*x[4]*x[5]+1.795*x[4]*x[7]+1.3678*x[4]*x[8]-1.3919*x[4]*x[10]-1.2094*x[4]*x[13]+0.5608*x[4]*x[16]-0.719*x[4]*x[18]+1.4426*x[4]*x[19]+0.148*x[5]*x[11]+1.2218*x[5]*x[16]+1.1743*x[5]*x[17]-1.661*x[6]*x[7]+0.5945*x[6]*x[8]-1.5499*x[6]*x[13]-0.2076*x[7]*x[10]-1.647*x[7]*x[11]+0.5017*x[7]*x[12]+0.844*x[7]*x[14]+1.9962*x[7]*x[15]-0.0015*x[7]*x[17]+1.9062*x[8]*x[11]-0.3854*x[8]*x[12]+1.7254*x[8]*x[16]-0.7402*x[9]*x[14]-1.2505*x[9]*x[15]-1.9943*x[10]*x[16]+1.0885*x[10]*x[20]+1.7935*x[11]*x[19]-0.7954*x[11]*x[20]-1.2381*x[12]*x[13]+1.0276*x[12]*x[16]-1.4851*x[13]*x[18]-1.7779*x[14]*x[17]-1.1201*x[15]*x[16]-1.0055*x[15]*x[17]-1.6556*x[16]*x[19]+1.0086*x[17]*x[18]+0.444*x[1]-0.0672*x[2]+0.0737*x[3]+0.0354*x[4]+0.5419*x[5]-0.2474*x[6]-0.6811*x[7]+0.5971*x[8]-0.5831*x[9]+0.6643*x[10]-0.006*x[11]-0.6108*x[12]-0.4375*x[13]+0.3272*x[14]+0.7977*x[15]-0.3507*x[16]-0.6049*x[17]+0.5645*x[18]+0.2117*x[19]-0.9799*x[20] <= 82.087)
@NLconstraint(m, e20, 1.6443*x[1]*x[3]-1.4278*x[1]*x[6]-0.9529*x[1]*x[15]+0.3907*x[2]*x[9]+0.4026*x[2]*x[10]-1.7693*x[2]*x[11]+0.783*x[2]*x[19]-1.7917*x[3]*x[8]-0.1783*x[3]*x[12]+0.8845*x[3]*x[18]+0.6236*x[4]*x[6]-1.1378*x[4]*x[8]+0.687*x[4]*x[10]+0.0461*x[4]*x[11]-0.6959*x[4]*x[13]-1.9635*x[4]*x[14]-1.3278*x[4]*x[18]+1.6836*x[4]*x[19]-0.2497*x[5]*x[6]-0.2831*x[5]*x[7]-1.5412*x[5]*x[8]+0.8316*x[5]*x[9]-1.7274*x[5]*x[10]+1.3994*x[5]*x[13]-1.9028*x[5]*x[14]-1.1076*x[5]*x[18]-0.7991*x[6]*x[7]-0.97*x[6]*x[17]-0.4788*x[7]*x[13]+0.5425*x[7]*x[17]-1.5317*x[7]*x[18]+0.3722*x[7]*x[19]+1.1122*x[7]*x[20]+1.2573*x[8]*x[14]+0.6681*x[8]*x[15]+1.3825*x[8]*x[17]+0.9677*x[8]*x[18]+0.4596*x[9]*x[11]+0.0413*x[9]*x[15]-0.0526*x[10]*x[10]+0.2994*x[11]*x[17]-1.153*x[12]*x[17]-1.1047*x[13]*x[15]+0.7768*x[13]*x[16]+1.6792*x[14]*x[15]+0.738*x[14]*x[16]+0.9341*x[14]*x[17]+1.806*x[15]*x[17]-1.5275*x[16]*x[17]-1.6477*x[16]*x[19]-0.9435*x[17]*x[18]-0.6051*x[18]*x[19]-0.2774*x[1]+0.3231*x[2]-0.8675*x[3]+0.4167*x[4]+0.1463*x[5]-0.8676*x[6]-0.4481*x[7]+0.7416*x[8]-0.7063*x[9]+0.2434*x[10]-0.8588*x[11]-0.6483*x[12]+0.2427*x[13]+0.0261*x[14]-0.025*x[15]-0.3958*x[16]+0.3497*x[17]-0.7147*x[18]-0.0279*x[19]-0.3799*x[20] <= 28.583)
@NLconstraint(m, e21, (-1.5883*x[1]*x[1])-1.1298*x[1]*x[7]-1.2962*x[1]*x[18]-1.1554*x[2]*x[4]+0.1116*x[2]*x[6]+0.0278*x[2]*x[9]-0.1302*x[2]*x[11]+1.1934*x[2]*x[14]+1.8016*x[2]*x[15]+1.9457*x[2]*x[19]-0.9012*x[3]*x[11]-0.3335*x[3]*x[12]-0.0289*x[3]*x[18]-0.7359*x[3]*x[19]-0.9025*x[4]*x[6]-1.5296*x[4]*x[7]+0.0983*x[5]*x[7]+0.4676*x[5]*x[13]+0.8109*x[5]*x[14]-0.1804*x[5]*x[17]+1.4909*x[5]*x[19]-0.9428*x[6]*x[7]-1.2856*x[6]*x[8]+0.3694*x[6]*x[15]+0.1902*x[6]*x[16]-1.2468*x[6]*x[17]-0.5019*x[7]*x[11]+0.4607*x[7]*x[17]-1.688*x[8]*x[10]+1.8875*x[8]*x[12]+1.3661*x[8]*x[14]+0.3956*x[8]*x[20]-0.3752*x[9]*x[10]+1.6375*x[9]*x[13]-0.7195*x[9]*x[14]-1.0445*x[9]*x[16]+1.6166*x[9]*x[19]-1.0059*x[10]*x[10]+1.3502*x[10]*x[12]+0.0323*x[10]*x[16]+1.6103*x[10]*x[17]-1.5849*x[10]*x[19]+1.2123*x[11]*x[15]+1.7187*x[12]*x[17]+0.3194*x[13]*x[16]+0.3443*x[13]*x[17]+0.2026*x[13]*x[19]+1.2947*x[13]*x[20]+1.2205*x[14]*x[17]-1.516*x[15]*x[17]+0.2553*x[15]*x[19]+1.017*x[16]*x[17]+0.9664*x[1]+0.5172*x[2]-0.3878*x[3]-0.5006*x[4]+0.9568*x[5]+0.8557*x[6]-0.6503*x[7]-0.65*x[8]+0.7002*x[9]-0.0814*x[10]+0.5176*x[11]-0.1335*x[12]-0.0441*x[13]-0.7608*x[14]+0.309*x[15]+0.2176*x[16]+0.8508*x[17]+0.9816*x[18]-0.5516*x[19]+0.775*x[20] <= 98.125)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 