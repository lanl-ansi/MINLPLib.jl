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
@NLconstraint(m, e1, -(0.3895*x[1]*x[14]+0.2896*x[1]*x[21]+1.8013*x[1]*x[27]+1.301*x[1]*x[30]-0.1951*x[1]*x[35]-1.1231*x[1]*x[36]+0.992*x[1]*x[38]-0.7754*x[1]*x[44]-0.1996*x[2]*x[10]-1.5304*x[2]*x[13]+1.0756*x[2]*x[14]-0.6608*x[2]*x[17]+1.3732*x[2]*x[20]-0.2715*x[2]*x[30]+0.9367*x[2]*x[31]-0.0589*x[2]*x[37]-1.8626*x[2]*x[45]-0.0455*x[2]*x[47]-0.3215*x[2]*x[49]-1.8829*x[2]*x[50]+0.5207*x[3]*x[20]+1.0674*x[3]*x[24]-0.9807*x[3]*x[25]-0.2704*x[3]*x[30]-1.1331*x[4]*x[6]-1.2915*x[4]*x[9]-1.4342*x[4]*x[15]+0.9868*x[4]*x[16]-1.9387*x[4]*x[17]-0.964*x[4]*x[19]-1.9254*x[4]*x[25]-1.3081*x[4]*x[32]+1.5268*x[4]*x[35]-1.1491*x[4]*x[41]+0.8925*x[4]*x[45]-1.1592*x[4]*x[46]+1.4121*x[4]*x[48]-0.0522*x[4]*x[49]-1.3842*x[5]*x[12]-1.6924*x[5]*x[14]-0.961*x[5]*x[17]-0.3628*x[5]*x[18]+1.7043*x[5]*x[20]+1.1491*x[5]*x[24]+0.4809*x[5]*x[29]-0.5533*x[5]*x[31]+0.0006*x[5]*x[34]+0.9615*x[5]*x[35]+0.4407*x[5]*x[42]-1.8822*x[5]*x[43]-0.9916*x[5]*x[46]-0.6117*x[5]*x[47]+1.8439*x[5]*x[49]+0.292*x[6]*x[6]-1.1801*x[6]*x[10]-1.7565*x[6]*x[15]-0.8095*x[6]*x[16]+0.9478*x[6]*x[17]+1.604*x[6]*x[18]-0.8947*x[6]*x[22]+0.3059*x[6]*x[25]-1.6445*x[6]*x[31]+1.3957*x[6]*x[34]-0.5934*x[6]*x[37]+0.9036*x[6]*x[42]+1.0884*x[6]*x[48]+0.4666*x[7]*x[10]-1.344*x[7]*x[25]-0.1026*x[7]*x[26]+0.0511*x[7]*x[27]+1.9794*x[7]*x[31]+1.0417*x[7]*x[38]-0.1842*x[7]*x[42]+1.1762*x[7]*x[47]-1.3357*x[7]*x[48]-1.2149*x[8]*x[10]-0.2866*x[8]*x[13]-1.8953*x[8]*x[26]+1.7146*x[8]*x[31]-0.7355*x[8]*x[34]+1.9858*x[8]*x[36]+1.5597*x[8]*x[42]-0.1736*x[8]*x[44]-0.2521*x[9]*x[12]-0.9347*x[9]*x[18]+0.3636*x[9]*x[19]+0.4155*x[9]*x[20]-0.6942*x[9]*x[22]+0.388*x[9]*x[24]+1.2276*x[9]*x[25]-0.5358*x[9]*x[29]-0.3757*x[9]*x[31]+1.3082*x[9]*x[34]-0.1738*x[9]*x[35]+0.4123*x[9]*x[38]-0.4915*x[9]*x[42]-1.2459*x[9]*x[45]+1.8446*x[9]*x[47]-1.6421*x[10]*x[12]-0.6318*x[10]*x[13]-1.5505*x[10]*x[16]-1.598*x[10]*x[20]+0.7138*x[10]*x[26]+1.7701*x[10]*x[27]-0.7374*x[10]*x[32]+0.1511*x[10]*x[33]+0.2156*x[10]*x[41]+1.4166*x[10]*x[43]+1.1905*x[10]*x[46]-1.6225*x[11]*x[19]-1.804*x[11]*x[23]-0.5831*x[11]*x[25]+1.3806*x[11]*x[26]+1.2129*x[11]*x[33]-1.3779*x[11]*x[36]-0.0924*x[11]*x[38]+1.0089*x[11]*x[40]-0.081*x[11]*x[46]+0.4695*x[11]*x[48]+0.6768*x[12]*x[15]-0.226*x[12]*x[18]+0.0399*x[12]*x[20]+1.2849*x[12]*x[21]+1.0889*x[12]*x[22]-0.1742*x[12]*x[29]-1.5454*x[12]*x[41]+1.5431*x[12]*x[48]+0.3521*x[12]*x[49]-1.1345*x[13]*x[16]+0.382*x[13]*x[23]-1.0961*x[13]*x[25]+0.5028*x[13]*x[31]+1.2022*x[13]*x[32]+1.6077*x[13]*x[33]-1.7464*x[13]*x[45]+0.2352*x[14]*x[21]+0.9586*x[14]*x[25]+1.8636*x[14]*x[33]+0.9576*x[14]*x[35]-1.8284*x[14]*x[37]-0.858*x[14]*x[38]-1.6835*x[14]*x[40]-1.8846*x[14]*x[41]-0.6707*x[14]*x[42]-1.4392*x[14]*x[47]-1.3869*x[15]*x[18]+1.8485*x[15]*x[26]-0.7583*x[15]*x[29]-1.6437*x[15]*x[33]-1.5327*x[15]*x[36]+1.0939*x[15]*x[42]+1.9647*x[15]*x[46]+1.6982*x[16]*x[24]+1.6386*x[16]*x[26]+1.6705*x[16]*x[34]-1.6331*x[16]*x[36]-1.5399*x[16]*x[37]-0.7638*x[16]*x[42]+0.4177*x[16]*x[45]-0.6973*x[16]*x[46]-0.6886*x[16]*x[48]-1.6114*x[16]*x[49]+1.3387*x[17]*x[19]+1.7997*x[17]*x[22]-1.9949*x[17]*x[24]+0.9135*x[17]*x[25]-1.7542*x[17]*x[30]-1.9481*x[17]*x[35]+0.9083*x[17]*x[36]+0.6688*x[17]*x[38]-1.726*x[17]*x[41]+0.6296*x[17]*x[45]-0.0665*x[18]*x[20]-1.2534*x[18]*x[28]-0.8291*x[18]*x[29]-0.1403*x[18]*x[31]-0.8122*x[18]*x[38]-0.7224*x[18]*x[39]+0.3169*x[19]*x[27]-1.6463*x[19]*x[28]-1.765*x[19]*x[29]+1.5223*x[19]*x[33]-0.9697*x[19]*x[35]-1.4488*x[19]*x[37]-1.866*x[19]*x[38]+1.6497*x[19]*x[41]+1.6343*x[19]*x[44]-1.3906*x[19]*x[46]-1.8172*x[20]*x[22]+1.6561*x[20]*x[24]-1.5176*x[20]*x[25]+1.573*x[20]*x[26]+1.6562*x[20]*x[34]+1.2292*x[20]*x[35]+0.932*x[20]*x[38]+1.3589*x[20]*x[45]+0.703*x[20]*x[46]-1.8189*x[20]*x[48]-1.224*x[20]*x[50]+0.3375*x[21]*x[23]-0.9075*x[21]*x[24]-0.4901*x[21]*x[30]-1.7392*x[21]*x[33]+1.0012*x[21]*x[36]-1.1637*x[21]*x[40]-0.6655*x[21]*x[41]-1.3287*x[21]*x[49]+0.2393*x[21]*x[50]+0.5944*x[22]*x[22]+1.9434*x[22]*x[28]-1.2686*x[22]*x[30]+0.4349*x[22]*x[31]+1.1241*x[22]*x[32]-1.0026*x[22]*x[34]-1.8319*x[22]*x[36]+0.8334*x[22]*x[38]-0.0739*x[22]*x[40]-0.7302*x[22]*x[41]+1.745*x[22]*x[45]-1.6963*x[22]*x[46]+1.2164*x[23]*x[24]-0.3594*x[23]*x[42]+0.4748*x[23]*x[45]+1.9715*x[23]*x[49]+1.0356*x[24]*x[29]+1.6674*x[24]*x[43]-0.1428*x[24]*x[47]-1.7831*x[24]*x[49]+0.3381*x[24]*x[50]+1.0744*x[25]*x[26]-1.5289*x[25]*x[34]-0.2313*x[25]*x[35]-0.1564*x[25]*x[37]+1.3851*x[25]*x[38]-1.9179*x[25]*x[39]-1.8265*x[25]*x[40]-1.742*x[25]*x[49]-1.9463*x[26]*x[30]+0.7949*x[26]*x[32]+1.2308*x[26]*x[33]-1.1612*x[26]*x[34]+0.5374*x[26]*x[35]-0.8498*x[26]*x[36]+1.306*x[26]*x[37]+1.3445*x[26]*x[38]+0.0058*x[26]*x[41]-1.6651*x[26]*x[47]+1.1794*x[26]*x[50]-1.8758*x[27]*x[27]+0.4996*x[27]*x[29]-1.5307*x[27]*x[36]-0.9833*x[27]*x[41]+0.9771*x[27]*x[46]-0.4612*x[27]*x[47]+0.61*x[28]*x[35]-0.6727*x[28]*x[39]+0.3307*x[28]*x[47]-0.4576*x[29]*x[30]+0.6436*x[29]*x[36]+1.5199*x[29]*x[38]-0.0195*x[29]*x[40]-1.0312*x[29]*x[41]+0.4025*x[29]*x[42]+0.0926*x[29]*x[43]-1.7827*x[29]*x[45]-1.546*x[29]*x[47]-1.4449*x[29]*x[48]+1.0219*x[30]*x[37]+0.8771*x[30]*x[41]-1.5399*x[30]*x[42]-0.1352*x[30]*x[44]-0.3673*x[30]*x[45]+1.6265*x[30]*x[46]+1.2285*x[30]*x[48]-0.6199*x[30]*x[49]+0.9386*x[31]*x[34]-0.7139*x[31]*x[45]-1.6215*x[32]*x[33]+1.5424*x[32]*x[36]+0.7041*x[32]*x[46]-1.7999*x[33]*x[35]-0.9156*x[33]*x[36]+1.8304*x[33]*x[37]-0.4421*x[33]*x[38]+1.6083*x[33]*x[43]+1.0554*x[33]*x[45]-1.6907*x[33]*x[47]-1.6937*x[34]*x[35]+0.3193*x[34]*x[36]+0.5921*x[34]*x[45]+0.0063*x[35]*x[35]+1.451*x[35]*x[38]-0.9223*x[35]*x[49]-0.5504*x[36]*x[40]+1.2044*x[36]*x[42]+1.4796*x[36]*x[48]-1.3037*x[37]*x[42]-1.3644*x[37]*x[43]+0.2767*x[37]*x[44]-0.8121*x[37]*x[49]+1.9747*x[37]*x[50]+1.7683*x[38]*x[43]+1.5142*x[38]*x[48]-1.353*x[39]*x[42]+0.6712*x[39]*x[47]-0.2771*x[39]*x[49]-0.4632*x[40]*x[41]+1.6265*x[40]*x[50]+0.108*x[41]*x[46]+0.0305*x[42]*x[45]-0.3346*x[42]*x[46]-0.9768*x[44]*x[45]+0.7918*x[44]*x[49]+1.6806*x[45]*x[46]+0.8768*x[46]*x[47]+0.7363*x[46]*x[50]+0.764*x[47]*x[50]+0.9388*x[49]*x[49]+0.8807*x[1]-0.7634*x[2]+0.217*x[3]-0.0549*x[4]-0.9422*x[5]-0.9389*x[6]-0.2805*x[7]-0.3906*x[8]+0.8925*x[9]+0.359*x[10]-0.3714*x[11]-0.5488*x[12]+0.1483*x[13]+0.225*x[14]+0.7272*x[15]-0.8881*x[16]-0.0211*x[17]-0.4108*x[18]-0.0434*x[19]-0.7799*x[20]-0.4614*x[21]-0.0865*x[22]+0.3207*x[23]+0.0431*x[24]+0.8559*x[25]-0.2257*x[26]-0.1022*x[27]-0.5768*x[28]-0.8797*x[29]+0.3955*x[30]+0.7964*x[31]+0.2734*x[32]+0.0895*x[33]-0.4146*x[34]+0.9077*x[35]-0.1895*x[36]+0.994*x[37]-0.6899*x[38]+0.9394*x[39]-0.2503*x[40]-0.2187*x[41]-0.1793*x[42]+0.9029*x[43]+0.1218*x[44]+0.2453*x[45]+0.7306*x[46]-0.2001*x[47]+0.7936*x[48]-0.7984*x[49]-0.589*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

 
