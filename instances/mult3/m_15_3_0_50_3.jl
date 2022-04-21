using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.7824*x[1]*x[3]-0.9886*x[1]*x[9]-0.9268*x[1]*x[10]+0.7019*x[1]*x[11]+0.7087*x[1]*x[14]+0.5632*x[2]*x[3]-0.7147*x[2]*x[5]+0.2392*x[2]*x[11]+0.6184*x[2]*x[14]-0.7171*x[3]*x[4]-0.5774*x[3]*x[6]-0.5979*x[3]*x[8]-0.3755*x[3]*x[9]+0.0744*x[3]*x[12]-0.1461*x[3]*x[14]-0.6546*x[4]*x[12]-0.8841*x[5]*x[6]-0.4208*x[5]*x[7]+0.1098*x[5]*x[8]-0.1921*x[5]*x[11]+0.6526*x[6]*x[7]-0.3089*x[6]*x[8]+0.4195*x[6]*x[10]-0.3431*x[6]*x[13]+0.8817*x[6]*x[14]-0.9476*x[7]*x[8]+0.6799*x[7]*x[10]+0.4631*x[7]*x[12]+0.1403*x[8]*x[9]-0.019*x[8]*x[12]+0.3724*x[8]*x[13]-0.6551*x[8]*x[14]-0.2619*x[9]*x[13]-0.942*x[9]*x[14]-0.3193*x[10]*x[11]-0.4208*x[10]*x[12]-0.6767*x[10]*x[13]+0.7226*x[10]*x[14]+0.074*x[10]*x[15]+0.6878*x[11]*x[15]+0.8037*x[12]*x[14]+0.856*x[14]*x[15]+0.3949*x[1]+0.0009*x[2]+0.5317*x[3]-0.8498*x[4]-0.9827*x[5]-0.4973*x[6]+0.8711*x[7]-0.4327*x[8]+0.7307*x[9]-0.3913*x[10]+0.7947*x[11]+0.4271*x[12]-0.0086*x[13]+0.6725*x[14]+0.9659*x[15]+(-0.9054*x[1]*x[2]*x[9])-0.6054*x[1]*x[2]*x[11]-0.6654*x[1]*x[2]*x[14]-0.7989*x[1]*x[2]*x[15]-0.6282*x[1]*x[3]*x[4]+0.8332*x[1]*x[3]*x[5]+0.3193*x[1]*x[3]*x[9]+0.2419*x[1]*x[3]*x[11]-0.5182*x[1]*x[3]*x[13]-0.8201*x[1]*x[3]*x[14]+0.744*x[1]*x[4]*x[7]+0.2794*x[1]*x[4]*x[11]-0.365*x[1]*x[4]*x[13]+0.0008*x[1]*x[5]*x[10]+0.8788*x[1]*x[5]*x[14]-0.8846*x[1]*x[6]*x[7]+0.3712*x[1]*x[6]*x[9]-0.2463*x[1]*x[6]*x[10]-0.1764*x[1]*x[6]*x[13]+0.2846*x[1]*x[6]*x[14]-0.5725*x[1]*x[7]*x[8]+0.9344*x[1]*x[8]*x[12]+0.5948*x[1]*x[8]*x[13]+0.3907*x[1]*x[9]*x[11]-0.8723*x[1]*x[10]*x[11]+0.9142*x[1]*x[11]*x[13]-0.1023*x[1]*x[13]*x[14]-0.2058*x[1]*x[13]*x[15]-0.8626*x[2]*x[3]*x[5]-0.2493*x[2]*x[3]*x[6]+0.2491*x[2]*x[3]*x[7]+0.9277*x[2]*x[3]*x[10]-0.2583*x[2]*x[3]*x[11]-0.7938*x[2]*x[3]*x[12]-0.851*x[2]*x[3]*x[13]-0.5735*x[2]*x[4]*x[6]+0.2015*x[2]*x[4]*x[7]-0.7476*x[2]*x[4]*x[10]+0.7655*x[2]*x[4]*x[11]+0.0107*x[2]*x[4]*x[13]-0.4245*x[2]*x[4]*x[14]-0.6234*x[2]*x[5]*x[7]+0.8412*x[2]*x[5]*x[8]+0.7861*x[2]*x[5]*x[9]+0.262*x[2]*x[5]*x[10]-0.8889*x[2]*x[5]*x[11]+0.3766*x[2]*x[5]*x[13]+0.0331*x[2]*x[5]*x[14]+0.8894*x[2]*x[5]*x[15]+0.6861*x[2]*x[6]*x[7]+0.5368*x[2]*x[6]*x[8]-0.4754*x[2]*x[6]*x[9]-0.2559*x[2]*x[6]*x[11]+0.649*x[2]*x[6]*x[13]-0.3804*x[2]*x[6]*x[14]-0.4812*x[2]*x[6]*x[15]-0.3223*x[2]*x[7]*x[8]-0.9839*x[2]*x[7]*x[10]-0.0494*x[2]*x[7]*x[11]-0.3651*x[2]*x[7]*x[13]+0.6766*x[2]*x[8]*x[11]+0.2463*x[2]*x[8]*x[12]+0.0836*x[2]*x[8]*x[13]+0.8801*x[2]*x[8]*x[15]-0.5743*x[2]*x[9]*x[11]+0.9998*x[2]*x[9]*x[12]+0.329*x[2]*x[9]*x[13]+0.8405*x[2]*x[9]*x[14]-0.8868*x[2]*x[10]*x[13]+0.9828*x[2]*x[10]*x[15]-0.367*x[2]*x[11]*x[12]-0.0242*x[2]*x[11]*x[13]+0.3368*x[2]*x[11]*x[14]+0.7955*x[2]*x[11]*x[15]+0.5005*x[2]*x[12]*x[13]+0.0533*x[2]*x[13]*x[14]+0.0604*x[2]*x[13]*x[15]-0.9126*x[3]*x[4]*x[5]+0.8469*x[3]*x[4]*x[10]+0.9451*x[3]*x[4]*x[11]-0.8313*x[3]*x[4]*x[12]-0.0014*x[3]*x[4]*x[14]-0.717*x[3]*x[4]*x[15]+0.6835*x[3]*x[5]*x[7]-0.2959*x[3]*x[5]*x[14]+0.6701*x[3]*x[6]*x[7]-0.9957*x[3]*x[6]*x[10]-0.2212*x[3]*x[6]*x[12]+0.5825*x[3]*x[6]*x[14]-0.7326*x[3]*x[7]*x[11]+0.7025*x[3]*x[7]*x[14]+0.1005*x[3]*x[7]*x[15]-0.5192*x[3]*x[8]*x[9]-0.8866*x[3]*x[8]*x[10]-0.0761*x[3]*x[8]*x[11]-0.6136*x[3]*x[8]*x[12]-0.471*x[3]*x[8]*x[14]-0.8715*x[3]*x[8]*x[15]-0.6364*x[3]*x[9]*x[10]-0.8779*x[3]*x[9]*x[15]+0.2697*x[3]*x[10]*x[11]-0.1592*x[3]*x[10]*x[12]+0.5372*x[3]*x[10]*x[13]+0.4912*x[3]*x[10]*x[14]-0.6334*x[3]*x[10]*x[15]-0.1826*x[3]*x[11]*x[12]-0.6787*x[3]*x[11]*x[13]+0.7248*x[3]*x[12]*x[13]+0.088*x[3]*x[12]*x[14]-0.8744*x[3]*x[13]*x[14]-0.2361*x[4]*x[5]*x[6]+0.4756*x[4]*x[5]*x[8]-0.7919*x[4]*x[5]*x[9]+0.142*x[4]*x[5]*x[11]-0.8059*x[4]*x[5]*x[12]+0.9736*x[4]*x[5]*x[14]+0.0526*x[4]*x[6]*x[7]-0.1302*x[4]*x[6]*x[10]-0.969*x[4]*x[6]*x[11]+0.5431*x[4]*x[6]*x[13]+0.9193*x[4]*x[6]*x[14]-0.3191*x[4]*x[7]*x[8]-0.2025*x[4]*x[7]*x[10]-0.5653*x[4]*x[7]*x[11]-0.4751*x[4]*x[7]*x[12]+0.0743*x[4]*x[7]*x[13]-0.9741*x[4]*x[8]*x[12]-0.4867*x[4]*x[8]*x[14]-0.1757*x[4]*x[8]*x[15]+0.5194*x[4]*x[9]*x[10]-0.839*x[4]*x[9]*x[12]-0.4091*x[4]*x[9]*x[13]+0.4657*x[4]*x[10]*x[11]-0.2997*x[4]*x[10]*x[12]-0.5375*x[4]*x[10]*x[13]-0.0419*x[4]*x[10]*x[14]-0.7528*x[4]*x[11]*x[12]+0.2059*x[4]*x[11]*x[13]+0.5905*x[4]*x[11]*x[14]+0.0963*x[4]*x[12]*x[13]+0.0653*x[4]*x[12]*x[14]+0.2115*x[4]*x[13]*x[14]+0.5066*x[4]*x[13]*x[15]-0.5059*x[4]*x[14]*x[15]-0.836*x[5]*x[6]*x[8]+0.7592*x[5]*x[6]*x[9]+0.4225*x[5]*x[6]*x[11]-0.844*x[5]*x[6]*x[12]-0.803*x[5]*x[7]*x[8]+0.6875*x[5]*x[7]*x[10]+0.5647*x[5]*x[7]*x[12]-0.2731*x[5]*x[7]*x[13]-0.1935*x[5]*x[7]*x[14]+0.9489*x[5]*x[7]*x[15]-0.8364*x[5]*x[8]*x[10]-0.7043*x[5]*x[8]*x[12]+0.6278*x[5]*x[8]*x[15]-0.7104*x[5]*x[9]*x[10]+0.3022*x[5]*x[9]*x[11]-0.1331*x[5]*x[9]*x[12]+0.1611*x[5]*x[9]*x[14]+0.9858*x[5]*x[9]*x[15]+0.9334*x[5]*x[10]*x[14]-0.2165*x[5]*x[10]*x[15]+0.4763*x[5]*x[11]*x[12]-0.6902*x[5]*x[11]*x[15]-0.1462*x[5]*x[12]*x[13]+0.9249*x[5]*x[12]*x[14]-0.7424*x[5]*x[13]*x[14]-0.069*x[6]*x[7]*x[8]-0.4868*x[6]*x[7]*x[9]-0.4306*x[6]*x[7]*x[10]+0.9294*x[6]*x[7]*x[11]-0.0426*x[6]*x[7]*x[12]+0.4425*x[6]*x[7]*x[13]+0.87*x[6]*x[7]*x[15]+0.5697*x[6]*x[8]*x[9]+0.9586*x[6]*x[8]*x[10]-0.4651*x[6]*x[8]*x[12]-0.9991*x[6]*x[8]*x[13]+0.2242*x[6]*x[8]*x[14]-0.0971*x[6]*x[8]*x[15]-0.2336*x[6]*x[9]*x[11]-0.7341*x[6]*x[9]*x[13]-0.6838*x[6]*x[9]*x[14]-0.188*x[6]*x[9]*x[15]-0.2923*x[6]*x[10]*x[11]+0.0427*x[6]*x[10]*x[12]-0.5194*x[6]*x[10]*x[13]+0.7469*x[6]*x[11]*x[13]-0.2754*x[6]*x[11]*x[14]-0.6106*x[6]*x[11]*x[15]+0.5795*x[6]*x[12]*x[13]+0.683*x[6]*x[12]*x[14]-0.6012*x[7]*x[8]*x[9]+0.2168*x[7]*x[8]*x[11]+0.029*x[7]*x[8]*x[14]+0.0261*x[7]*x[9]*x[10]+0.6018*x[7]*x[9]*x[11]+0.006*x[7]*x[9]*x[12]+0.6628*x[7]*x[9]*x[15]-0.4471*x[7]*x[10]*x[12]-0.107*x[7]*x[10]*x[13]-0.2488*x[7]*x[11]*x[12]+0.758*x[7]*x[11]*x[13]+0.9668*x[7]*x[11]*x[14]-0.3572*x[7]*x[12]*x[13]-0.0344*x[7]*x[12]*x[14]+0.887*x[7]*x[13]*x[15]+0.6964*x[8]*x[9]*x[10]+0.5705*x[8]*x[9]*x[12]+0.147*x[8]*x[9]*x[13]-0.3213*x[8]*x[9]*x[15]-0.7313*x[8]*x[10]*x[12]-0.0298*x[8]*x[10]*x[13]-0.1877*x[8]*x[10]*x[14]-0.717*x[8]*x[11]*x[12]-0.1637*x[8]*x[11]*x[15]-0.0005*x[8]*x[12]*x[13]-0.3754*x[8]*x[13]*x[14]-0.8868*x[8]*x[13]*x[15]+0.8318*x[9]*x[10]*x[11]+0.901*x[9]*x[10]*x[13]-0.4309*x[9]*x[10]*x[14]+0.2389*x[9]*x[11]*x[12]+0.0694*x[9]*x[11]*x[13]+0.045*x[9]*x[11]*x[14]+0.1005*x[9]*x[12]*x[13]+0.4685*x[9]*x[14]*x[15]+0.9213*x[10]*x[11]*x[12]-0.6408*x[10]*x[11]*x[14]-0.7515*x[10]*x[12]*x[13]-0.8373*x[10]*x[13]*x[15]-0.2238*x[11]*x[12]*x[13]+0.6214*x[11]*x[13]*x[14]-0.3619*x[11]*x[13]*x[15]-0.5765*x[12]*x[14]*x[15])+obj == 0.0)

m = m 		 # model get returned when including this script. 