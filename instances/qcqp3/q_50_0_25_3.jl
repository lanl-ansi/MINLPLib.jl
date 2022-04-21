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
@NLconstraint(m, e1, -(-1.2476*x[1]*x[9]-1.0352*x[1]*x[15]+1.3471*x[1]*x[17]+1.9573*x[1]*x[18]-0.2972*x[1]*x[20]+0.0588*x[1]*x[25]+0.8711*x[1]*x[49]+0.758*x[2]*x[18]-0.0086*x[2]*x[19]+1.9627*x[2]*x[20]-1.6766*x[2]*x[21]+0.8083*x[2]*x[27]+1.4765*x[2]*x[28]-0.8961*x[2]*x[30]+1.4011*x[2]*x[40]-1.8419*x[2]*x[42]+1.9849*x[2]*x[44]-1.2467*x[2]*x[45]-0.3441*x[2]*x[46]+1.8035*x[2]*x[49]+0.9842*x[2]*x[50]-0.3782*x[3]*x[7]-0.2406*x[3]*x[8]-0.6486*x[3]*x[9]-1.4694*x[3]*x[10]-1.6597*x[3]*x[25]-1.8128*x[3]*x[27]+0.9673*x[3]*x[28]-1.6863*x[3]*x[34]+1.3042*x[3]*x[38]+1.6475*x[4]*x[14]+0.4627*x[4]*x[15]-0.6004*x[4]*x[16]+1.4361*x[4]*x[20]+0.4301*x[4]*x[27]+1.5311*x[4]*x[31]+0.2754*x[4]*x[32]+0.465*x[4]*x[33]+1.2968*x[4]*x[34]-0.1364*x[4]*x[35]+1.5537*x[4]*x[41]+0.3429*x[4]*x[46]+1.4468*x[5]*x[15]+1.6899*x[5]*x[17]+0.7028*x[5]*x[21]-1.8216*x[5]*x[22]+0.3392*x[5]*x[25]+1.2302*x[5]*x[27]-1.8168*x[5]*x[28]+1.7263*x[5]*x[29]-1.3043*x[5]*x[33]-0.6914*x[5]*x[38]+0.6137*x[5]*x[39]-1.5402*x[5]*x[46]+1.3215*x[5]*x[49]+0.9525*x[6]*x[6]-1.855*x[6]*x[9]+0.3783*x[6]*x[10]-1.5046*x[6]*x[16]+0.0106*x[6]*x[17]+0.4751*x[6]*x[24]-1.0224*x[6]*x[25]-0.0142*x[6]*x[26]+1.9682*x[6]*x[28]+1.7284*x[6]*x[33]-0.7397*x[6]*x[35]-0.6635*x[6]*x[36]+0.849*x[6]*x[40]+0.0146*x[6]*x[41]+0.866*x[6]*x[45]-0.9217*x[6]*x[48]-1.6581*x[7]*x[17]+0.3047*x[7]*x[19]+1.4998*x[7]*x[28]+1.9059*x[7]*x[30]-0.0874*x[7]*x[34]-1.5886*x[7]*x[38]+1.884*x[7]*x[42]+1.5146*x[7]*x[46]-0.8221*x[8]*x[11]-0.5041*x[8]*x[31]-0.2279*x[8]*x[33]+1.2816*x[8]*x[35]-1.0809*x[8]*x[38]-1.9679*x[8]*x[40]+0.4055*x[8]*x[43]+0.7605*x[8]*x[44]-1.1187*x[8]*x[46]+1.6305*x[8]*x[47]+1.1625*x[8]*x[49]-0.4274*x[9]*x[9]-0.3829*x[9]*x[17]+0.5911*x[9]*x[22]-1.3991*x[9]*x[26]-1.323*x[9]*x[28]-1.8866*x[9]*x[32]-1.5569*x[9]*x[34]-0.4139*x[9]*x[38]+1.411*x[9]*x[40]+0.5638*x[9]*x[49]+1.2855*x[10]*x[11]-1.3329*x[10]*x[12]-1.4094*x[10]*x[13]-1.5212*x[10]*x[16]+0.8699*x[10]*x[25]-0.9346*x[10]*x[29]-0.5723*x[10]*x[37]+0.0238*x[10]*x[39]-0.545*x[10]*x[46]+0.4564*x[10]*x[48]+0.2978*x[11]*x[11]+0.3315*x[11]*x[12]+0.9773*x[11]*x[17]-0.54*x[11]*x[25]+0.6826*x[11]*x[27]+1.8644*x[11]*x[29]+0.3532*x[11]*x[35]-0.1559*x[11]*x[41]+0.2356*x[11]*x[47]-0.3543*x[11]*x[48]+1.1316*x[12]*x[13]+1.5869*x[12]*x[16]+1.2229*x[12]*x[18]-1.5663*x[12]*x[21]+0.635*x[12]*x[25]+1.0856*x[12]*x[26]-1.2917*x[12]*x[31]+0.0861*x[12]*x[33]-1.1152*x[12]*x[42]+0.3796*x[12]*x[43]-0.8453*x[12]*x[46]-1.4281*x[13]*x[14]+1.5197*x[13]*x[17]+1.6743*x[13]*x[21]-1.3356*x[13]*x[22]-0.979*x[13]*x[27]+0.463*x[13]*x[28]-1.1748*x[13]*x[30]+1.4585*x[13]*x[35]-0.7751*x[13]*x[36]+0.0031*x[13]*x[40]-0.7476*x[14]*x[26]-1.2192*x[14]*x[29]-0.06*x[14]*x[32]-1.939*x[14]*x[36]-1.2389*x[14]*x[37]-1.5987*x[14]*x[43]+0.4065*x[14]*x[44]+1.0648*x[15]*x[32]-1.8206*x[15]*x[42]+0.6758*x[15]*x[47]+1.3622*x[15]*x[50]-1.8159*x[16]*x[17]-0.6933*x[16]*x[18]-0.1795*x[16]*x[20]-0.721*x[16]*x[21]+0.159*x[16]*x[22]-1.96*x[16]*x[23]-0.2778*x[16]*x[25]+1.0403*x[16]*x[27]+0.8722*x[16]*x[35]-0.0328*x[16]*x[50]+0.6139*x[17]*x[17]-1.8394*x[17]*x[24]+1.4957*x[17]*x[27]+0.4115*x[17]*x[36]+0.3745*x[17]*x[40]+1.8684*x[17]*x[45]+0.769*x[17]*x[49]+0.9589*x[18]*x[19]+1.5711*x[18]*x[21]-0.4603*x[18]*x[27]-0.594*x[18]*x[29]+1.9885*x[18]*x[30]+0.4724*x[18]*x[32]-1.7118*x[18]*x[33]+1.3313*x[18]*x[41]-0.9231*x[18]*x[42]+0.6976*x[19]*x[24]+1.4986*x[19]*x[26]+1.0283*x[19]*x[28]+0.1954*x[19]*x[34]-1.8665*x[19]*x[37]+1.8038*x[19]*x[43]-1.5679*x[19]*x[46]+1.6505*x[19]*x[48]+1.0563*x[20]*x[29]-1.5632*x[20]*x[30]-1.0443*x[20]*x[31]-1.6231*x[20]*x[32]+1.5626*x[20]*x[34]+0.8082*x[20]*x[36]+1.1486*x[20]*x[39]-0.8364*x[20]*x[44]-0.6476*x[20]*x[47]-1.0086*x[20]*x[50]+0.9727*x[21]*x[29]+0.3607*x[21]*x[35]-1.7859*x[21]*x[42]+0.481*x[21]*x[48]-1.3494*x[21]*x[50]-1.8384*x[22]*x[25]-1.7621*x[22]*x[27]+0.0946*x[22]*x[29]+0.5877*x[22]*x[31]-1.0049*x[22]*x[32]+0.4132*x[22]*x[33]+1.6745*x[22]*x[35]-0.3931*x[22]*x[37]+0.5099*x[22]*x[39]+1.6268*x[22]*x[42]+0.6756*x[22]*x[44]-1.4437*x[23]*x[31]+0.4557*x[23]*x[32]-1.2069*x[23]*x[33]-1.7362*x[23]*x[35]+0.5772*x[23]*x[39]+1.0133*x[23]*x[43]-1.5689*x[23]*x[44]+0.7905*x[23]*x[47]+1.2126*x[24]*x[28]-1.7087*x[24]*x[31]-0.7585*x[24]*x[33]+1.9758*x[24]*x[36]+1.9644*x[24]*x[38]+0.6917*x[24]*x[40]-0.339*x[24]*x[41]-0.5341*x[24]*x[43]-1.2718*x[24]*x[44]-1.7373*x[24]*x[47]-0.3947*x[24]*x[49]-1.2482*x[25]*x[33]-1.9188*x[25]*x[35]+0.4859*x[25]*x[40]+1.3579*x[26]*x[30]-1.3543*x[26]*x[46]-1.8765*x[26]*x[50]-1.2781*x[27]*x[32]+1.8232*x[27]*x[33]+1.3683*x[27]*x[34]+0.7576*x[27]*x[41]+1.402*x[27]*x[44]-0.1641*x[27]*x[49]+0.1494*x[27]*x[50]+1.9501*x[28]*x[34]+0.2401*x[28]*x[35]-0.3904*x[28]*x[37]+0.6705*x[28]*x[41]-0.6317*x[28]*x[43]+1.3798*x[28]*x[49]+1.6073*x[29]*x[30]-0.1642*x[29]*x[34]+1.4225*x[29]*x[35]+0.7328*x[29]*x[37]-0.6654*x[29]*x[41]+1.3258*x[29]*x[44]+0.0382*x[29]*x[45]-1.1484*x[29]*x[47]+1.0915*x[30]*x[34]+1.4304*x[30]*x[38]+0.4828*x[30]*x[39]-1.3272*x[31]*x[39]-0.6883*x[31]*x[47]+0.0181*x[32]*x[33]+0.6547*x[32]*x[34]+1.2876*x[32]*x[35]+0.7556*x[32]*x[36]+0.7326*x[32]*x[39]+0.0962*x[33]*x[33]-0.8072*x[33]*x[38]-1.2282*x[33]*x[40]-1.0064*x[33]*x[41]-1.7286*x[33]*x[42]-0.4633*x[33]*x[47]-1.2977*x[34]*x[36]+0.3032*x[34]*x[38]-1.9892*x[34]*x[43]+0.7669*x[34]*x[44]+1.8554*x[35]*x[37]+1.7806*x[35]*x[39]+1.5656*x[35]*x[40]-1.4976*x[35]*x[42]-0.246*x[35]*x[44]+1.5728*x[35]*x[46]-0.6917*x[35]*x[47]-1.1333*x[36]*x[40]+0.7403*x[36]*x[44]-0.6024*x[36]*x[45]+1.6535*x[36]*x[47]-0.0101*x[36]*x[48]-1.3099*x[37]*x[41]-0.4307*x[37]*x[42]+1.1956*x[37]*x[43]+0.0086*x[37]*x[44]-0.0472*x[37]*x[47]+0.6997*x[38]*x[40]-0.7819*x[38]*x[41]+0.9008*x[38]*x[48]-1.8066*x[39]*x[40]+0.3534*x[39]*x[43]-0.4006*x[39]*x[44]-0.0576*x[39]*x[46]-1.0082*x[40]*x[41]+1.3278*x[40]*x[42]-0.1287*x[40]*x[50]-0.7859*x[41]*x[42]-1.9447*x[41]*x[48]+1.1612*x[41]*x[49]-0.3343*x[42]*x[45]-0.5208*x[42]*x[50]-0.6494*x[43]*x[45]+1.5628*x[43]*x[50]-0.9006*x[44]*x[45]-0.7978*x[45]*x[46]-0.5133*x[45]*x[50]-0.7741*x[46]*x[48]-1.3413*x[46]*x[50]+1.4015*x[49]*x[50]-0.2652*x[1]-0.7416*x[2]+0.3104*x[3]+0.5838*x[4]-0.2481*x[5]-0.5737*x[6]+0.1995*x[7]+0.7254*x[8]-0.6076*x[9]+0.2583*x[10]+0.3748*x[11]-0.821*x[12]-0.7231*x[13]+0.792*x[14]+0.1935*x[15]+0.3677*x[16]-0.3893*x[17]-0.5531*x[18]+0.3063*x[19]-0.3756*x[20]+0.9983*x[21]-0.4544*x[22]+0.8651*x[23]+0.8738*x[24]+0.7123*x[25]-0.789*x[26]-0.9015*x[27]+0.8536*x[28]-0.6222*x[29]+0.531*x[30]-0.7534*x[31]+0.1807*x[32]+0.8496*x[33]+0.0791*x[34]+0.8057*x[35]-0.81*x[36]+0.7906*x[37]-0.4133*x[38]+0.6907*x[39]+0.0963*x[40]-0.2825*x[41]+0.0354*x[42]+0.5125*x[43]+0.9351*x[44]+0.7973*x[45]-0.8916*x[46]-0.7597*x[47]+0.2381*x[48]+0.0077*x[49]+0.3442*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 