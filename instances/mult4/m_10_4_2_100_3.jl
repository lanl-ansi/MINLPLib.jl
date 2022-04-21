using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.3339*x[1]*x[2]+0.1493*x[1]*x[3]-0.0821*x[1]*x[4]+0.497*x[1]*x[5]-0.9345*x[1]*x[6]+0.4136*x[1]*x[7]+0.7518*x[1]*x[8]-0.343*x[1]*x[9]-0.4928*x[1]*x[10]+0.7599*x[2]*x[3]+0.6319*x[2]*x[4]-0.8854*x[2]*x[5]+0.7768*x[2]*x[6]+0.0498*x[2]*x[7]-0.87*x[2]*x[8]+0.2151*x[2]*x[9]-0.5144*x[2]*x[10]-0.4663*x[3]*x[4]-0.7141*x[3]*x[5]+0.3885*x[3]*x[6]+0.8542*x[3]*x[7]+0.7864*x[3]*x[8]+0.2841*x[3]*x[9]-0.2428*x[3]*x[10]-0.8116*x[4]*x[5]+0.8953*x[4]*x[6]+0.2995*x[4]*x[7]-0.2316*x[4]*x[8]-0.7342*x[4]*x[9]+0.3091*x[4]*x[10]-0.114*x[5]*x[6]-0.6494*x[5]*x[7]-0.5173*x[5]*x[8]-0.7047*x[5]*x[9]-0.764*x[5]*x[10]-0.2591*x[6]*x[7]-0.6065*x[6]*x[8]-0.5798*x[6]*x[9]+0.1489*x[6]*x[10]-0.7814*x[7]*x[8]+0.0265*x[7]*x[9]-0.0071*x[7]*x[10]-0.985*x[8]*x[9]+0.9441*x[8]*x[10]+0.4356*x[9]*x[10]+0.9238*x[1]-0.8049*x[2]-0.4609*x[3]+0.0185*x[4]-0.5567*x[5]+0.5428*x[6]+0.8039*x[7]-0.7982*x[8]+0.433*x[9]+0.3945*x[10]+0.435*x[1]*x[2]*x[3]-0.9752*x[1]*x[2]*x[4]+0.7921*x[1]*x[2]*x[5]-0.6234*x[1]*x[2]*x[6]-0.2596*x[1]*x[2]*x[7]+0.038*x[1]*x[2]*x[8]+0.7493*x[1]*x[2]*x[9]+0.0256*x[1]*x[2]*x[10]-0.457*x[1]*x[3]*x[4]-0.3738*x[1]*x[3]*x[5]+0.2854*x[1]*x[3]*x[6]-0.4543*x[1]*x[3]*x[7]-0.03*x[1]*x[3]*x[8]-0.9105*x[1]*x[3]*x[9]-0.7535*x[1]*x[3]*x[10]-0.1891*x[1]*x[4]*x[5]+0.6336*x[1]*x[4]*x[6]+0.1559*x[1]*x[4]*x[7]-0.3327*x[1]*x[4]*x[8]-0.0413*x[1]*x[4]*x[9]-0.3352*x[1]*x[4]*x[10]-0.9197*x[1]*x[5]*x[6]-0.3498*x[1]*x[5]*x[7]-0.3321*x[1]*x[5]*x[8]+0.3069*x[1]*x[5]*x[9]-0.6815*x[1]*x[5]*x[10]-0.9023*x[1]*x[6]*x[7]-0.3243*x[1]*x[6]*x[8]-0.7002*x[1]*x[6]*x[9]+0.8733*x[1]*x[6]*x[10]+0.7257*x[1]*x[7]*x[8]+0.807*x[1]*x[7]*x[9]-0.3247*x[1]*x[7]*x[10]+0.751*x[1]*x[8]*x[9]-0.1371*x[1]*x[8]*x[10]+0.3378*x[1]*x[9]*x[10]+0.4854*x[2]*x[3]*x[4]+0.6818*x[2]*x[3]*x[5]-0.2154*x[2]*x[3]*x[6]+0.9713*x[2]*x[3]*x[7]+0.0508*x[2]*x[3]*x[8]-0.0821*x[2]*x[3]*x[9]-0.2744*x[2]*x[3]*x[10]+0.3301*x[2]*x[4]*x[5]+0.0977*x[2]*x[4]*x[6]+0.7447*x[2]*x[4]*x[7]+0.152*x[2]*x[4]*x[8]+0.6629*x[2]*x[4]*x[9]-0.8393*x[2]*x[4]*x[10]+0.1067*x[2]*x[5]*x[6]-0.9084*x[2]*x[5]*x[7]+0.761*x[2]*x[5]*x[8]+0.5597*x[2]*x[5]*x[9]-0.2003*x[2]*x[5]*x[10]-0.9542*x[2]*x[6]*x[7]-0.1824*x[2]*x[6]*x[8]-0.8383*x[2]*x[6]*x[9]-0.6698*x[2]*x[6]*x[10]+0.0278*x[2]*x[7]*x[8]-0.6996*x[2]*x[7]*x[9]-0.3721*x[2]*x[7]*x[10]-0.0097*x[2]*x[8]*x[9]-0.1389*x[2]*x[8]*x[10]-0.1557*x[2]*x[9]*x[10]+0.3259*x[3]*x[4]*x[5]+0.2066*x[3]*x[4]*x[6]+0.4973*x[3]*x[4]*x[7]-0.0794*x[3]*x[4]*x[8]+0.9822*x[3]*x[4]*x[9]+0.9661*x[3]*x[4]*x[10]-0.7344*x[3]*x[5]*x[6]+0.5813*x[3]*x[5]*x[7]-0.0259*x[3]*x[5]*x[8]-0.8178*x[3]*x[5]*x[9]+0.1696*x[3]*x[5]*x[10]+0.0474*x[3]*x[6]*x[7]-0.6102*x[3]*x[6]*x[8]+0.3413*x[3]*x[6]*x[9]-0.0321*x[3]*x[6]*x[10]+0.3867*x[3]*x[7]*x[8]-0.9594*x[3]*x[7]*x[9]-0.0941*x[3]*x[7]*x[10]+0.2824*x[3]*x[8]*x[9]+0.2279*x[3]*x[8]*x[10]-0.2678*x[3]*x[9]*x[10]+0.8357*x[4]*x[5]*x[6]-0.1385*x[4]*x[5]*x[7]-0.0028*x[4]*x[5]*x[8]+0.6343*x[4]*x[5]*x[9]+0.6558*x[4]*x[5]*x[10]-0.3929*x[4]*x[6]*x[7]+0.5754*x[4]*x[6]*x[8]+0.5376*x[4]*x[6]*x[9]-0.9033*x[4]*x[6]*x[10]-0.3758*x[4]*x[7]*x[8]+0.0538*x[4]*x[7]*x[9]+0.5201*x[4]*x[7]*x[10]+0.0502*x[4]*x[8]*x[9]+0.6526*x[4]*x[8]*x[10]+0.3788*x[4]*x[9]*x[10]-0.2957*x[5]*x[6]*x[7]+0.2894*x[5]*x[6]*x[8]-0.7789*x[5]*x[6]*x[9]-0.7901*x[5]*x[6]*x[10]+0.4762*x[5]*x[7]*x[8]+0.4641*x[5]*x[7]*x[9]+0.4006*x[5]*x[7]*x[10]+0.9277*x[5]*x[8]*x[9]+0.1455*x[5]*x[8]*x[10]-0.2138*x[5]*x[9]*x[10]+0.5281*x[6]*x[7]*x[8]-0.3557*x[6]*x[7]*x[9]+0.9451*x[6]*x[7]*x[10]+0.3845*x[6]*x[8]*x[9]-0.931*x[6]*x[8]*x[10]-0.7231*x[6]*x[9]*x[10]-0.1203*x[7]*x[8]*x[9]+0.6813*x[7]*x[8]*x[10]-0.1748*x[7]*x[9]*x[10]-0.893*x[8]*x[9]*x[10]+0.8381*x[1]*x[2]*x[3]*x[4]-0.8394*x[1]*x[2]*x[3]*x[5]-0.7701*x[1]*x[2]*x[3]*x[6]-0.3017*x[1]*x[2]*x[3]*x[7]-0.2722*x[1]*x[2]*x[3]*x[8]+0.4795*x[1]*x[2]*x[3]*x[9]+0.3531*x[1]*x[2]*x[3]*x[10]+0.2825*x[1]*x[2]*x[4]*x[5]+0.3274*x[1]*x[2]*x[4]*x[6]-0.4461*x[1]*x[2]*x[4]*x[7]+0.2588*x[1]*x[2]*x[4]*x[8]+0.5324*x[1]*x[2]*x[4]*x[9]-0.6424*x[1]*x[2]*x[4]*x[10]-0.573*x[1]*x[2]*x[5]*x[6]+0.6427*x[1]*x[2]*x[5]*x[7]+0.1464*x[1]*x[2]*x[5]*x[8]+0.7913*x[1]*x[2]*x[5]*x[9]+0.0191*x[1]*x[2]*x[5]*x[10]+0.6857*x[1]*x[2]*x[6]*x[7]+0.3674*x[1]*x[2]*x[6]*x[8]-0.7488*x[1]*x[2]*x[6]*x[9]-0.9634*x[1]*x[2]*x[6]*x[10]-0.2154*x[1]*x[2]*x[7]*x[8]+0.9814*x[1]*x[2]*x[7]*x[9]+0.3058*x[1]*x[2]*x[7]*x[10]-0.5648*x[1]*x[2]*x[8]*x[9]+0.043*x[1]*x[2]*x[8]*x[10]+0.3748*x[1]*x[2]*x[9]*x[10]-0.1711*x[1]*x[3]*x[4]*x[5]+0.1803*x[1]*x[3]*x[4]*x[6]-0.3642*x[1]*x[3]*x[4]*x[7]+0.4124*x[1]*x[3]*x[4]*x[8]+0.2058*x[1]*x[3]*x[4]*x[9]+0.2026*x[1]*x[3]*x[4]*x[10]+0.3626*x[1]*x[3]*x[5]*x[6]+0.5458*x[1]*x[3]*x[5]*x[7]-0.0222*x[1]*x[3]*x[5]*x[8]-0.7975*x[1]*x[3]*x[5]*x[9]-0.5112*x[1]*x[3]*x[5]*x[10]+0.0613*x[1]*x[3]*x[6]*x[7]+0.769*x[1]*x[3]*x[6]*x[8]+0.701*x[1]*x[3]*x[6]*x[9]-0.7641*x[1]*x[3]*x[6]*x[10]+0.3574*x[1]*x[3]*x[7]*x[8]-0.0437*x[1]*x[3]*x[7]*x[9]+0.7193*x[1]*x[3]*x[7]*x[10]+0.4535*x[1]*x[3]*x[8]*x[9]+0.5978*x[1]*x[3]*x[8]*x[10]+0.0133*x[1]*x[3]*x[9]*x[10]+0.8512*x[1]*x[4]*x[5]*x[6]-0.6772*x[1]*x[4]*x[5]*x[7]+0.5878*x[1]*x[4]*x[5]*x[8]-0.3585*x[1]*x[4]*x[5]*x[9]+0.1872*x[1]*x[4]*x[5]*x[10]+0.0589*x[1]*x[4]*x[6]*x[7]-0.3317*x[1]*x[4]*x[6]*x[8]+0.7479*x[1]*x[4]*x[6]*x[9]-0.9671*x[1]*x[4]*x[6]*x[10]+0.9391*x[1]*x[4]*x[7]*x[8]+0.9018*x[1]*x[4]*x[7]*x[9]+0.32*x[1]*x[4]*x[7]*x[10]+0.6027*x[1]*x[4]*x[8]*x[9]-0.6141*x[1]*x[4]*x[8]*x[10]+0.531*x[1]*x[4]*x[9]*x[10]+0.2639*x[1]*x[5]*x[6]*x[7]+0.3663*x[1]*x[5]*x[6]*x[8]-0.233*x[1]*x[5]*x[6]*x[9]+0.4189*x[1]*x[5]*x[6]*x[10]+0.4041*x[1]*x[5]*x[7]*x[8]+0.304*x[1]*x[5]*x[7]*x[9]+0.3126*x[1]*x[5]*x[7]*x[10]+0.0481*x[1]*x[5]*x[8]*x[9]-0.5275*x[1]*x[5]*x[8]*x[10]-0.1305*x[1]*x[5]*x[9]*x[10]-0.6678*x[1]*x[6]*x[7]*x[8]-0.5155*x[1]*x[6]*x[7]*x[9]+0.5784*x[1]*x[6]*x[7]*x[10]+0.0016*x[1]*x[6]*x[8]*x[9]-0.1111*x[1]*x[6]*x[8]*x[10]-0.3946*x[1]*x[6]*x[9]*x[10]-0.98*x[1]*x[7]*x[8]*x[9]-0.1806*x[1]*x[7]*x[8]*x[10]+0.988*x[1]*x[7]*x[9]*x[10]-0.6747*x[1]*x[8]*x[9]*x[10]-0.3078*x[2]*x[3]*x[4]*x[5]+0.2953*x[2]*x[3]*x[4]*x[6]-0.8559*x[2]*x[3]*x[4]*x[7]+0.3771*x[2]*x[3]*x[4]*x[8]-0.6117*x[2]*x[3]*x[4]*x[9]+0.1766*x[2]*x[3]*x[4]*x[10]+0.472*x[2]*x[3]*x[5]*x[6]-0.1445*x[2]*x[3]*x[5]*x[7]-0.1965*x[2]*x[3]*x[5]*x[8]+0.5678*x[2]*x[3]*x[5]*x[9]+0.8256*x[2]*x[3]*x[5]*x[10]-0.0288*x[2]*x[3]*x[6]*x[7]-0.0473*x[2]*x[3]*x[6]*x[8]+0.1173*x[2]*x[3]*x[6]*x[9]+0.6063*x[2]*x[3]*x[6]*x[10]-0.8786*x[2]*x[3]*x[7]*x[8]+0.8495*x[2]*x[3]*x[7]*x[9]+0.1714*x[2]*x[3]*x[7]*x[10]+0.4934*x[2]*x[3]*x[8]*x[9]-0.7093*x[2]*x[3]*x[8]*x[10]-0.5405*x[2]*x[3]*x[9]*x[10]+0.7902*x[2]*x[4]*x[5]*x[6]-0.333*x[2]*x[4]*x[5]*x[7]+0.9342*x[2]*x[4]*x[5]*x[8]+0.6046*x[2]*x[4]*x[5]*x[9]-0.7882*x[2]*x[4]*x[5]*x[10]+0.4245*x[2]*x[4]*x[6]*x[7]-0.3577*x[2]*x[4]*x[6]*x[8]-0.6746*x[2]*x[4]*x[6]*x[9]-0.1915*x[2]*x[4]*x[6]*x[10]-0.0401*x[2]*x[4]*x[7]*x[8]-0.9931*x[2]*x[4]*x[7]*x[9]+0.0294*x[2]*x[4]*x[7]*x[10]+0.5066*x[2]*x[4]*x[8]*x[9]+0.9387*x[2]*x[4]*x[8]*x[10]+0.4504*x[2]*x[4]*x[9]*x[10]-0.8174*x[2]*x[5]*x[6]*x[7]-0.1996*x[2]*x[5]*x[6]*x[8]+0.3514*x[2]*x[5]*x[6]*x[9]+0.316*x[2]*x[5]*x[6]*x[10]+0.6336*x[2]*x[5]*x[7]*x[8]-0.5032*x[2]*x[5]*x[7]*x[9]-0.4267*x[2]*x[5]*x[7]*x[10]-0.9986*x[2]*x[5]*x[8]*x[9]-0.5176*x[2]*x[5]*x[8]*x[10]-0.9889*x[2]*x[5]*x[9]*x[10]-0.2244*x[2]*x[6]*x[7]*x[8]-0.1486*x[2]*x[6]*x[7]*x[9]+0.4237*x[2]*x[6]*x[7]*x[10]+0.7526*x[2]*x[6]*x[8]*x[9]+0.3702*x[2]*x[6]*x[8]*x[10]-0.0792*x[2]*x[6]*x[9]*x[10]+0.3093*x[2]*x[7]*x[8]*x[9]-0.3792*x[2]*x[7]*x[8]*x[10]+0.5826*x[2]*x[7]*x[9]*x[10]-0.027*x[2]*x[8]*x[9]*x[10]+0.2429*x[3]*x[4]*x[5]*x[6]+0.4158*x[3]*x[4]*x[5]*x[7]-0.5107*x[3]*x[4]*x[5]*x[8]-0.3875*x[3]*x[4]*x[5]*x[9]-0.8247*x[3]*x[4]*x[5]*x[10]-0.1237*x[3]*x[4]*x[6]*x[7]-0.9108*x[3]*x[4]*x[6]*x[8]+0.8865*x[3]*x[4]*x[6]*x[9]-0.2339*x[3]*x[4]*x[6]*x[10]-0.3238*x[3]*x[4]*x[7]*x[8]+0.3171*x[3]*x[4]*x[7]*x[9]-0.7991*x[3]*x[4]*x[7]*x[10]+0.8642*x[3]*x[4]*x[8]*x[9]-0.3354*x[3]*x[4]*x[8]*x[10]-0.9854*x[3]*x[4]*x[9]*x[10]+0.6736*x[3]*x[5]*x[6]*x[7]+0.9472*x[3]*x[5]*x[6]*x[8]-0.6774*x[3]*x[5]*x[6]*x[9]+0.2819*x[3]*x[5]*x[6]*x[10]-0.8312*x[3]*x[5]*x[7]*x[8]+0.9588*x[3]*x[5]*x[7]*x[9]+0.6607*x[3]*x[5]*x[7]*x[10]-0.7955*x[3]*x[5]*x[8]*x[9]-0.3957*x[3]*x[5]*x[8]*x[10]-0.7523*x[3]*x[5]*x[9]*x[10]-0.232*x[3]*x[6]*x[7]*x[8]+0.7743*x[3]*x[6]*x[7]*x[9]-0.4182*x[3]*x[6]*x[7]*x[10]-0.8409*x[3]*x[6]*x[8]*x[9]+0.2953*x[3]*x[6]*x[8]*x[10]-0.6522*x[3]*x[6]*x[9]*x[10]+0.2996*x[3]*x[7]*x[8]*x[9]-0.319*x[3]*x[7]*x[8]*x[10]+0.092*x[3]*x[7]*x[9]*x[10]-0.9485*x[3]*x[8]*x[9]*x[10]+0.7382*x[4]*x[5]*x[6]*x[7]-0.1359*x[4]*x[5]*x[6]*x[8]+0.3935*x[4]*x[5]*x[6]*x[9]+0.8373*x[4]*x[5]*x[6]*x[10]+0.8982*x[4]*x[5]*x[7]*x[8]-0.5906*x[4]*x[5]*x[7]*x[9]-0.1772*x[4]*x[5]*x[7]*x[10]+0.834*x[4]*x[5]*x[8]*x[9]-0.6971*x[4]*x[5]*x[8]*x[10]-0.5593*x[4]*x[5]*x[9]*x[10]+0.5782*x[4]*x[6]*x[7]*x[8]-0.0524*x[4]*x[6]*x[7]*x[9]+0.3458*x[4]*x[6]*x[7]*x[10]-0.5235*x[4]*x[6]*x[8]*x[9]-0.1639*x[4]*x[6]*x[8]*x[10]+0.8372*x[4]*x[6]*x[9]*x[10]+0.6061*x[4]*x[7]*x[8]*x[9]-0.0421*x[4]*x[7]*x[8]*x[10]+0.0078*x[4]*x[7]*x[9]*x[10]+0.992*x[4]*x[8]*x[9]*x[10]-0.9383*x[5]*x[6]*x[7]*x[8]+0.3232*x[5]*x[6]*x[7]*x[9]-0.1077*x[5]*x[6]*x[7]*x[10]-0.6034*x[5]*x[6]*x[8]*x[9]+0.5167*x[5]*x[6]*x[8]*x[10]+0.5893*x[5]*x[6]*x[9]*x[10]+0.3498*x[5]*x[7]*x[8]*x[9]+0.9897*x[5]*x[7]*x[8]*x[10]-0.4292*x[5]*x[7]*x[9]*x[10]+0.6811*x[5]*x[8]*x[9]*x[10]-0.9318*x[6]*x[7]*x[8]*x[9]-0.628*x[6]*x[7]*x[8]*x[10]-0.7347*x[6]*x[7]*x[9]*x[10]-0.6338*x[6]*x[8]*x[9]*x[10]-0.0089*x[7]*x[8]*x[9]*x[10])+obj == 0.0)
@NLconstraint(m, e2, (-0.0804*x[1]*x[2])-0.8904*x[1]*x[3]+0.0457*x[1]*x[4]+0.9914*x[1]*x[5]-0.2043*x[1]*x[6]-0.8175*x[1]*x[7]-0.3506*x[1]*x[8]+0.8449*x[1]*x[9]+0.9969*x[1]*x[10]+0.7066*x[2]*x[3]+0.7814*x[2]*x[4]-0.2681*x[2]*x[5]+0.1122*x[2]*x[6]+0.5142*x[2]*x[7]+0.5563*x[2]*x[8]+0.7168*x[2]*x[9]+0.1767*x[2]*x[10]-0.4082*x[3]*x[4]+0.6883*x[3]*x[5]+0.4342*x[3]*x[6]+0.2648*x[3]*x[7]+0.3778*x[3]*x[8]-0.8064*x[3]*x[9]+0.6143*x[3]*x[10]+0.0073*x[4]*x[5]-0.385*x[4]*x[6]-0.1292*x[4]*x[7]+0.0795*x[4]*x[8]-0.3467*x[4]*x[9]+0.4255*x[4]*x[10]+0.5645*x[5]*x[6]-0.6424*x[5]*x[7]+0.0119*x[5]*x[8]-0.6729*x[5]*x[9]+0.5847*x[5]*x[10]+0.7055*x[6]*x[7]+0.325*x[6]*x[8]+0.2792*x[6]*x[9]+0.0091*x[6]*x[10]-0.8959*x[7]*x[8]-0.2254*x[7]*x[9]+0.718*x[7]*x[10]+0.7289*x[8]*x[9]+0.0895*x[8]*x[10]-0.3158*x[9]*x[10]-0.6424*x[1]-0.4076*x[2]-0.7606*x[3]-0.4835*x[4]+0.7128*x[5]-0.7993*x[6]+0.1586*x[7]-0.2892*x[8]-0.297*x[9]+0.4053*x[10]+0.6484*x[1]*x[2]*x[3]-0.2626*x[1]*x[2]*x[4]-0.9557*x[1]*x[2]*x[5]-0.0043*x[1]*x[2]*x[6]-0.3711*x[1]*x[2]*x[7]-0.3175*x[1]*x[2]*x[8]-0.3467*x[1]*x[2]*x[9]-0.0837*x[1]*x[2]*x[10]+0.397*x[1]*x[3]*x[4]-0.8681*x[1]*x[3]*x[5]-0.2124*x[1]*x[3]*x[6]+0.9815*x[1]*x[3]*x[7]-0.5043*x[1]*x[3]*x[8]-0.2869*x[1]*x[3]*x[9]+0.6841*x[1]*x[3]*x[10]-0.4616*x[1]*x[4]*x[5]+0.4655*x[1]*x[4]*x[6]-0.6494*x[1]*x[4]*x[7]-0.2862*x[1]*x[4]*x[8]-0.5755*x[1]*x[4]*x[9]-0.5887*x[1]*x[4]*x[10]+0.3282*x[1]*x[5]*x[6]+0.0774*x[1]*x[5]*x[7]+0.6841*x[1]*x[5]*x[8]-0.2826*x[1]*x[5]*x[9]+0.9124*x[1]*x[5]*x[10]+0.8253*x[1]*x[6]*x[7]+0.1537*x[1]*x[6]*x[8]-0.6056*x[1]*x[6]*x[9]+0.1527*x[1]*x[6]*x[10]+0.8957*x[1]*x[7]*x[8]-0.5742*x[1]*x[7]*x[9]+0.235*x[1]*x[7]*x[10]-0.5581*x[1]*x[8]*x[9]-0.6459*x[1]*x[8]*x[10]+0.6936*x[1]*x[9]*x[10]+0.5801*x[2]*x[3]*x[4]+0.6639*x[2]*x[3]*x[5]+0.6154*x[2]*x[3]*x[6]+0.593*x[2]*x[3]*x[7]-0.5041*x[2]*x[3]*x[8]-0.8966*x[2]*x[3]*x[9]+0.2624*x[2]*x[3]*x[10]+0.1377*x[2]*x[4]*x[5]-0.3901*x[2]*x[4]*x[6]-0.244*x[2]*x[4]*x[7]-0.0898*x[2]*x[4]*x[8]+0.7614*x[2]*x[4]*x[9]-0.7333*x[2]*x[4]*x[10]+0.3803*x[2]*x[5]*x[6]+0.6721*x[2]*x[5]*x[7]-0.1619*x[2]*x[5]*x[8]+0.8134*x[2]*x[5]*x[9]+0.9525*x[2]*x[5]*x[10]+0.992*x[2]*x[6]*x[7]+0.7007*x[2]*x[6]*x[8]+0.3342*x[2]*x[6]*x[9]+0.7684*x[2]*x[6]*x[10]+0.3835*x[2]*x[7]*x[8]-0.3171*x[2]*x[7]*x[9]-0.5577*x[2]*x[7]*x[10]+0.6115*x[2]*x[8]*x[9]-0.1189*x[2]*x[8]*x[10]+0.8643*x[2]*x[9]*x[10]+0.3953*x[3]*x[4]*x[5]-0.3491*x[3]*x[4]*x[6]-0.7712*x[3]*x[4]*x[7]-0.8291*x[3]*x[4]*x[8]-0.3737*x[3]*x[4]*x[9]+0.388*x[3]*x[4]*x[10]-0.5345*x[3]*x[5]*x[6]-0.2952*x[3]*x[5]*x[7]+0.2886*x[3]*x[5]*x[8]+0.0765*x[3]*x[5]*x[9]+0.8758*x[3]*x[5]*x[10]+0.4549*x[3]*x[6]*x[7]-0.0236*x[3]*x[6]*x[8]-0.1005*x[3]*x[6]*x[9]+0.7607*x[3]*x[6]*x[10]-0.7844*x[3]*x[7]*x[8]-0.0479*x[3]*x[7]*x[9]+0.9452*x[3]*x[7]*x[10]-0.1973*x[3]*x[8]*x[9]+0.6377*x[3]*x[8]*x[10]+0.5098*x[3]*x[9]*x[10]-0.3909*x[4]*x[5]*x[6]+0.9553*x[4]*x[5]*x[7]+0.1032*x[4]*x[5]*x[8]+0.6899*x[4]*x[5]*x[9]+0.8619*x[4]*x[5]*x[10]+0.3971*x[4]*x[6]*x[7]-0.3458*x[4]*x[6]*x[8]-0.5388*x[4]*x[6]*x[9]+0.8271*x[4]*x[6]*x[10]-0.4226*x[4]*x[7]*x[8]+0.3216*x[4]*x[7]*x[9]+0.5984*x[4]*x[7]*x[10]+0.8383*x[4]*x[8]*x[9]+0.9912*x[4]*x[8]*x[10]-0.6707*x[4]*x[9]*x[10]+0.623*x[5]*x[6]*x[7]+0.93*x[5]*x[6]*x[8]-0.9724*x[5]*x[6]*x[9]+0.693*x[5]*x[6]*x[10]-0.4268*x[5]*x[7]*x[8]-0.9103*x[5]*x[7]*x[9]+0.0769*x[5]*x[7]*x[10]-0.9401*x[5]*x[8]*x[9]+0.4041*x[5]*x[8]*x[10]+0.256*x[5]*x[9]*x[10]-0.4499*x[6]*x[7]*x[8]-0.967*x[6]*x[7]*x[9]+0.7441*x[6]*x[7]*x[10]+0.9925*x[6]*x[8]*x[9]-0.8395*x[6]*x[8]*x[10]+0.0652*x[6]*x[9]*x[10]+0.6151*x[7]*x[8]*x[9]-0.5872*x[7]*x[8]*x[10]-0.021*x[7]*x[9]*x[10]-0.355*x[8]*x[9]*x[10]+(-0.8879*x[1]*x[2]*x[3]*x[4])-0.0682*x[1]*x[2]*x[3]*x[5]-0.0645*x[1]*x[2]*x[3]*x[6]+0.8792*x[1]*x[2]*x[3]*x[7]-0.8687*x[1]*x[2]*x[3]*x[8]+0.3423*x[1]*x[2]*x[3]*x[9]-0.9285*x[1]*x[2]*x[3]*x[10]-0.8432*x[1]*x[2]*x[4]*x[5]-0.5799*x[1]*x[2]*x[4]*x[6]-0.6942*x[1]*x[2]*x[4]*x[7]-0.4111*x[1]*x[2]*x[4]*x[8]+0.386*x[1]*x[2]*x[4]*x[9]+0.1187*x[1]*x[2]*x[4]*x[10]+0.12*x[1]*x[2]*x[5]*x[6]+0.3772*x[1]*x[2]*x[5]*x[7]-0.7117*x[1]*x[2]*x[5]*x[8]-0.5063*x[1]*x[2]*x[5]*x[9]-0.5562*x[1]*x[2]*x[5]*x[10]+0.5658*x[1]*x[2]*x[6]*x[7]-0.9644*x[1]*x[2]*x[6]*x[8]+0.9425*x[1]*x[2]*x[6]*x[9]-0.7938*x[1]*x[2]*x[6]*x[10]+0.0856*x[1]*x[2]*x[7]*x[8]+0.9841*x[1]*x[2]*x[7]*x[9]-0.5537*x[1]*x[2]*x[7]*x[10]-0.6452*x[1]*x[2]*x[8]*x[9]-0.6664*x[1]*x[2]*x[8]*x[10]-0.5412*x[1]*x[2]*x[9]*x[10]+0.6908*x[1]*x[3]*x[4]*x[5]-0.5576*x[1]*x[3]*x[4]*x[6]+0.1221*x[1]*x[3]*x[4]*x[7]-0.925*x[1]*x[3]*x[4]*x[8]+0.4836*x[1]*x[3]*x[4]*x[9]-0.4814*x[1]*x[3]*x[4]*x[10]-0.8928*x[1]*x[3]*x[5]*x[6]+0.8237*x[1]*x[3]*x[5]*x[7]+0.2967*x[1]*x[3]*x[5]*x[8]+0.519*x[1]*x[3]*x[5]*x[9]-0.4036*x[1]*x[3]*x[5]*x[10]+0.2184*x[1]*x[3]*x[6]*x[7]+0.5597*x[1]*x[3]*x[6]*x[8]-0.6636*x[1]*x[3]*x[6]*x[9]-0.2396*x[1]*x[3]*x[6]*x[10]+0.2761*x[1]*x[3]*x[7]*x[8]-0.8421*x[1]*x[3]*x[7]*x[9]+0.5215*x[1]*x[3]*x[7]*x[10]-0.3457*x[1]*x[3]*x[8]*x[9]+0.54*x[1]*x[3]*x[8]*x[10]+0.1788*x[1]*x[3]*x[9]*x[10]+0.2414*x[1]*x[4]*x[5]*x[6]-0.055*x[1]*x[4]*x[5]*x[7]-0.2767*x[1]*x[4]*x[5]*x[8]+0.3488*x[1]*x[4]*x[5]*x[9]+0.0979*x[1]*x[4]*x[5]*x[10]-0.6934*x[1]*x[4]*x[6]*x[7]-0.6615*x[1]*x[4]*x[6]*x[8]+0.503*x[1]*x[4]*x[6]*x[9]-0.7626*x[1]*x[4]*x[6]*x[10]-0.7943*x[1]*x[4]*x[7]*x[8]-0.3063*x[1]*x[4]*x[7]*x[9]+0.0558*x[1]*x[4]*x[7]*x[10]-0.2301*x[1]*x[4]*x[8]*x[9]+0.5779*x[1]*x[4]*x[8]*x[10]-0.0523*x[1]*x[4]*x[9]*x[10]+0.4117*x[1]*x[5]*x[6]*x[7]+0.7896*x[1]*x[5]*x[6]*x[8]-0.3012*x[1]*x[5]*x[6]*x[9]-0.0166*x[1]*x[5]*x[6]*x[10]-0.6013*x[1]*x[5]*x[7]*x[8]-0.27*x[1]*x[5]*x[7]*x[9]-0.5193*x[1]*x[5]*x[7]*x[10]+0.0948*x[1]*x[5]*x[8]*x[9]+0.2315*x[1]*x[5]*x[8]*x[10]-0.8466*x[1]*x[5]*x[9]*x[10]-0.4082*x[1]*x[6]*x[7]*x[8]+0.7234*x[1]*x[6]*x[7]*x[9]-0.2451*x[1]*x[6]*x[7]*x[10]+0.486*x[1]*x[6]*x[8]*x[9]-0.9333*x[1]*x[6]*x[8]*x[10]-0.577*x[1]*x[6]*x[9]*x[10]+0.6391*x[1]*x[7]*x[8]*x[9]-0.078*x[1]*x[7]*x[8]*x[10]-0.7901*x[1]*x[7]*x[9]*x[10]+0.3108*x[1]*x[8]*x[9]*x[10]-0.5911*x[2]*x[3]*x[4]*x[5]-0.7161*x[2]*x[3]*x[4]*x[6]+0.6677*x[2]*x[3]*x[4]*x[7]+0.9834*x[2]*x[3]*x[4]*x[8]-0.2604*x[2]*x[3]*x[4]*x[9]+0.1312*x[2]*x[3]*x[4]*x[10]+0.1699*x[2]*x[3]*x[5]*x[6]+0.8036*x[2]*x[3]*x[5]*x[7]+0.4179*x[2]*x[3]*x[5]*x[8]-0.4876*x[2]*x[3]*x[5]*x[9]-0.9695*x[2]*x[3]*x[5]*x[10]+0.8412*x[2]*x[3]*x[6]*x[7]-0.6245*x[2]*x[3]*x[6]*x[8]-0.2725*x[2]*x[3]*x[6]*x[9]+0.9959*x[2]*x[3]*x[6]*x[10]+0.7839*x[2]*x[3]*x[7]*x[8]-0.2566*x[2]*x[3]*x[7]*x[9]-0.3715*x[2]*x[3]*x[7]*x[10]-0.1659*x[2]*x[3]*x[8]*x[9]-0.3605*x[2]*x[3]*x[8]*x[10]+0.4571*x[2]*x[3]*x[9]*x[10]+0.157*x[2]*x[4]*x[5]*x[6]+0.3664*x[2]*x[4]*x[5]*x[7]+0.2114*x[2]*x[4]*x[5]*x[8]-0.8717*x[2]*x[4]*x[5]*x[9]+0.7656*x[2]*x[4]*x[5]*x[10]-0.1614*x[2]*x[4]*x[6]*x[7]+0.208*x[2]*x[4]*x[6]*x[8]+0.2939*x[2]*x[4]*x[6]*x[9]+0.4719*x[2]*x[4]*x[6]*x[10]+0.1079*x[2]*x[4]*x[7]*x[8]-0.1952*x[2]*x[4]*x[7]*x[9]+0.9831*x[2]*x[4]*x[7]*x[10]-0.3912*x[2]*x[4]*x[8]*x[9]-0.0164*x[2]*x[4]*x[8]*x[10]-0.7641*x[2]*x[4]*x[9]*x[10]+0.825*x[2]*x[5]*x[6]*x[7]+0.7573*x[2]*x[5]*x[6]*x[8]-0.0731*x[2]*x[5]*x[6]*x[9]-0.7839*x[2]*x[5]*x[6]*x[10]+0.2375*x[2]*x[5]*x[7]*x[8]+0.342*x[2]*x[5]*x[7]*x[9]-0.2362*x[2]*x[5]*x[7]*x[10]+0.7813*x[2]*x[5]*x[8]*x[9]+0.6021*x[2]*x[5]*x[8]*x[10]+0.3864*x[2]*x[5]*x[9]*x[10]+0.7828*x[2]*x[6]*x[7]*x[8]-0.2355*x[2]*x[6]*x[7]*x[9]+0.1796*x[2]*x[6]*x[7]*x[10]-0.7816*x[2]*x[6]*x[8]*x[9]+0.6992*x[2]*x[6]*x[8]*x[10]-0.5391*x[2]*x[6]*x[9]*x[10]+0.1898*x[2]*x[7]*x[8]*x[9]-0.3419*x[2]*x[7]*x[8]*x[10]-0.6057*x[2]*x[7]*x[9]*x[10]+0.4886*x[2]*x[8]*x[9]*x[10]-0.0693*x[3]*x[4]*x[5]*x[6]+0.6415*x[3]*x[4]*x[5]*x[7]-0.1695*x[3]*x[4]*x[5]*x[8]-0.662*x[3]*x[4]*x[5]*x[9]-0.6558*x[3]*x[4]*x[5]*x[10]-0.2137*x[3]*x[4]*x[6]*x[7]+0.0807*x[3]*x[4]*x[6]*x[8]+0.2775*x[3]*x[4]*x[6]*x[9]-0.639*x[3]*x[4]*x[6]*x[10]+0.1566*x[3]*x[4]*x[7]*x[8]+0.4792*x[3]*x[4]*x[7]*x[9]+0.1403*x[3]*x[4]*x[7]*x[10]-0.6095*x[3]*x[4]*x[8]*x[9]+0.9322*x[3]*x[4]*x[8]*x[10]-0.0214*x[3]*x[4]*x[9]*x[10]+0.3126*x[3]*x[5]*x[6]*x[7]-0.6241*x[3]*x[5]*x[6]*x[8]+0.1136*x[3]*x[5]*x[6]*x[9]+0.4677*x[3]*x[5]*x[6]*x[10]-0.6577*x[3]*x[5]*x[7]*x[8]+0.3394*x[3]*x[5]*x[7]*x[9]-0.7785*x[3]*x[5]*x[7]*x[10]-0.7024*x[3]*x[5]*x[8]*x[9]+0.2443*x[3]*x[5]*x[8]*x[10]-0.2521*x[3]*x[5]*x[9]*x[10]+0.2286*x[3]*x[6]*x[7]*x[8]-0.0991*x[3]*x[6]*x[7]*x[9]-0.7218*x[3]*x[6]*x[7]*x[10]+0.9204*x[3]*x[6]*x[8]*x[9]-0.1743*x[3]*x[6]*x[8]*x[10]+0.2405*x[3]*x[6]*x[9]*x[10]+0.1433*x[3]*x[7]*x[8]*x[9]+0.402*x[3]*x[7]*x[8]*x[10]+0.7113*x[3]*x[7]*x[9]*x[10]-0.14*x[3]*x[8]*x[9]*x[10]+0.1251*x[4]*x[5]*x[6]*x[7]+0.0473*x[4]*x[5]*x[6]*x[8]-0.5929*x[4]*x[5]*x[6]*x[9]+0.0649*x[4]*x[5]*x[6]*x[10]+0.9708*x[4]*x[5]*x[7]*x[8]+0.6177*x[4]*x[5]*x[7]*x[9]+0.5806*x[4]*x[5]*x[7]*x[10]-0.1607*x[4]*x[5]*x[8]*x[9]+0.059*x[4]*x[5]*x[8]*x[10]-0.8811*x[4]*x[5]*x[9]*x[10]-0.4492*x[4]*x[6]*x[7]*x[8]+0.7614*x[4]*x[6]*x[7]*x[9]+0.2033*x[4]*x[6]*x[7]*x[10]-0.9171*x[4]*x[6]*x[8]*x[9]-0.0382*x[4]*x[6]*x[8]*x[10]-0.8299*x[4]*x[6]*x[9]*x[10]-0.5709*x[4]*x[7]*x[8]*x[9]-0.396*x[4]*x[7]*x[8]*x[10]+0.7934*x[4]*x[7]*x[9]*x[10]+0.0689*x[4]*x[8]*x[9]*x[10]-0.4928*x[5]*x[6]*x[7]*x[8]-0.4895*x[5]*x[6]*x[7]*x[9]+0.8422*x[5]*x[6]*x[7]*x[10]+0.8058*x[5]*x[6]*x[8]*x[9]-0.3989*x[5]*x[6]*x[8]*x[10]-0.7604*x[5]*x[6]*x[9]*x[10]-0.2455*x[5]*x[7]*x[8]*x[9]-0.1685*x[5]*x[7]*x[8]*x[10]-0.5593*x[5]*x[7]*x[9]*x[10]-0.7832*x[5]*x[8]*x[9]*x[10]+0.0926*x[6]*x[7]*x[8]*x[9]+0.6215*x[6]*x[7]*x[8]*x[10]+0.3352*x[6]*x[7]*x[9]*x[10]+0.3423*x[6]*x[8]*x[9]*x[10]-0.8728*x[7]*x[8]*x[9]*x[10] <= 78.517)
@NLconstraint(m, e3, 0.2148*x[1]*x[3]-0.0498*x[1]*x[2]-0.6331*x[1]*x[4]+0.1204*x[1]*x[5]+0.2074*x[1]*x[6]-0.0007*x[1]*x[7]+0.1524*x[1]*x[8]-0.1373*x[1]*x[9]-0.5286*x[1]*x[10]+0.0533*x[2]*x[3]-0.0113*x[2]*x[4]+0.039*x[2]*x[5]+0.746*x[2]*x[6]-0.7493*x[2]*x[7]-0.3501*x[2]*x[8]-0.7046*x[2]*x[9]+0.623*x[2]*x[10]-0.3282*x[3]*x[4]+0.2535*x[3]*x[5]+0.7369*x[3]*x[6]-0.3179*x[3]*x[7]-0.7554*x[3]*x[8]+0.3384*x[3]*x[9]+0.7428*x[3]*x[10]+0.6871*x[4]*x[5]-0.2774*x[4]*x[6]+0.1942*x[4]*x[7]-0.0372*x[4]*x[8]+0.9036*x[4]*x[9]+0.9891*x[4]*x[10]+0.2623*x[5]*x[6]+0.4058*x[5]*x[7]+0.2905*x[5]*x[8]+0.8707*x[5]*x[9]-0.6906*x[5]*x[10]+0.0175*x[6]*x[7]+0.7644*x[6]*x[8]+0.1747*x[6]*x[9]-0.3217*x[6]*x[10]-0.3756*x[7]*x[8]-0.4446*x[7]*x[9]-0.5191*x[7]*x[10]+0.8229*x[8]*x[9]-0.0585*x[8]*x[10]+0.7931*x[9]*x[10]+0.2165*x[1]+0.3018*x[2]-0.6853*x[3]+0.4834*x[4]-0.9677*x[5]+0.9793*x[6]-0.3145*x[7]+0.9356*x[8]-0.651*x[9]-0.7873*x[10]+0.7906*x[1]*x[2]*x[4]-0.81*x[1]*x[2]*x[3]-0.4133*x[1]*x[2]*x[5]+0.6907*x[1]*x[2]*x[6]+0.0963*x[1]*x[2]*x[7]-0.2825*x[1]*x[2]*x[8]+0.0354*x[1]*x[2]*x[9]+0.5125*x[1]*x[2]*x[10]+0.9351*x[1]*x[3]*x[4]+0.7973*x[1]*x[3]*x[5]-0.8916*x[1]*x[3]*x[6]-0.7597*x[1]*x[3]*x[7]+0.2381*x[1]*x[3]*x[8]+0.0077*x[1]*x[3]*x[9]+0.3442*x[1]*x[3]*x[10]+0.1405*x[1]*x[4]*x[5]+0.8568*x[1]*x[4]*x[6]-0.261*x[1]*x[4]*x[7]-0.8792*x[1]*x[4]*x[8]-0.0695*x[1]*x[4]*x[9]-0.827*x[1]*x[4]*x[10]+0.5092*x[1]*x[5]*x[6]+0.4796*x[1]*x[5]*x[7]-0.7576*x[1]*x[5]*x[8]-0.2986*x[1]*x[5]*x[9]-0.6192*x[1]*x[5]*x[10]-0.8556*x[1]*x[6]*x[7]-0.0737*x[1]*x[6]*x[8]-0.0614*x[1]*x[6]*x[9]-0.0832*x[1]*x[6]*x[10]-0.6275*x[1]*x[7]*x[8]-0.4122*x[1]*x[7]*x[9]+0.1479*x[1]*x[7]*x[10]-0.4795*x[1]*x[8]*x[9]+0.4531*x[1]*x[8]*x[10]-0.564*x[1]*x[9]*x[10]-0.7735*x[2]*x[3]*x[4]+0.5994*x[2]*x[3]*x[5]+0.5007*x[2]*x[3]*x[6]+0.5843*x[2]*x[3]*x[7]-0.436*x[2]*x[3]*x[8]-0.2484*x[2]*x[3]*x[9]+0.5402*x[2]*x[3]*x[10]+0.4467*x[2]*x[4]*x[5]-0.7388*x[2]*x[4]*x[6]+0.449*x[2]*x[4]*x[7]+0.2*x[2]*x[4]*x[8]-0.2227*x[2]*x[4]*x[9]+0.1216*x[2]*x[4]*x[10]-0.1403*x[2]*x[5]*x[6]+0.2873*x[2]*x[5]*x[7]-0.9251*x[2]*x[5]*x[8]-0.9097*x[2]*x[5]*x[9]-0.299*x[2]*x[5]*x[10]-0.037*x[2]*x[6]*x[7]+0.1356*x[2]*x[6]*x[8]+0.1424*x[2]*x[6]*x[9]+0.9099*x[2]*x[6]*x[10]-0.8295*x[2]*x[7]*x[8]-0.9163*x[2]*x[7]*x[9]-0.886*x[2]*x[7]*x[10]-0.5395*x[2]*x[8]*x[9]+0.4885*x[2]*x[8]*x[10]+0.0733*x[2]*x[9]*x[10]+0.6171*x[3]*x[4]*x[5]+0.9443*x[3]*x[4]*x[6]+0.8452*x[3]*x[4]*x[7]+0.2589*x[3]*x[4]*x[8]-0.3954*x[3]*x[4]*x[9]+0.2099*x[3]*x[4]*x[10]-0.4274*x[3]*x[5]*x[6]+0.7638*x[3]*x[5]*x[7]+0.0518*x[3]*x[5]*x[8]-0.7951*x[3]*x[5]*x[9]-0.0508*x[3]*x[5]*x[10]-0.2861*x[3]*x[6]*x[7]+0.0163*x[3]*x[6]*x[8]+0.3989*x[3]*x[6]*x[9]-0.3631*x[3]*x[6]*x[10]-0.1875*x[3]*x[7]*x[8]+0.6995*x[3]*x[7]*x[9]+0.5373*x[3]*x[7]*x[10]+0.7748*x[3]*x[8]*x[9]+0.0892*x[3]*x[8]*x[10]+0.093*x[3]*x[9]*x[10]-0.4689*x[4]*x[5]*x[6]+0.4298*x[4]*x[5]*x[7]-0.4441*x[4]*x[5]*x[8]-0.9731*x[4]*x[5]*x[9]-0.0911*x[4]*x[5]*x[10]-0.8933*x[4]*x[6]*x[7]-0.3553*x[4]*x[6]*x[8]-0.1372*x[4]*x[6]*x[9]+0.239*x[4]*x[6]*x[10]+0.9347*x[4]*x[7]*x[8]-0.8911*x[4]*x[7]*x[9]-0.528*x[4]*x[7]*x[10]-0.13*x[4]*x[8]*x[9]-0.2034*x[4]*x[8]*x[10]-0.69*x[4]*x[9]*x[10]+0.2966*x[5]*x[6]*x[7]+0.9593*x[5]*x[6]*x[8]-0.9582*x[5]*x[6]*x[9]+0.4532*x[5]*x[6]*x[10]+0.5574*x[5]*x[7]*x[8]-0.4571*x[5]*x[7]*x[9]-0.9344*x[5]*x[7]*x[10]-0.1114*x[5]*x[8]*x[9]+0.477*x[5]*x[8]*x[10]-0.0515*x[5]*x[9]*x[10]-0.456*x[6]*x[7]*x[8]+0.1071*x[6]*x[7]*x[9]+0.3639*x[6]*x[7]*x[10]+0.1604*x[6]*x[8]*x[9]+0.7412*x[6]*x[8]*x[10]-0.842*x[6]*x[9]*x[10]+0.2298*x[7]*x[8]*x[9]-0.7632*x[7]*x[8]*x[10]+0.467*x[7]*x[9]*x[10]-0.3678*x[8]*x[9]*x[10]+0.8903*x[1]*x[2]*x[3]*x[4]-0.7035*x[1]*x[2]*x[3]*x[5]+0.607*x[1]*x[2]*x[3]*x[6]-0.984*x[1]*x[2]*x[3]*x[7]+0.1984*x[1]*x[2]*x[3]*x[8]-0.3261*x[1]*x[2]*x[3]*x[9]+0.9942*x[1]*x[2]*x[3]*x[10]+0.4899*x[1]*x[2]*x[4]*x[5]+0.1859*x[1]*x[2]*x[4]*x[6]+0.7152*x[1]*x[2]*x[4]*x[7]+0.6231*x[1]*x[2]*x[4]*x[8]-0.3239*x[1]*x[2]*x[4]*x[9]+0.6656*x[1]*x[2]*x[4]*x[10]+0.6511*x[1]*x[2]*x[5]*x[6]+0.4798*x[1]*x[2]*x[5]*x[7]-0.6549*x[1]*x[2]*x[5]*x[8]+0.3657*x[1]*x[2]*x[5]*x[9]+0.2469*x[1]*x[2]*x[5]*x[10]+0.1256*x[1]*x[2]*x[6]*x[7]-0.83*x[1]*x[2]*x[6]*x[8]+0.8632*x[1]*x[2]*x[6]*x[9]-0.6316*x[1]*x[2]*x[6]*x[10]+0.901*x[1]*x[2]*x[7]*x[8]+0.2282*x[1]*x[2]*x[7]*x[9]-0.3158*x[1]*x[2]*x[7]*x[10]-0.9495*x[1]*x[2]*x[8]*x[9]+0.379*x[1]*x[2]*x[8]*x[10]-0.7787*x[1]*x[2]*x[9]*x[10]-0.3534*x[1]*x[3]*x[4]*x[5]+0.0053*x[1]*x[3]*x[4]*x[6]-0.1876*x[1]*x[3]*x[4]*x[7]-0.502*x[1]*x[3]*x[4]*x[8]+0.1311*x[1]*x[3]*x[4]*x[9]+0.6431*x[1]*x[3]*x[4]*x[10]+0.3694*x[1]*x[3]*x[5]*x[6]-0.7882*x[1]*x[3]*x[5]*x[7]-0.3699*x[1]*x[3]*x[5]*x[8]-0.874*x[1]*x[3]*x[5]*x[9]-0.4416*x[1]*x[3]*x[5]*x[10]+0.2313*x[1]*x[3]*x[6]*x[7]+0.357*x[1]*x[3]*x[6]*x[8]+0.1096*x[1]*x[3]*x[6]*x[9]+0.9751*x[1]*x[3]*x[6]*x[10]+0.4229*x[1]*x[3]*x[7]*x[8]-0.0638*x[1]*x[3]*x[7]*x[9]+0.9879*x[1]*x[3]*x[7]*x[10]+0.8635*x[1]*x[3]*x[8]*x[9]+0.4333*x[1]*x[3]*x[8]*x[10]+0.8267*x[1]*x[3]*x[9]*x[10]+0.3304*x[1]*x[4]*x[5]*x[6]+0.7375*x[1]*x[4]*x[5]*x[7]+0.1234*x[1]*x[4]*x[5]*x[8]-0.2028*x[1]*x[4]*x[5]*x[9]+0.4864*x[1]*x[4]*x[5]*x[10]+0.4254*x[1]*x[4]*x[6]*x[7]-0.7986*x[1]*x[4]*x[6]*x[8]-0.3318*x[1]*x[4]*x[6]*x[9]+0.7505*x[1]*x[4]*x[6]*x[10]+0.8088*x[1]*x[4]*x[7]*x[8]-0.4503*x[1]*x[4]*x[7]*x[9]+0.8307*x[1]*x[4]*x[7]*x[10]-0.9624*x[1]*x[4]*x[8]*x[9]-0.172*x[1]*x[4]*x[8]*x[10]+0.2328*x[1]*x[4]*x[9]*x[10]-0.0483*x[1]*x[5]*x[6]*x[7]-0.8543*x[1]*x[5]*x[6]*x[8]-0.1414*x[1]*x[5]*x[6]*x[9]-0.6745*x[1]*x[5]*x[6]*x[10]+0.2956*x[1]*x[5]*x[7]*x[8]-0.9646*x[1]*x[5]*x[7]*x[9]+0.6631*x[1]*x[5]*x[7]*x[10]-0.921*x[1]*x[5]*x[8]*x[9]+0.7216*x[1]*x[5]*x[8]*x[10]-0.0916*x[1]*x[5]*x[9]*x[10]+0.5066*x[1]*x[6]*x[7]*x[8]-0.2279*x[1]*x[6]*x[7]*x[9]+0.4388*x[1]*x[6]*x[7]*x[10]+0.1251*x[1]*x[6]*x[8]*x[9]-0.4666*x[1]*x[6]*x[8]*x[10]-0.6096*x[1]*x[6]*x[9]*x[10]-0.1296*x[1]*x[7]*x[8]*x[9]+0.147*x[1]*x[7]*x[8]*x[10]-0.8773*x[1]*x[7]*x[9]*x[10]+0.3256*x[1]*x[8]*x[9]*x[10]+0.1917*x[2]*x[3]*x[4]*x[5]-0.7454*x[2]*x[3]*x[4]*x[6]+0.953*x[2]*x[3]*x[4]*x[7]-0.2524*x[2]*x[3]*x[4]*x[8]+0.6998*x[2]*x[3]*x[4]*x[9]+0.9019*x[2]*x[3]*x[4]*x[10]+0.0886*x[2]*x[3]*x[5]*x[6]-0.745*x[2]*x[3]*x[5]*x[7]+0.7499*x[2]*x[3]*x[5]*x[8]+0.064*x[2]*x[3]*x[5]*x[9]-0.919*x[2]*x[3]*x[5]*x[10]-0.9064*x[2]*x[3]*x[6]*x[7]+0.2797*x[2]*x[3]*x[6]*x[8]-0.6761*x[2]*x[3]*x[6]*x[9]-0.9433*x[2]*x[3]*x[6]*x[10]+0.4738*x[2]*x[3]*x[7]*x[8]-0.469*x[2]*x[3]*x[7]*x[9]-0.6195*x[2]*x[3]*x[7]*x[10]+0.4109*x[2]*x[3]*x[8]*x[9]+0.774*x[2]*x[3]*x[8]*x[10]-0.6599*x[2]*x[3]*x[9]*x[10]+0.5277*x[2]*x[4]*x[5]*x[6]-0.207*x[2]*x[4]*x[5]*x[7]+0.7556*x[2]*x[4]*x[5]*x[8]-0.0444*x[2]*x[4]*x[5]*x[9]-0.6359*x[2]*x[4]*x[5]*x[10]+0.5783*x[2]*x[4]*x[6]*x[7]+0.4262*x[2]*x[4]*x[6]*x[8]-0.5666*x[2]*x[4]*x[6]*x[9]+0.4188*x[2]*x[4]*x[6]*x[10]+0.3495*x[2]*x[4]*x[7]*x[8]-0.6488*x[2]*x[4]*x[7]*x[9]-0.9492*x[2]*x[4]*x[7]*x[10]-0.2321*x[2]*x[4]*x[8]*x[9]-0.0055*x[2]*x[4]*x[8]*x[10]-0.556*x[2]*x[4]*x[9]*x[10]+0.3175*x[2]*x[5]*x[6]*x[7]+0.392*x[2]*x[5]*x[6]*x[8]+0.7571*x[2]*x[5]*x[6]*x[9]-0.123*x[2]*x[5]*x[6]*x[10]-0.9402*x[2]*x[5]*x[7]*x[8]+0.9707*x[2]*x[5]*x[7]*x[9]-0.9632*x[2]*x[5]*x[7]*x[10]+0.5879*x[2]*x[5]*x[8]*x[9]+0.7006*x[2]*x[5]*x[8]*x[10]+0.3368*x[2]*x[5]*x[9]*x[10]+0.7005*x[2]*x[6]*x[7]*x[8]-0.9946*x[2]*x[6]*x[7]*x[9]-0.5453*x[2]*x[6]*x[7]*x[10]-0.6007*x[2]*x[6]*x[8]*x[9]+0.1658*x[2]*x[6]*x[8]*x[10]+0.5857*x[2]*x[6]*x[9]*x[10]-0.6648*x[2]*x[7]*x[8]*x[9]-0.3842*x[2]*x[7]*x[8]*x[10]-0.8785*x[2]*x[7]*x[9]*x[10]-0.3002*x[2]*x[8]*x[9]*x[10]-0.1467*x[3]*x[4]*x[5]*x[6]+0.5581*x[3]*x[4]*x[5]*x[7]+0.255*x[3]*x[4]*x[5]*x[8]-0.3062*x[3]*x[4]*x[5]*x[9]-0.1995*x[3]*x[4]*x[5]*x[10]+0.7855*x[3]*x[4]*x[6]*x[7]+0.076*x[3]*x[4]*x[6]*x[8]+0.9889*x[3]*x[4]*x[6]*x[9]+0.6766*x[3]*x[4]*x[6]*x[10]+0.3158*x[3]*x[4]*x[7]*x[8]-0.8643*x[3]*x[4]*x[7]*x[9]-0.8024*x[3]*x[4]*x[7]*x[10]-0.6817*x[3]*x[4]*x[8]*x[9]-0.9275*x[3]*x[4]*x[8]*x[10]+0.5669*x[3]*x[4]*x[9]*x[10]-0.8213*x[3]*x[5]*x[6]*x[7]+0.3068*x[3]*x[5]*x[6]*x[8]+0.9216*x[3]*x[5]*x[6]*x[9]+0.8245*x[3]*x[5]*x[6]*x[10]-0.387*x[3]*x[5]*x[7]*x[8]+0.2332*x[3]*x[5]*x[7]*x[9]-0.2114*x[3]*x[5]*x[7]*x[10]-0.5222*x[3]*x[5]*x[8]*x[9]-0.1285*x[3]*x[5]*x[8]*x[10]+0.2733*x[3]*x[5]*x[9]*x[10]-0.5025*x[3]*x[6]*x[7]*x[8]-0.3684*x[3]*x[6]*x[7]*x[9]-0.1281*x[3]*x[6]*x[7]*x[10]+0.7043*x[3]*x[6]*x[8]*x[9]+0.4752*x[3]*x[6]*x[8]*x[10]+0.4398*x[3]*x[6]*x[9]*x[10]-0.2425*x[3]*x[7]*x[8]*x[9]+0.0265*x[3]*x[7]*x[8]*x[10]+0.1761*x[3]*x[7]*x[9]*x[10]+0.6789*x[3]*x[8]*x[9]*x[10]-0.2652*x[4]*x[5]*x[6]*x[7]-0.7416*x[4]*x[5]*x[6]*x[8]+0.3104*x[4]*x[5]*x[6]*x[9]+0.5838*x[4]*x[5]*x[6]*x[10]-0.2481*x[4]*x[5]*x[7]*x[8]-0.5737*x[4]*x[5]*x[7]*x[9]+0.1995*x[4]*x[5]*x[7]*x[10]+0.7254*x[4]*x[5]*x[8]*x[9]-0.6076*x[4]*x[5]*x[8]*x[10]+0.2583*x[4]*x[5]*x[9]*x[10]+0.3748*x[4]*x[6]*x[7]*x[8]-0.821*x[4]*x[6]*x[7]*x[9]-0.7231*x[4]*x[6]*x[7]*x[10]+0.792*x[4]*x[6]*x[8]*x[9]+0.1935*x[4]*x[6]*x[8]*x[10]+0.3677*x[4]*x[6]*x[9]*x[10]-0.3893*x[4]*x[7]*x[8]*x[9]-0.5531*x[4]*x[7]*x[8]*x[10]+0.3063*x[4]*x[7]*x[9]*x[10]-0.3756*x[4]*x[8]*x[9]*x[10]+0.9983*x[5]*x[6]*x[7]*x[8]-0.4544*x[5]*x[6]*x[7]*x[9]+0.8651*x[5]*x[6]*x[7]*x[10]+0.8738*x[5]*x[6]*x[8]*x[9]+0.7123*x[5]*x[6]*x[8]*x[10]-0.789*x[5]*x[6]*x[9]*x[10]-0.9015*x[5]*x[7]*x[8]*x[9]+0.8536*x[5]*x[7]*x[8]*x[10]-0.6222*x[5]*x[7]*x[9]*x[10]+0.531*x[5]*x[8]*x[9]*x[10]-0.7534*x[6]*x[7]*x[8]*x[9]+0.1807*x[6]*x[7]*x[8]*x[10]+0.8496*x[6]*x[7]*x[9]*x[10]+0.0791*x[6]*x[8]*x[9]*x[10]+0.8057*x[7]*x[8]*x[9]*x[10] <= 79.569)

m = m 		 # model get returned when including this script. 