using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.3933*x[15]-0.9605*x[15]^2+(-0.9745*x[5]*x[13])-0.998*x[7]*x[12]-0.9697*x[10]*x[12]-0.9939*x[13]*x[15]-0.6662*x[5]-0.1467*x[7]-0.7406*x[10]-0.3289*x[12]-0.8604*x[13]+(-0.6792*x[1]*x[4]*x[5])-0.5914*x[1]*x[7]*x[11]-0.9037*x[2]*x[3]*x[4]-0.8469*x[2]*x[6]*x[9]-0.7025*x[2]*x[7]*x[10]-0.7428*x[3]*x[4]*x[8]-0.8262*x[3]*x[4]*x[14]-0.7254*x[3]*x[5]*x[10]-0.8016*x[3]*x[6]*x[10]-0.7532*x[3]*x[6]*x[13]-0.9096*x[3]*x[10]*x[12]-0.8073*x[4]*x[5]*x[9]-0.6835*x[4]*x[8]*x[12]-0.7712*x[4]*x[10]*x[13]-0.6098*x[4]*x[12]*x[14]-0.6916*x[4]*x[14]*x[15]-0.8199*x[5]*x[6]*x[7]-0.7372*x[6]*x[7]*x[11]-0.7343*x[6]*x[9]*x[11]-0.7908*x[6]*x[10]*x[15]-0.6929*x[7]*x[13]*x[15]-0.7672*x[8]*x[12]*x[15]-0.8054*x[11]*x[12]*x[13]-0.8135*x[11]*x[12]*x[14]+0.354*x[1]-0.5276*x[2]-0.6272*x[3]-0.8758*x[4]-0.5727*x[6]-0.8066*x[8]-0.53*x[9]+0.8858*x[11]-0.0148*x[14]+0.3852*x[1]*x[2]*x[3]*x[13]+0.41*x[1]*x[2]*x[4]*x[6]+0.6574*x[1]*x[2]*x[6]*x[7]-0.0089*x[1]*x[2]*x[8]*x[11]+0.6366*x[1]*x[3]*x[6]*x[10]+0.4463*x[1]*x[3]*x[9]*x[11]-0.5569*x[1]*x[3]*x[11]*x[15]+0.4481*x[1]*x[4]*x[5]*x[9]+0.3888*x[1]*x[4]*x[5]*x[13]+0.9753*x[1]*x[4]*x[8]*x[14]+0.0687*x[1]*x[4]*x[11]*x[13]-0.1218*x[1]*x[5]*x[14]*x[15]+0.3536*x[1]*x[6]*x[7]*x[14]-0.5734*x[1]*x[6]*x[9]*x[10]+0.8973*x[1]*x[7]*x[8]*x[14]+0.6989*x[1]*x[7]*x[10]*x[11]+0.5074*x[1]*x[8]*x[11]*x[12]+0.9861*x[1]*x[10]*x[11]*x[12]-0.3969*x[1]*x[11]*x[12]*x[14]+0.6511*x[2]*x[3]*x[9]*x[10]+0.2668*x[2]*x[3]*x[9]*x[12]+0.5786*x[2]*x[4]*x[6]*x[12]+0.1849*x[2]*x[4]*x[6]*x[14]-0.0116*x[2]*x[4]*x[12]*x[14]-0.4053*x[2]*x[5]*x[11]*x[15]+0.346*x[2]*x[6]*x[7]*x[12]+0.6597*x[2]*x[7]*x[9]*x[13]+0.4124*x[2]*x[8]*x[9]*x[12]+0.2918*x[2]*x[9]*x[12]*x[13]-0.2025*x[2]*x[10]*x[11]*x[13]+0.0629*x[3]*x[4]*x[5]*x[6]+0.4118*x[3]*x[4]*x[6]*x[12]+0.15*x[3]*x[4]*x[11]*x[14]+0.7136*x[3]*x[5]*x[8]*x[11]+0.6193*x[3]*x[5]*x[9]*x[13]+0.5472*x[3]*x[5]*x[9]*x[14]+0.2666*x[3]*x[5]*x[10]*x[13]+0.6454*x[3]*x[5]*x[14]*x[15]-0.5641*x[3]*x[6]*x[7]*x[14]+0.9611*x[3]*x[6]*x[8]*x[10]+0.5392*x[3]*x[6]*x[10]*x[12]+0.1237*x[3]*x[6]*x[11]*x[15]+0.4577*x[3]*x[7]*x[10]*x[14]+0.1895*x[3]*x[7]*x[14]*x[15]+0.1954*x[3]*x[8]*x[9]*x[13]-0.3219*x[3]*x[8]*x[9]*x[14]+0.357*x[3]*x[9]*x[11]*x[13]+0.9586*x[3]*x[9]*x[12]*x[13]+0.2114*x[3]*x[10]*x[11]*x[14]+0.159*x[3]*x[11]*x[13]*x[15]+0.7427*x[4]*x[5]*x[6]*x[8]+0.4195*x[4]*x[5]*x[8]*x[13]+0.6579*x[4]*x[5]*x[9]*x[14]+0.5938*x[4]*x[6]*x[9]*x[13]-0.0781*x[4]*x[6]*x[10]*x[11]-0.1674*x[4]*x[6]*x[12]*x[15]+0.4003*x[4]*x[7]*x[9]*x[14]+0.7114*x[4]*x[7]*x[9]*x[15]-0.0967*x[4]*x[7]*x[10]*x[13]+0.9569*x[4]*x[7]*x[11]*x[14]-0.2866*x[4]*x[9]*x[10]*x[13]+0.3273*x[4]*x[10]*x[12]*x[14]+0.0525*x[4]*x[11]*x[12]*x[15]+0.8756*x[4]*x[13]*x[14]*x[15]-0.2037*x[5]*x[6]*x[10]*x[13]-0.5107*x[5]*x[6]*x[10]*x[15]-0.0382*x[5]*x[6]*x[11]*x[12]+0.3839*x[5]*x[6]*x[13]*x[15]+0.6151*x[5]*x[7]*x[8]*x[9]+0.4615*x[5]*x[7]*x[11]*x[12]+0.7456*x[5]*x[7]*x[12]*x[13]-0.4303*x[5]*x[8]*x[11]*x[13]-0.5025*x[5]*x[8]*x[12]*x[15]+0.6888*x[5]*x[9]*x[10]*x[13]-0.561*x[5]*x[10]*x[11]*x[13]+0.8942*x[6]*x[7]*x[8]*x[11]-0.4609*x[6]*x[8]*x[13]*x[15]+0.6633*x[6]*x[9]*x[10]*x[13]-0.0323*x[6]*x[9]*x[10]*x[15]+0.9951*x[6]*x[9]*x[11]*x[15]+0.4699*x[7]*x[8]*x[12]*x[15]-0.3248*x[7]*x[9]*x[10]*x[11]-0.5125*x[7]*x[9]*x[11]*x[12]+0.5489*x[7]*x[10]*x[11]*x[13]+0.8754*x[7]*x[11]*x[12]*x[14]-0.497*x[7]*x[11]*x[13]*x[14]+0.67*x[8]*x[10]*x[11]*x[13]+0.3181*x[9]*x[10]*x[14]*x[15]+0.0993*x[9]*x[11]*x[12]*x[14]-0.5614*x[9]*x[12]*x[13]*x[14]+0.0562*x[3]^3*x[12]+0.3602*x[7]^3*x[14]+0.9986*x[12]^3*x[9]+0.1514*x[12]^3*x[13]-0.2835*x[14]^3*x[9]+0.9819*x[15]^3*x[6]+0.8031*x[3]^2*x[14]^2-0.3494*x[4]^2*x[8]^2-0.2659*x[5]^2*x[10]^2-0.2574*x[6]^2*x[11]^2+(-0.8533*x[4]^2*x[7])-0.5903*x[7]^2*x[2]-0.7085*x[7]^2*x[5]-0.7225*x[7]^2*x[15]-0.6094*x[10]^2*x[2]-0.8145*x[10]^2*x[7]-0.7123*x[12]^2*x[3]-0.722*x[12]^2*x[4]-0.9228*x[14]^2*x[2]+0.8655*x[2]^2*x[3]*x[8]+0.7557*x[2]^2*x[3]*x[9]+0.7005*x[2]^2*x[7]*x[13]+0.3767*x[2]^2*x[11]*x[12]-0.0621*x[3]^2*x[5]*x[9]+0.152*x[3]^2*x[6]*x[11]-0.162*x[3]^2*x[10]*x[11]+0.9871*x[4]^2*x[2]*x[5]+0.7265*x[4]^2*x[2]*x[14]-0.2095*x[4]^2*x[5]*x[11]+0.4096*x[4]^2*x[6]*x[7]+0.7539*x[4]^2*x[6]*x[11]+0.0097*x[4]^2*x[9]*x[14]+0.9973*x[4]^2*x[10]*x[13]+0.0692*x[4]^2*x[11]*x[15]-0.0621*x[5]^2*x[4]*x[7]+0.5162*x[5]^2*x[4]*x[10]+0.1642*x[5]^2*x[13]*x[14]-0.0387*x[6]^2*x[1]*x[2]-0.5768*x[6]^2*x[4]*x[13]+0.401*x[6]^2*x[4]*x[14]+0.6504*x[6]^2*x[5]*x[7]+0.9722*x[6]^2*x[11]*x[14]+0.134*x[7]^2*x[1]*x[15]-0.3698*x[7]^2*x[2]*x[11]+0.3672*x[7]^2*x[3]*x[5]-0.3769*x[8]^2*x[7]*x[9]+0.73*x[8]^2*x[12]*x[13]-0.3382*x[9]^2*x[1]*x[5]+0.6154*x[9]^2*x[2]*x[8]+0.6601*x[9]^2*x[6]*x[11]+0.5537*x[9]^2*x[10]*x[11]+0.3239*x[10]^2*x[1]*x[6]-0.1718*x[10]^2*x[2]*x[3]-0.244*x[10]^2*x[3]*x[6]-0.0184*x[10]^2*x[4]*x[5]-0.3924*x[10]^2*x[5]*x[8]+0.6861*x[10]^2*x[7]*x[14]-0.3179*x[11]^2*x[2]*x[10]+0.8444*x[11]^2*x[4]*x[7]+0.5809*x[11]^2*x[6]*x[7]+0.2912*x[11]^2*x[10]*x[13]-0.1111*x[11]^2*x[10]*x[14]+0.2373*x[11]^2*x[12]*x[14]+0.3345*x[12]^2*x[4]*x[5]+0.2954*x[13]^2*x[4]*x[14]+0.2233*x[14]^2*x[4]*x[9]+0.5532*x[14]^2*x[5]*x[6]+0.0341*x[14]^2*x[5]*x[12]+0.4181*x[14]^2*x[8]*x[10]+0.9799*x[14]^2*x[8]*x[12]-0.5147*x[15]^2*x[5]*x[8]+0.2246*x[15]^2*x[5]*x[9]+0.2374*x[15]^2*x[6]*x[14]+0.1058*x[15]^2*x[11]*x[14])+obj == 0.0)

m = m 		 # model get returned when including this script. 