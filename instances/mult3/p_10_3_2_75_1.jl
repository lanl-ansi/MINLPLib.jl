using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1) 

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6905*x[2]^2-0.9415*x[2]+0.8116*x[3]^3-0.6084*x[3]^2-0.4551*x[3]+0.4972*x[4]-0.1766*x[4]^3+0.3767*x[5]^3-0.9505*x[5]^2-0.429*x[5]+(-0.2288*x[6]^3)-0.5465*x[6]+0.7712*x[7]^3+0.7918*x[7]^2-0.1411*x[7]+0.1204*x[8]^3+0.8937*x[8]^2+0.5444*x[8]+0.2233*x[10]^2+0.0402*x[10]+(-0.3975*x[1]*x[3])-0.8836*x[1]*x[6]+0.3616*x[1]*x[8]+0.357*x[1]*x[9]-0.8533*x[2]*x[3]+0.0692*x[2]*x[4]+0.0977*x[2]*x[5]-0.2488*x[2]*x[6]+0.1514*x[2]*x[7]+0.312*x[2]*x[8]-0.0166*x[2]*x[9]-0.6978*x[2]*x[10]+0.9307*x[3]*x[4]+0.3706*x[3]*x[5]+0.5423*x[3]*x[9]-0.625*x[4]*x[5]+0.5432*x[4]*x[6]+0.0995*x[4]*x[7]+0.1474*x[4]*x[8]-0.5914*x[4]*x[9]+0.3253*x[5]*x[7]+0.7456*x[5]*x[8]+0.9229*x[5]*x[10]-0.5344*x[6]*x[7]-0.5684*x[6]*x[8]+0.5472*x[7]*x[8]+0.6554*x[7]*x[10]-0.6518*x[8]*x[9]-0.7053*x[8]*x[10]-0.9513*x[1]+0.1779*x[9]+0.5532*x[1]^2*x[5]+0.7942*x[1]^2*x[9]+0.62*x[2]^2*x[3]+0.6984*x[2]^2*x[4]-0.5698*x[2]^2*x[5]-0.6134*x[2]^2*x[6]-0.0902*x[2]^2*x[7]+0.1039*x[2]^2*x[8]+0.6624*x[2]^2*x[10]+0.6372*x[3]^2*x[1]+0.3949*x[3]^2*x[2]-0.1691*x[3]^2*x[4]+0.3813*x[3]^2*x[5]-0.8211*x[3]^2*x[6]-0.8758*x[3]^2*x[7]+0.3536*x[3]^2*x[8]-0.7672*x[3]^2*x[9]+0.9871*x[3]^2*x[10]+0.6908*x[4]^2*x[1]-0.4683*x[4]^2*x[2]-0.1342*x[4]^2*x[3]-0.5229*x[4]^2*x[5]+0.4909*x[4]^2*x[6]+0.3528*x[4]^2*x[7]-0.457*x[4]^2*x[8]+0.6574*x[4]^2*x[9]-0.5954*x[5]^2*x[1]-0.2623*x[5]^2*x[2]-0.8906*x[5]^2*x[3]+0.3795*x[5]^2*x[4]+0.889*x[5]^2*x[6]+0.729*x[5]^2*x[8]-0.3485*x[5]^2*x[9]+0.7718*x[6]^2*x[2]+0.4614*x[6]^2*x[4]+0.1753*x[6]^2*x[5]-0.6388*x[6]^2*x[7]-0.354*x[7]^2*x[1]-0.6769*x[7]^2*x[2]-0.6592*x[7]^2*x[5]-0.4768*x[7]^2*x[6]+0.7586*x[7]^2*x[8]-0.6986*x[7]^2*x[9]+0.9418*x[7]^2*x[10]+0.4489*x[8]^2*x[2]+0.1168*x[8]^2*x[3]-0.2086*x[8]^2*x[4]+0.9767*x[8]^2*x[5]+0.1782*x[8]^2*x[7]-0.8016*x[8]^2*x[9]-0.6953*x[9]^2*x[4]-0.6868*x[9]^2*x[5]+0.5528*x[9]^2*x[6]-0.7712*x[9]^2*x[7]-0.5705*x[9]^2*x[8]+0.3681*x[9]^2*x[10]+0.1017*x[10]^2*x[3]+0.8415*x[10]^2*x[4]+0.9075*x[10]^2*x[8]+0.2869*x[1]*x[2]*x[3]-0.3155*x[1]*x[2]*x[4]-0.6563*x[1]*x[2]*x[5]-0.7902*x[1]*x[2]*x[6]+0.5412*x[1]*x[2]*x[8]-0.1454*x[1]*x[2]*x[9]-0.0998*x[1]*x[3]*x[4]+0.8051*x[1]*x[3]*x[5]+0.1642*x[1]*x[3]*x[7]-0.1718*x[1]*x[3]*x[8]-0.0161*x[1]*x[3]*x[9]+0.9819*x[1]*x[4]*x[5]+0.9836*x[1]*x[4]*x[8]-0.6373*x[1]*x[4]*x[9]+0.9103*x[1]*x[4]*x[10]-0.1534*x[1]*x[5]*x[6]+0.7557*x[1]*x[5]*x[8]+0.4957*x[1]*x[5]*x[9]+0.9722*x[1]*x[5]*x[10]+0.5051*x[1]*x[6]*x[7]+0.5353*x[1]*x[6]*x[8]+0.935*x[1]*x[6]*x[9]-0.5615*x[1]*x[7]*x[8]+0.5135*x[1]*x[7]*x[9]+0.5181*x[1]*x[7]*x[10]+0.5083*x[1]*x[8]*x[9]+0.942*x[1]*x[9]*x[10]+0.6789*x[2]*x[3]*x[4]+0.6266*x[2]*x[3]*x[5]-0.6921*x[2]*x[3]*x[6]-0.9575*x[2]*x[3]*x[7]-0.9469*x[2]*x[3]*x[8]-0.5174*x[2]*x[3]*x[9]+0.0168*x[2]*x[3]*x[10]+0.5109*x[2]*x[4]*x[5]-0.9037*x[2]*x[4]*x[6]+0.6412*x[2]*x[4]*x[7]+0.1814*x[2]*x[4]*x[8]-0.109*x[2]*x[4]*x[9]+0.4563*x[2]*x[4]*x[10]-0.7895*x[2]*x[5]*x[6]+0.2399*x[2]*x[5]*x[7]+0.9757*x[2]*x[5]*x[8]+0.3491*x[2]*x[5]*x[9]-0.2797*x[2]*x[5]*x[10]+0.7097*x[2]*x[6]*x[7]-0.0392*x[2]*x[6]*x[8]-0.8308*x[2]*x[6]*x[9]-0.2336*x[2]*x[6]*x[10]+0.0837*x[2]*x[7]*x[8]+0.4626*x[2]*x[7]*x[9]-0.2405*x[2]*x[7]*x[10]+0.67*x[2]*x[8]*x[9]+0.4384*x[2]*x[9]*x[10]+0.3028*x[3]*x[4]*x[5]+0.6888*x[3]*x[4]*x[6]+0.2371*x[3]*x[4]*x[7]-0.8712*x[3]*x[4]*x[8]-0.8113*x[3]*x[4]*x[9]-0.0217*x[3]*x[4]*x[10]-0.9514*x[3]*x[5]*x[6]+0.23*x[3]*x[5]*x[7]-0.7801*x[3]*x[5]*x[8]-0.7085*x[3]*x[5]*x[9]+0.1968*x[3]*x[5]*x[10]+0.6366*x[3]*x[6]*x[7]-0.2728*x[3]*x[6]*x[8]-0.2385*x[3]*x[6]*x[9]-0.5978*x[3]*x[6]*x[10]+0.8201*x[3]*x[7]*x[8]+0.9262*x[3]*x[7]*x[9]+0.1793*x[3]*x[8]*x[9]-0.0061*x[3]*x[8]*x[10]+0.4191*x[3]*x[9]*x[10]+0.4507*x[4]*x[5]*x[6]-0.0954*x[4]*x[5]*x[7]-0.157*x[4]*x[5]*x[8]-0.8365*x[4]*x[5]*x[10]-0.7084*x[4]*x[6]*x[7]-0.8164*x[4]*x[6]*x[8]+0.9194*x[4]*x[6]*x[9]-0.5343*x[4]*x[6]*x[10]+0.6579*x[4]*x[7]*x[8]+0.2838*x[4]*x[7]*x[9]+0.5809*x[4]*x[7]*x[10]+0.3439*x[4]*x[8]*x[9]-0.9346*x[4]*x[8]*x[10]-0.1747*x[5]*x[6]*x[8]-0.6462*x[5]*x[6]*x[9]+0.6164*x[5]*x[6]*x[10]-0.4841*x[5]*x[7]*x[8]-0.4824*x[5]*x[7]*x[9]-0.9901*x[5]*x[7]*x[10]+0.3898*x[5]*x[8]*x[9]-0.4474*x[5]*x[8]*x[10]-0.9474*x[6]*x[7]*x[8]+0.4615*x[6]*x[7]*x[9]-0.877*x[6]*x[8]*x[9]-0.2652*x[6]*x[8]*x[10]+0.3158*x[6]*x[9]*x[10]+0.0785*x[7]*x[8]*x[9]-0.5504*x[7]*x[9]*x[10]-0.5555*x[8]*x[9]*x[10])+obj == 0.0)
@NLconstraint(m, e2, (-0.9275*x[2]^3)-0.6457*x[2]^2-0.261*x[2]+0.6694*x[4]^2-0.0695*x[4]+(-0.9931*x[5]^2)-0.827*x[5]+0.6438*x[7]^3+0.304*x[7]^2+0.4796*x[7]+0.593*x[8]^3+0.3498*x[8]^2-0.7576*x[8]+0.4222*x[9]^2-0.3247*x[9]^3-0.2986*x[9]+0.7441*x[1]*x[3]-0.0055*x[1]*x[4]+0.9814*x[1]*x[5]+0.7382*x[1]*x[6]+0.1984*x[1]*x[8]-0.6075*x[2]*x[3]-0.5144*x[2]*x[6]+0.1807*x[2]*x[8]-0.3354*x[2]*x[9]+0.7189*x[2]*x[10]-0.4076*x[3]*x[4]-0.6729*x[3]*x[6]+0.0728*x[3]*x[7]-0.8641*x[3]*x[8]-0.333*x[3]*x[9]+0.4237*x[4]*x[5]+0.7493*x[4]*x[6]-0.7663*x[4]*x[7]+0.1872*x[4]*x[8]+0.8877*x[4]*x[9]-0.2187*x[4]*x[10]+0.843*x[5]*x[6]+0.8211*x[5]*x[7]-0.9132*x[5]*x[8]-0.0444*x[5]*x[9]-0.5043*x[5]*x[10]+0.7113*x[6]*x[7]-0.4917*x[6]*x[8]+0.4934*x[6]*x[9]-0.6579*x[7]*x[8]-0.357*x[7]*x[9]-0.3714*x[7]*x[10]-0.6774*x[9]*x[10]+0.8568*x[1]-0.8792*x[3]+0.5092*x[6]-0.6192*x[10]+0.7216*x[1]^2*x[8]-0.6065*x[2]^2*x[4]+0.034*x[2]^2*x[6]-0.0869*x[2]^2*x[7]-0.3063*x[2]^2*x[8]-0.3017*x[2]^2*x[9]+0.7862*x[3]^2*x[2]-0.5887*x[3]^2*x[4]-0.1993*x[3]^2*x[5]-0.3159*x[3]^2*x[6]+0.2359*x[3]^2*x[7]+0.8058*x[3]^2*x[9]-0.6664*x[3]^2*x[10]-0.4125*x[4]^2*x[1]+0.397*x[4]^2*x[5]+0.466*x[4]^2*x[8]+0.1484*x[4]^2*x[10]-0.8383*x[5]^2*x[1]+0.2733*x[5]^2*x[3]+0.6063*x[5]^2*x[6]+0.2066*x[5]^2*x[7]+0.5678*x[5]^2*x[8]+0.4211*x[5]^2*x[9]+0.8319*x[5]^2*x[10]-0.2386*x[6]^2*x[2]+0.3765*x[6]^2*x[3]-0.4146*x[6]^2*x[4]+0.6154*x[6]^2*x[7]+0.6526*x[6]^2*x[8]-0.7699*x[6]^2*x[9]+0.477*x[6]^2*x[10]-0.3177*x[7]^2*x[1]-0.6117*x[7]^2*x[2]-0.3875*x[7]^2*x[3]+0.6146*x[7]^2*x[4]-0.5689*x[7]^2*x[5]+0.1405*x[7]^2*x[6]+0.3274*x[7]^2*x[8]+0.0091*x[7]^2*x[9]-0.6663*x[8]^2*x[1]-0.1375*x[8]^2*x[2]-0.9033*x[8]^2*x[4]-0.2467*x[8]^2*x[5]+0.8512*x[8]^2*x[6]+0.9152*x[8]^2*x[7]+0.1767*x[8]^2*x[9]-0.8174*x[8]^2*x[10]+0.9875*x[9]^2*x[2]-0.9624*x[9]^2*x[3]+0.0963*x[9]^2*x[4]-0.8482*x[9]^2*x[5]+0.3674*x[9]^2*x[6]-0.2681*x[9]^2*x[10]-0.7344*x[10]^2*x[5]+0.6027*x[10]^2*x[7]+0.8133*x[10]^2*x[8]+0.7007*x[10]^2*x[9]+0.9786*x[1]*x[2]*x[4]-0.6238*x[1]*x[2]*x[3]-0.15*x[1]*x[2]*x[5]-0.8432*x[1]*x[2]*x[7]-0.469*x[1]*x[2]*x[8]+0.8536*x[1]*x[2]*x[9]-0.5176*x[1]*x[3]*x[4]+0.5096*x[1]*x[3]*x[5]-0.8928*x[1]*x[3]*x[8]-0.6245*x[1]*x[3]*x[9]-0.6526*x[1]*x[4]*x[5]-0.1588*x[1]*x[4]*x[6]-0.7787*x[1]*x[4]*x[7]+0.0611*x[1]*x[4]*x[8]-0.4752*x[1]*x[4]*x[9]-0.8299*x[1]*x[5]*x[6]+0.7921*x[1]*x[5]*x[7]+0.3404*x[1]*x[5]*x[8]+0.7583*x[1]*x[5]*x[10]-0.3901*x[1]*x[6]*x[7]-0.9064*x[1]*x[6]*x[9]-0.322*x[1]*x[6]*x[10]+0.4683*x[1]*x[7]*x[8]+0.7634*x[1]*x[7]*x[9]-0.1077*x[1]*x[7]*x[10]-0.7219*x[1]*x[8]*x[9]-0.7938*x[1]*x[8]*x[10]-0.4268*x[1]*x[9]*x[10]-0.4449*x[2]*x[3]*x[5]-0.8637*x[2]*x[3]*x[6]-0.7161*x[2]*x[3]*x[7]-0.0524*x[2]*x[3]*x[8]+0.1383*x[2]*x[3]*x[9]-0.4614*x[2]*x[4]*x[5]-0.3641*x[2]*x[4]*x[6]+0.1524*x[2]*x[4]*x[7]+0.1227*x[2]*x[4]*x[8]-0.4182*x[2]*x[4]*x[9]-0.8197*x[2]*x[4]*x[10]-0.9422*x[2]*x[5]*x[6]+0.342*x[2]*x[5]*x[7]-0.5112*x[2]*x[5]*x[8]+0.4518*x[2]*x[5]*x[9]-0.3506*x[2]*x[5]*x[10]+0.7656*x[2]*x[6]*x[7]-0.8001*x[2]*x[6]*x[8]+0.8133*x[2]*x[6]*x[9]+0.5881*x[2]*x[6]*x[10]-0.3577*x[2]*x[7]*x[8]-0.6599*x[2]*x[7]*x[9]+0.3956*x[2]*x[7]*x[10]-0.2458*x[2]*x[8]*x[9]-0.7955*x[2]*x[8]*x[10]+0.5193*x[2]*x[9]*x[10]-0.8797*x[3]*x[4]*x[5]-0.6057*x[3]*x[4]*x[6]+0.3103*x[3]*x[4]*x[7]+0.6495*x[3]*x[4]*x[8]+0.6319*x[3]*x[4]*x[9]-0.113*x[3]*x[4]*x[10]-0.6678*x[3]*x[5]*x[6]-0.916*x[3]*x[5]*x[7]+0.1593*x[3]*x[5]*x[8]+0.2146*x[3]*x[5]*x[9]+0.3126*x[3]*x[5]*x[10]-0.1711*x[3]*x[6]*x[7]+0.8161*x[3]*x[6]*x[8]+0.8105*x[3]*x[6]*x[9]+0.1448*x[3]*x[7]*x[8]+0.2499*x[3]*x[7]*x[9]-0.1853*x[3]*x[7]*x[10]+0.1703*x[3]*x[8]*x[9]+0.2522*x[4]*x[5]*x[6]-0.0586*x[4]*x[5]*x[8]-0.5897*x[4]*x[5]*x[9]+0.994*x[4]*x[5]*x[10]+0.2026*x[4]*x[6]*x[7]-0.931*x[4]*x[6]*x[8]-0.7816*x[4]*x[6]*x[9]-0.776*x[4]*x[6]*x[10]-0.7367*x[4]*x[7]*x[8]-0.3819*x[4]*x[7]*x[9]-0.4612*x[4]*x[7]*x[10]+0.4764*x[4]*x[8]*x[9]+0.1032*x[4]*x[8]*x[10]-0.3715*x[4]*x[9]*x[10]-0.2767*x[5]*x[6]*x[7]-0.3364*x[5]*x[6]*x[8]-0.6013*x[5]*x[6]*x[9]-0.2744*x[5]*x[6]*x[10]+0.6818*x[5]*x[7]*x[8]+0.5314*x[5]*x[7]*x[9]+0.4154*x[5]*x[7]*x[10]-0.0369*x[5]*x[8]*x[9]+0.6635*x[5]*x[8]*x[10]+0.4333*x[5]*x[9]*x[10]+0.1079*x[6]*x[7]*x[8]-0.8881*x[6]*x[7]*x[9]-0.3941*x[6]*x[7]*x[10]-0.7642*x[6]*x[8]*x[9]+0.1998*x[6]*x[8]*x[10]-0.6056*x[6]*x[9]*x[10]+0.0008*x[7]*x[8]*x[9]-0.8453*x[7]*x[9]*x[10] <= 7.218)
@NLconstraint(m, e3, 0.3431*x[2]^3-0.3438*x[2]^2-0.2493*x[2]+0.5373*x[3]-0.8567*x[3]^2+0.15*x[4]^3+0.7918*x[4]+0.2217*x[5]^2+0.8969*x[5]+(-0.9798*x[6]^3)-0.8554*x[6]+0.8707*x[7]^3+0.6491*x[7]^2+0.4564*x[7]+0.7158*x[8]^2-0.6794*x[8]+0.4003*x[9]^2-0.2583*x[9]+(-0.2199*x[1]*x[2])-0.3177*x[1]*x[3]+0.9343*x[1]*x[4]+0.1124*x[1]*x[7]+0.8354*x[1]*x[9]-0.5989*x[1]*x[10]-0.7901*x[2]*x[3]-0.8543*x[2]*x[4]-0.9394*x[2]*x[5]+0.3118*x[2]*x[6]+0.467*x[2]*x[7]-0.82*x[2]*x[8]-0.7436*x[2]*x[9]+0.5075*x[3]*x[4]-0.3067*x[3]*x[5]+0.957*x[3]*x[6]-0.9746*x[3]*x[7]-0.0679*x[3]*x[8]-0.6852*x[3]*x[9]-0.3197*x[3]*x[10]+0.1356*x[4]*x[5]-0.3449*x[4]*x[6]+0.8152*x[4]*x[7]+0.0393*x[4]*x[8]-0.8478*x[4]*x[9]+0.9193*x[4]*x[10]-0.9476*x[5]*x[6]-0.1007*x[5]*x[7]-0.0515*x[5]*x[8]+0.7098*x[5]*x[9]+0.0318*x[5]*x[10]+0.3695*x[6]*x[7]+0.4204*x[6]*x[8]+0.1747*x[6]*x[9]-0.8779*x[6]*x[10]+0.8112*x[7]*x[8]-0.3754*x[8]*x[9]-0.1785*x[8]*x[10]-0.7512*x[1]+0.0657*x[10]+0.326*x[1]^2*x[4]-0.9364*x[1]^2*x[2]-0.4876*x[1]^2*x[8]-0.0849*x[1]^2*x[10]-0.9422*x[2]^2*x[4]-0.9484*x[2]^2*x[5]-0.768*x[2]^2*x[7]-0.6181*x[2]^2*x[8]-0.3318*x[2]^2*x[10]+0.5581*x[3]^2*x[2]+0.8229*x[3]^2*x[4]+0.0896*x[3]^2*x[6]-0.6086*x[3]^2*x[7]-0.7735*x[3]^2*x[8]+0.9809*x[3]^2*x[9]-0.5187*x[3]^2*x[10]-0.4591*x[4]^2*x[7]+0.3814*x[4]^2*x[8]-0.7202*x[4]^2*x[9]+0.8329*x[4]^2*x[10]+0.2966*x[5]^2*x[2]-0.4122*x[5]^2*x[3]+0.6882*x[5]^2*x[4]-0.5286*x[5]^2*x[6]+0.4251*x[5]^2*x[8]+0.4425*x[5]^2*x[9]-0.0897*x[6]^2*x[1]+0.7511*x[6]^2*x[3]+0.4908*x[6]^2*x[5]+0.7412*x[6]^2*x[7]-0.3359*x[6]^2*x[8]-0.4689*x[6]^2*x[9]-0.5653*x[6]^2*x[10]+0.9253*x[7]^2*x[1]-0.5289*x[7]^2*x[2]-0.6436*x[7]^2*x[3]-0.0018*x[7]^2*x[5]-0.066*x[7]^2*x[6]+0.446*x[7]^2*x[8]-0.4571*x[8]^2*x[1]+0.2*x[8]^2*x[2]-0.7528*x[8]^2*x[3]-0.2484*x[8]^2*x[4]+0.9443*x[8]^2*x[6]+0.2356*x[8]^2*x[9]-0.8608*x[9]^2*x[2]+0.2992*x[9]^2*x[5]+0.2197*x[9]^2*x[6]-0.8995*x[9]^2*x[7]+0.9667*x[9]^2*x[8]+0.3848*x[9]^2*x[10]-0.007*x[10]^2*x[1]+0.0803*x[10]^2*x[2]-0.7958*x[10]^2*x[5]+0.9874*x[1]*x[2]*x[4]-0.0799*x[1]*x[2]*x[6]-0.2439*x[1]*x[2]*x[7]+0.8048*x[1]*x[2]*x[9]-0.886*x[1]*x[2]*x[10]+0.3193*x[1]*x[3]*x[6]+0.4623*x[1]*x[3]*x[7]+0.3109*x[1]*x[3]*x[8]+0.0203*x[1]*x[3]*x[9]+0.4162*x[1]*x[3]*x[10]-0.8933*x[1]*x[4]*x[5]+0.8622*x[1]*x[4]*x[6]-0.2463*x[1]*x[4]*x[7]+0.8508*x[1]*x[4]*x[9]+0.9356*x[1]*x[4]*x[10]-0.92*x[1]*x[5]*x[7]+0.7893*x[1]*x[5]*x[9]+0.7061*x[1]*x[5]*x[10]-0.5367*x[1]*x[6]*x[8]-0.7383*x[1]*x[7]*x[9]-0.7463*x[1]*x[8]*x[9]+0.4676*x[1]*x[8]*x[10]-0.8378*x[1]*x[9]*x[10]+0.0515*x[2]*x[3]*x[4]-0.6992*x[2]*x[3]*x[5]-0.0257*x[2]*x[3]*x[6]+0.6454*x[2]*x[3]*x[8]-0.8729*x[2]*x[3]*x[9]+0.5937*x[2]*x[3]*x[10]+0.1614*x[2]*x[4]*x[6]+0.7428*x[2]*x[4]*x[7]+0.2535*x[2]*x[4]*x[8]-0.1178*x[2]*x[4]*x[9]-0.2861*x[2]*x[5]*x[6]+0.6686*x[2]*x[5]*x[8]-0.8217*x[2]*x[5]*x[9]+0.4581*x[2]*x[5]*x[10]+0.6852*x[2]*x[6]*x[7]+0.2517*x[2]*x[6]*x[8]-0.2555*x[2]*x[6]*x[9]-0.7918*x[2]*x[6]*x[10]+0.1937*x[2]*x[7]*x[8]+0.3275*x[2]*x[7]*x[9]+0.863*x[2]*x[7]*x[10]+0.7574*x[2]*x[8]*x[9]+0.7955*x[2]*x[8]*x[10]+0.5135*x[2]*x[9]*x[10]+0.3621*x[3]*x[4]*x[5]+0.8352*x[3]*x[4]*x[6]-0.3646*x[3]*x[4]*x[7]-0.5713*x[3]*x[4]*x[8]-0.1989*x[3]*x[4]*x[9]+0.7112*x[3]*x[4]*x[10]+0.1204*x[3]*x[5]*x[6]-0.4751*x[3]*x[5]*x[8]+0.3243*x[3]*x[5]*x[9]+0.9029*x[3]*x[5]*x[10]+0.5194*x[3]*x[6]*x[7]-0.1694*x[3]*x[6]*x[8]-0.4091*x[3]*x[6]*x[9]-0.7872*x[3]*x[6]*x[10]+0.1115*x[3]*x[7]*x[8]+0.975*x[3]*x[7]*x[9]+0.2476*x[3]*x[7]*x[10]+0.0653*x[3]*x[8]*x[9]+0.9036*x[4]*x[5]*x[6]+0.6995*x[4]*x[5]*x[7]+0.0888*x[4]*x[5]*x[8]-0.2116*x[4]*x[5]*x[9]-0.1408*x[4]*x[5]*x[10]-0.4274*x[4]*x[6]*x[7]+0.2352*x[4]*x[6]*x[8]-0.4765*x[4]*x[6]*x[9]-0.0971*x[4]*x[6]*x[10]+0.8607*x[4]*x[7]*x[8]+0.0664*x[4]*x[7]*x[9]+0.4425*x[4]*x[7]*x[10]+0.935*x[4]*x[8]*x[9]+0.683*x[4]*x[8]*x[10]-0.8949*x[4]*x[9]*x[10]-0.9251*x[5]*x[6]*x[7]-0.8851*x[5]*x[6]*x[8]-0.7493*x[5]*x[6]*x[9]+0.1085*x[5]*x[6]*x[10]+0.8944*x[5]*x[7]*x[8]-0.6545*x[5]*x[7]*x[9]-0.8911*x[5]*x[7]*x[10]-0.5176*x[5]*x[8]*x[9]+0.6859*x[5]*x[8]*x[10]-0.6987*x[5]*x[9]*x[10]+0.7069*x[6]*x[7]*x[8]-0.6853*x[6]*x[7]*x[9]+0.0691*x[6]*x[7]*x[10]+0.1169*x[6]*x[8]*x[9]+0.3374*x[6]*x[8]*x[10]+0.6134*x[6]*x[9]*x[10]+0.288*x[7]*x[8]*x[9]+0.4656*x[7]*x[8]*x[10]-0.8373*x[7]*x[9]*x[10]+0.3116*x[8]*x[9]*x[10] <= 75.472)

 
