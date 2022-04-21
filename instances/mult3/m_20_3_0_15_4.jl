using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.6703*x[1]*x[18]-0.4892*x[2]*x[6]+0.4676*x[2]*x[19]+0.9054*x[3]*x[11]-0.5182*x[3]*x[17]+0.3948*x[3]*x[19]-0.1976*x[4]*x[7]-0.2194*x[4]*x[14]-0.9398*x[5]*x[7]+0.6188*x[5]*x[8]-0.4053*x[5]*x[11]+0.7207*x[5]*x[12]+0.0946*x[5]*x[14]+0.8432*x[5]*x[16]+0.4506*x[6]*x[14]+0.5307*x[7]*x[10]+0.6701*x[8]*x[9]-0.6154*x[9]*x[18]+0.0318*x[9]*x[19]-0.92*x[10]*x[14]+0.8712*x[10]*x[16]+0.022*x[11]*x[19]+0.7705*x[13]*x[17]+0.6871*x[14]*x[18]-0.2869*x[14]*x[20]+0.5089*x[15]*x[16]+0.4415*x[15]*x[17]+0.7158*x[16]*x[17]+0.1474*x[16]*x[18]+0.3781*x[16]*x[19]+0.9231*x[18]*x[20]+0.0107*x[1]-0.3292*x[2]-0.1952*x[3]+0.0335*x[4]-0.8434*x[5]-0.2529*x[6]+0.9093*x[7]+0.0643*x[8]+0.2242*x[9]+0.6056*x[10]-0.3409*x[11]+0.1815*x[12]+0.6494*x[13]-0.7341*x[14]+0.8969*x[15]-0.098*x[16]-0.7681*x[17]+0.4581*x[18]-0.7326*x[19]-0.3787*x[20]+(-0.2048*x[1]*x[2]*x[3])-0.6054*x[1]*x[2]*x[14]-0.0849*x[1]*x[2]*x[19]-0.7989*x[1]*x[2]*x[20]-0.7744*x[1]*x[3]*x[4]-0.0799*x[1]*x[3]*x[11]+0.9874*x[1]*x[4]*x[6]-0.1918*x[1]*x[5]*x[12]+0.4162*x[1]*x[5]*x[19]-0.3681*x[1]*x[6]*x[14]+0.8508*x[1]*x[7]*x[17]-0.2463*x[1]*x[8]*x[13]+0.6806*x[2]*x[3]*x[7]+0.5528*x[2]*x[3]*x[9]+0.6383*x[2]*x[3]*x[13]+0.703*x[2]*x[3]*x[18]+0.0361*x[2]*x[4]*x[9]+0.289*x[2]*x[4]*x[11]-0.851*x[2]*x[4]*x[17]-0.7567*x[2]*x[5]*x[6]+0.7655*x[2]*x[5]*x[14]+0.2078*x[2]*x[6]*x[8]-0.1114*x[2]*x[6]*x[16]+0.8622*x[2]*x[7]*x[11]-0.8556*x[2]*x[7]*x[12]-0.1178*x[2]*x[8]*x[19]-0.0494*x[2]*x[10]*x[14]-0.0897*x[2]*x[11]*x[12]+0.1124*x[2]*x[11]*x[14]-0.2555*x[2]*x[12]*x[17]+0.7458*x[2]*x[13]*x[17]-0.3052*x[2]*x[15]*x[17]-0.0242*x[2]*x[15]*x[18]+0.3368*x[2]*x[15]*x[19]+0.5405*x[2]*x[17]*x[18]+0.9966*x[3]*x[4]*x[5]+0.2491*x[3]*x[4]*x[9]+0.3236*x[3]*x[4]*x[10]+0.3019*x[3]*x[4]*x[14]-0.4406*x[3]*x[4]*x[17]-0.5445*x[3]*x[5]*x[6]+0.1693*x[3]*x[5]*x[12]-0.8182*x[3]*x[5]*x[14]-0.1247*x[3]*x[5]*x[16]+0.834*x[3]*x[5]*x[18]+0.2015*x[3]*x[6]*x[9]-0.2418*x[3]*x[7]*x[8]+0.9044*x[3]*x[7]*x[11]-0.7046*x[3]*x[7]*x[18]+0.3447*x[3]*x[9]*x[10]-0.3223*x[3]*x[9]*x[11]-0.9464*x[3]*x[9]*x[18]-0.7162*x[3]*x[11]*x[13]+0.4038*x[3]*x[12]*x[17]-0.5883*x[3]*x[12]*x[19]+0.8112*x[3]*x[13]*x[16]-0.8686*x[3]*x[13]*x[17]-0.7632*x[3]*x[13]*x[18]+0.1937*x[3]*x[14]*x[16]+0.2669*x[3]*x[14]*x[17]+0.7318*x[3]*x[15]*x[16]+0.0896*x[4]*x[5]*x[11]-0.0765*x[4]*x[5]*x[12]+0.1866*x[4]*x[5]*x[14]+0.5227*x[4]*x[6]*x[8]+0.15*x[4]*x[6]*x[11]-0.1606*x[4]*x[6]*x[15]+0.1565*x[4]*x[6]*x[17]-0.117*x[4]*x[6]*x[18]+0.6963*x[4]*x[7]*x[13]+0.7213*x[4]*x[8]*x[10]+0.8979*x[4]*x[8]*x[11]-0.5713*x[4]*x[8]*x[15]-0.7873*x[4]*x[8]*x[19]+0.679*x[4]*x[9]*x[19]+0.7626*x[4]*x[10]*x[14]-0.8217*x[4]*x[10]*x[18]+0.9716*x[4]*x[11]*x[17]-0.2495*x[4]*x[11]*x[20]+0.2517*x[4]*x[12]*x[16]-0.9677*x[4]*x[13]*x[15]-0.9582*x[4]*x[13]*x[20]+0.2058*x[4]*x[14]*x[17]-0.816*x[4]*x[18]*x[19]+0.8152*x[5]*x[6]*x[14]-0.8522*x[5]*x[6]*x[17]+0.9809*x[5]*x[6]*x[18]+0.008*x[5]*x[8]*x[9]+0.9041*x[5]*x[8]*x[10]+0.6829*x[5]*x[8]*x[14]-0.0113*x[5]*x[9]*x[11]-0.3156*x[5]*x[10]*x[16]-0.2997*x[5]*x[13]*x[16]-0.3337*x[5]*x[13]*x[19]-0.9126*x[5]*x[14]*x[19]+0.0963*x[5]*x[16]*x[18]-0.5678*x[5]*x[16]*x[19]-0.3061*x[5]*x[18]*x[19]-0.4223*x[6]*x[7]*x[17]+0.7592*x[6]*x[8]*x[12]+0.4225*x[6]*x[8]*x[14]-0.6548*x[6]*x[8]*x[15]+0.5071*x[6]*x[9]*x[14]-0.5974*x[6]*x[9]*x[17]+0.9802*x[6]*x[10]*x[11]+0.3639*x[6]*x[10]*x[12]+0.3375*x[6]*x[10]*x[17]+0.7931*x[6]*x[10]*x[18]-0.9679*x[6]*x[11]*x[14]+0.4111*x[6]*x[11]*x[19]+0.8136*x[6]*x[11]*x[20]-0.8509*x[6]*x[12]*x[17]-0.4744*x[6]*x[12]*x[20]+0.291*x[6]*x[13]*x[16]-0.9413*x[6]*x[14]*x[17]-0.723*x[7]*x[8]*x[11]-0.1564*x[7]*x[8]*x[14]+0.0423*x[7]*x[8]*x[19]-0.6331*x[7]*x[10]*x[13]+0.5367*x[7]*x[11]*x[17]-0.0971*x[7]*x[11]*x[20]+0.6279*x[7]*x[12]*x[14]+0.2352*x[7]*x[12]*x[15]+0.8667*x[7]*x[12]*x[17]-0.3756*x[7]*x[12]*x[18]+0.0506*x[7]*x[13]*x[17]-0.3179*x[7]*x[13]*x[18]+0.0427*x[7]*x[14]*x[16]-0.919*x[7]*x[14]*x[18]-0.8971*x[7]*x[16]*x[19]+0.8052*x[8]*x[9]*x[17]-0.9865*x[8]*x[10]*x[14]-0.4594*x[8]*x[10]*x[17]-0.6003*x[8]*x[10]*x[20]+0.5697*x[8]*x[11]*x[12]+0.2*x[8]*x[12]*x[13]-0.4367*x[8]*x[13]*x[18]+0.4527*x[9]*x[10]*x[12]-0.5326*x[9]*x[10]*x[13]+0.3646*x[9]*x[10]*x[15]-0.5199*x[9]*x[11]*x[12]-0.6545*x[9]*x[13]*x[18]-0.8911*x[9]*x[13]*x[19]+0.9283*x[9]*x[14]*x[17]-0.0403*x[9]*x[16]*x[20]-0.7156*x[9]*x[17]*x[18]-0.2321*x[9]*x[17]*x[19]+0.141*x[10]*x[12]*x[14]+0.9891*x[10]*x[12]*x[19]-0.3754*x[10]*x[17]*x[18]-0.6987*x[10]*x[17]*x[19]+0.887*x[10]*x[17]*x[20]-0.3018*x[11]*x[12]*x[13]-0.9551*x[11]*x[12]*x[16]+0.6049*x[11]*x[12]*x[18]-0.1751*x[11]*x[13]*x[17]+0.0691*x[11]*x[15]*x[19]-0.1219*x[11]*x[17]*x[19]-0.5469*x[11]*x[18]*x[19]+0.0687*x[12]*x[16]*x[18]-0.6906*x[13]*x[14]*x[19]-0.8373*x[13]*x[17]*x[19]+0.2925*x[14]*x[15]*x[18]+0.288*x[14]*x[17]*x[18]-0.9151*x[14]*x[19]*x[20]-0.3619*x[15]*x[18]*x[20]+0.0598*x[16]*x[18]*x[19]-0.8157*x[16]*x[18]*x[20])+obj == 0.0)

m = m 		 # model get returned when including this script. 