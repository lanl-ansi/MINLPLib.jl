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
@NLconstraint(m, e1, -(1.6113*x[1]*x[4]+0.1317*x[1]*x[10]+1.1087*x[1]*x[11]-0.3853*x[1]*x[19]+0.3568*x[1]*x[21]-0.7326*x[1]*x[23]+1.4947*x[1]*x[27]+1.2715*x[1]*x[30]-1.7759*x[2]*x[3]-1.0334*x[2]*x[4]-0.29*x[2]*x[6]-0.2585*x[2]*x[7]+0.8518*x[2]*x[10]-0.9555*x[2]*x[13]-0.7706*x[2]*x[14]+1.2826*x[2]*x[15]-1.2752*x[2]*x[16]-0.2854*x[2]*x[19]-0.8339*x[2]*x[20]-1.9137*x[2]*x[24]+1.6525*x[2]*x[25]-1.755*x[2]*x[26]-1.4189*x[2]*x[29]-0.5268*x[2]*x[30]+0.5388*x[3]*x[3]-1.7192*x[3]*x[5]+0.7144*x[3]*x[6]+0.7805*x[3]*x[7]-0.8807*x[3]*x[10]+0.3296*x[3]*x[13]+0.5155*x[3]*x[14]+1.6864*x[3]*x[17]+0.1675*x[3]*x[21]-1.752*x[3]*x[23]+0.3334*x[3]*x[24]+0.6191*x[3]*x[27]+0.5944*x[4]*x[4]-0.6539*x[4]*x[7]+0.8022*x[4]*x[8]-1.1441*x[4]*x[9]-0.889*x[4]*x[10]-1.1849*x[4]*x[11]-0.1925*x[4]*x[12]+1.9398*x[4]*x[13]+0.2579*x[4]*x[14]+1.6604*x[4]*x[16]-1.3919*x[4]*x[19]+0.5623*x[4]*x[20]+0.0292*x[4]*x[21]-1.5349*x[4]*x[23]+0.3542*x[4]*x[25]-1.7253*x[4]*x[27]-1.2478*x[4]*x[29]+1.0053*x[5]*x[6]-1.6805*x[5]*x[7]+1.7982*x[5]*x[8]+1.9609*x[5]*x[10]+1.1076*x[5]*x[12]+0.4693*x[5]*x[14]-0.8376*x[5]*x[17]-0.253*x[5]*x[20]-1.6547*x[5]*x[21]-0.3944*x[5]*x[22]+0.6049*x[5]*x[24]+0.4378*x[5]*x[26]+0.4173*x[5]*x[28]+1.0766*x[5]*x[29]-1.9578*x[6]*x[6]+1.9828*x[6]*x[7]+1.6849*x[6]*x[9]-0.8371*x[6]*x[10]-1.0582*x[6]*x[11]+0.6215*x[6]*x[12]-0.5508*x[6]*x[15]+0.3874*x[6]*x[17]+0.4325*x[6]*x[19]+0.2531*x[6]*x[22]+1.1123*x[6]*x[25]-1.6002*x[6]*x[27]-0.2997*x[6]*x[28]-1.6633*x[7]*x[11]-0.716*x[7]*x[14]+1.2982*x[7]*x[20]-0.5068*x[7]*x[21]-0.2025*x[7]*x[24]+0.0637*x[7]*x[26]+1.2787*x[8]*x[9]-0.1259*x[8]*x[10]-1.7961*x[8]*x[11]+0.8752*x[8]*x[12]-1.9263*x[8]*x[13]-0.0882*x[8]*x[15]+1.242*x[8]*x[18]+0.9842*x[8]*x[20]+1.783*x[8]*x[22]-1.8385*x[8]*x[23]+1.7285*x[8]*x[25]+1.3632*x[8]*x[26]+1.7441*x[8]*x[30]-0.9651*x[9]*x[10]+0.9904*x[9]*x[11]-0.7712*x[9]*x[12]-1.5976*x[9]*x[13]-1.9695*x[9]*x[14]+0.5716*x[9]*x[15]-0.4157*x[9]*x[18]-0.46*x[9]*x[20]-0.8643*x[9]*x[22]+1.8617*x[9]*x[24]-0.5593*x[9]*x[25]+0.644*x[9]*x[28]-0.0851*x[9]*x[29]+1.3354*x[9]*x[30]-1.1815*x[10]*x[12]-0.1343*x[10]*x[14]+0.1686*x[10]*x[16]-0.5228*x[10]*x[19]+1.0456*x[10]*x[21]+0.0161*x[10]*x[23]-1.159*x[10]*x[25]-1.9831*x[10]*x[26]-0.6769*x[10]*x[27]-0.2055*x[10]*x[28]+0.77*x[10]*x[29]+0.5581*x[11]*x[12]+1.7146*x[11]*x[14]-0.4315*x[11]*x[15]+1.7194*x[11]*x[17]+1.5617*x[11]*x[19]-0.3275*x[11]*x[21]-0.5382*x[11]*x[24]+0.9421*x[11]*x[25]-0.7595*x[11]*x[27]-1.5994*x[11]*x[28]-1.922*x[11]*x[30]-1.7471*x[12]*x[13]-0.7972*x[12]*x[14]-1.371*x[12]*x[15]+1.6055*x[12]*x[16]+0.9218*x[12]*x[19]+0.0854*x[12]*x[20]-0.2968*x[12]*x[21]-1.7537*x[12]*x[26]-1.5932*x[12]*x[27]-0.501*x[13]*x[14]-0.4668*x[13]*x[15]+1.1019*x[13]*x[17]-0.0632*x[13]*x[18]-0.4167*x[13]*x[19]+0.6459*x[13]*x[20]+1.496*x[13]*x[23]+0.1378*x[13]*x[24]-0.9746*x[13]*x[26]-1.0403*x[13]*x[29]-1.945*x[13]*x[30]+0.7893*x[14]*x[16]+0.1334*x[14]*x[18]+1.2613*x[14]*x[20]+0.3752*x[14]*x[21]-0.5284*x[14]*x[25]-0.0594*x[14]*x[26]+0.2669*x[14]*x[27]-1.1688*x[14]*x[29]+0.9277*x[14]*x[30]-1.6024*x[15]*x[16]-1.2231*x[15]*x[17]-1.6243*x[15]*x[20]-0.026*x[15]*x[22]+0.426*x[15]*x[23]+0.7502*x[15]*x[24]+0.3643*x[15]*x[26]-0.4347*x[15]*x[28]+0.8111*x[15]*x[29]+1.0789*x[16]*x[17]+1.2627*x[16]*x[18]+1.533*x[16]*x[19]-0.8305*x[16]*x[20]-0.2648*x[16]*x[24]+1.2177*x[16]*x[26]+1.084*x[16]*x[27]-0.8015*x[17]*x[18]+0.3404*x[17]*x[19]+0.1586*x[17]*x[20]-1.3456*x[17]*x[22]-0.5725*x[17]*x[24]+0.2605*x[17]*x[26]-1.8761*x[17]*x[27]-0.5771*x[17]*x[28]-0.7073*x[18]*x[18]-1.2389*x[18]*x[19]-0.0013*x[18]*x[20]+1.513*x[18]*x[21]+1.9638*x[18]*x[22]-0.2497*x[18]*x[23]+1.2939*x[18]*x[27]-1.2409*x[18]*x[28]+1.4814*x[18]*x[29]-0.3464*x[19]*x[19]+0.2562*x[19]*x[20]+1.6188*x[19]*x[23]+0.6427*x[19]*x[25]+0.6268*x[19]*x[28]+0.7616*x[20]*x[21]+0.2138*x[20]*x[22]-1.4068*x[20]*x[28]+1.6562*x[20]*x[29]-1.1154*x[21]*x[23]-1.1663*x[21]*x[25]+1.729*x[21]*x[26]+0.2443*x[21]*x[27]-0.6346*x[21]*x[29]+1.4089*x[22]*x[23]-0.3967*x[22]*x[26]-1.3841*x[22]*x[28]+0.552*x[22]*x[29]-0.6386*x[23]*x[24]-1.981*x[23]*x[25]-1.9075*x[23]*x[28]+1.0836*x[23]*x[30]+0.2531*x[24]*x[24]+0.2371*x[24]*x[25]-1.6213*x[24]*x[26]-0.1888*x[24]*x[28]-1.8287*x[24]*x[29]+1.873*x[24]*x[30]+1.3777*x[25]*x[28]-0.6028*x[25]*x[29]+1.2636*x[26]*x[28]+1.0559*x[26]*x[29]+0.1118*x[27]*x[27]-0.4778*x[27]*x[28]+1.0927*x[27]*x[30]+0.0291*x[1]-0.6996*x[2]+0.1113*x[3]-0.8804*x[4]-0.8184*x[5]-0.6964*x[6]-0.7774*x[7]-0.6308*x[8]-0.6123*x[9]+0.5534*x[10]+0.8369*x[11]-0.595*x[12]-0.5918*x[13]+0.2019*x[14]+0.7059*x[15]+0.3293*x[16]+0.5068*x[17]+0.3269*x[18]-0.0543*x[19]-0.2724*x[20]+0.6365*x[21]+0.1639*x[22]-0.844*x[23]+0.9713*x[24]-0.6234*x[25]-0.4512*x[26]+0.8888*x[27]+0.742*x[28]-0.8561*x[29]-0.3492*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, 1.0423*x[1]*x[4]-1.7376*x[1]*x[10]+1.405*x[1]*x[11]-1.0635*x[1]*x[14]+1.3459*x[1]*x[17]+0.8632*x[1]*x[22]-0.9286*x[1]*x[23]+1.551*x[1]*x[28]-0.5311*x[1]*x[29]-0.5995*x[2]*x[2]+1.1388*x[2]*x[3]-1.1363*x[2]*x[4]+1.4681*x[2]*x[12]-1.925*x[2]*x[13]+1.43*x[2]*x[14]+0.0853*x[2]*x[15]+0.7716*x[2]*x[16]-1.9426*x[2]*x[18]-1.8633*x[2]*x[20]+1.7778*x[2]*x[21]+0.5653*x[2]*x[22]+1.7099*x[2]*x[24]+1.0912*x[2]*x[26]+0.384*x[2]*x[29]+1.7923*x[3]*x[4]+0.0164*x[3]*x[5]+1.2495*x[3]*x[10]-1.3963*x[3]*x[11]+1.7259*x[3]*x[13]+1.8851*x[3]*x[14]+1.1586*x[3]*x[15]+0.0868*x[3]*x[17]-1.7687*x[3]*x[18]-0.1372*x[3]*x[20]+0.221*x[3]*x[22]+1.357*x[3]*x[23]+0.7988*x[3]*x[25]-0.15*x[3]*x[27]-0.9707*x[3]*x[30]+0.5488*x[4]*x[7]-1.5505*x[4]*x[9]-0.7031*x[4]*x[10]-1.4069*x[4]*x[11]-1.68*x[4]*x[13]-1.124*x[4]*x[14]-0.4173*x[4]*x[17]+1.648*x[4]*x[19]+1.1513*x[4]*x[21]-1.0206*x[4]*x[25]-0.5637*x[4]*x[26]-0.8761*x[4]*x[27]-1.0099*x[4]*x[28]-1.5777*x[4]*x[29]+1.9829*x[5]*x[5]+1.2936*x[5]*x[8]-0.2343*x[5]*x[10]+0.8825*x[5]*x[11]+1.8242*x[5]*x[12]+1.6506*x[5]*x[13]-1.2826*x[5]*x[14]-0.0622*x[5]*x[15]+1.3169*x[5]*x[20]+0.153*x[5]*x[21]-1.1484*x[5]*x[22]+0.7675*x[5]*x[24]+0.75*x[5]*x[25]+1.2381*x[5]*x[26]+0.5093*x[6]*x[8]-0.3869*x[6]*x[9]+0.5541*x[6]*x[10]+0.47*x[6]*x[12]-0.6209*x[6]*x[14]-1.534*x[6]*x[15]+1.471*x[6]*x[16]-0.6995*x[6]*x[17]+0.0615*x[6]*x[18]+1.7646*x[6]*x[22]-1.2454*x[6]*x[25]+0.5022*x[7]*x[8]-1.2783*x[7]*x[9]-1.8546*x[7]*x[13]-1.4896*x[7]*x[17]-1.0303*x[7]*x[20]+0.5416*x[7]*x[21]+1.8456*x[7]*x[23]+1.8582*x[7]*x[24]-0.3696*x[7]*x[27]-0.456*x[7]*x[28]-0.0252*x[7]*x[29]-1.3322*x[8]*x[8]+0.5016*x[8]*x[12]+1.7212*x[8]*x[14]+1.6565*x[8]*x[15]+1.4793*x[8]*x[16]+0.9262*x[8]*x[17]+1.7902*x[8]*x[19]+1.8019*x[8]*x[21]-1.5808*x[8]*x[24]-1.3594*x[8]*x[25]-1.0282*x[8]*x[26]-0.3773*x[8]*x[28]+1.931*x[9]*x[9]+1.6402*x[9]*x[11]-1.529*x[9]*x[12]+1.9874*x[9]*x[15]-1.4425*x[9]*x[17]+0.9315*x[9]*x[18]+0.0336*x[9]*x[19]+1.7366*x[9]*x[25]-0.331*x[9]*x[28]-1.9825*x[10]*x[10]+0.6182*x[10]*x[15]-0.4476*x[10]*x[16]-0.7093*x[10]*x[19]-1.7132*x[10]*x[22]+1.3467*x[10]*x[23]+0.1758*x[10]*x[25]+1.8767*x[10]*x[29]+1.5525*x[11]*x[13]+1.738*x[11]*x[14]-1.465*x[11]*x[16]+1.6587*x[11]*x[17]+1.4865*x[11]*x[18]+1.641*x[11]*x[20]+0.907*x[11]*x[21]+1.5942*x[11]*x[22]-0.3509*x[11]*x[25]+1.7409*x[11]*x[27]+0.2017*x[12]*x[12]-1.7744*x[12]*x[13]+0.9565*x[12]*x[15]-0.7102*x[12]*x[16]-1.2148*x[12]*x[17]-0.6626*x[12]*x[18]+1.5246*x[12]*x[20]+1.4227*x[12]*x[21]-1.2661*x[12]*x[22]-0.4688*x[12]*x[23]+1.8816*x[12]*x[26]-1.1095*x[12]*x[28]+0.6797*x[12]*x[29]-1.552*x[13]*x[16]-0.821*x[13]*x[17]+1.644*x[13]*x[19]+0.3604*x[13]*x[20]-1.054*x[13]*x[23]-1.7696*x[13]*x[25]+0.2872*x[13]*x[27]+1.3783*x[14]*x[15]-1.1338*x[14]*x[16]-0.0439*x[14]*x[17]+1.2159*x[14]*x[18]+1.6216*x[14]*x[21]-1.5563*x[14]*x[22]-0.2805*x[14]*x[25]+0.7348*x[14]*x[26]+1.5893*x[14]*x[29]+1.3232*x[15]*x[17]-0.6549*x[15]*x[18]-1.3368*x[15]*x[21]-0.4029*x[15]*x[25]-1.5578*x[15]*x[26]-0.2741*x[15]*x[27]+0.6029*x[15]*x[29]-1.5032*x[15]*x[30]-0.7464*x[16]*x[16]-0.3182*x[16]*x[21]+0.0177*x[16]*x[22]+0.0294*x[16]*x[24]-0.1823*x[16]*x[25]+0.8216*x[16]*x[27]+1.2175*x[16]*x[28]-1.5926*x[16]*x[29]-1.9063*x[16]*x[30]+1.4292*x[17]*x[18]-1.9319*x[17]*x[19]-1.4492*x[17]*x[21]-1.2873*x[17]*x[22]+0.0436*x[17]*x[23]+1.716*x[17]*x[25]-0.9348*x[17]*x[29]-0.9693*x[18]*x[18]+1.6412*x[18]*x[19]-0.9689*x[18]*x[20]-0.957*x[18]*x[22]-1.4005*x[18]*x[23]-0.4361*x[18]*x[25]-1.0678*x[18]*x[26]-0.3408*x[18]*x[29]-0.4679*x[18]*x[30]+0.2575*x[19]*x[19]+0.5101*x[19]*x[24]+0.0408*x[19]*x[25]-1.0845*x[19]*x[26]+1.3914*x[19]*x[28]-0.3486*x[19]*x[29]-0.9415*x[20]*x[22]+0.0233*x[20]*x[23]+1.3483*x[20]*x[24]+1.1775*x[20]*x[25]+1.5759*x[20]*x[26]-1.3549*x[20]*x[28]-1.8688*x[20]*x[29]+1.4078*x[21]*x[22]+0.9759*x[21]*x[26]+1.2023*x[21]*x[27]+1.7198*x[21]*x[29]+0.4043*x[21]*x[30]-0.2521*x[22]*x[25]+1.8741*x[22]*x[29]+1.5234*x[23]*x[23]-1.7765*x[23]*x[25]-0.6149*x[23]*x[27]+0.3666*x[23]*x[28]-1.2041*x[23]*x[29]-0.3868*x[23]*x[30]-1.1824*x[24]*x[26]+0.0942*x[24]*x[27]+0.409*x[24]*x[28]+0.0742*x[24]*x[29]+0.4323*x[25]*x[27]-0.3057*x[25]*x[29]+0.1339*x[25]*x[30]+0.606*x[26]*x[27]+1.4948*x[26]*x[28]+0.588*x[26]*x[30]+0.1028*x[27]*x[28]-0.8723*x[27]*x[29]+1.8811*x[28]*x[29]-0.2928*x[28]*x[30]-0.4576*x[29]*x[29]+1.996*x[29]*x[30]+0.6343*x[1]-0.603*x[2]+0.5243*x[3]+0.0161*x[4]+0.4329*x[5]+0.5612*x[6]+0.7646*x[7]+0.0567*x[8]+0.9825*x[9]-0.0281*x[10]-0.31*x[11]-0.7647*x[12]+0.3235*x[13]-0.4458*x[14]-0.0934*x[15]-0.4116*x[16]+0.3824*x[17]-0.9968*x[18]+0.877*x[19]-0.0841*x[20]+0.3932*x[21]+0.7865*x[22]-0.618*x[23]+0.7712*x[24]+0.8453*x[25]+0.6673*x[26]-0.2689*x[27]+0.7679*x[28]-0.8726*x[29]-0.8734*x[30] <= 33.957)
@NLconstraint(m, e3, 1.9112*x[1]*x[2]+0.7051*x[1]*x[8]+0.1339*x[1]*x[9]+0.8617*x[1]*x[11]+0.9534*x[1]*x[12]-1.8935*x[1]*x[17]+0.2044*x[1]*x[18]+0.6005*x[1]*x[19]+0.6523*x[1]*x[20]-0.9291*x[1]*x[23]+0.7032*x[1]*x[27]-1.941*x[2]*x[5]+1.2632*x[2]*x[7]+0.0641*x[2]*x[8]+0.1128*x[2]*x[9]+1.7784*x[2]*x[10]+0.0073*x[2]*x[11]-0.2973*x[2]*x[12]+0.9881*x[2]*x[13]+0.6191*x[2]*x[16]-0.7989*x[2]*x[17]-0.3247*x[2]*x[22]-0.7825*x[2]*x[24]+1.4735*x[2]*x[28]-1.4398*x[2]*x[30]+0.5948*x[3]*x[4]+1.6219*x[3]*x[6]-0.9158*x[3]*x[7]+1.69*x[3]*x[9]-1.8346*x[3]*x[12]+0.1704*x[3]*x[14]+1.924*x[3]*x[15]-0.4343*x[3]*x[20]+1.0216*x[3]*x[22]-0.0111*x[3]*x[23]+1.2981*x[3]*x[24]-0.8712*x[3]*x[25]-0.7054*x[3]*x[26]-1.4209*x[3]*x[28]-1.19*x[4]*x[4]-1.8606*x[4]*x[5]+0.0144*x[4]*x[7]+0.612*x[4]*x[13]-0.8673*x[4]*x[14]+1.5124*x[4]*x[15]-0.6204*x[4]*x[17]+1.392*x[4]*x[19]-1.7859*x[4]*x[20]-1.4508*x[4]*x[23]+0.3395*x[4]*x[24]+0.7647*x[4]*x[26]+1.2488*x[4]*x[29]-1.8773*x[5]*x[6]-0.8929*x[5]*x[7]-1.1338*x[5]*x[8]-1.36*x[5]*x[9]-1.0993*x[5]*x[10]+1.119*x[5]*x[16]-0.2162*x[5]*x[19]+0.3898*x[5]*x[27]-0.1879*x[5]*x[28]+1.0399*x[5]*x[29]-1.6234*x[6]*x[7]-1.3975*x[6]*x[10]+1.5007*x[6]*x[11]+1.8613*x[6]*x[12]+1.9292*x[6]*x[13]-0.6658*x[6]*x[14]+1.8027*x[6]*x[15]+1.8865*x[6]*x[16]+0.222*x[6]*x[17]-0.1811*x[6]*x[19]-1.4376*x[6]*x[20]-1.724*x[6]*x[22]+1.2426*x[6]*x[23]-1.6814*x[6]*x[24]+0.4285*x[6]*x[25]-0.4196*x[6]*x[27]-1.4299*x[6]*x[28]-1.4603*x[6]*x[29]+1.8691*x[7]*x[7]+0.1441*x[7]*x[8]-1.6328*x[7]*x[9]-1.7106*x[7]*x[10]-1.7332*x[7]*x[12]+1.1625*x[7]*x[13]+1.4117*x[7]*x[14]+0.1442*x[7]*x[16]+0.5436*x[7]*x[17]-0.4491*x[7]*x[19]+0.5305*x[7]*x[20]-1.6822*x[7]*x[22]-1.2541*x[7]*x[23]-1.8239*x[7]*x[24]-1.1586*x[7]*x[25]+1.199*x[7]*x[28]+0.2162*x[7]*x[29]-1.8108*x[7]*x[30]+1.1587*x[8]*x[8]+1.7503*x[8]*x[11]+0.204*x[8]*x[12]+0.6118*x[8]*x[13]+0.2979*x[8]*x[14]-1.4643*x[8]*x[15]+0.3532*x[8]*x[16]-1.0178*x[8]*x[20]-0.2507*x[8]*x[21]+0.0338*x[8]*x[25]+1.2653*x[8]*x[26]+0.8327*x[8]*x[29]+1.7427*x[8]*x[30]+0.5218*x[9]*x[10]+0.6773*x[9]*x[11]-1.5486*x[9]*x[13]-0.7927*x[9]*x[15]-1.5362*x[9]*x[17]+0.8901*x[9]*x[19]-0.2817*x[9]*x[21]+0.0203*x[9]*x[22]-1.2205*x[9]*x[24]-0.7383*x[9]*x[25]+1.456*x[9]*x[26]-0.496*x[9]*x[28]+0.9752*x[10]*x[13]+0.9488*x[10]*x[14]-1.4316*x[10]*x[15]+1.9763*x[10]*x[16]+1.1969*x[10]*x[17]-0.7237*x[10]*x[20]-0.0388*x[10]*x[22]+0.4932*x[10]*x[23]-1.283*x[10]*x[24]-1.3702*x[10]*x[27]-1.2162*x[10]*x[28]+0.3448*x[10]*x[29]-0.5536*x[11]*x[12]-1.9528*x[11]*x[13]+0.2706*x[11]*x[14]-1.5192*x[11]*x[15]+0.9279*x[11]*x[17]-1.1732*x[11]*x[22]-0.7965*x[11]*x[23]-1.9497*x[11]*x[27]-1.9051*x[11]*x[29]-1.8919*x[12]*x[13]+0.865*x[12]*x[14]-1.8199*x[12]*x[15]+0.32*x[12]*x[17]+0.6107*x[12]*x[18]+0.0656*x[12]*x[20]+0.3485*x[12]*x[21]+0.637*x[12]*x[22]+1.232*x[12]*x[23]+1.1323*x[12]*x[26]+1.9021*x[13]*x[14]-1.3306*x[13]*x[20]-1.7538*x[13]*x[21]+1.2716*x[13]*x[23]+1.753*x[13]*x[24]+1.1155*x[13]*x[26]-0.3783*x[13]*x[29]-0.2989*x[14]*x[15]-0.2274*x[14]*x[17]-0.6013*x[14]*x[18]+0.2749*x[14]*x[19]-0.4616*x[14]*x[21]+0.058*x[14]*x[24]-1.5289*x[14]*x[25]+0.0344*x[14]*x[26]+1.8082*x[14]*x[29]-0.2145*x[15]*x[15]+1.9469*x[15]*x[16]+1.4505*x[15]*x[17]-0.322*x[15]*x[18]+0.3697*x[15]*x[20]-0.4225*x[15]*x[21]-1.0079*x[15]*x[24]-0.8041*x[15]*x[25]-0.9962*x[15]*x[27]+1.5705*x[15]*x[28]+1.0393*x[15]*x[29]+0.4049*x[16]*x[20]+1.5524*x[16]*x[21]-0.8093*x[16]*x[22]-1.8985*x[16]*x[24]+0.0351*x[16]*x[25]-0.7594*x[16]*x[28]-1.5183*x[16]*x[29]-0.5582*x[17]*x[22]+1.4659*x[17]*x[23]-0.421*x[17]*x[24]+0.7177*x[17]*x[26]-1.1116*x[17]*x[27]+1.2141*x[18]*x[21]+1.5796*x[18]*x[22]+1.9817*x[18]*x[28]-0.9231*x[18]*x[29]-0.432*x[19]*x[24]+1.4804*x[19]*x[25]-1.1833*x[19]*x[26]-0.5345*x[19]*x[27]-1.828*x[19]*x[28]+0.2918*x[19]*x[29]+1.0572*x[20]*x[22]-1.6597*x[20]*x[23]-0.6838*x[20]*x[24]-1.5628*x[20]*x[27]-0.0822*x[20]*x[29]+0.419*x[21]*x[24]-1.544*x[21]*x[25]+1.3311*x[21]*x[26]-0.3688*x[21]*x[29]-1.2612*x[22]*x[24]+1.6616*x[22]*x[26]-0.4681*x[22]*x[28]+0.5542*x[23]*x[27]+1.3573*x[23]*x[28]-1.5396*x[23]*x[29]+0.4374*x[23]*x[30]-1.1505*x[24]*x[25]-0.8733*x[24]*x[28]+0.8706*x[24]*x[29]-0.569*x[24]*x[30]+1.4635*x[25]*x[25]-1.6537*x[25]*x[26]+1.5024*x[25]*x[27]-0.0562*x[26]*x[27]-1.331*x[26]*x[28]-1.3657*x[26]*x[29]+0.6687*x[28]*x[28]+1.1835*x[28]*x[30]+1.235*x[29]*x[30]+0.5034*x[1]-0.3038*x[2]+0.0746*x[3]-0.7431*x[4]-0.3121*x[5]-0.8611*x[6]-0.2304*x[7]+0.9185*x[8]-0.5336*x[9]+0.6147*x[10]+0.4168*x[11]-0.1834*x[12]-0.8449*x[13]-0.0929*x[14]-0.878*x[15]+0.0854*x[16]+0.5306*x[17]+0.7055*x[18]-0.8899*x[19]-0.152*x[20]-0.3396*x[21]-0.5186*x[22]+0.2776*x[23]-0.987*x[24]-0.3901*x[25]+0.6882*x[26]+0.7189*x[27]-0.7019*x[28]+0.6531*x[29]+0.9852*x[30] <= 13.008)
@NLconstraint(m, e4, (-0.063*x[1]*x[3])-0.1704*x[1]*x[7]+0.0073*x[1]*x[9]-1.7239*x[1]*x[10]-0.4535*x[1]*x[16]-1.8207*x[1]*x[18]-1.5303*x[1]*x[21]-0.1584*x[1]*x[24]-1.6766*x[1]*x[25]+1.9003*x[1]*x[27]-1.3485*x[1]*x[28]+1.9409*x[2]*x[3]-0.3957*x[2]*x[4]+0.9241*x[2]*x[5]+1.55*x[2]*x[6]-0.0275*x[2]*x[7]-1.8739*x[2]*x[8]+0.336*x[2]*x[11]-0.8099*x[2]*x[12]+0.324*x[2]*x[15]-0.4335*x[2]*x[16]+0.6475*x[2]*x[17]-1.9853*x[2]*x[19]-1.6325*x[2]*x[20]+0.5384*x[2]*x[21]+1.0672*x[2]*x[24]-0.6491*x[2]*x[25]-1.0732*x[2]*x[26]+0.2127*x[2]*x[27]+0.3689*x[2]*x[28]-0.9856*x[2]*x[29]-0.7906*x[3]*x[4]+1.968*x[3]*x[8]-0.4495*x[3]*x[9]-1.1936*x[3]*x[11]+1.8331*x[3]*x[15]+0.5124*x[3]*x[17]+1.1367*x[3]*x[18]-0.6788*x[3]*x[19]+0.5447*x[3]*x[20]-0.234*x[3]*x[24]+1.549*x[3]*x[28]-1.6246*x[3]*x[29]+0.0649*x[3]*x[30]+0.7884*x[4]*x[5]-1.8929*x[4]*x[6]-1.2403*x[4]*x[7]-0.2251*x[4]*x[8]-1.9*x[4]*x[11]+0.3868*x[4]*x[12]+1.8416*x[4]*x[13]-0.501*x[4]*x[14]+0.71*x[4]*x[15]-1.7639*x[4]*x[18]+0.9822*x[4]*x[20]-0.9568*x[4]*x[21]+1.391*x[4]*x[23]+0.6144*x[4]*x[25]+1.9438*x[4]*x[26]-1.7287*x[4]*x[29]-0.9408*x[5]*x[6]-0.0456*x[5]*x[8]+1.9978*x[5]*x[10]-0.3887*x[5]*x[13]+1.6676*x[5]*x[15]-1.3168*x[5]*x[16]+0.249*x[5]*x[18]+1.5303*x[5]*x[20]+0.1556*x[5]*x[21]-0.0352*x[5]*x[22]-0.7828*x[5]*x[23]+1.0239*x[5]*x[24]-0.8601*x[5]*x[27]-1.021*x[5]*x[29]-0.4302*x[6]*x[8]-0.4086*x[6]*x[9]+1.0652*x[6]*x[10]+0.3157*x[6]*x[11]-0.0532*x[6]*x[13]+1.2832*x[6]*x[15]-1.5221*x[6]*x[16]-0.9485*x[6]*x[17]-0.9573*x[6]*x[22]-0.1891*x[6]*x[23]+0.2614*x[6]*x[25]+0.8229*x[6]*x[26]+1.7595*x[6]*x[27]-0.5991*x[6]*x[28]-0.5835*x[7]*x[8]+1.3991*x[7]*x[10]-1.7166*x[7]*x[11]-0.6001*x[7]*x[14]-0.5647*x[7]*x[15]+1.9263*x[7]*x[16]+1.6645*x[7]*x[17]-1.7479*x[7]*x[18]-1.9539*x[7]*x[21]+0.7207*x[7]*x[25]+1.3747*x[7]*x[27]+1.3941*x[7]*x[28]+0.2906*x[7]*x[29]-1.7561*x[8]*x[9]+0.4275*x[8]*x[11]+1.9126*x[8]*x[14]+0.392*x[8]*x[15]-0.6542*x[8]*x[16]-1.4383*x[8]*x[18]-1.3056*x[8]*x[19]-0.542*x[8]*x[22]-0.199*x[8]*x[27]+0.8192*x[8]*x[29]+0.8009*x[8]*x[30]-0.6357*x[9]*x[11]+1.1392*x[9]*x[14]-0.9476*x[9]*x[16]+1.8886*x[9]*x[17]-0.0804*x[9]*x[18]-0.9303*x[9]*x[19]-0.0252*x[9]*x[20]-0.4955*x[9]*x[22]+0.1836*x[9]*x[24]+1.934*x[9]*x[25]-1.6713*x[9]*x[26]+1.9776*x[9]*x[27]+0.3771*x[10]*x[11]-0.8345*x[10]*x[14]+0.6316*x[10]*x[15]-1.8852*x[10]*x[16]+0.2741*x[10]*x[18]+0.4082*x[10]*x[22]-0.0049*x[10]*x[25]+0.6782*x[10]*x[27]-0.2957*x[11]*x[11]-0.7971*x[11]*x[12]-0.3447*x[11]*x[13]+1.5444*x[11]*x[14]+0.3578*x[11]*x[20]+1.199*x[11]*x[21]+0.1164*x[11]*x[23]+0.7966*x[11]*x[27]+0.3773*x[11]*x[28]+0.2483*x[11]*x[30]+1.4353*x[12]*x[13]-1.5772*x[12]*x[14]-0.3215*x[12]*x[15]-1.4317*x[12]*x[17]+1.2236*x[12]*x[18]+1.7689*x[12]*x[23]-1.1*x[12]*x[25]-1.4746*x[12]*x[27]-1.6166*x[12]*x[29]+1.7548*x[13]*x[13]+0.9783*x[13]*x[15]-0.1293*x[13]*x[16]+0.8837*x[13]*x[17]+0.9879*x[13]*x[18]+0.6117*x[13]*x[19]+1.0116*x[13]*x[21]+0.7601*x[13]*x[24]-1.2884*x[13]*x[26]+0.5536*x[13]*x[27]-1.4619*x[13]*x[29]-1.0433*x[14]*x[16]+0.4473*x[14]*x[17]+0.1129*x[14]*x[18]+0.084*x[14]*x[20]+0.6727*x[14]*x[21]+0.9714*x[14]*x[22]-0.1563*x[14]*x[23]-0.8265*x[14]*x[25]+0.6796*x[15]*x[18]-1.7746*x[15]*x[20]+1.4514*x[15]*x[21]+0.9049*x[15]*x[23]+0.0071*x[15]*x[24]-1.5*x[15]*x[26]-1.9607*x[15]*x[28]+0.3282*x[15]*x[29]-0.2686*x[15]*x[30]-1.256*x[16]*x[16]+0.4912*x[16]*x[17]+1.3952*x[16]*x[19]+0.0045*x[16]*x[20]-0.3848*x[16]*x[23]+0.7089*x[16]*x[28]+1.8969*x[17]*x[17]-0.9826*x[17]*x[23]+1.3245*x[17]*x[24]+0.2174*x[17]*x[26]-1.6007*x[17]*x[29]-1.9406*x[17]*x[30]-0.5313*x[18]*x[19]+0.1724*x[18]*x[20]-1.0759*x[18]*x[28]+0.4366*x[19]*x[19]+0.4592*x[19]*x[20]-1.554*x[19]*x[25]-0.6314*x[19]*x[26]-0.5123*x[19]*x[28]-1.16*x[19]*x[29]+1.9195*x[20]*x[24]+1.1761*x[20]*x[25]+1.0122*x[20]*x[26]+1.6225*x[20]*x[27]-0.7104*x[20]*x[29]-0.4033*x[21]*x[21]-1.626*x[21]*x[22]-1.5136*x[21]*x[23]-0.7889*x[21]*x[25]-1.882*x[21]*x[26]+0.2024*x[21]*x[28]-1.3036*x[21]*x[29]-0.3526*x[22]*x[24]-0.1735*x[22]*x[26]+1.4411*x[22]*x[27]+0.5081*x[22]*x[28]+0.2397*x[22]*x[29]-1.4518*x[23]*x[26]+1.9548*x[23]*x[27]+0.3792*x[23]*x[29]-0.238*x[24]*x[24]+1.8215*x[24]*x[26]-0.3775*x[24]*x[27]+1.4443*x[24]*x[29]-0.077*x[25]*x[25]-1.5282*x[25]*x[26]+0.2196*x[25]*x[28]-1.0368*x[25]*x[30]+1.9563*x[26]*x[27]+0.5946*x[26]*x[30]-1.0667*x[27]*x[29]+0.8425*x[28]*x[29]+0.6203*x[1]+0.2521*x[2]-0.6707*x[3]+0.955*x[4]+0.8455*x[5]-0.5096*x[6]-0.0065*x[7]-0.1263*x[8]+0.7457*x[9]+0.3792*x[10]+0.1178*x[11]+0.6512*x[12]-0.9558*x[13]+0.341*x[14]+0.719*x[15]+0.611*x[16]-0.4823*x[17]+0.0363*x[18]+0.9652*x[19]+0.6076*x[20]+0.4611*x[21]-0.1773*x[22]+0.1227*x[23]+0.7597*x[24]-0.1722*x[25]+0.0273*x[26]-0.2037*x[27]+0.8614*x[28]-0.4014*x[29]+0.3752*x[30] <= 81.16)
@NLconstraint(m, e5, (-0.597*x[1]*x[4])-0.9113*x[1]*x[5]+1.8659*x[1]*x[6]+0.0895*x[1]*x[8]-0.3931*x[1]*x[9]+0.0095*x[1]*x[13]+1.0291*x[1]*x[16]-0.4828*x[1]*x[17]-0.018*x[1]*x[19]-0.4689*x[1]*x[21]-0.3702*x[1]*x[27]-1.2422*x[1]*x[29]+0.7669*x[2]*x[3]-0.9254*x[2]*x[4]-0.8811*x[2]*x[6]+1.1161*x[2]*x[8]-1.0552*x[2]*x[13]+0.5417*x[2]*x[14]+1.2061*x[2]*x[17]+1.4931*x[2]*x[18]-1.8702*x[2]*x[19]+1.4306*x[2]*x[21]-0.1613*x[2]*x[23]+1.367*x[2]*x[26]-0.571*x[2]*x[27]-0.6391*x[2]*x[28]+0.9246*x[2]*x[29]-1.216*x[3]*x[3]-1.235*x[3]*x[4]+1.2612*x[3]*x[5]-0.3615*x[3]*x[8]+1.5818*x[3]*x[9]-1.2866*x[3]*x[12]-1.0726*x[3]*x[13]+1.4961*x[3]*x[14]+0.5729*x[3]*x[15]-1.6259*x[3]*x[16]+0.5087*x[3]*x[18]-1.3779*x[3]*x[21]-1.6943*x[3]*x[23]-1.3609*x[3]*x[26]+1.9048*x[3]*x[28]-0.8378*x[3]*x[29]+1.3859*x[4]*x[4]+1.672*x[4]*x[5]-1.0416*x[4]*x[6]-1.0607*x[4]*x[7]+0.0075*x[4]*x[9]-0.9628*x[4]*x[17]+1.1573*x[4]*x[19]-1.0608*x[4]*x[20]+1.3533*x[4]*x[24]+1.6747*x[4]*x[25]+0.8755*x[4]*x[26]-1.883*x[4]*x[27]+1.1758*x[4]*x[28]-0.8002*x[4]*x[29]-1.9017*x[4]*x[30]-0.1022*x[5]*x[6]+0.4482*x[5]*x[9]-0.2585*x[5]*x[10]+1.5072*x[5]*x[11]+1.5541*x[5]*x[12]+0.4456*x[5]*x[17]-0.4441*x[5]*x[20]-0.8154*x[5]*x[21]+1.1668*x[5]*x[22]+1.3057*x[5]*x[26]+1.853*x[5]*x[28]-1.0151*x[5]*x[29]-0.1254*x[6]*x[8]-0.1669*x[6]*x[9]+0.3189*x[6]*x[10]-1.9702*x[6]*x[14]+1.5405*x[6]*x[15]-0.5806*x[6]*x[16]+1.8359*x[6]*x[18]-1.8346*x[6]*x[20]+0.7277*x[6]*x[21]-0.7557*x[6]*x[23]-0.0649*x[6]*x[25]+0.984*x[6]*x[26]-0.3642*x[6]*x[27]-0.3746*x[6]*x[29]+0.1452*x[7]*x[8]-1.4815*x[7]*x[11]+1.9309*x[7]*x[16]-1.9557*x[7]*x[17]-0.0208*x[7]*x[19]-0.9271*x[7]*x[20]+1.3847*x[7]*x[21]+1.2151*x[7]*x[23]-0.7198*x[7]*x[24]+0.9879*x[7]*x[25]+1.4362*x[7]*x[26]+1.2494*x[7]*x[27]-0.9456*x[7]*x[30]-0.5193*x[8]*x[10]-1.5403*x[8]*x[11]-1.5614*x[8]*x[13]+1.7965*x[8]*x[16]-1.5838*x[8]*x[19]-1.2266*x[8]*x[20]-0.2421*x[8]*x[21]-0.1249*x[8]*x[22]-1.8855*x[8]*x[25]+0.6466*x[8]*x[26]-1.2671*x[9]*x[9]-0.4423*x[9]*x[10]+0.0246*x[9]*x[13]+0.7008*x[9]*x[14]-1.0208*x[9]*x[17]+0.077*x[9]*x[18]-0.5878*x[9]*x[19]+1.8091*x[9]*x[20]+0.145*x[9]*x[21]+0.7079*x[9]*x[23]-0.9755*x[9]*x[25]-1.5317*x[9]*x[26]+0.0666*x[10]*x[10]+1.8515*x[10]*x[11]+0.9431*x[10]*x[12]+1.3684*x[10]*x[14]-0.1117*x[10]*x[18]-0.4099*x[10]*x[19]+0.0318*x[10]*x[20]+1.4346*x[10]*x[21]-0.2353*x[10]*x[25]-1.5656*x[10]*x[26]-0.02*x[10]*x[27]+0.715*x[10]*x[29]-1.5757*x[11]*x[11]-0.8664*x[11]*x[12]+1.3647*x[11]*x[17]-1.2564*x[11]*x[18]+1.7119*x[11]*x[20]+0.5226*x[11]*x[24]-0.8043*x[11]*x[27]+0.4138*x[11]*x[30]-1.075*x[12]*x[12]+0.4491*x[12]*x[13]-0.2713*x[12]*x[15]+1.385*x[12]*x[19]-0.3756*x[12]*x[20]-0.3716*x[12]*x[21]-0.7358*x[12]*x[22]-1.6589*x[12]*x[23]+0.4937*x[12]*x[25]+1.9613*x[12]*x[28]+1.785*x[12]*x[29]-1.4019*x[13]*x[14]-0.217*x[13]*x[15]-1.7618*x[13]*x[16]+1.9988*x[13]*x[25]+1.2993*x[13]*x[26]-1.8216*x[13]*x[27]-0.7633*x[13]*x[30]+1.1005*x[14]*x[14]-0.3027*x[14]*x[16]-0.2055*x[14]*x[17]-1.7573*x[14]*x[20]+0.9481*x[14]*x[23]-0.0699*x[14]*x[26]+1.5749*x[14]*x[28]+0.3054*x[14]*x[29]+0.9896*x[15]*x[15]-1.3031*x[15]*x[16]+1.2456*x[15]*x[18]+1.6995*x[15]*x[20]+1.0709*x[15]*x[25]-0.7488*x[15]*x[26]+0.3285*x[15]*x[28]+0.1661*x[15]*x[30]+1.795*x[16]*x[16]-0.0341*x[16]*x[17]-1.1558*x[16]*x[21]+1.6254*x[16]*x[22]+1.4556*x[16]*x[26]+1.5938*x[16]*x[27]-0.018*x[16]*x[28]-0.1022*x[16]*x[29]-1.4218*x[16]*x[30]-0.6876*x[17]*x[18]-1.9882*x[17]*x[21]-1.8028*x[17]*x[23]-0.2376*x[17]*x[25]-0.1434*x[17]*x[29]+1.8192*x[17]*x[30]+1.4754*x[18]*x[20]-1.6268*x[18]*x[21]+1.5734*x[18]*x[22]+0.2727*x[18]*x[23]+0.9862*x[18]*x[25]+0.2136*x[18]*x[27]-0.9943*x[18]*x[28]+0.2523*x[18]*x[29]-0.4446*x[19]*x[20]-1.3202*x[19]*x[21]-1.9069*x[19]*x[25]-1.3684*x[19]*x[27]-1.9966*x[19]*x[30]+0.6899*x[20]*x[20]-0.0245*x[20]*x[21]+0.5489*x[20]*x[23]-1.2416*x[20]*x[25]+0.7468*x[20]*x[27]-1.2513*x[20]*x[28]+0.1645*x[20]*x[29]-0.2212*x[21]*x[21]-1.1079*x[21]*x[22]-0.0889*x[21]*x[24]-1.9207*x[21]*x[25]-1.2523*x[21]*x[26]-0.8273*x[22]*x[22]-1.3212*x[22]*x[23]-0.1697*x[22]*x[25]-0.5906*x[22]*x[26]-0.8847*x[22]*x[28]+0.8788*x[22]*x[29]-0.4988*x[23]*x[23]+0.6798*x[23]*x[24]-1.2895*x[24]*x[26]+0.6639*x[24]*x[27]+1.5052*x[24]*x[29]+1.793*x[25]*x[26]+1.3541*x[25]*x[29]+1.7735*x[26]*x[30]-0.6011*x[27]*x[28]-1.3769*x[27]*x[29]-0.8068*x[28]*x[28]+1.7701*x[28]*x[29]+0.614*x[29]*x[29]-0.3302*x[1]+0.5485*x[2]+0.8347*x[3]+0.4254*x[4]-0.7869*x[5]+0.5556*x[6]-0.4956*x[7]+0.8858*x[8]-0.1841*x[9]-0.9755*x[10]-0.5142*x[11]-0.2685*x[12]+0.1053*x[13]+0.5918*x[14]+0.8662*x[15]+0.4306*x[16]-0.8576*x[17]-0.2207*x[18]-0.5381*x[19]+0.0343*x[20]+0.2637*x[21]+0.6268*x[22]-0.5338*x[23]-0.3151*x[24]-0.8537*x[25]+0.4269*x[26]-0.7355*x[27]-0.7527*x[28]-0.1299*x[29]-0.7062*x[30] <= 70.137)
@NLconstraint(m, e6, 0.3844*x[1]*x[3]-1.4892*x[1]*x[5]-1.7399*x[1]*x[9]+0.8555*x[1]*x[10]-1.1845*x[1]*x[12]+0.3642*x[1]*x[14]-1.5929*x[1]*x[17]+1.2835*x[1]*x[19]-0.468*x[1]*x[20]+1.7121*x[1]*x[21]-1.6596*x[1]*x[27]+0.3555*x[1]*x[29]-0.2118*x[2]*x[3]+1.1077*x[2]*x[4]-1.6676*x[2]*x[6]+0.6764*x[2]*x[7]+0.4848*x[2]*x[10]-0.9947*x[2]*x[13]-1.771*x[2]*x[14]-1.5249*x[2]*x[17]+0.7439*x[2]*x[19]-0.0871*x[2]*x[20]+0.7772*x[2]*x[22]+0.3567*x[2]*x[24]+0.1856*x[2]*x[25]-1.4106*x[2]*x[27]+1.6934*x[2]*x[28]-1.8352*x[3]*x[3]+1.5833*x[3]*x[4]+0.4482*x[3]*x[6]+0.8475*x[3]*x[7]+0.2173*x[3]*x[10]-1.8972*x[3]*x[11]+0.9256*x[3]*x[13]-1.3478*x[3]*x[14]-1.7414*x[3]*x[15]+0.6436*x[3]*x[16]+1.8262*x[3]*x[18]+0.2024*x[3]*x[19]-0.2793*x[3]*x[20]-0.6699*x[3]*x[21]+1.828*x[3]*x[22]+1.6149*x[3]*x[24]-1.7531*x[3]*x[26]-1.9865*x[3]*x[27]-1.264*x[3]*x[29]+0.4791*x[4]*x[5]+0.6614*x[4]*x[6]+1.4061*x[4]*x[10]+0.9304*x[4]*x[11]-0.9504*x[4]*x[12]+0.7061*x[4]*x[13]+0.6327*x[4]*x[14]+1.5942*x[4]*x[18]-1.4422*x[4]*x[22]+0.7553*x[4]*x[28]+1.4768*x[4]*x[29]+1.6652*x[5]*x[5]-1.156*x[5]*x[6]-0.7653*x[5]*x[7]-0.7821*x[5]*x[8]+0.8544*x[5]*x[9]+1.9741*x[5]*x[10]-1.2566*x[5]*x[16]-1.5644*x[5]*x[17]-0.788*x[5]*x[18]+1.8493*x[5]*x[19]+0.2401*x[5]*x[21]+1.256*x[5]*x[22]+0.7437*x[5]*x[24]+0.6826*x[5]*x[25]-1.3278*x[5]*x[27]+0.6119*x[5]*x[29]+0.6243*x[5]*x[30]-0.0612*x[6]*x[7]+0.4321*x[6]*x[8]-1.7059*x[6]*x[9]+1.4057*x[6]*x[10]+1.0351*x[6]*x[11]+0.7241*x[6]*x[13]-1.5299*x[6]*x[14]+0.2302*x[6]*x[16]+1.1111*x[6]*x[21]-1.1662*x[6]*x[24]+1.3708*x[6]*x[25]+0.8638*x[6]*x[26]-0.9842*x[6]*x[28]+0.2035*x[6]*x[29]+0.6545*x[7]*x[9]-1.6987*x[7]*x[12]-1.4937*x[7]*x[13]+0.1069*x[7]*x[14]+0.8966*x[7]*x[15]-1.5835*x[7]*x[19]+0.4574*x[7]*x[20]-1.3617*x[7]*x[21]+1.6571*x[7]*x[24]+0.3375*x[7]*x[25]-1.6273*x[7]*x[26]-1.6896*x[7]*x[27]+1.3201*x[7]*x[28]-1.2995*x[8]*x[8]-0.3202*x[8]*x[10]-1.1011*x[8]*x[12]+1.5408*x[8]*x[13]-1.7942*x[8]*x[14]+1.9105*x[8]*x[15]+1.5387*x[8]*x[17]+0.6299*x[8]*x[18]-1.8028*x[8]*x[19]+1.1655*x[8]*x[23]-0.9325*x[8]*x[24]+1.5451*x[8]*x[25]-1.2267*x[8]*x[27]+1.4696*x[8]*x[29]-1.5518*x[8]*x[30]-0.667*x[9]*x[11]-0.5093*x[9]*x[13]-1.9201*x[9]*x[14]+1.5034*x[9]*x[16]+1.8824*x[9]*x[17]+0.7481*x[9]*x[18]+1.5026*x[9]*x[20]-0.5302*x[9]*x[23]+0.5451*x[9]*x[24]-0.711*x[9]*x[25]-1.9171*x[9]*x[26]+1.8343*x[9]*x[27]+1.8477*x[10]*x[10]+1.3526*x[10]*x[11]+1.2384*x[10]*x[14]-1.1131*x[10]*x[17]+1.1268*x[10]*x[18]-0.8762*x[10]*x[19]+0.7845*x[10]*x[20]+0.9271*x[10]*x[21]+0.5299*x[10]*x[22]-0.4869*x[10]*x[24]-1.1305*x[10]*x[25]+1.7976*x[10]*x[27]+1.1122*x[10]*x[30]-1.1454*x[11]*x[14]+1.7852*x[11]*x[18]+1.1226*x[11]*x[20]+0.4508*x[11]*x[23]-0.1441*x[11]*x[24]+1.5201*x[11]*x[28]-1.0254*x[11]*x[30]+0.756*x[12]*x[12]-1.1879*x[12]*x[13]+1.8377*x[12]*x[15]+1.76*x[12]*x[16]+1.843*x[12]*x[18]+0.2416*x[12]*x[20]-0.8613*x[12]*x[24]+1.487*x[12]*x[26]+0.6024*x[13]*x[14]+1.9971*x[13]*x[15]-1.2619*x[13]*x[16]-0.6237*x[13]*x[22]+0.7567*x[13]*x[23]+0.9319*x[13]*x[24]+0.9925*x[13]*x[25]-1.0782*x[13]*x[27]+1.5216*x[13]*x[28]+1.2601*x[13]*x[29]-1.5622*x[14]*x[17]+0.2751*x[14]*x[18]+0.592*x[14]*x[19]-1.507*x[14]*x[20]+0.0413*x[14]*x[23]+1.2866*x[14]*x[24]-0.0933*x[14]*x[26]+1.8061*x[14]*x[28]-0.6697*x[15]*x[15]-1.9817*x[15]*x[16]+1.5703*x[15]*x[17]-1.8621*x[15]*x[19]-0.8125*x[15]*x[20]+1.2431*x[15]*x[21]+0.1475*x[15]*x[22]-1.1788*x[15]*x[25]+1.9729*x[15]*x[26]-1.3169*x[15]*x[29]-1.9807*x[16]*x[16]+0.5612*x[16]*x[19]+0.4489*x[16]*x[21]-0.4948*x[16]*x[23]-0.1417*x[16]*x[24]-0.0528*x[16]*x[25]+0.1328*x[16]*x[26]+1.7935*x[16]*x[28]-1.963*x[16]*x[29]-1.7467*x[17]*x[18]-0.6839*x[17]*x[19]-1.1409*x[17]*x[21]-0.0503*x[17]*x[24]+1.6947*x[17]*x[28]-1.2381*x[18]*x[19]-0.9628*x[18]*x[22]+1.2812*x[18]*x[23]+0.2802*x[18]*x[29]-1.0275*x[19]*x[20]+1.6174*x[19]*x[21]+1.5241*x[19]*x[22]-1.1047*x[19]*x[23]-1.5697*x[19]*x[25]+1.2664*x[20]*x[21]+0.7915*x[20]*x[22]+1.6652*x[20]*x[23]-0.0054*x[20]*x[24]-0.0531*x[20]*x[26]-0.2693*x[20]*x[27]-1.6144*x[20]*x[28]-1.2228*x[21]*x[24]-1.1165*x[21]*x[25]+0.7923*x[21]*x[28]+1.1446*x[21]*x[29]-0.8199*x[22]*x[25]-0.5496*x[22]*x[27]-0.1474*x[23]*x[23]+0.3817*x[23]*x[27]+1.8357*x[23]*x[29]+1.9032*x[24]*x[26]-0.451*x[24]*x[28]+0.054*x[24]*x[29]+1.6856*x[25]*x[28]-0.8948*x[25]*x[29]+1.0491*x[26]*x[29]-0.7003*x[26]*x[30]+1.2122*x[29]*x[29]+0.6294*x[29]*x[30]-0.2702*x[1]+0.4839*x[2]-0.6452*x[3]+0.089*x[4]+0.023*x[5]+0.3791*x[6]+0.5737*x[7]+0.369*x[8]+0.8422*x[9]+0.6019*x[10]-0.8238*x[11]+0.8021*x[12]-0.3225*x[13]-0.7659*x[14]-0.6993*x[15]+0.2363*x[16]-0.2564*x[17]+0.4405*x[18]+0.3341*x[19]-0.6404*x[20]-0.0747*x[21]+0.3435*x[22]+0.733*x[23]-0.3162*x[24]+0.2713*x[25]+0.5158*x[26]-0.954*x[27]-0.4765*x[28]+0.6043*x[29]+0.6981*x[30] <= 11.813)
@NLconstraint(m, e7, (-0.4774*x[1]*x[1])-1.5883*x[1]*x[2]-0.019*x[1]*x[7]+1.563*x[1]*x[11]-0.3462*x[1]*x[22]+0.754*x[1]*x[23]-0.9414*x[1]*x[25]-0.4301*x[1]*x[26]-1.2962*x[1]*x[27]-1.0868*x[1]*x[30]+0.6838*x[2]*x[5]-1.1554*x[2]*x[6]+0.4917*x[2]*x[10]+0.4026*x[2]*x[14]-1.9259*x[2]*x[15]-0.1302*x[2]*x[16]-1.2436*x[2]*x[18]-0.8468*x[2]*x[19]+1.6898*x[2]*x[22]-0.9809*x[2]*x[23]+0.6409*x[2]*x[24]-0.156*x[2]*x[25]+0.5329*x[2]*x[26]+0.8571*x[2]*x[29]+0.1881*x[3]*x[4]-0.2603*x[3]*x[5]-1.7506*x[3]*x[7]+0.1116*x[3]*x[8]-0.0794*x[3]*x[9]-1.1659*x[3]*x[10]+1.892*x[3]*x[12]+0.257*x[3]*x[15]-1.2073*x[3]*x[16]+1.529*x[3]*x[17]-1.2966*x[3]*x[19]-1.7075*x[3]*x[20]+1.3599*x[3]*x[21]+0.0242*x[3]*x[22]+0.856*x[3]*x[23]-0.7378*x[3]*x[26]-0.3699*x[3]*x[27]+1.9457*x[3]*x[28]+1.2205*x[3]*x[29]+1.8984*x[4]*x[6]+1.1262*x[4]*x[7]-0.0546*x[4]*x[9]+0.5597*x[4]*x[11]+0.6179*x[4]*x[15]-1.9112*x[4]*x[17]-0.3335*x[4]*x[18]-1.0432*x[4]*x[21]-0.9869*x[4]*x[23]-1.8646*x[4]*x[24]+1.2376*x[4]*x[25]-0.0289*x[4]*x[27]-0.7359*x[4]*x[29]+0.5314*x[4]*x[30]+0.6057*x[5]*x[5]+0.9437*x[5]*x[6]+1.1436*x[5]*x[11]+0.0376*x[5]*x[15]-1.6085*x[5]*x[17]+1.8096*x[5]*x[18]+0.6557*x[5]*x[19]+1.8787*x[5]*x[20]+1.8321*x[5]*x[22]-0.0311*x[5]*x[24]-0.7254*x[5]*x[25]-0.2739*x[5]*x[26]-1.1496*x[5]*x[27]-1.4528*x[5]*x[30]+1.4004*x[6]*x[6]-1.3126*x[6]*x[8]-0.9025*x[6]*x[9]-0.1011*x[6]*x[10]-1.6994*x[6]*x[12]+1.9104*x[6]*x[15]+1.5817*x[6]*x[17]+0.691*x[6]*x[18]-1.0008*x[6]*x[23]-0.4434*x[6]*x[24]+1.1616*x[6]*x[25]-1.4305*x[6]*x[27]-1.0667*x[6]*x[28]-0.1132*x[6]*x[29]+0.0983*x[7]*x[10]-0.0148*x[7]*x[12]-0.9772*x[7]*x[14]+1.4424*x[7]*x[18]+0.6956*x[7]*x[19]+0.8109*x[7]*x[20]-0.6307*x[7]*x[21]-0.3669*x[7]*x[23]-0.0882*x[7]*x[24]+1.3371*x[7]*x[25]+1.5828*x[7]*x[26]+1.4909*x[7]*x[29]-1.7408*x[7]*x[30]-0.202*x[8]*x[9]-0.0464*x[8]*x[10]+1.1062*x[8]*x[12]+0.7208*x[8]*x[15]+1.8709*x[8]*x[18]+1.3994*x[8]*x[19]-0.0811*x[8]*x[24]+1.925*x[8]*x[27]+1.7113*x[8]*x[29]-0.9428*x[9]*x[10]-0.4791*x[9]*x[12]-0.0091*x[9]*x[14]-1.7748*x[9]*x[18]+1.2972*x[9]*x[19]+0.3694*x[9]*x[22]-1.7091*x[9]*x[23]+0.1902*x[9]*x[24]+0.4751*x[9]*x[25]-1.4125*x[9]*x[26]+0.6841*x[9]*x[29]+1.8135*x[10]*x[12]-0.8567*x[10]*x[15]+0.8638*x[10]*x[16]-0.5019*x[10]*x[17]+1.4143*x[10]*x[18]-1.8692*x[10]*x[19]+0.175*x[10]*x[20]-1.4294*x[10]*x[21]-0.5967*x[10]*x[25]-0.0141*x[10]*x[26]+0.9256*x[11]*x[12]-1.7667*x[11]*x[15]+0.2467*x[11]*x[16]+1.8875*x[11]*x[17]+1.4701*x[11]*x[19]-1.7349*x[11]*x[20]+0.7276*x[11]*x[23]+1.8735*x[11]*x[25]+1.0595*x[11]*x[27]+1.4897*x[11]*x[28]-1.0667*x[11]*x[30]+0.4728*x[12]*x[14]-1.688*x[12]*x[15]-1.1213*x[12]*x[16]+1.0955*x[12]*x[20]+0.3448*x[12]*x[26]+1.4444*x[12]*x[29]+1.4089*x[13]*x[13]-0.9624*x[13]*x[14]+0.7024*x[13]*x[15]+0.4596*x[13]*x[16]+0.2155*x[13]*x[19]-0.7195*x[13]*x[21]-0.0018*x[13]*x[23]+1.7374*x[13]*x[25]+1.7978*x[13]*x[26]+1.6166*x[13]*x[28]+1.9005*x[13]*x[29]+1.264*x[14]*x[14]-1.0059*x[14]*x[15]-1.1097*x[14]*x[16]+0.8483*x[14]*x[17]-0.267*x[14]*x[23]+0.2955*x[14]*x[26]-0.4739*x[14]*x[27]-1.3796*x[14]*x[28]-1.6498*x[14]*x[29]+0.5881*x[15]*x[15]+1.3502*x[15]*x[17]+1.4183*x[15]*x[18]+0.0323*x[15]*x[24]+1.6103*x[15]*x[25]-1.5849*x[15]*x[28]-0.05*x[16]*x[19]-1.0205*x[16]*x[20]+1.2123*x[16]*x[22]+0.51*x[16]*x[23]+0.4477*x[16]*x[25]-0.5301*x[16]*x[26]+1.5622*x[16]*x[27]-0.5245*x[16]*x[28]-1.5996*x[16]*x[29]-0.5397*x[16]*x[30]+0.7164*x[17]*x[17]-1.822*x[17]*x[18]-1.4193*x[17]*x[22]+0.2832*x[17]*x[24]+1.2644*x[17]*x[28]+1.6838*x[17]*x[30]+1.6402*x[18]*x[18]+0.4927*x[18]*x[19]+0.7666*x[18]*x[21]-1.7353*x[18]*x[22]-1.051*x[18]*x[23]+1.7187*x[18]*x[26]-0.9593*x[18]*x[28]+1.0315*x[19]*x[22]-1.8239*x[19]*x[23]+0.3443*x[19]*x[25]+0.9832*x[19]*x[27]+1.9633*x[19]*x[28]-0.9177*x[19]*x[30]+0.5896*x[20]*x[25]-1.2238*x[20]*x[26]+1.9023*x[21]*x[22]-0.1831*x[21]*x[23]-0.7899*x[21]*x[24]+1.2205*x[21]*x[26]+1.6793*x[21]*x[27]+0.6635*x[21]*x[28]+1.6272*x[22]*x[23]+1.6901*x[22]*x[24]+1.6403*x[22]*x[25]-0.6965*x[22]*x[26]+1.2925*x[22]*x[28]+0.7167*x[22]*x[29]-0.7459*x[23]*x[24]+1.1312*x[23]*x[25]-1.1342*x[23]*x[26]+0.7455*x[23]*x[27]-1.2051*x[23]*x[28]+0.2553*x[23]*x[29]-0.7756*x[23]*x[30]+1.2568*x[24]*x[25]+0.6609*x[24]*x[26]-0.1168*x[24]*x[29]-0.5115*x[25]*x[30]+1.667*x[26]*x[26]+0.3158*x[26]*x[27]+0.8242*x[26]*x[29]-0.667*x[27]*x[28]+0.015*x[27]*x[29]-1.37*x[27]*x[30]+0.6857*x[28]*x[30]+0.1318*x[1]-0.7532*x[2]-0.0109*x[3]-0.8793*x[4]-0.2293*x[5]+0.9993*x[6]-0.3208*x[7]-0.2816*x[8]+0.629*x[9]+0.2195*x[10]-0.3729*x[11]+0.9299*x[12]+0.8743*x[13]-0.2425*x[14]-0.0682*x[15]-0.9871*x[16]-0.9269*x[17]+0.8956*x[18]-0.1611*x[19]+0.8843*x[20]+0.5576*x[21]-0.327*x[22]+0.2869*x[23]-0.6348*x[24]+0.4904*x[25]-0.183*x[26]-0.1587*x[27]-0.9*x[28]-0.8551*x[29]-0.966*x[30] <= 1.343)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 