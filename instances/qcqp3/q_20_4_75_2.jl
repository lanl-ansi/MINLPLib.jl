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
@NLconstraint(m, e1, -(0.5042*x[1]*x[1]-0.931*x[1]*x[2]+0.6521*x[1]*x[3]-0.3237*x[1]*x[5]+0.27*x[1]*x[6]+0.2362*x[1]*x[7]+0.5923*x[1]*x[10]+0.986*x[1]*x[11]-0.0644*x[1]*x[12]+0.6635*x[1]*x[13]-0.7397*x[1]*x[14]+0.942*x[1]*x[15]-0.6956*x[1]*x[16]+0.7189*x[1]*x[17]+0.2027*x[1]*x[18]+0.7485*x[1]*x[19]+0.4619*x[1]*x[20]+0.0043*x[2]*x[3]+0.8381*x[2]*x[5]-0.8394*x[2]*x[8]-0.7701*x[2]*x[9]-0.3017*x[2]*x[11]-0.2722*x[2]*x[12]+0.4795*x[2]*x[16]+0.3531*x[2]*x[18]+0.2825*x[3]*x[3]+0.3274*x[3]*x[4]-0.4461*x[3]*x[9]+0.2588*x[3]*x[11]+0.5324*x[3]*x[13]-0.6424*x[3]*x[15]-0.573*x[3]*x[16]+0.6427*x[3]*x[18]+0.1464*x[3]*x[20]+0.7913*x[4]*x[5]+0.0191*x[4]*x[6]+0.6857*x[4]*x[7]+0.3674*x[4]*x[9]-0.7488*x[4]*x[10]-0.9634*x[4]*x[11]-0.2154*x[4]*x[13]+0.9814*x[4]*x[15]+0.3058*x[4]*x[16]-0.5648*x[5]*x[13]+0.043*x[5]*x[14]+0.3748*x[5]*x[16]-0.1711*x[5]*x[17]+0.1803*x[5]*x[18]-0.3642*x[5]*x[19]+0.4124*x[5]*x[20]+0.2058*x[6]*x[6]+0.2026*x[6]*x[7]+0.3626*x[6]*x[8]+0.5458*x[6]*x[12]-0.0222*x[6]*x[17]-0.7975*x[6]*x[18]-0.5112*x[6]*x[19]+0.0613*x[6]*x[20]+0.769*x[7]*x[9]+0.701*x[7]*x[16]-0.7641*x[7]*x[17]+0.3574*x[7]*x[18]-0.0437*x[8]*x[8]+0.7193*x[8]*x[10]+0.4535*x[8]*x[11]+0.5978*x[8]*x[12]+0.0133*x[8]*x[13]+0.8512*x[8]*x[17]-0.6772*x[8]*x[18]+0.5878*x[9]*x[9]-0.3585*x[9]*x[11]+0.1872*x[9]*x[13]+0.0589*x[9]*x[15]-0.3317*x[9]*x[16]+0.7479*x[9]*x[20]-0.9671*x[10]*x[10]+0.9391*x[10]*x[11]+0.9018*x[10]*x[12]+0.32*x[10]*x[16]+0.6027*x[10]*x[18]-0.6141*x[10]*x[19]+0.531*x[10]*x[20]+0.2639*x[11]*x[12]+0.3663*x[11]*x[13]-0.233*x[11]*x[15]+0.4189*x[11]*x[16]+0.4041*x[11]*x[17]+0.304*x[11]*x[18]+0.3126*x[11]*x[19]+0.0481*x[11]*x[20]-0.5275*x[12]*x[16]-0.1305*x[12]*x[18]-0.6678*x[13]*x[15]-0.5155*x[14]*x[14]+0.5784*x[14]*x[15]+0.0016*x[14]*x[16]-0.1111*x[14]*x[20]-0.3946*x[15]*x[15]-0.98*x[15]*x[18]-0.1806*x[15]*x[20]+0.988*x[16]*x[16]-0.6747*x[16]*x[17]-0.3078*x[16]*x[18]+0.2953*x[16]*x[19]-0.8559*x[16]*x[20]+0.3771*x[17]*x[17]-0.6117*x[17]*x[20]+0.1766*x[19]*x[19]+0.472*x[19]*x[20]-0.1445*x[20]*x[20]-0.1965*x[1]+0.5678*x[2]+0.8256*x[3]-0.0288*x[4]-0.0473*x[5]+0.1173*x[6]+0.6063*x[7]-0.8786*x[8]+0.8495*x[9]+0.1714*x[10]+0.4934*x[11]-0.7093*x[12]-0.5405*x[13]+0.7902*x[14]-0.333*x[15]+0.9342*x[16]+0.6046*x[17]-0.7882*x[18]+0.4245*x[19]-0.3577*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.8792*x[1]*x[1]-0.8687*x[1]*x[2]+0.3423*x[1]*x[3]-0.9285*x[1]*x[4]-0.8432*x[1]*x[5]-0.5799*x[1]*x[7]-0.6942*x[1]*x[8]-0.4111*x[1]*x[11]+0.386*x[1]*x[12]+0.1187*x[1]*x[13]+0.12*x[1]*x[14]+0.3772*x[1]*x[16]-0.7117*x[1]*x[20]-0.5063*x[2]*x[2]-0.5562*x[2]*x[3]+0.5658*x[2]*x[5]-0.9644*x[2]*x[6]+0.9425*x[2]*x[8]-0.7938*x[2]*x[11]+0.0856*x[2]*x[12]+0.9841*x[2]*x[15]-0.5537*x[3]*x[5]-0.6452*x[3]*x[11]-0.6664*x[3]*x[16]-0.5412*x[3]*x[17]+0.6908*x[3]*x[18]-0.5576*x[3]*x[20]+0.1221*x[4]*x[4]-0.925*x[4]*x[7]+0.4836*x[4]*x[8]-0.4814*x[4]*x[12]-0.8928*x[4]*x[15]+0.8237*x[4]*x[17]+0.2967*x[4]*x[20]+0.519*x[5]*x[6]-0.4036*x[5]*x[7]+0.2184*x[5]*x[8]+0.5597*x[5]*x[10]-0.6636*x[5]*x[12]-0.2396*x[5]*x[13]+0.2761*x[5]*x[17]-0.8421*x[5]*x[19]+0.5215*x[5]*x[20]-0.3457*x[6]*x[8]+0.54*x[6]*x[10]+0.1788*x[6]*x[11]+0.2414*x[6]*x[12]-0.055*x[6]*x[14]-0.2767*x[6]*x[15]+0.3488*x[6]*x[16]+0.0979*x[6]*x[19]-0.6934*x[7]*x[9]-0.6615*x[7]*x[12]+0.503*x[7]*x[14]-0.7626*x[7]*x[15]-0.7943*x[7]*x[17]-0.3063*x[7]*x[20]+0.0558*x[8]*x[8]-0.2301*x[8]*x[10]+0.5779*x[8]*x[15]-0.0523*x[8]*x[16]+0.4117*x[8]*x[17]+0.7896*x[8]*x[19]-0.3012*x[9]*x[11]-0.0166*x[9]*x[12]-0.6013*x[9]*x[13]-0.27*x[9]*x[15]-0.5193*x[9]*x[18]+0.0948*x[9]*x[19]+0.2315*x[9]*x[20]-0.8466*x[10]*x[12]-0.4082*x[10]*x[13]+0.7234*x[10]*x[17]-0.2451*x[10]*x[18]+0.486*x[10]*x[19]-0.9333*x[10]*x[20]-0.577*x[11]*x[11]+0.6391*x[11]*x[13]-0.078*x[11]*x[14]-0.7901*x[11]*x[16]+0.3108*x[11]*x[17]-0.5911*x[11]*x[19]-0.7161*x[11]*x[20]+0.6677*x[12]*x[12]+0.9834*x[12]*x[13]-0.2604*x[12]*x[15]+0.1312*x[12]*x[16]+0.1699*x[12]*x[18]+0.8036*x[12]*x[19]+0.4179*x[12]*x[20]-0.4876*x[13]*x[15]-0.9695*x[13]*x[16]+0.8412*x[13]*x[17]-0.6245*x[13]*x[18]-0.2725*x[13]*x[19]+0.9959*x[13]*x[20]+0.7839*x[14]*x[15]-0.2566*x[14]*x[18]-0.3715*x[14]*x[20]-0.1659*x[15]*x[16]-0.3605*x[15]*x[20]+0.4571*x[16]*x[16]+0.157*x[16]*x[17]+0.3664*x[16]*x[19]+0.2114*x[16]*x[20]-0.8717*x[17]*x[19]+0.7656*x[18]*x[18]-0.1614*x[18]*x[20]+0.208*x[19]*x[19]+0.2939*x[19]*x[20]+0.4719*x[1]+0.1079*x[2]-0.1952*x[3]+0.9831*x[4]-0.3912*x[5]-0.0164*x[6]-0.7641*x[7]+0.825*x[8]+0.7573*x[9]-0.0731*x[10]-0.7839*x[11]+0.2375*x[12]+0.342*x[13]-0.2362*x[14]+0.7813*x[15]+0.6021*x[16]+0.3864*x[17]+0.7828*x[18]-0.2355*x[19]+0.1796*x[20] <= 10.92)
@NLconstraint(m, e3, 0.9751*x[1]*x[1]+0.4229*x[1]*x[2]-0.0638*x[1]*x[3]+0.9879*x[1]*x[4]+0.8635*x[1]*x[5]+0.4333*x[1]*x[8]+0.8267*x[1]*x[9]+0.3304*x[1]*x[11]+0.7375*x[1]*x[12]+0.1234*x[1]*x[13]-0.2028*x[1]*x[14]+0.4864*x[1]*x[15]+0.4254*x[1]*x[18]-0.7986*x[1]*x[19]-0.3318*x[1]*x[20]+0.7505*x[2]*x[2]+0.8088*x[2]*x[3]-0.4503*x[2]*x[4]+0.8307*x[2]*x[5]-0.9624*x[2]*x[8]-0.172*x[2]*x[9]+0.2328*x[2]*x[12]-0.0483*x[2]*x[13]-0.8543*x[2]*x[15]-0.1414*x[2]*x[16]-0.6745*x[2]*x[17]+0.2956*x[2]*x[18]-0.9646*x[2]*x[19]+0.6631*x[2]*x[20]-0.921*x[3]*x[4]+0.7216*x[3]*x[6]-0.0916*x[3]*x[10]+0.5066*x[3]*x[13]-0.2279*x[3]*x[15]+0.4388*x[3]*x[17]+0.1251*x[3]*x[19]-0.4666*x[3]*x[20]-0.6096*x[4]*x[4]-0.1296*x[4]*x[5]+0.147*x[4]*x[6]-0.8773*x[4]*x[18]+0.3256*x[5]*x[5]+0.1917*x[5]*x[6]-0.7454*x[5]*x[7]+0.953*x[5]*x[10]-0.2524*x[5]*x[20]+0.6998*x[6]*x[6]+0.9019*x[6]*x[7]+0.0886*x[6]*x[10]-0.745*x[6]*x[12]+0.7499*x[6]*x[15]+0.064*x[6]*x[16]-0.919*x[6]*x[18]-0.9064*x[6]*x[20]+0.2797*x[7]*x[9]-0.6761*x[7]*x[13]-0.9433*x[7]*x[17]+0.4738*x[7]*x[20]-0.469*x[8]*x[9]-0.6195*x[8]*x[10]+0.4109*x[8]*x[11]+0.774*x[8]*x[12]-0.6599*x[8]*x[14]+0.5277*x[8]*x[15]-0.207*x[8]*x[16]+0.7556*x[9]*x[9]-0.0444*x[9]*x[10]-0.6359*x[9]*x[13]+0.5783*x[9]*x[14]+0.4262*x[9]*x[15]-0.5666*x[9]*x[16]+0.4188*x[9]*x[18]+0.3495*x[9]*x[20]-0.6488*x[10]*x[11]-0.9492*x[10]*x[12]-0.2321*x[10]*x[14]-0.0055*x[10]*x[15]-0.556*x[10]*x[16]+0.3175*x[10]*x[20]+0.392*x[11]*x[11]+0.7571*x[11]*x[12]-0.123*x[11]*x[14]-0.9402*x[11]*x[15]+0.9707*x[11]*x[16]-0.9632*x[11]*x[18]+0.5879*x[11]*x[19]+0.7006*x[12]*x[12]+0.3368*x[12]*x[16]+0.7005*x[12]*x[19]-0.9946*x[12]*x[20]-0.5453*x[13]*x[13]-0.6007*x[13]*x[15]+0.1658*x[13]*x[16]+0.5857*x[13]*x[17]-0.6648*x[13]*x[18]-0.3842*x[13]*x[20]-0.8785*x[14]*x[14]-0.3002*x[14]*x[15]-0.1467*x[14]*x[19]+0.5581*x[14]*x[20]+0.255*x[15]*x[15]-0.3062*x[15]*x[16]-0.1995*x[15]*x[18]+0.7855*x[16]*x[20]+0.076*x[17]*x[18]+0.9889*x[18]*x[18]+0.6766*x[18]*x[19]+0.3158*x[19]*x[19]-0.8643*x[19]*x[20]-0.8024*x[20]*x[20]-0.6817*x[1]-0.9275*x[2]+0.5669*x[3]-0.8213*x[4]+0.3068*x[5]+0.9216*x[6]+0.8245*x[7]-0.387*x[8]+0.2332*x[9]-0.2114*x[10]-0.5222*x[11]-0.1285*x[12]+0.2733*x[13]-0.5025*x[14]-0.3684*x[15]-0.1281*x[16]+0.7043*x[17]+0.4752*x[18]+0.4398*x[19]-0.2425*x[20] <= 51.323)
@NLconstraint(m, e4, 0.227*x[1]*x[2]-0.5794*x[1]*x[1]-0.3337*x[1]*x[3]-0.3646*x[1]*x[4]-0.4327*x[1]*x[5]-0.1094*x[1]*x[7]+0.3825*x[1]*x[8]+0.5071*x[1]*x[9]+0.8944*x[1]*x[10]-0.3627*x[1]*x[11]+0.065*x[1]*x[12]+0.7137*x[1]*x[13]+0.5367*x[1]*x[14]+0.1169*x[1]*x[15]+0.1142*x[1]*x[16]-0.814*x[1]*x[17]+0.7162*x[1]*x[18]+0.4038*x[1]*x[19]+0.3275*x[2]*x[4]-0.7578*x[2]*x[7]+0.2681*x[2]*x[9]+0.618*x[2]*x[11]+0.8112*x[2]*x[12]+0.652*x[2]*x[13]+0.5574*x[2]*x[14]+0.1105*x[2]*x[15]-0.685*x[2]*x[16]+0.2517*x[2]*x[17]-0.2113*x[2]*x[20]-0.9952*x[3]*x[3]-0.9702*x[3]*x[9]-0.3537*x[3]*x[11]+0.326*x[3]*x[20]-0.2615*x[4]*x[5]-0.1564*x[4]*x[6]+0.9175*x[4]*x[8]-0.5903*x[4]*x[9]+0.9029*x[4]*x[10]+0.3648*x[4]*x[11]-0.9126*x[4]*x[12]-0.644*x[4]*x[14]+0.7789*x[4]*x[17]+0.0203*x[4]*x[20]+0.8897*x[5]*x[5]-0.5469*x[5]*x[6]-0.2008*x[5]*x[11]+0.6762*x[5]*x[14]+0.3243*x[5]*x[17]-0.6903*x[5]*x[18]+0.2058*x[5]*x[19]+0.3876*x[5]*x[20]+0.3695*x[6]*x[6]+0.0322*x[6]*x[8]-0.502*x[6]*x[11]-0.9679*x[6]*x[13]+0.6939*x[6]*x[14]-0.7335*x[6]*x[17]-0.0071*x[6]*x[19]+0.7911*x[7]*x[7]-0.8217*x[7]*x[11]-0.6734*x[7]*x[15]+0.5343*x[7]*x[16]-0.6164*x[7]*x[17]-0.0679*x[7]*x[19]-0.3156*x[7]*x[20]-0.9986*x[8]*x[8]-0.0287*x[8]*x[9]+0.3193*x[8]*x[13]-0.92*x[8]*x[17]-0.147*x[8]*x[18]-0.9656*x[8]*x[20]-0.9044*x[9]*x[10]+0.9256*x[9]*x[12]-0.0849*x[9]*x[14]-0.2946*x[9]*x[16]+0.4543*x[9]*x[18]-0.6516*x[9]*x[20]-0.2951*x[10]*x[13]-0.5713*x[10]*x[14]+0.9107*x[10]*x[15]+0.5607*x[10]*x[16]+0.5813*x[10]*x[17]+0.1879*x[10]*x[20]+0.0879*x[11]*x[13]-0.1947*x[11]*x[15]-0.5199*x[11]*x[20]-0.661*x[12]*x[13]+0.7548*x[12]*x[16]-0.8094*x[13]*x[15]-0.8729*x[13]*x[18]+0.703*x[14]*x[14]-0.6193*x[14]*x[15]+0.863*x[14]*x[17]+0.3731*x[14]*x[19]+0.975*x[14]*x[20]-0.9151*x[15]*x[17]-0.1013*x[15]*x[18]-0.7563*x[15]*x[20]-0.9394*x[16]*x[16]-0.1056*x[16]*x[17]+0.5528*x[16]*x[19]-0.4469*x[16]*x[20]-0.6919*x[17]*x[17]+0.6454*x[17]*x[19]-0.7436*x[17]*x[20]-0.4406*x[18]*x[18]-0.6553*x[18]*x[19]+0.0815*x[18]*x[20]-0.2592*x[19]*x[20]-0.3449*x[20]*x[20]-0.723*x[1]+0.7367*x[2]-0.5166*x[3]-0.6852*x[4]+0.5099*x[5]-0.1606*x[6]-0.8887*x[7]+0.499*x[8]+0.6686*x[9]+0.4415*x[10]-0.2126*x[11]-0.8338*x[12]-0.8861*x[13]-0.9484*x[14]-0.2048*x[15]-0.1835*x[16]-0.2758*x[17]-0.5844*x[18]+0.3621*x[19]+0.6829*x[20] <= 20.533)
@NLconstraint(m, e5, 0.5227*x[1]*x[2]-0.4473*x[1]*x[1]-0.1544*x[1]*x[3]+0.1788*x[1]*x[7]-0.8851*x[1]*x[8]-0.397*x[1]*x[9]-0.8556*x[1]*x[11]+0.5239*x[1]*x[12]+0.0308*x[1]*x[13]-0.7734*x[1]*x[16]+0.3039*x[1]*x[17]-0.7162*x[1]*x[18]+0.3885*x[1]*x[20]-0.999*x[2]*x[2]-0.1183*x[2]*x[3]-0.1821*x[2]*x[11]+0.6174*x[2]*x[13]-0.854*x[2]*x[15]+0.5544*x[2]*x[16]+0.232*x[2]*x[20]-0.6641*x[3]*x[3]-0.3447*x[3]*x[5]+0.6963*x[3]*x[6]+0.1228*x[3]*x[8]+0.1779*x[3]*x[11]+0.973*x[3]*x[12]+0.1374*x[3]*x[13]-0.5653*x[3]*x[17]+0.3235*x[4]*x[4]-0.7351*x[4]*x[5]+0.1866*x[4]*x[9]-0.1166*x[4]*x[12]+0.6616*x[4]*x[13]+0.3928*x[4]*x[14]+0.4047*x[4]*x[15]-0.492*x[4]*x[16]+0.0233*x[4]*x[20]-0.0839*x[5]*x[5]+0.9802*x[5]*x[7]+0.2466*x[5]*x[8]+0.0186*x[5]*x[12]+0.761*x[5]*x[13]+0.1837*x[5]*x[17]+0.6049*x[5]*x[19]-0.782*x[6]*x[6]+0.8772*x[6]*x[7]+0.9354*x[6]*x[8]+0.5135*x[6]*x[10]+0.5527*x[6]*x[11]+0.5089*x[6]*x[12]-0.9858*x[6]*x[13]+0.7245*x[6]*x[15]-0.7463*x[6]*x[16]-0.5182*x[6]*x[19]-0.6181*x[6]*x[20]-0.815*x[7]*x[7]-0.1105*x[7]*x[8]-0.6992*x[7]*x[9]+0.2491*x[7]*x[10]+0.6866*x[7]*x[12]-0.7184*x[7]*x[15]+0.7077*x[7]*x[16]-0.8608*x[7]*x[19]-0.851*x[7]*x[20]+0.6374*x[8]*x[8]-0.0365*x[8]*x[10]+0.7884*x[8]*x[13]+0.6555*x[8]*x[15]-0.3754*x[8]*x[16]-0.0738*x[8]*x[17]+0.9879*x[8]*x[19]+0.0135*x[9]*x[9]-0.3498*x[9]*x[11]-0.0971*x[9]*x[12]+0.904*x[9]*x[15]-0.2376*x[9]*x[16]+0.2933*x[9]*x[17]-0.9793*x[9]*x[20]-0.2463*x[10]*x[10]+0.4602*x[10]*x[11]+0.2682*x[10]*x[12]-0.5987*x[10]*x[15]+0.5991*x[10]*x[16]-0.2997*x[10]*x[18]+0.4424*x[10]*x[20]-0.2551*x[11]*x[15]-0.4591*x[12]*x[14]+0.191*x[12]*x[15]+0.7592*x[12]*x[16]-0.4934*x[12]*x[19]-0.5187*x[13]*x[13]-0.1522*x[13]*x[14]-0.7995*x[13]*x[16]+0.2015*x[13]*x[18]+0.7515*x[13]*x[19]-0.3003*x[13]*x[20]-0.0052*x[14]*x[14]-0.2116*x[14]*x[16]-0.069*x[14]*x[20]+0.4125*x[15]*x[15]+0.1911*x[15]*x[16]+0.141*x[15]*x[20]-0.4838*x[16]*x[20]+0.0428*x[17]*x[17]-0.3545*x[17]*x[19]-0.836*x[17]*x[20]+0.9044*x[18]*x[18]+0.9537*x[19]*x[19]+0.0803*x[19]*x[20]-0.4248*x[20]*x[20]+0.9858*x[1]+0.8136*x[2]+0.6273*x[3]+0.3116*x[4]+0.5186*x[5]+0.4613*x[6]+0.5744*x[7]-0.5661*x[8]-0.7528*x[9]-0.1247*x[10]-0.5048*x[11]+0.1487*x[12]+0.6904*x[13]-0.4091*x[14]+0.8667*x[15]+0.4524*x[16]-0.4188*x[17]-0.3955*x[18]+0.3814*x[19]-0.4766*x[20] <= 37.581)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 