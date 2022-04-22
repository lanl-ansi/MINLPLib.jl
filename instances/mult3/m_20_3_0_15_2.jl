using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.1664*x[1]*x[3]-0.6457*x[2]*x[4]-0.895*x[2]*x[5]-0.4612*x[2]*x[6]-0.1352*x[2]*x[12]+0.8219*x[3]*x[12]-0.1218*x[4]*x[10]-0.79*x[4]*x[19]-0.1588*x[5]*x[19]-0.8448*x[6]*x[10]+0.0728*x[6]*x[14]-0.429*x[6]*x[15]+0.6694*x[7]*x[8]+0.1814*x[7]*x[15]-0.5257*x[7]*x[16]+0.1227*x[8]*x[15]+0.1794*x[9]*x[11]+0.0185*x[9]*x[12]-0.3651*x[9]*x[17]+0.8211*x[10]*x[14]+0.865*x[10]*x[15]+0.8049*x[10]*x[18]-0.5969*x[11]*x[18]-0.322*x[11]*x[19]-0.831*x[12]*x[17]-0.3714*x[14]*x[19]-0.7053*x[16]*x[19]-0.8906*x[17]*x[19]+0.3122*x[1]+0.9116*x[2]-0.7073*x[3]+0.3956*x[4]+0.6408*x[5]+0.906*x[6]+0.4384*x[7]-0.0051*x[8]+0.689*x[9]+0.8015*x[10]-0.1671*x[11]+0.1501*x[12]-0.4673*x[14]-0.2172*x[15]+0.5448*x[16]+0.5743*x[17]-0.2467*x[18]+0.8448*x[19]+(-0.15*x[1]*x[2]*x[10])-0.0228*x[1]*x[2]*x[19]+0.1948*x[1]*x[3]*x[6]+0.0738*x[1]*x[4]*x[5]-0.3171*x[1]*x[4]*x[11]-0.0868*x[1]*x[4]*x[18]+0.1976*x[1]*x[5]*x[18]-0.1588*x[1]*x[7]*x[12]+0.8177*x[1]*x[7]*x[18]+0.0611*x[1]*x[8]*x[15]+0.6505*x[1]*x[12]*x[14]+0.2604*x[2]*x[3]*x[8]+0.2095*x[2]*x[3]*x[9]-0.672*x[2]*x[3]*x[10]+0.6978*x[2]*x[3]*x[14]-0.0832*x[2]*x[4]*x[5]-0.2179*x[2]*x[4]*x[6]-0.7753*x[2]*x[4]*x[7]+0.3347*x[2]*x[4]*x[19]+0.9315*x[2]*x[5]*x[10]+0.503*x[2]*x[5]*x[12]+0.2835*x[2]*x[6]*x[9]-0.0702*x[2]*x[7]*x[12]+0.3848*x[2]*x[7]*x[15]+0.4389*x[2]*x[7]*x[16]-0.9411*x[2]*x[7]*x[17]-0.9694*x[2]*x[7]*x[20]+0.0055*x[2]*x[8]*x[17]-0.1534*x[2]*x[9]*x[11]-0.0148*x[2]*x[10]*x[12]+0.2437*x[2]*x[10]*x[16]+0.169*x[2]*x[10]*x[20]+0.4921*x[2]*x[11]*x[20]+0.5954*x[2]*x[12]*x[16]+0.7634*x[2]*x[14]*x[18]-0.6518*x[2]*x[15]*x[17]-0.5796*x[2]*x[15]*x[19]-0.9513*x[2]*x[15]*x[20]-0.8873*x[2]*x[16]*x[17]-0.2421*x[3]*x[4]*x[5]+0.2333*x[3]*x[4]*x[6]+0.1818*x[3]*x[4]*x[8]-0.0513*x[3]*x[4]*x[11]+0.497*x[3]*x[4]*x[17]-0.2916*x[3]*x[5]*x[10]+0.5209*x[3]*x[5]*x[15]-0.3189*x[3]*x[5]*x[16]-0.9637*x[3]*x[6]*x[16]+0.1383*x[3]*x[6]*x[18]-0.4614*x[3]*x[7]*x[10]-0.9741*x[3]*x[7]*x[14]+0.7363*x[3]*x[7]*x[15]+0.2716*x[3]*x[7]*x[20]+0.9703*x[3]*x[8]*x[9]-0.1383*x[3]*x[8]*x[13]+0.4808*x[3]*x[8]*x[14]-0.6625*x[3]*x[8]*x[16]+0.4163*x[3]*x[8]*x[19]+0.1529*x[3]*x[9]*x[10]+0.4518*x[3]*x[9]*x[17]-0.589*x[3]*x[9]*x[18]-0.9422*x[3]*x[10]*x[13]+0.7822*x[3]*x[10]*x[17]+0.8089*x[3]*x[11]*x[14]-0.2402*x[3]*x[11]*x[19]+0.4813*x[3]*x[12]*x[15]+0.0463*x[3]*x[12]*x[17]+0.8903*x[3]*x[13]*x[17]-0.3059*x[3]*x[16]*x[19]+0.8573*x[4]*x[5]*x[12]-0.1433*x[4]*x[5]*x[14]-0.1261*x[4]*x[5]*x[17]-0.3471*x[4]*x[6]*x[9]-0.9975*x[4]*x[7]*x[10]+0.3536*x[4]*x[7]*x[13]+0.0801*x[4]*x[8]*x[12]+0.9897*x[4]*x[8]*x[13]+0.5054*x[4]*x[8]*x[15]+0.5555*x[4]*x[9]*x[12]+0.4837*x[4]*x[9]*x[20]+0.3176*x[4]*x[10]*x[18]-0.7376*x[4]*x[11]*x[18]+0.8161*x[4]*x[12]*x[17]+0.4292*x[4]*x[12]*x[18]+0.1448*x[4]*x[14]*x[15]+0.9675*x[4]*x[15]*x[16]-0.709*x[4]*x[15]*x[17]+0.9875*x[4]*x[18]*x[19]+0.191*x[5]*x[6]*x[9]-0.3159*x[5]*x[6]*x[12]+0.8517*x[5]*x[7]*x[14]-0.8797*x[5]*x[8]*x[10]-0.799*x[5]*x[8]*x[12]-0.8113*x[5]*x[8]*x[18]+0.0573*x[5]*x[9]*x[12]+0.0755*x[5]*x[10]*x[13]+0.9873*x[5]*x[10]*x[19]+0.3569*x[5]*x[11]*x[15]-0.2385*x[5]*x[12]*x[18]-0.0275*x[5]*x[13]*x[14]-0.0285*x[5]*x[13]*x[16]+0.3356*x[5]*x[16]*x[19]+0.7684*x[5]*x[16]*x[20]-0.9741*x[6]*x[7]*x[20]+0.6011*x[6]*x[8]*x[13]+0.3103*x[6]*x[8]*x[14]+0.7725*x[6]*x[9]*x[10]-0.916*x[6]*x[9]*x[15]-0.8487*x[6]*x[11]*x[18]+0.8038*x[6]*x[12]*x[13]+0.3966*x[6]*x[15]*x[18]-0.6765*x[6]*x[16]*x[17]-0.6288*x[6]*x[17]*x[18]+0.7865*x[7]*x[8]*x[11]-0.863*x[7]*x[8]*x[17]+0.8998*x[7]*x[9]*x[10]-0.0586*x[7]*x[10]*x[15]-0.871*x[7]*x[10]*x[20]+0.13*x[7]*x[11]*x[12]+0.2762*x[7]*x[11]*x[15]+0.5633*x[7]*x[11]*x[18]-0.776*x[7]*x[11]*x[19]+0.8352*x[7]*x[12]*x[14]-0.3819*x[7]*x[13]*x[17]-0.2066*x[7]*x[13]*x[18]+0.4446*x[7]*x[15]*x[18]+0.8706*x[7]*x[19]*x[20]+0.4135*x[8]*x[9]*x[14]-0.5897*x[8]*x[10]*x[19]+0.9283*x[8]*x[10]*x[20]-0.0124*x[8]*x[11]*x[14]-0.165*x[8]*x[12]*x[16]+0.6815*x[8]*x[14]*x[15]-0.1747*x[8]*x[14]*x[18]-0.4061*x[8]*x[15]*x[17]+0.6011*x[8]*x[17]*x[18]+0.3515*x[8]*x[18]*x[20]-0.9505*x[9]*x[10]*x[14]+0.9976*x[9]*x[12]*x[15]+0.0402*x[9]*x[12]*x[16]+0.2453*x[9]*x[12]*x[19]-0.5689*x[9]*x[13]*x[14]+0.9868*x[9]*x[13]*x[16]+0.5946*x[9]*x[13]*x[19]+0.4154*x[9]*x[13]*x[20]-0.507*x[9]*x[14]*x[15]+0.5006*x[9]*x[15]*x[18]-0.9519*x[9]*x[17]*x[18]+0.0082*x[10]*x[11]*x[17]+0.3537*x[10]*x[13]*x[15]-0.0677*x[10]*x[15]*x[17]-0.8293*x[10]*x[16]*x[20]+0.4949*x[11]*x[13]*x[16]-0.4146*x[11]*x[13]*x[18]+0.1473*x[11]*x[14]*x[15]-0.6033*x[11]*x[14]*x[16]-0.6047*x[11]*x[14]*x[19]+0.4072*x[11]*x[15]*x[17]-0.4103*x[11]*x[15]*x[19]-0.8881*x[12]*x[13]*x[17]-0.2226*x[12]*x[14]*x[15]-0.3099*x[12]*x[15]*x[20]+0.0351*x[12]*x[16]*x[19]-0.3254*x[12]*x[18]*x[19]+0.3681*x[13]*x[15]*x[18]-0.5344*x[13]*x[15]*x[19]-0.4061*x[13]*x[15]*x[20]-0.4561*x[14]*x[17]*x[18]+0.9356*x[15]*x[18]*x[19]+0.382*x[15]*x[19]*x[20]+0.3681*x[18]*x[19]*x[20]-0.6129*x[13]-0.784*x[20])+obj == 0.0)

 
