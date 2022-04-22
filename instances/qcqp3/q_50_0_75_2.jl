using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
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
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.0765*x[1]*x[1]-0.9573*x[1]*x[2]+0.744*x[1]*x[3]-0.1551*x[1]*x[5]+0.4025*x[1]*x[6]+0.9942*x[1]*x[7]-0.2869*x[1]*x[8]-0.6106*x[1]*x[9]+0.5482*x[1]*x[10]-0.5155*x[1]*x[11]+0.2689*x[1]*x[14]+0.291*x[1]*x[17]-0.6436*x[1]*x[19]-0.6477*x[1]*x[21]-0.0194*x[1]*x[22]-0.2997*x[1]*x[24]+0.7213*x[1]*x[27]-0.9991*x[1]*x[28]+0.8354*x[1]*x[29]+0.9739*x[1]*x[31]+0.9231*x[1]*x[32]-0.5433*x[1]*x[33]-0.5059*x[1]*x[34]+0.1579*x[1]*x[35]+0.9595*x[1]*x[36]-0.4744*x[1]*x[37]-0.7872*x[1]*x[39]+0.8894*x[1]*x[40]+0.6219*x[1]*x[41]-0.9093*x[1]*x[43]+0.9121*x[1]*x[44]+0.4676*x[1]*x[45]-0.056*x[1]*x[46]+0.7962*x[1]*x[47]+0.2177*x[1]*x[48]-0.1877*x[1]*x[50]+0.2283*x[2]*x[5]+0.5367*x[2]*x[6]-0.594*x[2]*x[8]+0.022*x[2]*x[11]-0.9741*x[2]*x[12]-0.7372*x[2]*x[13]-0.0799*x[2]*x[16]+0.6106*x[2]*x[18]+0.4631*x[2]*x[20]-0.7378*x[2]*x[24]-0.8125*x[2]*x[25]-0.4392*x[2]*x[26]-0.7147*x[2]*x[29]-0.974*x[2]*x[30]+0.9874*x[2]*x[32]+0.422*x[2]*x[33]+0.6878*x[2]*x[34]+0.12*x[2]*x[37]-0.8755*x[2]*x[38]-0.2555*x[2]*x[39]-0.5743*x[2]*x[40]-0.5735*x[2]*x[41]-0.6477*x[2]*x[46]+0.0007*x[2]*x[47]+0.0896*x[2]*x[50]+0.1403*x[3]*x[5]+0.0392*x[3]*x[9]-0.9063*x[3]*x[10]-0.3817*x[3]*x[11]+0.8622*x[3]*x[12]+0.0331*x[3]*x[13]-0.1539*x[3]*x[15]-0.684*x[3]*x[16]+0.8427*x[3]*x[19]+0.679*x[3]*x[20]-0.8744*x[3]*x[21]-0.5763*x[3]*x[24]+0.131*x[3]*x[26]+0.7207*x[3]*x[29]+0.2711*x[3]*x[31]+0.901*x[3]*x[33]-0.0142*x[3]*x[35]+0.7093*x[3]*x[38]-0.6987*x[3]*x[40]+0.591*x[3]*x[41]+0.7248*x[3]*x[45]-0.3342*x[3]*x[48]+0.2565*x[4]*x[4]+0.0506*x[4]*x[5]+0.1018*x[4]*x[7]+0.6964*x[4]*x[8]-0.3124*x[4]*x[9]-0.0906*x[4]*x[11]-0.4594*x[4]*x[12]-0.7137*x[4]*x[17]+0.6835*x[4]*x[18]-0.9256*x[4]*x[22]+0.8048*x[4]*x[24]-0.8525*x[4]*x[25]+0.6184*x[4]*x[26]+0.6039*x[4]*x[28]-0.1299*x[4]*x[34]+0.7409*x[4]*x[36]+0.7098*x[4]*x[37]-0.7156*x[4]*x[39]+0.7937*x[4]*x[42]-0.9671*x[4]*x[44]-0.8201*x[4]*x[46]-0.9828*x[4]*x[48]-0.2199*x[4]*x[49]-0.1975*x[4]*x[50]+0.6526*x[5]*x[5]+0.8052*x[5]*x[6]+0.2971*x[5]*x[7]+0.1198*x[5]*x[8]+0.217*x[5]*x[12]+0.0079*x[5]*x[13]-0.3018*x[5]*x[14]+0.9843*x[5]*x[18]-0.9696*x[5]*x[19]+0.8791*x[5]*x[23]-0.9214*x[5]*x[26]-0.6654*x[5]*x[27]+0.8961*x[5]*x[29]+0.7488*x[5]*x[37]-0.816*x[5]*x[42]+0.7283*x[5]*x[43]+0.7735*x[5]*x[44]+0.4313*x[5]*x[46]-0.8995*x[5]*x[49]-0.0242*x[6]*x[13]+0.1137*x[6]*x[15]-0.0807*x[6]*x[18]+0.3716*x[6]*x[19]-0.9041*x[6]*x[20]-0.0494*x[6]*x[21]+0.8577*x[6]*x[25]+0.4838*x[6]*x[26]+0.9976*x[6]*x[27]+0.7792*x[6]*x[30]-0.3619*x[6]*x[32]+0.9372*x[6]*x[34]-0.3207*x[6]*x[37]+0.8329*x[6]*x[38]-0.746*x[6]*x[39]+0.5825*x[6]*x[41]+0.9976*x[6]*x[42]-0.1785*x[6]*x[44]-0.0403*x[6]*x[46]-0.5285*x[6]*x[48]-0.3191*x[6]*x[49]+0.4136*x[6]*x[50]-0.4137*x[7]*x[7]+0.3309*x[7]*x[9]+0.8559*x[7]*x[11]+0.9334*x[7]*x[13]+0.1038*x[7]*x[22]-0.6685*x[7]*x[24]-0.2205*x[7]*x[25]+0.8979*x[7]*x[26]+0.9253*x[7]*x[27]-0.7958*x[7]*x[28]-0.2908*x[7]*x[29]-0.3804*x[7]*x[32]-0.2418*x[7]*x[35]+0.3039*x[7]*x[38]-0.0473*x[7]*x[39]-0.2491*x[7]*x[40]+0.9586*x[7]*x[45]-0.6003*x[7]*x[47]+0.5236*x[7]*x[48]-0.6153*x[7]*x[50]-0.4986*x[8]*x[8]-0.8059*x[8]*x[10]-0.5445*x[8]*x[11]+0.5581*x[8]*x[12]+0.821*x[8]*x[14]+0.9429*x[8]*x[16]-0.5765*x[8]*x[18]-0.3061*x[8]*x[19]+0.7112*x[8]*x[20]-0.9048*x[8]*x[21]+0.6349*x[8]*x[22]+0.5005*x[8]*x[24]-0.3052*x[8]*x[27]-0.7796*x[8]*x[28]-0.2323*x[8]*x[29]-0.1328*x[8]*x[30]+0.6701*x[8]*x[34]+0.6946*x[8]*x[37]+0.4003*x[8]*x[38]-0.6794*x[8]*x[39]+0.695*x[8]*x[49]-0.6787*x[8]*x[50]-0.7436*x[9]*x[11]+0.4042*x[9]*x[14]+0.3019*x[9]*x[16]-0.3193*x[9]*x[17]-0.4433*x[9]*x[19]-0.5216*x[9]*x[22]+0.8652*x[9]*x[23]+0.6401*x[9]*x[24]+0.0653*x[9]*x[26]-0.1219*x[9]*x[29]+0.8175*x[9]*x[36]+0.7173*x[9]*x[42]+0.0579*x[9]*x[43]+0.2197*x[9]*x[45]-0.1751*x[9]*x[48]-0.4539*x[9]*x[50]+0.6875*x[10]*x[10]+0.3553*x[10]*x[11]+0.3546*x[10]*x[14]+0.2915*x[10]*x[15]-0.1419*x[10]*x[17]+0.8974*x[10]*x[20]-0.7709*x[10]*x[21]+0.7025*x[10]*x[22]+0.2871*x[10]*x[27]-0.8686*x[10]*x[28]+0.2948*x[10]*x[29]-0.5289*x[10]*x[30]-0.7476*x[10]*x[34]+0.3785*x[10]*x[35]-0.8182*x[10]*x[38]+0.145*x[10]*x[41]+0.7848*x[10]*x[42]+0.329*x[10]*x[44]+0.4575*x[10]*x[47]+0.2925*x[10]*x[49]+0.6509*x[11]*x[12]-0.5194*x[11]*x[13]-0.5375*x[11]*x[14]-0.8567*x[11]*x[16]-0.7567*x[11]*x[18]+0.0559*x[11]*x[20]-0.5979*x[11]*x[23]-0.5328*x[11]*x[24]+0.4108*x[11]*x[26]-0.9746*x[11]*x[35]-0.8816*x[11]*x[36]-0.6054*x[11]*x[37]+0.8048*x[11]*x[42]-0.4608*x[11]*x[43]-0.5202*x[11]*x[44]-0.0126*x[11]*x[45]+0.4756*x[11]*x[47]-0.1092*x[11]*x[50]+0.3646*x[12]*x[12]-0.604*x[12]*x[14]+0.8765*x[12]*x[15]+0.5905*x[12]*x[19]-0.5705*x[12]*x[20]-0.5678*x[12]*x[23]-0.9959*x[12]*x[24]-0.0773*x[12]*x[25]-0.4033*x[12]*x[27]+0.5307*x[12]*x[31]+0.8639*x[12]*x[32]+0.9249*x[12]*x[38]+0.5844*x[12]*x[41]-0.3302*x[12]*x[43]-0.8971*x[12]*x[44]+0.9343*x[12]*x[45]-0.4812*x[12]*x[46]-0.0224*x[12]*x[47]-0.0381*x[12]*x[49]-0.6702*x[13]*x[15]+0.0765*x[13]*x[17]-0.5192*x[13]*x[18]+0.15*x[13]*x[24]+0.7511*x[13]*x[25]+0.2959*x[13]*x[27]+0.6925*x[13]*x[28]-0.7939*x[13]*x[30]-0.4419*x[13]*x[31]-0.4714*x[13]*x[32]+0.0146*x[13]*x[33]+0.9626*x[13]*x[34]+0.0541*x[13]*x[35]-0.7318*x[13]*x[36]-0.6666*x[13]*x[38]+0.6844*x[13]*x[39]+0.2667*x[13]*x[42]+0.9428*x[13]*x[43]-0.8373*x[13]*x[45]+0.1923*x[13]*x[47]+0.9925*x[13]*x[48]-0.9806*x[13]*x[49]-0.9013*x[14]*x[17]-0.7989*x[14]*x[18]+0.959*x[14]*x[20]+0.6824*x[14]*x[21]-0.0939*x[14]*x[22]+0.9649*x[14]*x[23]+0.887*x[14]*x[26]+0.1799*x[14]*x[27]-0.3306*x[14]*x[28]+0.3269*x[14]*x[30]+0.5563*x[14]*x[33]+0.0427*x[14]*x[34]-0.5169*x[14]*x[35]-0.1694*x[14]*x[38]-0.8772*x[14]*x[39]-0.6835*x[14]*x[40]+0.0361*x[14]*x[41]-0.4938*x[14]*x[43]-0.0824*x[14]*x[45]-0.803*x[14]*x[47]-0.1227*x[14]*x[48]+0.3447*x[14]*x[49]-0.5165*x[15]*x[15]+0.8204*x[15]*x[17]-0.0419*x[15]*x[18]+0.7291*x[15]*x[20]+0.1793*x[15]*x[21]-0.2906*x[15]*x[22]-0.4859*x[15]*x[24]+0.7745*x[15]*x[25]+0.5955*x[15]*x[26]-0.5433*x[15]*x[27]+0.0963*x[15]*x[28]+0.9131*x[15]*x[30]-0.9212*x[15]*x[32]-0.5989*x[15]*x[33]+0.3632*x[15]*x[34]+0.7655*x[15]*x[35]-0.2558*x[15]*x[38]-0.3053*x[15]*x[41]+0.1917*x[15]*x[43]+0.0578*x[15]*x[48]+0.5697*x[15]*x[49]+0.8762*x[16]*x[16]-0.1523*x[16]*x[19]-0.8181*x[16]*x[20]+0.0412*x[16]*x[23]-0.3223*x[16]*x[26]+0.8437*x[16]*x[30]-0.4429*x[16]*x[34]+0.4707*x[16]*x[37]-0.3139*x[16]*x[39]-0.9997*x[16]*x[41]-0.6852*x[16]*x[44]-0.4383*x[16]*x[45]+0.8332*x[16]*x[46]-0.9454*x[16]*x[47]-0.7802*x[16]*x[48]+0.1448*x[16]*x[50]-0.3755*x[17]*x[20]+0.4462*x[17]*x[21]+0.2352*x[17]*x[23]+0.1629*x[17]*x[25]+0.2847*x[17]*x[28]+0.6619*x[17]*x[29]-0.872*x[17]*x[31]+0.7458*x[17]*x[33]+0.7365*x[17]*x[34]+0.5659*x[17]*x[39]-0.0683*x[17]*x[40]-0.0005*x[17]*x[41]+0.1501*x[17]*x[42]+0.0566*x[17]*x[45]+0.5755*x[17]*x[46]-0.9551*x[17]*x[48]+0.9344*x[17]*x[49]+0.8458*x[17]*x[50]+0.4242*x[18]*x[18]+0.9027*x[18]*x[19]+0.2991*x[18]*x[23]-0.6408*x[18]*x[24]+0.2476*x[18]*x[32]-0.9189*x[18]*x[34]-0.9427*x[18]*x[38]-0.8452*x[18]*x[39]-0.6695*x[18]*x[40]+0.0036*x[18]*x[41]+0.289*x[18]*x[43]-0.8866*x[18]*x[46]-0.7705*x[18]*x[47]+0.0254*x[18]*x[49]+0.9054*x[19]*x[19]-0.6551*x[19]*x[20]+0.9365*x[19]*x[22]-0.4841*x[19]*x[23]+0.0731*x[19]*x[24]+0.4111*x[19]*x[25]+0.3022*x[19]*x[27]+0.3822*x[19]*x[29]+0.6491*x[19]*x[32]-0.5066*x[19]*x[35]-0.9413*x[19]*x[36]-0.365*x[19]*x[37]-0.7983*x[19]*x[40]+0.5997*x[19]*x[41]+0.3562*x[19]*x[44]-0.4208*x[19]*x[47]+0.8607*x[19]*x[48]-0.2785*x[19]*x[49]+0.0423*x[20]*x[20]-0.7908*x[20]*x[31]+0.5368*x[20]*x[35]-0.5704*x[20]*x[37]+0.3404*x[20]*x[39]-0.5106*x[20]*x[41]-0.7448*x[20]*x[42]+0.8469*x[20]*x[43]+0.3948*x[20]*x[45]-0.5077*x[20]*x[46]-0.5102*x[21]*x[21]-0.6086*x[21]*x[23]+0.7216*x[21]*x[24]-0.8522*x[21]*x[25]+0.0107*x[21]*x[27]-0.3292*x[21]*x[28]-0.1952*x[21]*x[30]+0.0335*x[21]*x[32]-0.8434*x[21]*x[33]-0.2529*x[21]*x[34]+0.9093*x[21]*x[35]+0.0643*x[21]*x[36]+0.2242*x[21]*x[37]+0.6056*x[21]*x[38]-0.3409*x[21]*x[40]+0.1815*x[21]*x[42]+0.6494*x[21]*x[45]-0.7341*x[21]*x[46]+0.8969*x[21]*x[47]-0.098*x[22]*x[23]-0.7681*x[22]*x[24]+0.4581*x[22]*x[26]-0.7326*x[22]*x[27]-0.3787*x[22]*x[28]+0.7903*x[22]*x[30]-0.5436*x[22]*x[31]-0.288*x[22]*x[36]-0.7333*x[22]*x[37]+0.8451*x[22]*x[39]+0.2767*x[22]*x[41]+0.4912*x[22]*x[42]-0.8079*x[22]*x[46]-0.7274*x[22]*x[47]+0.579*x[22]*x[49]+0.0744*x[22]*x[50]-0.4485*x[23]*x[24]+0.8597*x[23]*x[25]+0.7511*x[23]*x[26]-0.4916*x[23]*x[28]-0.7424*x[23]*x[29]+0.3622*x[23]*x[34]+0.3053*x[23]*x[36]+0.1912*x[23]*x[39]-0.066*x[23]*x[41]+0.095*x[23]*x[43]+0.3368*x[23]*x[45]+0.0471*x[23]*x[46]+0.4675*x[23]*x[47]+0.7806*x[23]*x[49]+0.6144*x[24]*x[25]-0.2238*x[24]*x[27]+0.935*x[24]*x[28]-0.0262*x[24]*x[29]-0.0278*x[24]*x[30]+0.0401*x[24]*x[32]+0.5186*x[24]*x[33]+0.5618*x[24]*x[39]+0.988*x[24]*x[40]-0.1372*x[24]*x[41]-0.224*x[24]*x[42]+0.87*x[24]*x[43]+0.0584*x[24]*x[46]+0.5312*x[24]*x[47]+0.4155*x[24]*x[48]+0.0551*x[24]*x[49]-0.717*x[25]*x[25]-0.6191*x[25]*x[28]-0.2601*x[25]*x[30]+0.4891*x[25]*x[31]+0.68*x[25]*x[32]+0.7469*x[25]*x[34]+0.7366*x[25]*x[36]+0.703*x[25]*x[38]+0.2404*x[25]*x[42]-0.279*x[25]*x[43]-0.5194*x[25]*x[46]+0.9109*x[25]*x[47]-0.6612*x[25]*x[49]+0.1988*x[25]*x[50]-0.9723*x[26]*x[26]+0.3193*x[26]*x[27]+0.1272*x[26]*x[29]+0.0778*x[26]*x[30]-0.4785*x[26]*x[31]+0.1841*x[26]*x[33]-0.4067*x[26]*x[36]+0.1632*x[26]*x[37]+0.8656*x[26]*x[39]+0.1611*x[26]*x[40]+0.3543*x[26]*x[42]+0.9647*x[26]*x[43]+0.9587*x[26]*x[46]-0.0666*x[26]*x[49]+0.4269*x[27]*x[27]-0.9024*x[27]*x[28]+0.6766*x[27]*x[31]+0.5873*x[27]*x[32]+0.0772*x[27]*x[33]-0.0731*x[27]*x[35]-0.2137*x[27]*x[36]-0.7503*x[27]*x[37]-0.3695*x[27]*x[39]+0.8727*x[27]*x[40]-0.2959*x[27]*x[48]-0.7141*x[27]*x[50]-0.7346*x[28]*x[32]-0.9422*x[28]*x[33]+0.7824*x[28]*x[36]+0.4184*x[28]*x[38]+0.649*x[28]*x[40]+0.0384*x[28]*x[43]+0.9789*x[28]*x[45]-0.8868*x[28]*x[46]-0.7421*x[28]*x[47]-0.3318*x[29]*x[31]+0.3174*x[29]*x[33]+0.4195*x[29]*x[36]+0.005*x[29]*x[38]+0.0262*x[29]*x[39]+0.3385*x[29]*x[40]-0.4241*x[29]*x[43]-0.8364*x[29]*x[45]-0.5239*x[29]*x[48]-0.7887*x[29]*x[50]-0.1545*x[30]*x[31]+0.7725*x[30]*x[32]-0.3651*x[30]*x[34]-0.1779*x[30]*x[41]+0.2559*x[30]*x[45]-0.535*x[30]*x[46]+0.1278*x[30]*x[47]+0.5194*x[30]*x[50]+0.648*x[31]*x[31]+0.9947*x[31]*x[35]+0.1175*x[31]*x[37]-0.1423*x[31]*x[38]+0.6628*x[31]*x[40]+0.13*x[31]*x[42]-0.4071*x[31]*x[43]+0.6814*x[31]*x[45]-0.7882*x[31]*x[49]+0.3766*x[31]*x[50]+0.8334*x[32]*x[32]+0.5986*x[32]*x[33]+0.0747*x[32]*x[34]-0.8366*x[32]*x[35]+0.9998*x[32]*x[38]-0.6049*x[32]*x[40]+0.5164*x[32]*x[43]-0.4278*x[32]*x[44]+0.1725*x[32]*x[45]-0.1331*x[32]*x[46]+0.909*x[32]*x[47]+0.1085*x[32]*x[48]+0.8271*x[32]*x[49]+0.9195*x[33]*x[33]-0.1959*x[33]*x[36]-0.5706*x[33]*x[37]+0.6792*x[33]*x[39]+0.0743*x[33]*x[41]+0.9861*x[33]*x[45]-0.2362*x[33]*x[47]+0.6625*x[33]*x[48]+0.5037*x[33]*x[49]+0.5795*x[33]*x[50]-0.0203*x[34]*x[35]+0.8518*x[34]*x[37]-0.5176*x[34]*x[38]-0.3992*x[34]*x[39]+0.9736*x[34]*x[46]-0.6318*x[34]*x[47]-0.7577*x[34]*x[48]+0.5937*x[34]*x[50]+0.1*x[35]*x[36]-0.9659*x[35]*x[39]-0.9886*x[35]*x[40]-0.6746*x[35]*x[46]-0.9364*x[35]*x[50]+0.2979*x[36]*x[36]-0.9268*x[36]*x[38]+0.9874*x[36]*x[40]+0.7388*x[36]*x[43]-0.8378*x[36]*x[47]-0.0282*x[36]*x[49]+0.0836*x[36]*x[50]-0.2515*x[37]*x[43]-0.0813*x[37]*x[44]+0.4116*x[37]*x[45]-0.2989*x[37]*x[46]+0.9294*x[37]*x[47]+0.8361*x[37]*x[49]-0.5397*x[37]*x[50]-0.5446*x[38]*x[38]-0.3315*x[38]*x[42]+0.9279*x[38]*x[43]+0.0875*x[38]*x[44]-0.6838*x[38]*x[45]+0.5755*x[38]*x[46]-0.2985*x[38]*x[47]+0.7666*x[38]*x[49]-0.9363*x[38]*x[50]-0.1764*x[39]*x[39]+0.6139*x[39]*x[41]-0.8264*x[39]*x[42]+0.372*x[39]*x[46]-0.2674*x[39]*x[48]-0.2559*x[39]*x[50]+0.7807*x[40]*x[40]-0.7351*x[40]*x[41]-0.7983*x[40]*x[49]-0.8325*x[40]*x[50]+0.3431*x[41]*x[41]-0.6811*x[41]*x[44]+0.0826*x[41]*x[46]-0.6364*x[41]*x[48]+0.737*x[41]*x[50]+0.0265*x[42]*x[42]+0.3772*x[42]*x[43]-0.199*x[42]*x[45]+0.2168*x[42]*x[47]+0.5755*x[42]*x[48]+0.4204*x[43]*x[44]+0.2847*x[43]*x[46]+0.1227*x[43]*x[47]+0.8318*x[43]*x[48]-0.0133*x[43]*x[49]+0.4677*x[43]*x[50]+0.9818*x[44]*x[44]-0.884*x[44]*x[46]+0.7955*x[44]*x[47]+0.8508*x[44]*x[48]-0.219*x[44]*x[49]-0.1155*x[44]*x[50]+0.6978*x[45]*x[45]+0.4425*x[45]*x[47]+0.9231*x[45]*x[48]+0.6453*x[45]*x[49]+0.9226*x[45]*x[50]-0.9742*x[46]*x[46]-0.1023*x[46]*x[47]-0.506*x[47]*x[49]-0.2771*x[48]*x[48]-0.5851*x[48]*x[49]+0.4033*x[48]*x[50]-0.969*x[49]*x[49]+0.4623*x[50]*x[50]+0.8593*x[1]+0.8792*x[2]+0.7004*x[3]-0.1326*x[4]+0.2992*x[5]-0.107*x[6]-0.0243*x[7]-0.3026*x[8]+0.4911*x[9]+0.0888*x[10]-0.2336*x[11]-0.5938*x[12]+0.957*x[13]-0.0037*x[14]-0.4063*x[15]+0.6278*x[16]+0.196*x[17]+0.5782*x[18]-0.7207*x[19]+0.2847*x[20]-0.1592*x[21]-0.2277*x[22]+0.0512*x[23]+0.6212*x[24]-0.9616*x[25]-0.8938*x[26]-0.2326*x[27]+0.102*x[28]+0.9971*x[29]+0.7663*x[30]-0.5352*x[31]+0.5066*x[32]-0.387*x[33]-0.2135*x[34]+0.0129*x[35]-0.4558*x[36]-0.6481*x[37]-0.7218*x[38]-0.7735*x[39]+0.5381*x[40]+0.9237*x[41]+0.088*x[42]-0.1725*x[43]-0.7814*x[44]-0.2254*x[45]+0.3023*x[46]-0.9957*x[47]+0.8797*x[48]+0.3441*x[49]-0.6929*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

 
