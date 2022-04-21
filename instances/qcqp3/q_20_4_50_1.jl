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
@NLconstraint(m, e1, -(1.2974*x[1]*x[4]+0.8412*x[1]*x[8]-1.7447*x[1]*x[13]-0.2707*x[1]*x[14]-1.6479*x[1]*x[16]+1.1896*x[1]*x[18]+1.7041*x[2]*x[3]-0.7921*x[2]*x[4]+0.6372*x[2]*x[6]-0.7234*x[2]*x[10]-1.6654*x[2]*x[11]+1.8798*x[2]*x[12]-1.9979*x[2]*x[14]+1.8404*x[2]*x[15]-1.256*x[2]*x[17]-0.8171*x[2]*x[19]-0.4388*x[2]*x[20]-1.203*x[3]*x[6]+1.9819*x[3]*x[8]+1.6824*x[3]*x[10]+0.5404*x[3]*x[11]-1.4348*x[3]*x[15]-0.0704*x[3]*x[16]+1.6927*x[3]*x[17]+1.8592*x[3]*x[19]+0.7085*x[3]*x[20]-0.0612*x[4]*x[4]-1.9263*x[4]*x[5]+0.1314*x[4]*x[8]-1.3876*x[4]*x[14]+0.8094*x[4]*x[15]+0.0554*x[4]*x[16]+0.1787*x[4]*x[18]-0.2923*x[4]*x[19]+1.5934*x[5]*x[9]+1.0649*x[5]*x[11]+1.8848*x[5]*x[13]-0.52*x[5]*x[16]-0.3226*x[5]*x[17]+1.0081*x[5]*x[18]+0.5166*x[6]*x[6]+1.1081*x[6]*x[7]-0.3256*x[6]*x[8]-0.0673*x[6]*x[9]-0.2408*x[6]*x[13]+0.8151*x[6]*x[14]+1.578*x[6]*x[16]+0.2999*x[7]*x[7]+1.3137*x[7]*x[8]-1.3585*x[7]*x[9]+0.7186*x[7]*x[10]-1.3574*x[7]*x[16]-0.7826*x[7]*x[17]+1.0304*x[7]*x[18]-1.7897*x[7]*x[19]+0.1034*x[8]*x[9]-1.8209*x[8]*x[11]-1.8339*x[8]*x[12]-0.4621*x[8]*x[13]+1.6276*x[8]*x[14]+1.366*x[8]*x[15]+0.0785*x[8]*x[16]-0.7443*x[8]*x[17]-0.8708*x[9]*x[10]+0.058*x[9]*x[11]-1.8471*x[9]*x[13]+1.9335*x[9]*x[15]+1.1911*x[9]*x[17]-0.3869*x[9]*x[18]+1.5044*x[9]*x[19]+0.4433*x[10]*x[10]+1.8586*x[10]*x[11]-0.4502*x[10]*x[12]-0.3274*x[10]*x[14]-1.1684*x[10]*x[15]-1.2273*x[10]*x[16]-1.2102*x[11]*x[11]-0.6619*x[11]*x[12]-0.0166*x[11]*x[13]-0.352*x[11]*x[14]-0.9607*x[11]*x[16]-0.5238*x[11]*x[17]-0.7882*x[11]*x[19]-0.0502*x[11]*x[20]+0.6525*x[12]*x[14]-1.8207*x[12]*x[16]-1.884*x[12]*x[18]+0.3548*x[12]*x[19]-1.1315*x[13]*x[13]+1.0482*x[13]*x[14]+0.8244*x[13]*x[15]+0.148*x[13]*x[19]+1.9259*x[14]*x[15]-1.4437*x[14]*x[17]+1.5015*x[14]*x[18]-0.699*x[14]*x[19]-1.3804*x[14]*x[20]+1.8095*x[15]*x[16]+0.1389*x[15]*x[17]+1.9871*x[15]*x[20]+1.4572*x[16]*x[16]+1.7937*x[16]*x[18]-0.834*x[17]*x[18]-0.0275*x[18]*x[19]-1.7937*x[20]*x[20]+0.0664*x[1]-0.3905*x[2]-0.396*x[3]+0.2489*x[4]-0.3591*x[5]+0.8875*x[6]-0.1074*x[7]+0.3386*x[8]+0.1374*x[9]+0.0261*x[10]-0.6731*x[11]+0.2712*x[12]+0.8375*x[13]+0.7226*x[14]-0.6796*x[15]+0.0595*x[16]-0.26*x[17]-0.3089*x[18]+0.9926*x[19]-0.2871*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.8115*x[1]*x[2]-1.9687*x[1]*x[5]-0.395*x[1]*x[8]-1.2317*x[1]*x[10]+0.7424*x[1]*x[12]+1.3914*x[1]*x[13]+1.4037*x[1]*x[15]-1.906*x[1]*x[19]-1.4414*x[2]*x[2]-0.239*x[2]*x[4]+0.9385*x[2]*x[5]+0.1288*x[2]*x[6]+0.5351*x[2]*x[7]+1.7367*x[2]*x[8]+0.9659*x[2]*x[9]+1.3722*x[2]*x[10]+0.9185*x[2]*x[12]+1.3923*x[2]*x[13]+1.9937*x[2]*x[15]+1.9593*x[2]*x[16]+1.4479*x[2]*x[17]+1.9198*x[3]*x[3]+1.7599*x[3]*x[5]+1.7787*x[3]*x[6]+1.9283*x[3]*x[7]-0.4423*x[3]*x[8]-0.8342*x[3]*x[10]-0.0969*x[3]*x[12]-0.8159*x[3]*x[14]-1.0036*x[3]*x[15]+0.5732*x[3]*x[16]-0.6852*x[3]*x[17]-0.2756*x[3]*x[19]-1.0097*x[4]*x[5]+1.2676*x[4]*x[6]+1.6289*x[4]*x[7]-0.7494*x[4]*x[10]+1.0638*x[4]*x[11]-1.9985*x[4]*x[13]+1.0978*x[4]*x[14]+0.3999*x[4]*x[17]-1.9579*x[4]*x[18]+1.1228*x[5]*x[5]-0.3058*x[5]*x[8]-1.2214*x[5]*x[9]-0.0041*x[5]*x[10]+0.8494*x[5]*x[12]+0.9313*x[5]*x[14]+0.3702*x[5]*x[15]-1.4516*x[5]*x[18]-0.7645*x[6]*x[8]+1.1382*x[6]*x[9]+0.2196*x[6]*x[11]-1.1088*x[6]*x[12]-1.7212*x[6]*x[13]-0.6033*x[6]*x[14]+1.0298*x[6]*x[15]-1.4515*x[6]*x[16]+1.0862*x[6]*x[17]-1.6471*x[6]*x[20]-0.6727*x[7]*x[9]-0.2881*x[7]*x[19]-0.0094*x[8]*x[8]-1.3662*x[8]*x[9]+1.9501*x[8]*x[10]-0.3761*x[8]*x[12]-0.6892*x[8]*x[13]+0.5784*x[8]*x[14]+0.8543*x[8]*x[15]-0.8744*x[8]*x[16]+0.5444*x[9]*x[9]-1.7428*x[9]*x[10]+1.1939*x[9]*x[11]-0.3721*x[9]*x[12]-1.1306*x[9]*x[14]-1.6364*x[9]*x[16]+0.4517*x[9]*x[17]-1.5825*x[9]*x[19]+0.8756*x[10]*x[13]+0.7652*x[10]*x[14]-0.1809*x[10]*x[15]-0.9248*x[11]*x[12]-1.5668*x[11]*x[14]+1.6062*x[11]*x[16]-0.6609*x[11]*x[18]+0.5275*x[12]*x[12]-1.1721*x[12]*x[16]+0.2939*x[12]*x[17]-1.1569*x[12]*x[18]-0.1393*x[13]*x[13]-1.895*x[13]*x[14]+1.1181*x[13]*x[15]-0.126*x[13]*x[16]+1.5699*x[14]*x[15]+1.1571*x[14]*x[16]+0.2759*x[14]*x[17]+1.4429*x[14]*x[19]+1.6439*x[15]*x[16]-1.3907*x[15]*x[17]+0.2523*x[15]*x[19]-0.138*x[16]*x[17]-0.414*x[17]*x[18]-0.1297*x[17]*x[19]-1.954*x[19]*x[19]+1.6646*x[19]*x[20]+0.0526*x[1]+0.9086*x[2]+0.5866*x[3]-0.8777*x[4]+0.0181*x[5]+0.2463*x[6]+0.1697*x[7]-0.9148*x[8]+0.4976*x[9]-0.7257*x[10]-0.5447*x[11]-0.3333*x[12]+0.7602*x[13]-0.6432*x[14]+0.4335*x[15]+0.6657*x[16]-0.3522*x[17]-0.3207*x[18]-0.9375*x[19]-0.2883*x[20] <= 34.349)
@NLconstraint(m, e3, 0.8619*x[1]*x[5]+1.7423*x[1]*x[6]+1.5963*x[1]*x[8]+1.7271*x[1]*x[12]-1.8084*x[1]*x[14]+0.7473*x[1]*x[18]+1.297*x[2]*x[3]+1.3167*x[2]*x[6]-1.145*x[2]*x[9]-1.2958*x[2]*x[10]+1.0554*x[2]*x[11]-1.9396*x[2]*x[13]-1.7959*x[2]*x[16]+1.4481*x[2]*x[19]+0.1305*x[3]*x[3]+0.9873*x[3]*x[4]+1.6855*x[3]*x[6]-1.2799*x[3]*x[7]-1.9245*x[3]*x[9]+1.7602*x[3]*x[10]+1.9899*x[3]*x[11]+1.1407*x[3]*x[13]+0.2442*x[3]*x[14]+1.4851*x[3]*x[15]-0.4728*x[3]*x[16]+1.2578*x[3]*x[20]-1.0236*x[4]*x[6]-0.4212*x[4]*x[7]-0.5689*x[4]*x[9]+1.6347*x[4]*x[12]-0.3652*x[4]*x[16]+0.2957*x[4]*x[17]-1.2521*x[4]*x[18]-1.6699*x[4]*x[19]+1.1747*x[5]*x[5]+0.5459*x[5]*x[6]-1.0942*x[5]*x[7]+1.9276*x[5]*x[8]-0.916*x[5]*x[9]-0.1062*x[5]*x[11]+0.7022*x[5]*x[12]-0.9558*x[5]*x[15]-0.1506*x[5]*x[16]+1.6003*x[5]*x[18]-0.3108*x[6]*x[7]+1.6772*x[6]*x[8]+1.9893*x[6]*x[9]+1.8105*x[6]*x[10]-0.4977*x[6]*x[11]-0.4867*x[6]*x[13]+1.3971*x[6]*x[15]-0.7825*x[6]*x[17]+0.8914*x[7]*x[7]+1.1463*x[7]*x[11]-1.7368*x[7]*x[12]+1.9382*x[7]*x[14]-1.3378*x[7]*x[15]+0.4051*x[7]*x[16]+0.4331*x[7]*x[17]+1.3803*x[8]*x[8]+1.078*x[8]*x[9]+1.6178*x[8]*x[10]+1.7914*x[8]*x[12]-1.8785*x[8]*x[13]+0.4766*x[8]*x[16]+1.4094*x[8]*x[18]-0.9717*x[8]*x[19]-0.7491*x[9]*x[9]+1.3375*x[9]*x[10]-0.206*x[9]*x[11]+1.7478*x[9]*x[15]+1.147*x[9]*x[16]+0.1718*x[9]*x[17]-1.3958*x[9]*x[18]+0.201*x[9]*x[20]-0.3924*x[10]*x[10]-0.132*x[10]*x[14]-1.9625*x[10]*x[15]+1.6256*x[10]*x[16]-1.7469*x[10]*x[19]+0.4392*x[11]*x[13]+1.6416*x[11]*x[14]-1.6997*x[11]*x[16]+0.789*x[11]*x[17]-1.0523*x[12]*x[14]+1.2736*x[12]*x[15]-0.0349*x[12]*x[18]-0.5413*x[12]*x[19]-0.1395*x[13]*x[15]+0.8635*x[13]*x[19]+0.0223*x[14]*x[16]-1.3244*x[14]*x[18]+1.9184*x[14]*x[19]-1.18*x[15]*x[16]+1.8284*x[15]*x[17]-0.0173*x[15]*x[18]-0.3181*x[16]*x[17]-0.0398*x[16]*x[18]-1.0156*x[16]*x[19]+0.8367*x[17]*x[19]+1.7655*x[17]*x[20]+0.8727*x[18]*x[19]-1.9001*x[18]*x[20]+1.8029*x[19]*x[19]-0.1883*x[19]*x[20]+0.4034*x[1]+0.5915*x[2]-0.9321*x[3]-0.7018*x[4]+0.9676*x[5]+0.0077*x[6]+0.6789*x[7]-0.9712*x[8]-0.1112*x[9]-0.7022*x[10]+0.2821*x[11]-0.4521*x[12]+0.3044*x[13]+0.8173*x[14]-0.6102*x[15]+0.4353*x[16]+0.8494*x[17]-0.0141*x[18]-0.2351*x[19]-0.5149*x[20] <= 70.853)
@NLconstraint(m, e4, 0.3724*x[1]*x[8]-1.1845*x[1]*x[2]-1.9767*x[1]*x[13]-0.4386*x[1]*x[14]+0.5526*x[1]*x[17]+0.3934*x[1]*x[19]-1.8903*x[1]*x[20]-0.2135*x[2]*x[2]+1.0152*x[2]*x[4]+1.0469*x[2]*x[6]+1.958*x[2]*x[7]-0.2143*x[2]*x[11]+0.222*x[2]*x[19]+0.0988*x[3]*x[5]+0.2854*x[3]*x[6]+1.1956*x[3]*x[11]+0.8163*x[3]*x[13]+1.0448*x[3]*x[14]-1.2422*x[3]*x[15]+0.8375*x[3]*x[17]-1.0861*x[3]*x[19]-0.6403*x[4]*x[5]-0.627*x[4]*x[6]+1.9497*x[4]*x[11]+0.4287*x[4]*x[12]-0.7956*x[4]*x[13]-1.174*x[4]*x[15]+0.4659*x[4]*x[16]+0.6736*x[4]*x[17]-1.3377*x[4]*x[19]-1.1633*x[5]*x[7]-0.8954*x[5]*x[9]+0.4953*x[5]*x[10]-1.7778*x[5]*x[12]+1.4787*x[5]*x[13]-1.53*x[5]*x[15]+1.7925*x[5]*x[16]+0.7251*x[5]*x[20]+1.0466*x[6]*x[7]-1.8359*x[6]*x[10]-0.4731*x[6]*x[11]-1.033*x[6]*x[13]+0.4265*x[6]*x[17]-0.7451*x[6]*x[19]+0.8429*x[7]*x[9]+0.4432*x[7]*x[10]+0.4932*x[7]*x[11]+0.8455*x[7]*x[12]-0.7593*x[7]*x[13]+0.564*x[7]*x[14]+1.5416*x[7]*x[15]+0.4536*x[7]*x[17]-0.6249*x[7]*x[18]-1.8877*x[7]*x[19]+0.5179*x[8]*x[9]-0.9304*x[8]*x[10]-1.7448*x[8]*x[12]-0.1926*x[8]*x[17]-0.4074*x[8]*x[19]-1.7834*x[9]*x[9]+1.039*x[9]*x[11]-0.0493*x[9]*x[12]+0.4484*x[9]*x[13]+0.7397*x[9]*x[16]-1.9657*x[9]*x[18]+1.6135*x[10]*x[10]-1.0447*x[10]*x[11]-0.2609*x[10]*x[14]+1.4812*x[10]*x[16]+1.5375*x[10]*x[17]+1.7707*x[10]*x[18]-1.3182*x[11]*x[11]+0.2971*x[11]*x[12]-1.3885*x[11]*x[13]+1.6199*x[11]*x[14]-1.5779*x[11]*x[15]+1.8999*x[11]*x[17]+0.1107*x[11]*x[18]-0.1079*x[12]*x[13]-0.2817*x[12]*x[14]-0.4738*x[12]*x[16]+1.5684*x[12]*x[17]-0.7753*x[12]*x[18]+1.2583*x[13]*x[14]+1.7525*x[13]*x[15]+0.9294*x[13]*x[16]-1.2222*x[13]*x[17]-1.4389*x[13]*x[19]+0.0001*x[14]*x[14]+0.1228*x[14]*x[15]-1.9686*x[14]*x[16]-1.4142*x[14]*x[17]+0.1152*x[14]*x[19]+1.8919*x[15]*x[16]-1.0878*x[15]*x[17]-1.5157*x[15]*x[18]+0.425*x[15]*x[20]+1.522*x[16]*x[17]-1.3906*x[16]*x[18]-0.8309*x[16]*x[19]+1.5231*x[17]*x[17]-0.9228*x[17]*x[20]+0.3796*x[18]*x[18]+0.7596*x[18]*x[19]+0.9037*x[18]*x[20]-0.7161*x[1]+0.9478*x[2]-0.5196*x[3]+0.0042*x[4]+0.0651*x[5]+0.4006*x[6]-0.9599*x[7]+0.3718*x[8]+0.1411*x[9]+0.2001*x[10]+0.8509*x[11]-0.4025*x[12]+0.7677*x[13]+0.4991*x[14]-0.4967*x[15]+0.1541*x[16]+0.7379*x[17]-0.3782*x[18]+0.5223*x[19]+0.9067*x[20] <= 61.466)
@NLconstraint(m, e5, (-1.8937*x[1]*x[11])-0.403*x[1]*x[13]-0.8127*x[1]*x[17]-1.2824*x[1]*x[18]-1.8159*x[2]*x[3]+0.6262*x[2]*x[8]+1.2352*x[2]*x[9]-0.6801*x[2]*x[10]-1.5119*x[2]*x[12]+1.5058*x[2]*x[13]+0.4531*x[2]*x[14]+1.4621*x[2]*x[15]-1.2753*x[2]*x[19]+1.6662*x[3]*x[6]+1.7575*x[3]*x[9]-0.4317*x[3]*x[11]-0.146*x[3]*x[13]-0.4839*x[3]*x[14]-0.0437*x[3]*x[15]-1.3259*x[3]*x[16]+1.0304*x[3]*x[17]+0.0115*x[3]*x[18]-0.9895*x[4]*x[4]+0.9021*x[4]*x[6]+1.5061*x[4]*x[7]-1.9329*x[4]*x[8]-0.3337*x[4]*x[9]-0.3125*x[4]*x[10]-1.6096*x[4]*x[11]-0.5663*x[4]*x[12]-1.4519*x[4]*x[14]-0.3781*x[4]*x[15]+0.9747*x[4]*x[16]-0.0203*x[4]*x[17]+1.4992*x[4]*x[18]-1.5131*x[4]*x[20]+1.8219*x[5]*x[6]+1.4875*x[5]*x[7]-1.8377*x[5]*x[8]-1.0092*x[5]*x[10]+1.9731*x[5]*x[11]+1.9704*x[5]*x[12]+0.9389*x[5]*x[13]-1.1825*x[5]*x[14]-0.9966*x[5]*x[15]+0.77*x[5]*x[17]+1.7292*x[5]*x[19]-0.2532*x[6]*x[7]+1.8254*x[6]*x[8]-0.7888*x[6]*x[10]+1.5604*x[6]*x[11]-1.5555*x[6]*x[12]-0.745*x[6]*x[13]-1.921*x[6]*x[14]+0.121*x[6]*x[16]-0.4154*x[6]*x[17]-1.4625*x[6]*x[18]+0.7294*x[6]*x[19]-1.9898*x[6]*x[20]-0.7683*x[7]*x[9]-0.2774*x[7]*x[11]+0.7462*x[7]*x[12]-0.6662*x[7]*x[13]-0.5093*x[7]*x[15]+0.9984*x[7]*x[17]+0.209*x[7]*x[19]-1.5178*x[8]*x[10]+0.0892*x[8]*x[11]-1.3285*x[8]*x[19]-1.8743*x[9]*x[12]+0.9001*x[9]*x[14]-0.1265*x[9]*x[15]+1.2254*x[9]*x[16]-0.9801*x[9]*x[19]+1.3241*x[10]*x[11]+0.4091*x[10]*x[12]+1.0792*x[10]*x[17]-0.4268*x[10]*x[19]-1.9785*x[11]*x[13]+1.794*x[11]*x[14]-0.7003*x[11]*x[15]-0.3998*x[11]*x[17]+1.7829*x[11]*x[20]+0.6116*x[12]*x[13]-0.4597*x[12]*x[16]-0.5857*x[12]*x[17]-1.6873*x[12]*x[18]+1.3447*x[12]*x[19]+1.2394*x[13]*x[13]+1.1831*x[13]*x[15]+0.2624*x[13]*x[17]-0.7863*x[13]*x[19]-1.938*x[13]*x[20]-0.8815*x[14]*x[15]+0.1724*x[14]*x[16]+0.0341*x[14]*x[19]-1.5664*x[15]*x[15]-1.9766*x[15]*x[18]-1.6092*x[15]*x[19]-0.4462*x[16]*x[16]+0.6031*x[16]*x[17]+0.5538*x[16]*x[18]-0.586*x[17]*x[18]+1.6477*x[17]*x[19]-1.5611*x[19]*x[20]-0.8179*x[1]+0.5916*x[2]-0.174*x[3]-0.7632*x[4]+0.4464*x[5]+0.3816*x[6]+0.8258*x[7]+0.6814*x[8]+0.5022*x[9]+0.3228*x[10]+0.1633*x[11]+0.9017*x[12]+0.3344*x[13]+0.0707*x[14]+0.6542*x[15]-0.0503*x[16]+0.4622*x[17]+0.0659*x[18]+0.1075*x[19]+0.6404*x[20] <= 3.09)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 