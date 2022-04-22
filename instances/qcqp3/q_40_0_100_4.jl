using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
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
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.8383*x[1]*x[1]-0.6698*x[1]*x[2]+0.0278*x[1]*x[3]-0.6996*x[1]*x[4]-0.3721*x[1]*x[5]-0.0097*x[1]*x[6]-0.1389*x[1]*x[7]-0.1557*x[1]*x[8]+0.3259*x[1]*x[9]+0.2066*x[1]*x[10]+0.4973*x[1]*x[11]-0.0794*x[1]*x[12]+0.9822*x[1]*x[13]+0.9661*x[1]*x[14]-0.7344*x[1]*x[15]+0.5813*x[1]*x[16]-0.0259*x[1]*x[17]-0.8178*x[1]*x[18]+0.1696*x[1]*x[19]+0.0474*x[1]*x[20]-0.6102*x[1]*x[21]+0.3413*x[1]*x[22]-0.0321*x[1]*x[23]+0.3867*x[1]*x[24]-0.9594*x[1]*x[25]-0.0941*x[1]*x[26]+0.2824*x[1]*x[27]+0.2279*x[1]*x[28]-0.2678*x[1]*x[29]+0.8357*x[1]*x[30]-0.1385*x[1]*x[31]-0.0028*x[1]*x[32]+0.6343*x[1]*x[33]+0.6558*x[1]*x[34]-0.3929*x[1]*x[35]+0.5754*x[1]*x[36]+0.5376*x[1]*x[37]-0.9033*x[1]*x[38]-0.3758*x[1]*x[39]+0.0538*x[1]*x[40]+0.5201*x[2]*x[2]+0.0502*x[2]*x[3]+0.6526*x[2]*x[4]+0.3788*x[2]*x[5]-0.2957*x[2]*x[6]+0.2894*x[2]*x[7]-0.7789*x[2]*x[8]-0.7901*x[2]*x[9]+0.4762*x[2]*x[10]+0.4641*x[2]*x[11]+0.4006*x[2]*x[12]+0.9277*x[2]*x[13]+0.1455*x[2]*x[14]-0.2138*x[2]*x[15]+0.5281*x[2]*x[16]-0.3557*x[2]*x[17]+0.9451*x[2]*x[18]+0.3845*x[2]*x[19]-0.931*x[2]*x[20]-0.7231*x[2]*x[21]-0.1203*x[2]*x[22]+0.6813*x[2]*x[23]-0.1748*x[2]*x[24]-0.893*x[2]*x[25]+0.3339*x[2]*x[26]+0.1493*x[2]*x[27]-0.0821*x[2]*x[28]+0.497*x[2]*x[29]-0.9345*x[2]*x[30]+0.4136*x[2]*x[31]+0.7518*x[2]*x[32]-0.343*x[2]*x[33]-0.4928*x[2]*x[34]+0.7599*x[2]*x[35]+0.6319*x[2]*x[36]-0.8854*x[2]*x[37]+0.7768*x[2]*x[38]+0.0498*x[2]*x[39]-0.87*x[2]*x[40]+0.2151*x[3]*x[3]-0.5144*x[3]*x[4]-0.4663*x[3]*x[5]-0.7141*x[3]*x[6]+0.3885*x[3]*x[7]+0.8542*x[3]*x[8]+0.7864*x[3]*x[9]+0.2841*x[3]*x[10]-0.2428*x[3]*x[11]-0.8116*x[3]*x[12]+0.8953*x[3]*x[13]+0.2995*x[3]*x[14]-0.2316*x[3]*x[15]-0.7342*x[3]*x[16]+0.3091*x[3]*x[17]-0.114*x[3]*x[18]-0.6494*x[3]*x[19]-0.5173*x[3]*x[20]-0.7047*x[3]*x[21]-0.764*x[3]*x[22]-0.2591*x[3]*x[23]-0.6065*x[3]*x[24]-0.5798*x[3]*x[25]+0.1489*x[3]*x[26]-0.7814*x[3]*x[27]+0.0265*x[3]*x[28]-0.0071*x[3]*x[29]-0.985*x[3]*x[30]+0.9441*x[3]*x[31]+0.4356*x[3]*x[32]+0.9238*x[3]*x[33]-0.8049*x[3]*x[34]-0.4609*x[3]*x[35]+0.0185*x[3]*x[36]-0.5567*x[3]*x[37]+0.5428*x[3]*x[38]+0.8039*x[3]*x[39]-0.7982*x[3]*x[40]+0.433*x[4]*x[4]+0.3945*x[4]*x[5]-0.8879*x[4]*x[6]-0.0682*x[4]*x[7]-0.0645*x[4]*x[8]+0.8792*x[4]*x[9]-0.8687*x[4]*x[10]+0.3423*x[4]*x[11]-0.9285*x[4]*x[12]-0.8432*x[4]*x[13]-0.5799*x[4]*x[14]-0.6942*x[4]*x[15]-0.4111*x[4]*x[16]+0.386*x[4]*x[17]+0.1187*x[4]*x[18]+0.12*x[4]*x[19]+0.3772*x[4]*x[20]-0.7117*x[4]*x[21]-0.5063*x[4]*x[22]-0.5562*x[4]*x[23]+0.5658*x[4]*x[24]-0.9644*x[4]*x[25]+0.9425*x[4]*x[26]-0.7938*x[4]*x[27]+0.0856*x[4]*x[28]+0.9841*x[4]*x[29]-0.5537*x[4]*x[30]-0.6452*x[4]*x[31]-0.6664*x[4]*x[32]-0.5412*x[4]*x[33]+0.6908*x[4]*x[34]-0.5576*x[4]*x[35]+0.1221*x[4]*x[36]-0.925*x[4]*x[37]+0.4836*x[4]*x[38]-0.4814*x[4]*x[39]-0.8928*x[4]*x[40]+0.8237*x[5]*x[5]+0.2967*x[5]*x[6]+0.519*x[5]*x[7]-0.4036*x[5]*x[8]+0.2184*x[5]*x[9]+0.5597*x[5]*x[10]-0.6636*x[5]*x[11]-0.2396*x[5]*x[12]+0.2761*x[5]*x[13]-0.8421*x[5]*x[14]+0.5215*x[5]*x[15]-0.3457*x[5]*x[16]+0.54*x[5]*x[17]+0.1788*x[5]*x[18]+0.2414*x[5]*x[19]-0.055*x[5]*x[20]-0.2767*x[5]*x[21]+0.3488*x[5]*x[22]+0.0979*x[5]*x[23]-0.6934*x[5]*x[24]-0.6615*x[5]*x[25]+0.503*x[5]*x[26]-0.7626*x[5]*x[27]-0.7943*x[5]*x[28]-0.3063*x[5]*x[29]+0.0558*x[5]*x[30]-0.2301*x[5]*x[31]+0.5779*x[5]*x[32]-0.0523*x[5]*x[33]+0.4117*x[5]*x[34]+0.7896*x[5]*x[35]-0.3012*x[5]*x[36]-0.0166*x[5]*x[37]-0.6013*x[5]*x[38]-0.27*x[5]*x[39]-0.5193*x[5]*x[40]+0.0948*x[6]*x[6]+0.2315*x[6]*x[7]-0.8466*x[6]*x[8]-0.4082*x[6]*x[9]+0.7234*x[6]*x[10]-0.2451*x[6]*x[11]+0.486*x[6]*x[12]-0.9333*x[6]*x[13]-0.577*x[6]*x[14]+0.6391*x[6]*x[15]-0.078*x[6]*x[16]-0.7901*x[6]*x[17]+0.3108*x[6]*x[18]-0.5911*x[6]*x[19]-0.7161*x[6]*x[20]+0.6677*x[6]*x[21]+0.9834*x[6]*x[22]-0.2604*x[6]*x[23]+0.1312*x[6]*x[24]+0.1699*x[6]*x[25]+0.8036*x[6]*x[26]+0.4179*x[6]*x[27]-0.4876*x[6]*x[28]-0.9695*x[6]*x[29]+0.8412*x[6]*x[30]-0.6245*x[6]*x[31]-0.2725*x[6]*x[32]+0.9959*x[6]*x[33]+0.7839*x[6]*x[34]-0.2566*x[6]*x[35]-0.3715*x[6]*x[36]-0.1659*x[6]*x[37]-0.3605*x[6]*x[38]+0.4571*x[6]*x[39]+0.157*x[6]*x[40]+0.3664*x[7]*x[7]+0.2114*x[7]*x[8]-0.8717*x[7]*x[9]+0.7656*x[7]*x[10]-0.1614*x[7]*x[11]+0.208*x[7]*x[12]+0.2939*x[7]*x[13]+0.4719*x[7]*x[14]+0.1079*x[7]*x[15]-0.1952*x[7]*x[16]+0.9831*x[7]*x[17]-0.3912*x[7]*x[18]-0.0164*x[7]*x[19]-0.7641*x[7]*x[20]+0.825*x[7]*x[21]+0.7573*x[7]*x[22]-0.0731*x[7]*x[23]-0.7839*x[7]*x[24]+0.2375*x[7]*x[25]+0.342*x[7]*x[26]-0.2362*x[7]*x[27]+0.7813*x[7]*x[28]+0.6021*x[7]*x[29]+0.3864*x[7]*x[30]+0.7828*x[7]*x[31]-0.2355*x[7]*x[32]+0.1796*x[7]*x[33]-0.7816*x[7]*x[34]+0.6992*x[7]*x[35]-0.5391*x[7]*x[36]+0.1898*x[7]*x[37]-0.3419*x[7]*x[38]-0.6057*x[7]*x[39]+0.4886*x[7]*x[40]-0.0693*x[8]*x[8]+0.6415*x[8]*x[9]-0.1695*x[8]*x[10]-0.662*x[8]*x[11]-0.6558*x[8]*x[12]-0.2137*x[8]*x[13]+0.0807*x[8]*x[14]+0.2775*x[8]*x[15]-0.639*x[8]*x[16]+0.1566*x[8]*x[17]+0.4792*x[8]*x[18]+0.1403*x[8]*x[19]-0.6095*x[8]*x[20]+0.9322*x[8]*x[21]-0.0214*x[8]*x[22]+0.3126*x[8]*x[23]-0.6241*x[8]*x[24]+0.1136*x[8]*x[25]+0.4677*x[8]*x[26]-0.6577*x[8]*x[27]+0.3394*x[8]*x[28]-0.7785*x[8]*x[29]-0.7024*x[8]*x[30]+0.2443*x[8]*x[31]-0.2521*x[8]*x[32]+0.2286*x[8]*x[33]-0.0991*x[8]*x[34]-0.7218*x[8]*x[35]+0.9204*x[8]*x[36]-0.1743*x[8]*x[37]+0.2405*x[8]*x[38]+0.1433*x[8]*x[39]+0.402*x[8]*x[40]+0.7113*x[9]*x[9]-0.14*x[9]*x[10]+0.1251*x[9]*x[11]+0.0473*x[9]*x[12]-0.5929*x[9]*x[13]+0.0649*x[9]*x[14]+0.9708*x[9]*x[15]+0.6177*x[9]*x[16]+0.5806*x[9]*x[17]-0.1607*x[9]*x[18]+0.059*x[9]*x[19]-0.8811*x[9]*x[20]-0.4492*x[9]*x[21]+0.7614*x[9]*x[22]+0.2033*x[9]*x[23]-0.9171*x[9]*x[24]-0.0382*x[9]*x[25]-0.8299*x[9]*x[26]-0.5709*x[9]*x[27]-0.396*x[9]*x[28]+0.7934*x[9]*x[29]+0.0689*x[9]*x[30]-0.4928*x[9]*x[31]-0.4895*x[9]*x[32]+0.8422*x[9]*x[33]+0.8058*x[9]*x[34]-0.3989*x[9]*x[35]-0.7604*x[9]*x[36]-0.2455*x[9]*x[37]-0.1685*x[9]*x[38]-0.5593*x[9]*x[39]-0.7832*x[9]*x[40]+0.0926*x[10]*x[10]+0.6215*x[10]*x[11]+0.3352*x[10]*x[12]+0.3423*x[10]*x[13]-0.8728*x[10]*x[14]+0.6484*x[10]*x[15]-0.2626*x[10]*x[16]-0.9557*x[10]*x[17]-0.0043*x[10]*x[18]-0.3711*x[10]*x[19]-0.3175*x[10]*x[20]-0.3467*x[10]*x[21]-0.0837*x[10]*x[22]+0.397*x[10]*x[23]-0.8681*x[10]*x[24]-0.2124*x[10]*x[25]+0.9815*x[10]*x[26]-0.5043*x[10]*x[27]-0.2869*x[10]*x[28]+0.6841*x[10]*x[29]-0.4616*x[10]*x[30]+0.4655*x[10]*x[31]-0.6494*x[10]*x[32]-0.2862*x[10]*x[33]-0.5755*x[10]*x[34]-0.5887*x[10]*x[35]+0.3282*x[10]*x[36]+0.0774*x[10]*x[37]+0.6841*x[10]*x[38]-0.2826*x[10]*x[39]+0.9124*x[10]*x[40]+0.8253*x[11]*x[11]+0.1537*x[11]*x[12]-0.6056*x[11]*x[13]+0.1527*x[11]*x[14]+0.8957*x[11]*x[15]-0.5742*x[11]*x[16]+0.235*x[11]*x[17]-0.5581*x[11]*x[18]-0.6459*x[11]*x[19]+0.6936*x[11]*x[20]+0.5801*x[11]*x[21]+0.6639*x[11]*x[22]+0.6154*x[11]*x[23]+0.593*x[11]*x[24]-0.5041*x[11]*x[25]-0.8966*x[11]*x[26]+0.2624*x[11]*x[27]+0.1377*x[11]*x[28]-0.3901*x[11]*x[29]-0.244*x[11]*x[30]-0.0898*x[11]*x[31]+0.7614*x[11]*x[32]-0.7333*x[11]*x[33]+0.3803*x[11]*x[34]+0.6721*x[11]*x[35]-0.1619*x[11]*x[36]+0.8134*x[11]*x[37]+0.9525*x[11]*x[38]+0.992*x[11]*x[39]+0.7007*x[11]*x[40]+0.3342*x[12]*x[12]+0.7684*x[12]*x[13]+0.3835*x[12]*x[14]-0.3171*x[12]*x[15]-0.5577*x[12]*x[16]+0.6115*x[12]*x[17]-0.1189*x[12]*x[18]+0.8643*x[12]*x[19]+0.3953*x[12]*x[20]-0.3491*x[12]*x[21]-0.7712*x[12]*x[22]-0.8291*x[12]*x[23]-0.3737*x[12]*x[24]+0.388*x[12]*x[25]-0.5345*x[12]*x[26]-0.2952*x[12]*x[27]+0.2886*x[12]*x[28]+0.0765*x[12]*x[29]+0.8758*x[12]*x[30]+0.4549*x[12]*x[31]-0.0236*x[12]*x[32]-0.1005*x[12]*x[33]+0.7607*x[12]*x[34]-0.7844*x[12]*x[35]-0.0479*x[12]*x[36]+0.9452*x[12]*x[37]-0.1973*x[12]*x[38]+0.6377*x[12]*x[39]+0.5098*x[12]*x[40]-0.3909*x[13]*x[13]+0.9553*x[13]*x[14]+0.1032*x[13]*x[15]+0.6899*x[13]*x[16]+0.8619*x[13]*x[17]+0.3971*x[13]*x[18]-0.3458*x[13]*x[19]-0.5388*x[13]*x[20]+0.8271*x[13]*x[21]-0.4226*x[13]*x[22]+0.3216*x[13]*x[23]+0.5984*x[13]*x[24]+0.8383*x[13]*x[25]+0.9912*x[13]*x[26]-0.6707*x[13]*x[27]+0.623*x[13]*x[28]+0.93*x[13]*x[29]-0.9724*x[13]*x[30]+0.693*x[13]*x[31]-0.4268*x[13]*x[32]-0.9103*x[13]*x[33]+0.0769*x[13]*x[34]-0.9401*x[13]*x[35]+0.4041*x[13]*x[36]+0.256*x[13]*x[37]-0.4499*x[13]*x[38]-0.967*x[13]*x[39]+0.7441*x[13]*x[40]+0.9925*x[14]*x[14]-0.8395*x[14]*x[15]+0.0652*x[14]*x[16]+0.6151*x[14]*x[17]-0.5872*x[14]*x[18]-0.021*x[14]*x[19]-0.355*x[14]*x[20]-0.0804*x[14]*x[21]-0.8904*x[14]*x[22]+0.0457*x[14]*x[23]+0.9914*x[14]*x[24]-0.2043*x[14]*x[25]-0.8175*x[14]*x[26]-0.3506*x[14]*x[27]+0.8449*x[14]*x[28]+0.9969*x[14]*x[29]+0.7066*x[14]*x[30]+0.7814*x[14]*x[31]-0.2681*x[14]*x[32]+0.1122*x[14]*x[33]+0.5142*x[14]*x[34]+0.5563*x[14]*x[35]+0.7168*x[14]*x[36]+0.1767*x[14]*x[37]-0.4082*x[14]*x[38]+0.6883*x[14]*x[39]+0.4342*x[14]*x[40]+0.2648*x[15]*x[15]+0.3778*x[15]*x[16]-0.8064*x[15]*x[17]+0.6143*x[15]*x[18]+0.0073*x[15]*x[19]-0.385*x[15]*x[20]-0.1292*x[15]*x[21]+0.0795*x[15]*x[22]-0.3467*x[15]*x[23]+0.4255*x[15]*x[24]+0.5645*x[15]*x[25]-0.6424*x[15]*x[26]+0.0119*x[15]*x[27]-0.6729*x[15]*x[28]+0.5847*x[15]*x[29]+0.7055*x[15]*x[30]+0.325*x[15]*x[31]+0.2792*x[15]*x[32]+0.0091*x[15]*x[33]-0.8959*x[15]*x[34]-0.2254*x[15]*x[35]+0.718*x[15]*x[36]+0.7289*x[15]*x[37]+0.0895*x[15]*x[38]-0.3158*x[15]*x[39]-0.6424*x[15]*x[40]-0.4076*x[16]*x[16]-0.7606*x[16]*x[17]-0.4835*x[16]*x[18]+0.7128*x[16]*x[19]-0.7993*x[16]*x[20]+0.1586*x[16]*x[21]-0.2892*x[16]*x[22]-0.297*x[16]*x[23]+0.4053*x[16]*x[24]+0.5703*x[16]*x[25]+0.8903*x[16]*x[26]-0.7035*x[16]*x[27]+0.607*x[16]*x[28]-0.984*x[16]*x[29]+0.1984*x[16]*x[30]-0.3261*x[16]*x[31]+0.9942*x[16]*x[32]+0.4899*x[16]*x[33]+0.1859*x[16]*x[34]+0.7152*x[16]*x[35]+0.6231*x[16]*x[36]-0.3239*x[16]*x[37]+0.6656*x[16]*x[38]+0.6511*x[16]*x[39]+0.4798*x[16]*x[40]-0.6549*x[17]*x[17]+0.3657*x[17]*x[18]+0.2469*x[17]*x[19]+0.1256*x[17]*x[20]-0.83*x[17]*x[21]+0.8632*x[17]*x[22]-0.6316*x[17]*x[23]+0.901*x[17]*x[24]+0.2282*x[17]*x[25]-0.3158*x[17]*x[26]-0.9495*x[17]*x[27]+0.379*x[17]*x[28]-0.7787*x[17]*x[29]-0.3534*x[17]*x[30]+0.0053*x[17]*x[31]-0.1876*x[17]*x[32]-0.502*x[17]*x[33]+0.1311*x[17]*x[34]+0.6431*x[17]*x[35]+0.3694*x[17]*x[36]-0.7882*x[17]*x[37]-0.3699*x[17]*x[38]-0.874*x[17]*x[39]-0.4416*x[17]*x[40]+0.2313*x[18]*x[18]+0.357*x[18]*x[19]+0.1096*x[18]*x[20]+0.9751*x[18]*x[21]+0.4229*x[18]*x[22]-0.0638*x[18]*x[23]+0.9879*x[18]*x[24]+0.8635*x[18]*x[25]+0.4333*x[18]*x[26]+0.8267*x[18]*x[27]+0.3304*x[18]*x[28]+0.7375*x[18]*x[29]+0.1234*x[18]*x[30]-0.2028*x[18]*x[31]+0.4864*x[18]*x[32]+0.4254*x[18]*x[33]-0.7986*x[18]*x[34]-0.3318*x[18]*x[35]+0.7505*x[18]*x[36]+0.8088*x[18]*x[37]-0.4503*x[18]*x[38]+0.8307*x[18]*x[39]-0.9624*x[18]*x[40]-0.172*x[19]*x[19]+0.2328*x[19]*x[20]-0.0483*x[19]*x[21]-0.8543*x[19]*x[22]-0.1414*x[19]*x[23]-0.6745*x[19]*x[24]+0.2956*x[19]*x[25]-0.9646*x[19]*x[26]+0.6631*x[19]*x[27]-0.921*x[19]*x[28]+0.7216*x[19]*x[29]-0.0916*x[19]*x[30]+0.5066*x[19]*x[31]-0.2279*x[19]*x[32]+0.4388*x[19]*x[33]+0.1251*x[19]*x[34]-0.4666*x[19]*x[35]-0.6096*x[19]*x[36]-0.1296*x[19]*x[37]+0.147*x[19]*x[38]-0.8773*x[19]*x[39]+0.3256*x[19]*x[40]+0.1917*x[20]*x[20]-0.7454*x[20]*x[21]+0.953*x[20]*x[22]-0.2524*x[20]*x[23]+0.6998*x[20]*x[24]+0.9019*x[20]*x[25]+0.0886*x[20]*x[26]-0.745*x[20]*x[27]+0.7499*x[20]*x[28]+0.064*x[20]*x[29]-0.919*x[20]*x[30]-0.9064*x[20]*x[31]+0.2797*x[20]*x[32]-0.6761*x[20]*x[33]-0.9433*x[20]*x[34]+0.4738*x[20]*x[35]-0.469*x[20]*x[36]-0.6195*x[20]*x[37]+0.4109*x[20]*x[38]+0.774*x[20]*x[39]-0.6599*x[20]*x[40]+0.5277*x[21]*x[21]-0.207*x[21]*x[22]+0.7556*x[21]*x[23]-0.0444*x[21]*x[24]-0.6359*x[21]*x[25]+0.5783*x[21]*x[26]+0.4262*x[21]*x[27]-0.5666*x[21]*x[28]+0.4188*x[21]*x[29]+0.3495*x[21]*x[30]-0.6488*x[21]*x[31]-0.9492*x[21]*x[32]-0.2321*x[21]*x[33]-0.0055*x[21]*x[34]-0.556*x[21]*x[35]+0.3175*x[21]*x[36]+0.392*x[21]*x[37]+0.7571*x[21]*x[38]-0.123*x[21]*x[39]-0.9402*x[21]*x[40]+0.9707*x[22]*x[22]-0.9632*x[22]*x[23]+0.5879*x[22]*x[24]+0.7006*x[22]*x[25]+0.3368*x[22]*x[26]+0.7005*x[22]*x[27]-0.9946*x[22]*x[28]-0.5453*x[22]*x[29]-0.6007*x[22]*x[30]+0.1658*x[22]*x[31]+0.5857*x[22]*x[32]-0.6648*x[22]*x[33]-0.3842*x[22]*x[34]-0.8785*x[22]*x[35]-0.3002*x[22]*x[36]-0.1467*x[22]*x[37]+0.5581*x[22]*x[38]+0.255*x[22]*x[39]-0.3062*x[22]*x[40]-0.1995*x[23]*x[23]+0.7855*x[23]*x[24]+0.076*x[23]*x[25]+0.9889*x[23]*x[26]+0.6766*x[23]*x[27]+0.3158*x[23]*x[28]-0.8643*x[23]*x[29]-0.8024*x[23]*x[30]-0.6817*x[23]*x[31]-0.9275*x[23]*x[32]+0.5669*x[23]*x[33]-0.8213*x[23]*x[34]+0.3068*x[23]*x[35]+0.9216*x[23]*x[36]+0.8245*x[23]*x[37]-0.387*x[23]*x[38]+0.2332*x[23]*x[39]-0.2114*x[23]*x[40]-0.5222*x[24]*x[24]-0.1285*x[24]*x[25]+0.2733*x[24]*x[26]-0.5025*x[24]*x[27]-0.3684*x[24]*x[28]-0.1281*x[24]*x[29]+0.7043*x[24]*x[30]+0.4752*x[24]*x[31]+0.4398*x[24]*x[32]-0.2425*x[24]*x[33]+0.0265*x[24]*x[34]+0.1761*x[24]*x[35]+0.6789*x[24]*x[36]-0.2652*x[24]*x[37]-0.7416*x[24]*x[38]+0.3104*x[24]*x[39]+0.5838*x[24]*x[40]-0.2481*x[25]*x[25]-0.5737*x[25]*x[26]+0.1995*x[25]*x[27]+0.7254*x[25]*x[28]-0.6076*x[25]*x[29]+0.2583*x[25]*x[30]+0.3748*x[25]*x[31]-0.821*x[25]*x[32]-0.7231*x[25]*x[33]+0.792*x[25]*x[34]+0.1935*x[25]*x[35]+0.3677*x[25]*x[36]-0.3893*x[25]*x[37]-0.5531*x[25]*x[38]+0.3063*x[25]*x[39]-0.3756*x[25]*x[40]+0.9983*x[26]*x[26]-0.4544*x[26]*x[27]+0.8651*x[26]*x[28]+0.8738*x[26]*x[29]+0.7123*x[26]*x[30]-0.789*x[26]*x[31]-0.9015*x[26]*x[32]+0.8536*x[26]*x[33]-0.6222*x[26]*x[34]+0.531*x[26]*x[35]-0.7534*x[26]*x[36]+0.1807*x[26]*x[37]+0.8496*x[26]*x[38]+0.0791*x[26]*x[39]+0.8057*x[26]*x[40]-0.81*x[27]*x[27]+0.7906*x[27]*x[28]-0.4133*x[27]*x[29]+0.6907*x[27]*x[30]+0.0963*x[27]*x[31]-0.2825*x[27]*x[32]+0.0354*x[27]*x[33]+0.5125*x[27]*x[34]+0.9351*x[27]*x[35]+0.7973*x[27]*x[36]-0.8916*x[27]*x[37]-0.7597*x[27]*x[38]+0.2381*x[27]*x[39]+0.0077*x[27]*x[40]+0.3442*x[28]*x[28]+0.1405*x[28]*x[29]+0.8568*x[28]*x[30]-0.261*x[28]*x[31]-0.8792*x[28]*x[32]-0.0695*x[28]*x[33]-0.827*x[28]*x[34]+0.5092*x[28]*x[35]+0.4796*x[28]*x[36]-0.7576*x[28]*x[37]-0.2986*x[28]*x[38]-0.6192*x[28]*x[39]-0.8556*x[28]*x[40]-0.0737*x[29]*x[29]-0.0614*x[29]*x[30]-0.0832*x[29]*x[31]-0.6275*x[29]*x[32]-0.4122*x[29]*x[33]+0.1479*x[29]*x[34]-0.4795*x[29]*x[35]+0.4531*x[29]*x[36]-0.564*x[29]*x[37]-0.7735*x[29]*x[38]+0.5994*x[29]*x[39]+0.5007*x[29]*x[40]+0.5843*x[30]*x[30]-0.436*x[30]*x[31]-0.2484*x[30]*x[32]+0.5402*x[30]*x[33]+0.4467*x[30]*x[34]-0.7388*x[30]*x[35]+0.449*x[30]*x[36]+0.2*x[30]*x[37]-0.2227*x[30]*x[38]+0.1216*x[30]*x[39]-0.1403*x[30]*x[40]+0.2873*x[31]*x[31]-0.9251*x[31]*x[32]-0.9097*x[31]*x[33]-0.299*x[31]*x[34]-0.037*x[31]*x[35]+0.1356*x[31]*x[36]+0.1424*x[31]*x[37]+0.9099*x[31]*x[38]-0.8295*x[31]*x[39]-0.9163*x[31]*x[40]-0.886*x[32]*x[32]-0.5395*x[32]*x[33]+0.4885*x[32]*x[34]+0.0733*x[32]*x[35]+0.6171*x[32]*x[36]+0.9443*x[32]*x[37]+0.8452*x[32]*x[38]+0.2589*x[32]*x[39]-0.3954*x[32]*x[40]+0.2099*x[33]*x[33]-0.4274*x[33]*x[34]+0.7638*x[33]*x[35]+0.0518*x[33]*x[36]-0.7951*x[33]*x[37]-0.0508*x[33]*x[38]-0.2861*x[33]*x[39]+0.0163*x[33]*x[40]+0.3989*x[34]*x[34]-0.3631*x[34]*x[35]-0.1875*x[34]*x[36]+0.6995*x[34]*x[37]+0.5373*x[34]*x[38]+0.7748*x[34]*x[39]+0.0892*x[34]*x[40]+0.093*x[35]*x[35]-0.4689*x[35]*x[36]+0.4298*x[35]*x[37]-0.4441*x[35]*x[38]-0.9731*x[35]*x[39]-0.0911*x[35]*x[40]-0.8933*x[36]*x[36]-0.3553*x[36]*x[37]-0.1372*x[36]*x[38]+0.239*x[36]*x[39]+0.9347*x[36]*x[40]-0.8911*x[37]*x[37]-0.528*x[37]*x[38]-0.13*x[37]*x[39]-0.2034*x[37]*x[40]-0.69*x[38]*x[38]+0.2966*x[38]*x[39]+0.9593*x[38]*x[40]-0.9582*x[39]*x[39]+0.4532*x[39]*x[40]+0.5574*x[40]*x[40]-0.4571*x[1]-0.9344*x[2]-0.1114*x[3]+0.477*x[4]-0.0515*x[5]-0.456*x[6]+0.1071*x[7]+0.3639*x[8]+0.1604*x[9]+0.7412*x[10]-0.842*x[11]+0.2298*x[12]-0.7632*x[13]+0.467*x[14]-0.3678*x[15]-0.0498*x[16]+0.2148*x[17]-0.6331*x[18]+0.1204*x[19]+0.2074*x[20]-0.0007*x[21]+0.1524*x[22]-0.1373*x[23]-0.5286*x[24]+0.0533*x[25]-0.0113*x[26]+0.039*x[27]+0.746*x[28]-0.7493*x[29]-0.3501*x[30]-0.7046*x[31]+0.623*x[32]-0.3282*x[33]+0.2535*x[34]+0.7369*x[35]-0.3179*x[36]-0.7554*x[37]+0.3384*x[38]+0.7428*x[39]+0.6871*x[40])+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

 
