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
@NLconstraint(m, e1, -(0.2004*x[1]*x[4]-1.1167*x[1]*x[5]-0.1326*x[1]*x[8]+1.6765*x[1]*x[9]-0.6649*x[1]*x[12]+1.7479*x[1]*x[13]+0.0069*x[1]*x[18]+0.4183*x[1]*x[28]+0.8304*x[2]*x[2]-1.4731*x[2]*x[3]-1.2665*x[2]*x[4]-0.6096*x[2]*x[7]-0.5359*x[2]*x[10]+0.8788*x[2]*x[12]-0.6935*x[2]*x[13]+0.9327*x[2]*x[14]-1.9592*x[2]*x[15]-1.0548*x[2]*x[16]-1.2883*x[2]*x[17]+0.0385*x[2]*x[20]+0.424*x[2]*x[21]-0.1658*x[2]*x[22]-0.7664*x[2]*x[23]+1.9265*x[2]*x[24]-0.5495*x[2]*x[25]-1.2142*x[2]*x[26]+0.3773*x[2]*x[27]-0.8474*x[3]*x[4]+1.7034*x[3]*x[5]+1.8116*x[3]*x[6]-0.9946*x[3]*x[8]-1.5493*x[3]*x[10]+1.61*x[3]*x[12]-0.2213*x[3]*x[13]-0.4485*x[3]*x[14]+0.1307*x[3]*x[16]-0.6653*x[3]*x[17]+0.4686*x[3]*x[18]-0.795*x[3]*x[21]-0.1735*x[3]*x[22]-0.3766*x[3]*x[23]-1.2079*x[3]*x[24]-0.6162*x[3]*x[26]-0.1892*x[3]*x[28]-0.7873*x[3]*x[29]+1.5702*x[4]*x[4]-0.0866*x[4]*x[5]-1.1527*x[4]*x[8]+0.7687*x[4]*x[9]-0.6696*x[4]*x[10]-0.8386*x[4]*x[11]+0.5296*x[4]*x[12]-1.8155*x[4]*x[19]-0.0383*x[4]*x[20]+1.478*x[4]*x[21]-1.053*x[4]*x[23]+0.0291*x[4]*x[25]+0.4406*x[4]*x[27]+0.4883*x[4]*x[29]-1.5038*x[5]*x[6]+1.0617*x[5]*x[7]+1.4919*x[5]*x[9]-1.5035*x[5]*x[11]-1.8368*x[5]*x[12]-0.2931*x[5]*x[13]-1.2303*x[5]*x[16]+1.826*x[5]*x[17]+1.5869*x[5]*x[18]+1.01*x[5]*x[19]-1.935*x[5]*x[24]-1.6961*x[5]*x[26]-1.5318*x[5]*x[27]-1.1406*x[5]*x[28]-1.5961*x[5]*x[30]+0.341*x[6]*x[7]+0.1813*x[6]*x[10]+0.4016*x[6]*x[12]-1.933*x[6]*x[14]+1.6509*x[6]*x[15]+1.6218*x[6]*x[16]+1.0722*x[6]*x[17]+1.138*x[6]*x[18]-0.8231*x[6]*x[19]+0.3708*x[6]*x[20]-0.8673*x[6]*x[21]-0.611*x[6]*x[22]+0.2356*x[6]*x[24]-0.4188*x[6]*x[25]-0.7806*x[6]*x[26]+0.2316*x[6]*x[27]+0.8796*x[6]*x[30]+0.5227*x[7]*x[7]+0.2368*x[7]*x[8]+1.8487*x[7]*x[10]+0.6188*x[7]*x[13]+1.4765*x[7]*x[14]+0.1176*x[7]*x[15]+1.391*x[7]*x[17]+0.6175*x[7]*x[18]+1.4708*x[7]*x[21]-0.9675*x[7]*x[22]+0.3084*x[7]*x[24]+1.9754*x[7]*x[25]-0.5076*x[7]*x[27]+0.615*x[7]*x[28]-1.9126*x[7]*x[29]+0.3598*x[8]*x[8]-0.2879*x[8]*x[11]+0.4944*x[8]*x[12]+0.4986*x[8]*x[13]-1.8663*x[8]*x[14]-0.9913*x[8]*x[16]+0.8592*x[8]*x[17]-1.4993*x[8]*x[19]+1.6484*x[8]*x[22]+0.2935*x[8]*x[23]-0.9664*x[8]*x[27]-1.6037*x[8]*x[28]+0.6662*x[8]*x[29]-1.2189*x[9]*x[11]-1.166*x[9]*x[13]+1.9645*x[9]*x[14]-0.7864*x[9]*x[15]+0.6356*x[9]*x[17]-0.2665*x[9]*x[20]+0.7656*x[9]*x[22]-1.773*x[9]*x[23]+0.3237*x[9]*x[24]-0.0024*x[9]*x[26]+1.1751*x[10]*x[12]+1.097*x[10]*x[13]+1.3982*x[10]*x[15]-0.4184*x[10]*x[18]+0.439*x[10]*x[19]-0.734*x[10]*x[21]-0.4315*x[10]*x[26]-0.3662*x[11]*x[15]-0.2658*x[11]*x[17]+1.0278*x[11]*x[19]-0.3692*x[11]*x[24]-1.3537*x[11]*x[26]+1.4293*x[12]*x[12]-1.979*x[12]*x[14]+1.0739*x[12]*x[19]+0.9682*x[12]*x[24]-1.2467*x[12]*x[25]+1.6527*x[12]*x[27]-0.0919*x[12]*x[28]+0.742*x[13]*x[16]-1.53*x[13]*x[19]+0.9775*x[13]*x[20]+0.601*x[13]*x[21]+0.6256*x[13]*x[22]+1.5292*x[13]*x[29]+1.3407*x[14]*x[15]+1.5835*x[14]*x[16]-0.9356*x[14]*x[17]-0.6211*x[14]*x[18]+0.2184*x[14]*x[19]+0.4167*x[14]*x[20]+0.2367*x[14]*x[23]+0.4886*x[14]*x[24]-0.0797*x[14]*x[25]+0.5788*x[14]*x[26]-1.271*x[14]*x[27]+0.4377*x[14]*x[28]+1.639*x[14]*x[29]-1.6717*x[15]*x[15]+1.778*x[15]*x[16]+0.0742*x[15]*x[18]+0.219*x[15]*x[19]-0.6582*x[15]*x[21]+1.3803*x[15]*x[22]-1.5598*x[15]*x[24]+0.1689*x[15]*x[25]-1.9091*x[15]*x[26]+0.1823*x[15]*x[28]+1.4526*x[15]*x[29]-1.2897*x[16]*x[16]-0.1295*x[16]*x[18]+0.7944*x[16]*x[19]-1.9488*x[16]*x[27]-1.1135*x[17]*x[20]+0.9113*x[17]*x[21]+0.9258*x[17]*x[22]-0.2023*x[17]*x[23]-1.9039*x[17]*x[24]-1.3121*x[17]*x[27]+0.5001*x[17]*x[30]+0.4548*x[18]*x[19]-0.4321*x[18]*x[20]-0.5339*x[18]*x[22]-0.1146*x[18]*x[23]+1.0175*x[18]*x[25]-1.9505*x[18]*x[27]+0.3145*x[19]*x[19]-1.6167*x[19]*x[20]+1.7193*x[19]*x[21]-1.997*x[19]*x[23]-0.4944*x[19]*x[26]+1.9862*x[19]*x[29]-1.0188*x[20]*x[21]-1.4667*x[20]*x[24]-1.0208*x[20]*x[25]-1.6566*x[20]*x[27]+1.3493*x[20]*x[30]-0.1272*x[21]*x[21]+0.5037*x[21]*x[22]+1.8364*x[21]*x[25]-0.6312*x[21]*x[26]-1.7276*x[21]*x[27]+0.2896*x[21]*x[28]-0.1111*x[22]*x[28]-0.5272*x[22]*x[29]-1.6238*x[23]*x[24]-0.5391*x[23]*x[25]-0.4536*x[23]*x[26]+0.1847*x[23]*x[28]-1.5227*x[24]*x[24]+1.9191*x[24]*x[28]-0.4557*x[24]*x[29]-0.2665*x[25]*x[28]+1.5808*x[25]*x[29]-1.8896*x[25]*x[30]+0.8551*x[26]*x[27]+1.9843*x[26]*x[28]+1.3718*x[26]*x[29]-0.0612*x[27]*x[28]+0.6512*x[27]*x[29]-1.002*x[28]*x[29]+1.9895*x[28]*x[30]-0.4885*x[29]*x[29]-0.758*x[1]-0.2395*x[2]-0.3083*x[3]-0.0659*x[4]-0.1268*x[5]+0.6098*x[6]-0.1051*x[7]+0.8154*x[8]-0.4079*x[9]-0.7839*x[10]-0.2462*x[11]+0.7548*x[12]+0.0369*x[13]-0.8673*x[14]+0.0755*x[15]+0.1464*x[16]-0.8045*x[17]+0.3552*x[18]-0.8414*x[19]-0.2646*x[20]+0.1655*x[21]+0.9512*x[22]+0.3483*x[23]+0.4578*x[24]-0.5448*x[25]+0.694*x[26]+0.075*x[27]+0.2892*x[28]+0.9072*x[29]-0.6772*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, 0.6893*x[1]*x[4]-0.7839*x[1]*x[5]-1.1627*x[1]*x[9]+1.6088*x[1]*x[11]+0.4426*x[1]*x[16]-1.1526*x[1]*x[22]-1.2159*x[1]*x[28]+1.6586*x[2]*x[3]+1.817*x[2]*x[4]+0.183*x[2]*x[6]-0.8055*x[2]*x[8]+0.228*x[2]*x[9]-1.3899*x[2]*x[12]+1.2028*x[2]*x[16]-0.6257*x[2]*x[17]-0.045*x[2]*x[21]+0.3613*x[2]*x[22]-1.6083*x[2]*x[23]-0.9489*x[2]*x[24]+0.3437*x[2]*x[26]-0.1536*x[3]*x[5]+1.4313*x[3]*x[6]-0.3926*x[3]*x[7]-1.8168*x[3]*x[8]-0.8579*x[3]*x[11]+0.9007*x[3]*x[12]-0.6857*x[3]*x[13]+1.9694*x[3]*x[14]+1.6903*x[3]*x[15]-1.2899*x[3]*x[18]-0.9956*x[3]*x[23]+0.253*x[3]*x[24]-1.7161*x[3]*x[25]-1.6589*x[3]*x[26]+0.3011*x[3]*x[27]-0.2409*x[3]*x[28]-1.0083*x[3]*x[29]-1.3781*x[3]*x[30]-1.9246*x[4]*x[5]-1.9184*x[4]*x[7]-1.4026*x[4]*x[8]-1.8111*x[4]*x[10]+0.8776*x[4]*x[11]-1.9241*x[4]*x[12]-1.7907*x[4]*x[13]-1.9739*x[4]*x[17]-1.5608*x[4]*x[18]+0.6871*x[4]*x[19]-0.3319*x[4]*x[23]-1.6672*x[4]*x[25]+0.2735*x[4]*x[26]+0.2293*x[4]*x[27]+0.6299*x[4]*x[28]-0.6957*x[4]*x[29]-1.0203*x[5]*x[6]+1.3539*x[5]*x[7]+0.6341*x[5]*x[8]-0.7767*x[5]*x[9]+0.2558*x[5]*x[12]-1.761*x[5]*x[14]+0.979*x[5]*x[15]+1.3171*x[5]*x[16]+0.5869*x[5]*x[19]-1.0776*x[5]*x[20]-1.6542*x[5]*x[23]-0.5101*x[5]*x[24]-0.4842*x[5]*x[26]-1.9101*x[5]*x[27]-1.536*x[6]*x[7]-1.9418*x[6]*x[8]+0.2929*x[6]*x[9]-1.0723*x[6]*x[10]+1.0537*x[6]*x[11]+1.1167*x[6]*x[12]-1.1717*x[6]*x[13]-0.8782*x[6]*x[16]-1.4852*x[6]*x[17]+1.2948*x[6]*x[18]+0.7744*x[6]*x[19]+1.313*x[6]*x[20]-1.8883*x[6]*x[21]-1.8789*x[6]*x[22]+0.1359*x[6]*x[26]+0.8801*x[6]*x[28]-1.3976*x[6]*x[29]+0.7586*x[6]*x[30]-0.7774*x[7]*x[8]+0.8768*x[7]*x[10]-1.9429*x[7]*x[11]+0.5977*x[7]*x[12]-0.4836*x[7]*x[14]+0.5289*x[7]*x[15]+0.0312*x[7]*x[17]-1.8622*x[7]*x[19]+1.3349*x[7]*x[20]-1.5921*x[7]*x[22]+1.5254*x[7]*x[24]-0.3076*x[7]*x[26]+0.9099*x[7]*x[28]+1.9524*x[8]*x[8]-0.1958*x[8]*x[9]+1.8062*x[8]*x[10]+1.1012*x[8]*x[12]-0.9332*x[8]*x[13]+1.8699*x[8]*x[14]+1.4138*x[8]*x[16]+1.6262*x[8]*x[18]-1.256*x[8]*x[19]+0.3784*x[8]*x[21]+0.9571*x[8]*x[24]+0.1622*x[9]*x[10]+1.9422*x[9]*x[11]-1.0387*x[9]*x[13]-0.8683*x[9]*x[16]-0.9293*x[9]*x[17]-1.1482*x[9]*x[21]-1.7123*x[9]*x[23]-0.1859*x[9]*x[25]-1.864*x[9]*x[28]-0.0771*x[9]*x[29]-0.7268*x[9]*x[30]-1.0379*x[10]*x[10]-0.2788*x[10]*x[11]-0.4771*x[10]*x[16]-0.3775*x[10]*x[19]+1.0116*x[10]*x[21]-0.0061*x[10]*x[22]+1.9383*x[10]*x[23]+1.0789*x[10]*x[25]+1.5235*x[10]*x[26]-1.1975*x[10]*x[27]+0.8699*x[11]*x[12]+1.4*x[11]*x[13]+1.7932*x[11]*x[14]-0.2866*x[11]*x[16]-0.2728*x[11]*x[18]-0.2329*x[11]*x[20]+1.6908*x[11]*x[21]-1.3301*x[11]*x[24]+0.2977*x[11]*x[25]-0.882*x[11]*x[26]-0.5234*x[11]*x[27]+1.7576*x[11]*x[29]+1.8081*x[12]*x[15]+0.1267*x[12]*x[17]-0.3276*x[12]*x[19]-0.3497*x[12]*x[20]-0.2738*x[12]*x[22]+0.6953*x[12]*x[23]-0.8978*x[12]*x[28]-1.3438*x[12]*x[29]+0.322*x[12]*x[30]+1.0471*x[13]*x[13]+1.6137*x[13]*x[14]+0.7866*x[13]*x[15]-1.5874*x[13]*x[16]+1.6504*x[13]*x[18]+0.7368*x[13]*x[20]-0.4998*x[13]*x[21]-0.0182*x[13]*x[22]+1.3883*x[13]*x[24]-1.4463*x[13]*x[25]+0.4561*x[13]*x[26]-0.6802*x[13]*x[28]-0.3212*x[14]*x[15]+0.9763*x[14]*x[19]-0.3327*x[14]*x[21]-1.0128*x[14]*x[22]-0.1688*x[14]*x[26]+0.8935*x[14]*x[27]-1.5518*x[15]*x[15]-0.608*x[15]*x[18]+1.5324*x[15]*x[20]+1.5304*x[15]*x[22]-0.8524*x[15]*x[26]-0.4748*x[15]*x[27]+0.1182*x[15]*x[28]-1.2498*x[16]*x[16]-0.0535*x[16]*x[26]-1.7791*x[16]*x[28]-0.3936*x[16]*x[30]-0.2221*x[17]*x[18]+1.9283*x[17]*x[21]-1.8752*x[17]*x[24]-1.0907*x[17]*x[25]-0.1487*x[18]*x[18]-0.6108*x[18]*x[20]-1.561*x[18]*x[21]+0.0991*x[18]*x[22]-0.6726*x[18]*x[23]+0.347*x[18]*x[24]-1.4128*x[18]*x[25]+0.535*x[18]*x[26]-1.8734*x[18]*x[28]-0.4114*x[18]*x[30]+1.1864*x[19]*x[21]+0.9672*x[19]*x[24]-1.3269*x[19]*x[27]-1.0741*x[20]*x[20]-0.0854*x[20]*x[21]+0.4629*x[20]*x[22]+0.1152*x[20]*x[23]+0.7945*x[20]*x[27]+0.8094*x[20]*x[28]+1.4718*x[20]*x[29]-1.3503*x[20]*x[30]+0.7888*x[21]*x[24]+0.1989*x[21]*x[25]+0.4148*x[21]*x[26]+1.4248*x[21]*x[27]-0.0931*x[22]*x[23]-1.044*x[22]*x[25]-0.7606*x[22]*x[26]+0.5528*x[22]*x[28]-0.7281*x[22]*x[29]+1.3003*x[22]*x[30]+1.7008*x[23]*x[24]-1.7252*x[23]*x[25]-0.1511*x[23]*x[27]-1.2219*x[23]*x[28]+1.2588*x[23]*x[29]-1.837*x[24]*x[26]+1.582*x[24]*x[28]-1.914*x[24]*x[29]+0.5814*x[25]*x[26]-0.5451*x[26]*x[26]+1.7185*x[26]*x[27]-1.9002*x[27]*x[27]-0.4324*x[27]*x[29]-1.4437*x[27]*x[30]-0.0779*x[28]*x[30]-0.3243*x[29]*x[29]-0.3633*x[1]-0.6552*x[2]+0.2625*x[3]+0.7304*x[4]+0.051*x[5]-0.0884*x[6]+0.2995*x[7]-0.9022*x[8]-0.6448*x[9]+0.0435*x[10]+0.0293*x[11]+0.8863*x[12]+0.627*x[13]-0.3146*x[14]-0.063*x[15]-0.8256*x[16]+0.4004*x[17]+0.2482*x[18]-0.8289*x[19]+0.3358*x[20]-0.0755*x[21]-0.3687*x[22]+0.1612*x[23]+0.438*x[24]-0.7275*x[25]-0.8205*x[26]+0.2683*x[27]+0.4477*x[28]-0.1751*x[29]-0.0819*x[30] <= 34.421)
@NLconstraint(m, e3, (-0.0393*x[1]*x[1])-0.1625*x[1]*x[6]+1.6768*x[1]*x[8]+0.224*x[1]*x[10]+0.7778*x[1]*x[14]-1.2436*x[1]*x[15]+1.4288*x[1]*x[19]+1.745*x[1]*x[20]+0.9689*x[1]*x[21]-1.0486*x[1]*x[26]+1.2832*x[1]*x[27]-0.7967*x[1]*x[30]+1.684*x[2]*x[3]+1.1078*x[2]*x[4]+1.2807*x[2]*x[6]+1.2237*x[2]*x[7]-0.6455*x[2]*x[8]+0.0477*x[2]*x[9]-1.6274*x[2]*x[10]-0.9178*x[2]*x[11]-1.7894*x[2]*x[12]+1.9291*x[2]*x[13]+0.8699*x[2]*x[15]-0.3162*x[2]*x[16]+0.8438*x[2]*x[20]+0.0653*x[2]*x[21]+0.8005*x[2]*x[23]-0.4081*x[2]*x[26]+1.4519*x[2]*x[27]+1.8183*x[2]*x[28]+1.3299*x[3]*x[5]-1.8313*x[3]*x[6]-1.6318*x[3]*x[8]-0.3587*x[3]*x[10]-0.9468*x[3]*x[11]-1.5988*x[3]*x[12]-0.5283*x[3]*x[13]-1.7083*x[3]*x[17]+1.8775*x[3]*x[20]-0.3679*x[3]*x[21]-0.6867*x[3]*x[22]-1.598*x[3]*x[23]+1.3129*x[3]*x[25]-1.6204*x[3]*x[29]+1.1148*x[3]*x[30]+0.6528*x[4]*x[4]-1.3036*x[4]*x[5]-1.3361*x[4]*x[8]-0.4124*x[4]*x[10]-0.8539*x[4]*x[11]-0.714*x[4]*x[12]+0.6433*x[4]*x[13]+1.0024*x[4]*x[14]-1.8404*x[4]*x[15]-1.8207*x[4]*x[17]-0.5654*x[4]*x[19]-1.6734*x[4]*x[22]-1.5878*x[4]*x[25]+0.8716*x[4]*x[26]-0.3748*x[4]*x[28]-1.8456*x[4]*x[30]-1.8701*x[5]*x[5]-0.3115*x[5]*x[6]+1.3031*x[5]*x[8]-1.4848*x[5]*x[9]+1.3107*x[5]*x[10]-1.3914*x[5]*x[13]-0.4366*x[5]*x[14]-0.7412*x[5]*x[15]+1.4497*x[5]*x[16]-0.537*x[5]*x[17]+0.7299*x[5]*x[22]+0.0519*x[5]*x[25]+1.789*x[5]*x[26]+0.6572*x[5]*x[27]+1.9357*x[5]*x[28]+0.0626*x[5]*x[29]-0.1127*x[5]*x[30]-1.1457*x[6]*x[9]+0.0223*x[6]*x[11]-0.4595*x[6]*x[12]+0.0128*x[6]*x[13]-0.9399*x[6]*x[15]-0.1329*x[6]*x[18]-0.6448*x[6]*x[20]+1.8987*x[6]*x[23]+0.7133*x[6]*x[26]+0.911*x[6]*x[28]-0.4463*x[6]*x[29]+0.4078*x[7]*x[8]-0.4337*x[7]*x[9]-1.5656*x[7]*x[10]+1.261*x[7]*x[11]+0.5279*x[7]*x[15]+1.5068*x[7]*x[16]-0.9695*x[7]*x[17]+1.3202*x[7]*x[18]+1.6147*x[7]*x[19]+0.3357*x[7]*x[20]-0.8006*x[7]*x[23]-1.9702*x[7]*x[24]-0.0636*x[7]*x[25]+1.628*x[7]*x[26]+1.4219*x[7]*x[28]-1.1293*x[8]*x[8]-0.1355*x[8]*x[9]-0.9739*x[8]*x[10]-0.2172*x[8]*x[11]+1.0042*x[8]*x[13]-1.5341*x[8]*x[16]+0.8496*x[8]*x[17]+0.0461*x[8]*x[18]-1.0076*x[8]*x[19]-1.5296*x[8]*x[21]+0.0733*x[8]*x[24]-1.1137*x[8]*x[28]-1.3124*x[8]*x[30]+1.3707*x[9]*x[10]-1.2892*x[9]*x[11]-0.6001*x[9]*x[12]+1.9029*x[9]*x[16]+1.065*x[9]*x[17]+0.1104*x[9]*x[20]+0.0658*x[9]*x[25]+1.1521*x[9]*x[26]+0.4584*x[9]*x[28]+1.4901*x[9]*x[29]-1.1788*x[9]*x[30]+0.7982*x[10]*x[11]+1.0712*x[10]*x[14]-1.1649*x[10]*x[20]-1.8299*x[10]*x[22]+0.4974*x[10]*x[23]-1.2014*x[10]*x[25]-0.3087*x[10]*x[27]-0.9336*x[10]*x[28]-1.1706*x[11]*x[11]+1.9936*x[11]*x[12]+1.4246*x[11]*x[14]+1.8429*x[11]*x[18]-1.384*x[11]*x[20]-1.9639*x[11]*x[21]-0.0637*x[11]*x[23]+1.4493*x[11]*x[25]-1.2277*x[11]*x[26]-1.5624*x[11]*x[27]+1.2093*x[11]*x[29]+1.2015*x[12]*x[12]+0.8558*x[12]*x[13]-0.7194*x[12]*x[17]-1.308*x[12]*x[18]+0.6349*x[12]*x[22]-0.6571*x[12]*x[24]-1.7135*x[12]*x[25]-1.2413*x[12]*x[26]-0.2807*x[12]*x[28]-1.1347*x[12]*x[29]+0.3977*x[13]*x[15]+1.9895*x[13]*x[16]+0.8351*x[13]*x[21]-0.1452*x[13]*x[22]+1.4713*x[13]*x[23]-0.7132*x[13]*x[25]+1.4402*x[14]*x[14]+0.9552*x[14]*x[15]+1.835*x[14]*x[16]-1.247*x[14]*x[24]+0.7453*x[14]*x[25]+0.1379*x[14]*x[27]+1.2265*x[14]*x[28]-1.5735*x[14]*x[29]-1.5854*x[15]*x[17]+1.8052*x[15]*x[18]-0.7122*x[15]*x[22]+0.8501*x[15]*x[24]-1.4962*x[15]*x[26]-1.8706*x[15]*x[30]+0.3821*x[16]*x[17]-1.1632*x[16]*x[20]-0.4161*x[16]*x[22]+1.8669*x[16]*x[24]-1.191*x[16]*x[27]-0.9002*x[16]*x[30]-0.0828*x[17]*x[18]+0.49*x[17]*x[19]-0.2579*x[17]*x[20]-0.6072*x[17]*x[21]+1.8792*x[17]*x[22]+0.9206*x[17]*x[23]+0.8078*x[17]*x[27]+0.087*x[18]*x[20]-1.7898*x[18]*x[22]+0.294*x[18]*x[23]+1.6269*x[18]*x[24]-0.5079*x[18]*x[26]-0.3124*x[18]*x[27]+1.8277*x[18]*x[28]+0.8997*x[19]*x[20]-1.7693*x[19]*x[22]-1.8926*x[19]*x[23]+0.3929*x[19]*x[25]-1.6524*x[19]*x[26]-1.9493*x[19]*x[30]-0.2012*x[20]*x[20]-1.8155*x[20]*x[23]+1.9054*x[20]*x[24]+1.1565*x[20]*x[25]-1.002*x[20]*x[27]-1.9156*x[20]*x[28]+1.6906*x[21]*x[21]-0.4312*x[21]*x[22]+1.3634*x[21]*x[24]+0.0724*x[21]*x[25]-0.0141*x[21]*x[26]-0.7358*x[21]*x[27]-0.6284*x[22]*x[27]+0.2672*x[22]*x[29]-1.2404*x[24]*x[25]-0.3208*x[24]*x[26]+1.7861*x[24]*x[27]-0.1225*x[24]*x[28]-1.0258*x[24]*x[29]-1.3931*x[25]*x[25]+1.4716*x[25]*x[27]-0.6286*x[25]*x[28]-0.9977*x[25]*x[29]-0.2293*x[26]*x[29]-0.4004*x[27]*x[27]+0.7764*x[27]*x[29]-1.5223*x[28]*x[28]+0.2227*x[28]*x[29]-0.9434*x[29]*x[29]-0.2283*x[1]+0.2639*x[2]+0.8534*x[3]-0.8523*x[4]+0.2316*x[5]+0.2312*x[6]-0.9528*x[7]+0.2748*x[8]+0.1537*x[9]-0.7797*x[10]+0.5374*x[11]-0.2288*x[12]+0.5806*x[13]-0.6746*x[14]+0.3638*x[15]+0.9721*x[16]-0.8746*x[17]+0.084*x[18]-0.5778*x[19]+0.6895*x[20]+0.8595*x[21]+0.5411*x[22]+0.3448*x[23]+0.5093*x[24]-0.1105*x[25]-0.9067*x[26]+0.0817*x[27]-0.7681*x[28]-0.7205*x[29]+0.8149*x[30] <= 83.912)
@NLconstraint(m, e4, (-0.7235*x[1]*x[4])-1.9482*x[1]*x[11]-0.5959*x[1]*x[15]-1.0646*x[1]*x[19]-0.9209*x[1]*x[26]+0.1021*x[1]*x[27]-0.2174*x[1]*x[28]+1.0887*x[2]*x[2]-1.9786*x[2]*x[5]-1.7574*x[2]*x[6]-1.3837*x[2]*x[8]+1.4484*x[2]*x[11]-1.8266*x[2]*x[12]+0.4335*x[2]*x[13]+0.5804*x[2]*x[14]-0.7894*x[2]*x[15]+0.8871*x[2]*x[16]-1.5619*x[2]*x[17]-0.0244*x[2]*x[19]-1.4376*x[2]*x[22]-0.668*x[2]*x[24]-1.8139*x[2]*x[27]-1.8049*x[2]*x[28]+1.4136*x[2]*x[29]-0.1911*x[2]*x[30]-0.6203*x[3]*x[4]-0.8218*x[3]*x[8]+1.3161*x[3]*x[9]-0.4634*x[3]*x[11]+0.0327*x[3]*x[13]+0.7304*x[3]*x[16]+0.0007*x[3]*x[17]+0.2571*x[3]*x[18]+0.2607*x[3]*x[21]-0.3801*x[3]*x[23]+0.5823*x[3]*x[24]+1.6097*x[3]*x[25]+1.6844*x[3]*x[26]-1.5807*x[3]*x[27]-1.9079*x[3]*x[28]-1.9379*x[3]*x[29]+0.0251*x[3]*x[30]-0.5089*x[4]*x[5]+0.7284*x[4]*x[6]+0.5223*x[4]*x[9]-1.3093*x[4]*x[12]-0.9742*x[4]*x[14]+0.6878*x[4]*x[16]-0.3667*x[4]*x[19]+1.4083*x[4]*x[20]+0.3868*x[4]*x[23]-1.9841*x[4]*x[25]-0.1854*x[4]*x[28]-1.0734*x[4]*x[30]+1.5629*x[5]*x[5]+1.1621*x[5]*x[6]+1.2271*x[5]*x[7]-0.4198*x[5]*x[11]-1.384*x[5]*x[14]+0.5316*x[5]*x[15]-1.0607*x[5]*x[17]-0.1366*x[5]*x[18]+1.8456*x[5]*x[26]+1.7191*x[5]*x[29]+1.9413*x[6]*x[7]-1.3195*x[6]*x[8]-0.8234*x[6]*x[9]+1.8356*x[6]*x[10]+0.8224*x[6]*x[11]+1.7759*x[6]*x[12]-1.5431*x[6]*x[16]+0.5735*x[6]*x[17]+1.1916*x[6]*x[18]+1.7805*x[6]*x[19]-0.1782*x[6]*x[24]-1.1716*x[6]*x[27]+1.542*x[6]*x[29]+1.4448*x[7]*x[7]+1.0118*x[7]*x[8]+0.6043*x[7]*x[10]+0.8648*x[7]*x[15]-0.5509*x[7]*x[16]+1.004*x[7]*x[19]+0.8513*x[7]*x[20]-0.4438*x[7]*x[22]-1.8881*x[7]*x[23]-1.4575*x[7]*x[25]+1.7152*x[7]*x[27]+0.516*x[7]*x[28]-1.2108*x[7]*x[29]-0.2717*x[8]*x[9]+0.1729*x[8]*x[11]+1.2809*x[8]*x[12]+0.6968*x[8]*x[13]+0.0638*x[8]*x[14]-0.6436*x[8]*x[16]-0.7253*x[8]*x[19]+1.6679*x[8]*x[21]+0.1079*x[8]*x[23]-1.3674*x[8]*x[24]-1.7833*x[8]*x[26]+1.8211*x[8]*x[27]-1.1524*x[9]*x[9]-0.1297*x[9]*x[11]+0.454*x[9]*x[13]+0.1176*x[9]*x[15]+0.6881*x[9]*x[18]+1.9194*x[9]*x[20]-1.2412*x[9]*x[22]-1.3133*x[9]*x[23]-0.8625*x[9]*x[24]-0.2072*x[9]*x[25]-1.2747*x[9]*x[27]+1.6771*x[9]*x[28]-1.0247*x[9]*x[29]+0.5591*x[10]*x[11]-0.5984*x[10]*x[14]+0.2818*x[10]*x[16]-0.0177*x[10]*x[17]+0.0653*x[10]*x[21]-1.1934*x[10]*x[26]-1.8784*x[10]*x[27]+0.6429*x[10]*x[29]-1.1706*x[11]*x[14]+1.7089*x[11]*x[15]-0.399*x[11]*x[16]+0.0914*x[11]*x[18]-1.274*x[11]*x[20]+0.0445*x[11]*x[23]+0.4665*x[11]*x[25]+0.9663*x[11]*x[26]+1.1057*x[11]*x[29]+1.6278*x[12]*x[13]-0.844*x[12]*x[14]-1.1045*x[12]*x[16]-0.4888*x[12]*x[17]-1.315*x[12]*x[18]-1.2634*x[12]*x[22]-0.5389*x[12]*x[24]-1.7287*x[12]*x[27]-1.9951*x[12]*x[28]+1.916*x[12]*x[29]-0.9286*x[12]*x[30]-0.7798*x[13]*x[13]+1.3609*x[13]*x[15]+1.3068*x[13]*x[16]+1.9248*x[13]*x[17]+0.203*x[13]*x[19]-0.5839*x[13]*x[23]+0.6903*x[13]*x[24]+1.434*x[13]*x[26]+1.3671*x[13]*x[27]+1.2191*x[13]*x[28]+1.7018*x[13]*x[29]-0.7957*x[14]*x[14]+1.6626*x[14]*x[17]-1.2581*x[14]*x[18]-0.0879*x[14]*x[19]-0.3949*x[14]*x[21]-0.083*x[14]*x[23]-1.442*x[14]*x[24]-0.0965*x[14]*x[25]-1.5379*x[14]*x[26]-0.4868*x[14]*x[28]+0.109*x[15]*x[17]+0.0932*x[15]*x[18]+1.1694*x[15]*x[21]-1.5697*x[15]*x[22]+1.3993*x[15]*x[24]-1.4318*x[15]*x[25]+1.4618*x[15]*x[26]-1.0378*x[15]*x[27]+1.8136*x[15]*x[29]-0.1708*x[16]*x[19]-0.8617*x[16]*x[20]-1.9846*x[16]*x[22]+1.143*x[16]*x[23]-0.3781*x[16]*x[24]-0.5063*x[16]*x[26]-1.0384*x[16]*x[27]-0.817*x[16]*x[29]+1.0576*x[17]*x[19]-1.1403*x[17]*x[20]-0.4415*x[17]*x[21]-1.5098*x[17]*x[25]-1.1486*x[17]*x[26]-1.7687*x[17]*x[27]-1.0074*x[17]*x[28]+0.257*x[18]*x[19]+1.4682*x[18]*x[20]+0.4747*x[18]*x[21]+0.6022*x[18]*x[23]+1.0468*x[18]*x[25]+1.7534*x[18]*x[26]+0.7668*x[18]*x[27]-0.8109*x[19]*x[20]+0.9784*x[19]*x[21]-1.0629*x[19]*x[22]+1.7801*x[19]*x[25]+1.6542*x[19]*x[27]-0.7918*x[19]*x[28]+1.0484*x[19]*x[29]-1.0495*x[20]*x[21]+1.2193*x[20]*x[22]+1.4579*x[20]*x[23]+1.5114*x[20]*x[25]-1.6343*x[20]*x[29]+1.3954*x[21]*x[23]-0.0422*x[21]*x[24]-0.3765*x[21]*x[25]-0.0196*x[21]*x[26]+1.9083*x[21]*x[27]+1.5433*x[21]*x[28]-0.6264*x[22]*x[24]-0.6389*x[22]*x[25]-0.6487*x[22]*x[26]+1.8548*x[22]*x[28]-0.8324*x[23]*x[24]-0.8661*x[23]*x[25]-0.8962*x[23]*x[29]+1.3977*x[24]*x[25]-0.1365*x[24]*x[27]-0.9694*x[24]*x[29]-0.0953*x[25]*x[27]+1.9203*x[25]*x[28]+1.2413*x[25]*x[29]+1.6446*x[26]*x[27]-0.7393*x[26]*x[29]-1.9392*x[27]*x[28]+1.9301*x[27]*x[29]+1.2163*x[28]*x[29]-1.7869*x[30]*x[30]+0.678*x[1]+0.5961*x[2]-0.1234*x[3]-0.0398*x[4]+0.4455*x[5]+0.6823*x[6]-0.7244*x[7]+0.6825*x[8]+0.9656*x[9]+0.6765*x[10]-0.9901*x[11]-0.8846*x[12]+0.4983*x[13]-0.7037*x[14]-0.2104*x[15]-0.379*x[16]+0.3447*x[17]+0.5005*x[18]+0.2765*x[19]-0.1031*x[20]+0.8679*x[21]-0.2296*x[22]+0.5003*x[23]+0.2873*x[24]+0.165*x[25]+0.5144*x[26]+0.9994*x[27]-0.7827*x[28]+0.3715*x[29]-0.4349*x[30] <= 41.334)
@NLconstraint(m, e5, 1.321*x[1]*x[3]+1.1226*x[1]*x[6]-1.5946*x[1]*x[17]-0.0858*x[1]*x[18]+1.0725*x[1]*x[20]-1.5711*x[1]*x[21]+1.0988*x[1]*x[22]-0.1784*x[1]*x[24]-0.8848*x[1]*x[25]+1.2637*x[1]*x[28]-0.9483*x[1]*x[30]+1.8093*x[2]*x[3]-0.7029*x[2]*x[4]-1.2665*x[2]*x[6]-1.3137*x[2]*x[10]-0.7427*x[2]*x[14]+1.6515*x[2]*x[15]+0.6463*x[2]*x[17]+1.395*x[2]*x[19]-1.2932*x[2]*x[23]-0.5418*x[2]*x[24]+0.6912*x[2]*x[25]-1.7524*x[2]*x[26]-1.6623*x[2]*x[27]-1.1969*x[2]*x[28]+0.7744*x[2]*x[29]-0.7786*x[3]*x[5]-1.5698*x[3]*x[6]-0.6032*x[3]*x[8]-1.0219*x[3]*x[9]-1.0672*x[3]*x[11]+1.2384*x[3]*x[13]-0.8754*x[3]*x[14]+1.89*x[3]*x[21]-0.092*x[3]*x[25]-0.8855*x[4]*x[5]+1.9485*x[4]*x[7]-1.3771*x[4]*x[11]-0.648*x[4]*x[17]-0.7157*x[4]*x[18]+0.9659*x[4]*x[19]-0.6323*x[4]*x[20]-0.4433*x[4]*x[23]+1.8534*x[4]*x[24]+1.3807*x[4]*x[25]-1.6451*x[4]*x[26]+0.7499*x[4]*x[29]+0.7474*x[5]*x[6]-1.9756*x[5]*x[8]+0.9577*x[5]*x[11]-0.7747*x[5]*x[13]+0.3248*x[5]*x[14]+0.1804*x[5]*x[17]+1.2966*x[5]*x[18]+1.8352*x[5]*x[19]-1.5816*x[5]*x[20]+0.6446*x[5]*x[21]-1.2838*x[5]*x[22]+1.4237*x[5]*x[27]+0.8536*x[5]*x[28]-1.6268*x[5]*x[29]+1.6056*x[6]*x[7]-0.6766*x[6]*x[10]-1.0141*x[6]*x[11]-1.0905*x[6]*x[12]-1.6889*x[6]*x[13]-0.5449*x[6]*x[16]+0.5071*x[6]*x[17]-0.5624*x[6]*x[19]-1.0524*x[6]*x[20]+0.1368*x[6]*x[24]-1.6487*x[6]*x[25]-0.3299*x[6]*x[26]+1.6068*x[6]*x[28]-0.9193*x[7]*x[8]-1.1738*x[7]*x[14]-1.1066*x[7]*x[15]-1.1963*x[7]*x[18]+0.6013*x[7]*x[20]-1.7574*x[7]*x[21]-1.5284*x[7]*x[22]+0.4404*x[7]*x[24]-1.7468*x[7]*x[27]-0.3549*x[8]*x[9]+0.7722*x[8]*x[10]+1.2314*x[8]*x[12]-1.6147*x[8]*x[15]-0.3967*x[8]*x[17]-1.1046*x[8]*x[18]-1.0094*x[8]*x[22]+0.4287*x[8]*x[27]+0.8522*x[8]*x[28]-0.1152*x[9]*x[9]-0.3683*x[9]*x[10]-1.9326*x[9]*x[11]-0.9213*x[9]*x[12]-0.6524*x[9]*x[14]+1.763*x[9]*x[15]+0.3001*x[9]*x[18]+1.6353*x[9]*x[19]-0.8967*x[9]*x[20]-0.337*x[9]*x[21]-0.5293*x[9]*x[23]+0.7057*x[9]*x[27]-0.7104*x[9]*x[28]-0.2722*x[9]*x[29]-1.4874*x[9]*x[30]+0.8865*x[10]*x[14]-0.8407*x[10]*x[15]+0.492*x[10]*x[16]+1.5731*x[10]*x[17]-0.1378*x[10]*x[18]+0.7058*x[10]*x[19]-1.5637*x[10]*x[20]-1.1289*x[10]*x[22]-0.7504*x[10]*x[23]-1.9391*x[10]*x[24]-0.1221*x[10]*x[26]+1.7374*x[10]*x[27]+1.1394*x[10]*x[28]-1.5743*x[10]*x[30]-1.826*x[11]*x[13]-1.9839*x[11]*x[14]+1.4087*x[11]*x[17]+1.4384*x[11]*x[21]-0.7099*x[11]*x[23]+0.7588*x[11]*x[26]-1.6265*x[11]*x[28]-0.0029*x[11]*x[29]+1.886*x[11]*x[30]-0.8843*x[12]*x[13]+0.8315*x[12]*x[15]-0.6929*x[12]*x[17]-0.7905*x[12]*x[18]-0.0985*x[12]*x[22]-1.9293*x[12]*x[24]+1.007*x[12]*x[25]-0.5378*x[12]*x[26]-0.1201*x[12]*x[27]+1.0387*x[12]*x[28]-0.4073*x[12]*x[30]+0.1571*x[13]*x[18]+1.1298*x[13]*x[19]+0.7956*x[13]*x[20]-1.6476*x[13]*x[21]+1.4219*x[13]*x[23]+0.2843*x[13]*x[24]+1.7351*x[13]*x[25]-0.3594*x[13]*x[26]-1.1025*x[13]*x[27]+0.2585*x[14]*x[18]+0.2534*x[14]*x[23]-1.7271*x[14]*x[24]-0.3415*x[14]*x[26]-0.8988*x[14]*x[28]+1.6592*x[14]*x[29]+1.6141*x[15]*x[17]-0.0445*x[15]*x[18]+1.1179*x[15]*x[19]-0.9251*x[15]*x[20]-0.6606*x[15]*x[21]+1.0716*x[15]*x[22]+1.4509*x[15]*x[25]+1.8261*x[15]*x[26]+0.7838*x[15]*x[28]+1.8585*x[15]*x[30]+1.7778*x[16]*x[16]-1.0675*x[16]*x[17]-1.4978*x[16]*x[18]-1.7494*x[16]*x[20]-0.7657*x[16]*x[21]+0.4186*x[16]*x[22]+1.833*x[16]*x[23]+1.2172*x[16]*x[24]-0.1829*x[16]*x[25]-1.4948*x[16]*x[26]-0.5048*x[16]*x[28]+1.1038*x[17]*x[18]-1.5249*x[17]*x[19]+0.5071*x[17]*x[21]+1.159*x[17]*x[24]+1.6562*x[17]*x[25]+0.6001*x[17]*x[26]-0.4592*x[17]*x[28]+1.8137*x[18]*x[20]-1.6*x[18]*x[21]+0.0127*x[18]*x[22]+0.4762*x[18]*x[23]-1.807*x[18]*x[24]+0.6245*x[18]*x[27]-0.5061*x[18]*x[28]-0.7312*x[19]*x[20]+1.6141*x[19]*x[21]+1.1206*x[19]*x[24]-1.3424*x[19]*x[29]-1.2771*x[19]*x[30]-0.5675*x[20]*x[23]-1.5905*x[20]*x[24]+1.6419*x[20]*x[25]+0.5941*x[20]*x[28]+1.6561*x[20]*x[29]-1.6141*x[21]*x[25]-1.8186*x[21]*x[26]-1.6426*x[21]*x[27]+0.3554*x[21]*x[28]-1.9116*x[21]*x[29]+0.6157*x[21]*x[30]+0.3945*x[22]*x[23]+0.9627*x[22]*x[29]+0.6654*x[22]*x[30]+1.5736*x[23]*x[23]-0.9831*x[23]*x[24]-0.9178*x[23]*x[25]-0.7571*x[23]*x[28]-0.0468*x[23]*x[29]-1.7197*x[23]*x[30]-0.6255*x[24]*x[27]+1.7497*x[24]*x[28]+0.1433*x[24]*x[29]+1.9224*x[24]*x[30]-1.8678*x[25]*x[25]+0.6967*x[25]*x[27]+1.8494*x[25]*x[28]+0.766*x[25]*x[29]-1.358*x[26]*x[26]+1.6459*x[26]*x[28]+0.0394*x[26]*x[29]+1.111*x[27]*x[28]+0.1706*x[27]*x[29]+1.6006*x[27]*x[30]+0.3816*x[28]*x[28]+1.0912*x[29]*x[29]-0.4216*x[1]-0.928*x[2]-0.4396*x[3]-0.6548*x[4]-0.8683*x[5]+0.6872*x[6]-0.7835*x[7]+0.1753*x[8]-0.3771*x[9]-0.7868*x[10]+0.4631*x[11]-0.1299*x[12]+0.9085*x[13]+0.9962*x[14]-0.3196*x[15]-0.6884*x[16]+0.081*x[17]+0.0631*x[18]-0.2524*x[19]-0.903*x[20]-0.1268*x[21]-0.923*x[22]-0.4764*x[23]+0.5666*x[24]-0.1098*x[25]+0.8993*x[26]+0.2669*x[27]+0.1448*x[28]+0.7692*x[29]+0.2074*x[30] <= 78.429)
@NLconstraint(m, e6, (-1.3186*x[1]*x[3])-0.2923*x[1]*x[7]+1.3708*x[1]*x[8]+0.4101*x[1]*x[9]-1.8162*x[1]*x[14]-0.5373*x[1]*x[15]+0.2177*x[1]*x[22]-0.0921*x[1]*x[23]+0.8088*x[1]*x[24]-0.2986*x[1]*x[27]-1.4548*x[1]*x[29]+1.0511*x[2]*x[2]+0.9926*x[2]*x[4]-1.5485*x[2]*x[5]-0.0221*x[2]*x[7]-0.7823*x[2]*x[12]-1.118*x[2]*x[14]-0.9736*x[2]*x[15]-1.9151*x[2]*x[16]+0.9265*x[2]*x[17]-1.5904*x[2]*x[20]-1.7975*x[2]*x[21]+0.4736*x[2]*x[23]-1.1697*x[2]*x[24]+1.6956*x[2]*x[27]+0.578*x[2]*x[28]-1.4839*x[2]*x[29]+0.1078*x[2]*x[30]+1.6475*x[3]*x[5]-0.0484*x[3]*x[6]+0.3645*x[3]*x[9]-1.2468*x[3]*x[12]+1.228*x[3]*x[14]+0.8602*x[3]*x[15]+1.1385*x[3]*x[18]-1.0463*x[3]*x[21]-1.3179*x[3]*x[23]+1.1393*x[3]*x[25]+0.0007*x[3]*x[27]-1.2385*x[3]*x[29]+1.9059*x[4]*x[9]-0.9746*x[4]*x[12]-0.348*x[4]*x[13]-1.7971*x[4]*x[14]+1.0852*x[4]*x[20]-0.1037*x[4]*x[21]+1.1025*x[4]*x[22]-0.1612*x[4]*x[23]+1.8732*x[4]*x[24]+0.3996*x[4]*x[26]-0.9708*x[4]*x[28]+1.3874*x[4]*x[29]+0.8822*x[5]*x[5]+1.9663*x[5]*x[6]-0.7202*x[5]*x[9]-1.6715*x[5]*x[11]-0.0409*x[5]*x[12]-1.6797*x[5]*x[13]+1.7173*x[5]*x[15]-0.3419*x[5]*x[16]-1.543*x[5]*x[17]-0.9572*x[5]*x[18]-1.6831*x[5]*x[19]+0.2791*x[5]*x[23]-0.6089*x[5]*x[24]+1.1365*x[5]*x[25]-0.5201*x[5]*x[26]-0.6306*x[5]*x[28]+0.4383*x[5]*x[29]-0.0595*x[6]*x[10]+1.7681*x[6]*x[13]+0.2563*x[6]*x[16]+0.9592*x[6]*x[17]+1.0202*x[6]*x[18]-0.4388*x[6]*x[19]-1.2988*x[6]*x[20]-0.9949*x[6]*x[21]-1.0635*x[6]*x[22]+1.2144*x[6]*x[25]+0.3231*x[6]*x[29]+0.4306*x[7]*x[8]-1.581*x[7]*x[9]-0.9597*x[7]*x[13]+1.6118*x[7]*x[14]-1.6222*x[7]*x[15]-1.7781*x[7]*x[17]-1.0447*x[7]*x[19]+1.0833*x[7]*x[20]-1.5083*x[7]*x[21]+0.6414*x[7]*x[24]-1.7319*x[7]*x[26]+0.6364*x[7]*x[28]+1.9776*x[7]*x[29]-0.9059*x[8]*x[9]+1.7913*x[8]*x[11]-0.7685*x[8]*x[12]-0.6099*x[8]*x[15]-0.758*x[8]*x[16]+1.6744*x[8]*x[18]+0.7773*x[8]*x[20]-1.9334*x[8]*x[21]-0.7741*x[8]*x[24]-1.7315*x[8]*x[25]+1.8633*x[8]*x[27]+0.3854*x[8]*x[29]-1.4154*x[8]*x[30]-0.2872*x[9]*x[9]+1.0236*x[9]*x[10]-1.4032*x[9]*x[12]+1.4409*x[9]*x[13]+0.3962*x[9]*x[14]-0.8046*x[9]*x[15]-0.0175*x[9]*x[16]-0.7225*x[9]*x[19]+1.9973*x[9]*x[20]-0.413*x[9]*x[22]+0.9938*x[9]*x[23]+1.2399*x[9]*x[28]+0.1044*x[9]*x[29]-1.2359*x[10]*x[10]+1.3792*x[10]*x[11]-0.3527*x[10]*x[12]+0.3588*x[10]*x[14]-0.885*x[10]*x[15]+1.8916*x[10]*x[24]-0.259*x[10]*x[25]-1.3374*x[10]*x[26]-0.7623*x[10]*x[28]+1.023*x[10]*x[29]+1.4645*x[11]*x[12]-1.1106*x[11]*x[13]-1.3042*x[11]*x[17]-0.6082*x[11]*x[22]+1.9225*x[11]*x[23]-1.929*x[11]*x[25]+1.6223*x[11]*x[28]-0.3111*x[12]*x[14]+0.9347*x[12]*x[17]+1.6346*x[12]*x[18]-1.8467*x[12]*x[19]-1.6385*x[12]*x[22]+0.9944*x[12]*x[23]-0.9606*x[12]*x[24]+1.7003*x[12]*x[28]+1.9196*x[12]*x[29]+0.0724*x[12]*x[30]-1.0087*x[13]*x[14]+1.5529*x[13]*x[15]+1.8376*x[13]*x[16]-0.6588*x[13]*x[17]+0.0978*x[13]*x[18]-0.1546*x[13]*x[19]+1.0404*x[13]*x[20]+1.0483*x[13]*x[22]+0.4754*x[13]*x[25]+1.9281*x[14]*x[14]+0.5613*x[14]*x[15]+1.1962*x[14]*x[17]+0.397*x[14]*x[18]-0.1289*x[14]*x[21]+0.1874*x[14]*x[25]-0.7797*x[14]*x[26]-1.3285*x[14]*x[29]-1.0756*x[14]*x[30]-1.0339*x[15]*x[15]+1.9456*x[15]*x[17]-0.967*x[15]*x[18]-1.885*x[15]*x[19]-1.1382*x[15]*x[20]-0.1052*x[15]*x[22]+1.2384*x[15]*x[24]+1.9581*x[15]*x[26]-1.1316*x[15]*x[27]+0.9576*x[15]*x[29]-0.1654*x[15]*x[30]-1.8725*x[16]*x[17]-0.2684*x[16]*x[21]+1.5286*x[16]*x[23]+1.6874*x[16]*x[24]+0.9038*x[17]*x[18]-0.7631*x[17]*x[19]+1.0707*x[17]*x[20]-1.8604*x[17]*x[21]-1.3847*x[17]*x[22]-1.8403*x[17]*x[23]-1.2746*x[17]*x[24]-1.1094*x[17]*x[25]+0.3964*x[17]*x[28]+0.5997*x[17]*x[29]+0.4664*x[17]*x[30]-0.7351*x[18]*x[19]-1.1276*x[18]*x[25]+0.3189*x[18]*x[27]+0.9342*x[18]*x[28]+0.5848*x[19]*x[20]-1.7573*x[19]*x[21]-0.2992*x[19]*x[22]+1.3548*x[19]*x[24]+1.8602*x[19]*x[27]-1.9749*x[19]*x[28]+0.6224*x[20]*x[22]-1.5509*x[20]*x[24]+0.7813*x[20]*x[25]-1.2393*x[20]*x[28]+1.2932*x[20]*x[29]-1.9633*x[21]*x[23]-0.0028*x[21]*x[25]-1.6367*x[21]*x[28]-0.6323*x[21]*x[29]-1.8355*x[22]*x[23]+0.662*x[22]*x[24]+0.5605*x[22]*x[25]-1.6053*x[22]*x[27]+1.9853*x[22]*x[29]+0.5399*x[23]*x[23]+0.5401*x[23]*x[24]+1.795*x[23]*x[28]-1.2293*x[24]*x[24]-1.9563*x[24]*x[25]-0.0134*x[24]*x[28]+0.4007*x[24]*x[30]+0.7716*x[25]*x[25]+1.2457*x[25]*x[28]-0.7561*x[25]*x[29]+1.435*x[25]*x[30]-0.1195*x[26]*x[26]+1.2306*x[26]*x[27]-1.8174*x[26]*x[28]+1.0325*x[27]*x[28]-1.5691*x[27]*x[29]-0.8145*x[28]*x[30]-1.4818*x[29]*x[30]-0.2572*x[1]-0.8613*x[2]+0.9777*x[3]-0.2929*x[4]+0.9332*x[5]-0.3888*x[6]+0.4191*x[7]-0.9106*x[8]+0.8373*x[9]-0.4178*x[10]-0.4169*x[11]+0.9661*x[12]-0.3032*x[13]+0.4404*x[14]+0.2308*x[15]+0.7679*x[16]+0.4844*x[17]+0.4307*x[18]+0.2434*x[19]+0.694*x[20]-0.1511*x[21]-0.6564*x[22]-0.38*x[23]+0.6186*x[24]-0.6402*x[25]-0.7463*x[26]-0.4921*x[27]-0.6349*x[28]-0.2669*x[29]+0.8044*x[30] <= 24.918)
@NLconstraint(m, e7, 0.9083*x[1]*x[3]+0.5555*x[1]*x[4]-1.1316*x[1]*x[6]-0.7443*x[1]*x[10]-1.3563*x[1]*x[15]-1.4942*x[1]*x[16]-0.5821*x[1]*x[17]+0.4807*x[1]*x[19]+0.9184*x[1]*x[22]+0.5459*x[1]*x[23]-0.1598*x[1]*x[24]-1.1792*x[1]*x[26]+0.524*x[1]*x[28]-1.5321*x[2]*x[3]-1.9523*x[2]*x[4]-0.7375*x[2]*x[9]+0.6885*x[2]*x[10]-1.0139*x[2]*x[12]+1.1969*x[2]*x[14]-0.215*x[2]*x[15]+1.415*x[2]*x[16]-1.7559*x[2]*x[18]+0.362*x[2]*x[19]+0.7506*x[2]*x[21]+0.4698*x[2]*x[22]-1.9623*x[2]*x[23]-1.3089*x[2]*x[28]-1.5821*x[3]*x[5]+1.0649*x[3]*x[9]+1.0249*x[3]*x[11]-1.1541*x[3]*x[20]+0.1992*x[3]*x[25]+0.6739*x[3]*x[26]-0.9359*x[3]*x[27]-0.0742*x[3]*x[28]+0.0751*x[4]*x[7]-0.055*x[4]*x[8]+0.4133*x[4]*x[9]+0.0777*x[4]*x[10]-0.3459*x[4]*x[12]-1.4751*x[4]*x[13]+0.422*x[4]*x[14]+0.6231*x[4]*x[16]+0.4039*x[4]*x[18]+0.7733*x[4]*x[21]-1.7559*x[4]*x[22]-0.4704*x[4]*x[26]-0.3437*x[5]*x[6]-1.1909*x[5]*x[8]-1.2791*x[5]*x[9]-1.2206*x[5]*x[10]+1.3069*x[5]*x[15]+0.0174*x[5]*x[17]+1.8069*x[5]*x[18]+0.093*x[5]*x[19]+0.8217*x[5]*x[22]+0.128*x[5]*x[23]-1.4705*x[5]*x[24]-1.4607*x[5]*x[25]+0.8203*x[5]*x[28]+0.8818*x[5]*x[29]+1.5589*x[6]*x[8]+0.5377*x[6]*x[9]+0.2301*x[6]*x[10]-1.4144*x[6]*x[11]-1.5748*x[6]*x[12]+1.792*x[6]*x[13]+0.5917*x[6]*x[14]-0.1095*x[6]*x[15]-1.9699*x[6]*x[16]-1.2471*x[6]*x[17]+1.596*x[6]*x[19]-1.6769*x[6]*x[24]-1.3316*x[6]*x[25]+1.0892*x[6]*x[27]-1.0198*x[6]*x[30]+1.7695*x[7]*x[8]+1.4606*x[7]*x[12]+1.1425*x[7]*x[16]-1.639*x[7]*x[17]+0.9767*x[7]*x[20]-0.3369*x[7]*x[21]+0.7638*x[7]*x[22]-0.7456*x[7]*x[26]-0.5962*x[7]*x[27]+0.8964*x[7]*x[28]+1.9227*x[7]*x[30]-0.5631*x[8]*x[10]+0.8956*x[8]*x[11]+1.4605*x[8]*x[12]-1.9873*x[8]*x[13]-1.4457*x[8]*x[17]-0.5095*x[8]*x[19]+1.448*x[8]*x[20]+1.6473*x[8]*x[21]-0.4679*x[8]*x[26]-0.2861*x[8]*x[27]-0.7122*x[8]*x[28]+1.1641*x[8]*x[30]-1.9864*x[9]*x[9]+1.4097*x[9]*x[10]+1.6309*x[9]*x[11]+1.3387*x[9]*x[12]+1.4611*x[9]*x[13]-1.55*x[9]*x[14]+0.5185*x[9]*x[15]-0.7067*x[9]*x[16]+0.8403*x[9]*x[23]+1.388*x[9]*x[25]-0.0824*x[9]*x[26]+0.5845*x[9]*x[27]+0.7111*x[9]*x[28]-1.9487*x[9]*x[29]-1.577*x[10]*x[10]-1.2301*x[10]*x[12]+0.5071*x[10]*x[13]+1.2805*x[10]*x[16]+0.4723*x[10]*x[17]+1.9479*x[10]*x[19]+0.0331*x[10]*x[20]+1.0263*x[10]*x[22]-0.5371*x[10]*x[23]+0.6835*x[10]*x[26]-1.4017*x[10]*x[27]-1.9107*x[11]*x[14]+0.4205*x[11]*x[16]-0.2825*x[11]*x[17]+0.026*x[11]*x[18]-1.7343*x[11]*x[19]+0.7904*x[11]*x[20]+1.7989*x[11]*x[21]+1.0344*x[11]*x[22]-0.5402*x[11]*x[24]+0.8402*x[11]*x[30]+0.8105*x[12]*x[15]+0.6941*x[12]*x[18]-1.302*x[12]*x[20]-1.4101*x[12]*x[21]+0.3863*x[12]*x[26]+1.1967*x[12]*x[27]+0.983*x[12]*x[28]+1.9924*x[12]*x[30]-1.9284*x[13]*x[14]+0.7056*x[13]*x[16]-1.8281*x[13]*x[17]-0.8918*x[13]*x[18]+1.0841*x[13]*x[19]+1.6417*x[13]*x[20]-0.9755*x[13]*x[21]+1.072*x[13]*x[24]+0.9447*x[13]*x[25]-1.651*x[13]*x[27]+1.3955*x[13]*x[29]+1.8735*x[14]*x[14]-0.4407*x[14]*x[16]+1.5733*x[14]*x[17]-0.8116*x[14]*x[18]+0.3837*x[14]*x[20]+0.4253*x[14]*x[21]+0.3625*x[14]*x[22]-0.723*x[14]*x[24]-0.1456*x[14]*x[25]+1.2999*x[14]*x[26]-0.0427*x[14]*x[27]-0.9824*x[14]*x[29]+0.2114*x[14]*x[30]-1.9826*x[15]*x[16]-1.3502*x[15]*x[17]-0.0831*x[15]*x[18]-0.1597*x[15]*x[22]-1.4636*x[15]*x[23]+1.2763*x[15]*x[25]-0.0683*x[15]*x[27]+0.0693*x[15]*x[29]+0.2225*x[15]*x[30]-1.9873*x[16]*x[17]-0.0341*x[16]*x[18]+0.8176*x[16]*x[20]-1.5717*x[16]*x[22]+1.1166*x[16]*x[24]+0.107*x[16]*x[26]-1.1625*x[16]*x[27]+0.1769*x[16]*x[29]+1.6006*x[17]*x[20]+0.1649*x[17]*x[22]-0.3395*x[17]*x[23]+1.687*x[17]*x[24]+1.524*x[17]*x[25]-0.4031*x[17]*x[27]+1.468*x[17]*x[28]+0.6025*x[18]*x[19]+0.7719*x[18]*x[20]-1.3645*x[18]*x[21]+1.6274*x[18]*x[22]-0.6684*x[18]*x[24]-0.3507*x[18]*x[28]+0.5922*x[18]*x[29]+0.2656*x[18]*x[30]-1.6622*x[19]*x[19]+0.3767*x[19]*x[20]-0.7087*x[19]*x[21]+1.5375*x[19]*x[23]+0.498*x[19]*x[26]+1.3169*x[19]*x[28]-0.8552*x[20]*x[21]+1.1261*x[20]*x[22]-1.2007*x[20]*x[25]+1.1253*x[20]*x[29]+0.4599*x[21]*x[21]+1.6592*x[21]*x[23]+1.096*x[21]*x[26]-0.5583*x[21]*x[28]-1.8917*x[21]*x[29]+1.5237*x[22]*x[22]+0.6319*x[22]*x[25]-1.4668*x[22]*x[26]+0.7257*x[22]*x[30]-1.5143*x[23]*x[24]+1.6959*x[23]*x[25]+0.0012*x[23]*x[26]-1.3333*x[24]*x[27]-0.8164*x[24]*x[28]+0.0022*x[25]*x[26]-0.8088*x[25]*x[28]+0.8828*x[25]*x[29]-1.4281*x[25]*x[30]-0.2493*x[26]*x[29]+1.2209*x[27]*x[27]-1.5752*x[27]*x[28]-0.8156*x[28]*x[28]+0.542*x[28]*x[30]+0.8651*x[30]*x[30]-0.6733*x[1]+0.7317*x[2]-0.7016*x[3]+0.1112*x[4]-0.6199*x[5]+0.1598*x[6]-0.9902*x[7]-0.8732*x[8]-0.4236*x[9]+0.5762*x[10]-0.7065*x[11]+0.8107*x[12]-0.1556*x[13]+0.739*x[14]+0.7372*x[15]-0.4349*x[16]+0.9245*x[17]-0.274*x[18]+0.4739*x[19]-0.2028*x[20]+0.6124*x[21]-0.8978*x[22]-0.8633*x[23]+0.3229*x[24]+0.0558*x[25]-0.2624*x[26]+0.2989*x[27]-0.7719*x[28]-0.3685*x[29]+0.3303*x[30] <= 44.916)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 