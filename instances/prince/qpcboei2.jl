using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[89], 7.0)
set_upper_bound(x[90], 7.0)
set_upper_bound(x[91], 2.0)
set_upper_bound(x[92], 2.0)
set_upper_bound(x[93], 7.0)
set_upper_bound(x[94], 7.0)
set_upper_bound(x[95], 2.0)
set_upper_bound(x[96], 2.0)
set_upper_bound(x[97], 7.0)
set_upper_bound(x[98], 7.0)
set_upper_bound(x[99], 2.0)
set_upper_bound(x[100], 2.0)
set_upper_bound(x[101], 14.0)
set_upper_bound(x[102], 2.0)
set_upper_bound(x[103], 7.0)
set_upper_bound(x[104], 2.0)
set_upper_bound(x[105], 7.0)
set_upper_bound(x[106], 2.0)
set_upper_bound(x[107], 7.0)
set_upper_bound(x[108], 2.0)
set_upper_bound(x[109], 7.0)
set_upper_bound(x[110], 7.0)
set_upper_bound(x[111], 2.0)
set_upper_bound(x[112], 2.0)
set_upper_bound(x[113], 7.0)
set_upper_bound(x[114], 7.0)
set_upper_bound(x[115], 2.0)
set_upper_bound(x[116], 2.0)
set_upper_bound(x[117], 7.0)
set_upper_bound(x[118], 2.0)
set_upper_bound(x[119], 7.0)
set_upper_bound(x[120], 7.0)
set_upper_bound(x[121], 2.0)
set_upper_bound(x[122], 2.0)
set_upper_bound(x[123], 14.0)
set_upper_bound(x[124], 2.0)
set_upper_bound(x[125], 14.0)
set_upper_bound(x[126], 2.0)
set_upper_bound(x[127], 7.0)
set_upper_bound(x[128], 2.0)
set_upper_bound(x[129], 14.0)
set_upper_bound(x[130], 2.0)
set_upper_bound(x[131], 7.0)
set_upper_bound(x[132], 7.0)
set_upper_bound(x[133], 7.0)
set_upper_bound(x[134], 7.0)
set_upper_bound(x[135], 14.0)
set_upper_bound(x[136], 7.0)
set_upper_bound(x[137], 14.0)
set_upper_bound(x[138], 7.0)
set_lower_bound(x[139], -100.0)
set_lower_bound(x[141], -90.0)
set_lower_bound(x[142], -45.0)
set_lower_bound(x[143], -45.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.075*x[1]-0.075*x[2]-0.075*x[3]-0.075*x[4]-0.075*x[5]-0.027*x[6]-0.027*x[7]-0.027*x[8]-0.027*x[9]-0.053*x[10]-0.053*x[11]-0.053*x[12]-0.053*x[13]-0.075*x[14]-0.075*x[15]-0.075*x[16]-0.075*x[17]-0.075*x[18]-0.068*x[19]-0.068*x[20]-0.068*x[21]-0.068*x[22]-0.035*x[23]-0.035*x[24]-0.035*x[25]-0.035*x[26]-0.027*x[27]-0.027*x[28]-0.027*x[29]-0.027*x[30]-0.027*x[31]-0.027*x[32]-0.068*x[33]-0.068*x[34]-0.068*x[35]-0.068*x[36]-0.037*x[37]-0.037*x[38]-0.037*x[39]-0.053*x[40]-0.053*x[41]-0.053*x[42]-0.053*x[43]-0.053*x[44]-0.035*x[45]-0.035*x[46]-0.035*x[47]-0.035*x[48]-0.035*x[49]-0.037*x[50]-0.037*x[51]-0.037*x[52]-0.037*x[53]-0.75*x[54]-0.75*x[55]-0.53*x[56]-0.53*x[57]-0.75*x[58]-0.75*x[59]-0.75*x[60]-0.75*x[61]-0.75*x[62]-0.75*x[63]-0.53*x[64]-0.53*x[65]-0.53*x[66]-0.53*x[67]-0.75*x[68]-0.75*x[69]-0.75*x[70]-0.75*x[71]-0.75*x[72]-0.68*x[73]-0.68*x[74]-0.68*x[75]-0.68*x[76]-0.68*x[77]-0.68*x[78]-0.68*x[79]-0.68*x[80]-0.37*x[81]-0.37*x[82]-0.37*x[83]-0.37*x[84]-0.37*x[85]-0.37*x[86]-0.37*x[87] <= 0.0)
@constraint(m, e2, -0.65*x[88]-0.01*x[89]-0.02*x[90]-0.03*x[91]-0.04*x[92]-4.04337*x[93]-1.60964*x[94]-1.93119*x[95]-1.34618*x[96]-1.1*x[97]-1.2*x[98]-1.3*x[99]-2.34647*x[100]-2.36783*x[101]-1.90292*x[102]-1.36416*x[103]-1.14401*x[104]-1.64736*x[105]-1.33312*x[106]-2.55381*x[107]-2.14431*x[108]-3.12679*x[109]-1.18965*x[110]-1.42472*x[111]-1.0003*x[112]-3.12679*x[113]-1.18965*x[114]-1.42472*x[115]-1.0003*x[116]-1.64736*x[117]-1.33312*x[118]-7.17016*x[119]-2.79929*x[120]-3.35591*x[121]-2.34647*x[122]-2.36783*x[123]-1.90292*x[124]-3.27428*x[125]-2.71411*x[126]-1.36416*x[127]-1.14401*x[128]-2.08463*x[129]-1.71382*x[130]-6.07357*x[131]-5.06059*x[132]-5.16712*x[133]-4.24939*x[134]-0.72047*x[135]-0.5698*x[136]-0.72047*x[137]-0.5698*x[138]+0.05*x[139]-0.275*x[140]+0.02889*x[141]+0.03611*x[142]+0.01333*x[143] <= 0.0)
@constraint(m, e3, -7.98429*x[89]-2.51914*x[90]-3.15178*x[91]-1.99337*x[92]-5.83404*x[93]-1.82258*x[94]-2.27351*x[95]-1.41795*x[96]-9.91398*x[97]-3.07692*x[98]-3.83055*x[99]-2.3665*x[100]-3.16965*x[101]-2.4431*x[102]-1.49045*x[103]-1.14359*x[104]-2.21183*x[105]-1.73951*x[106]-2.7448*x[107]-2.09214*x[108]-4.07994*x[109]-1.25435*x[110]-1.55704*x[111]-0.94855*x[112]-4.07994*x[113]-1.25435*x[114]-1.55704*x[115]-0.94855*x[116]-2.21183*x[117]-1.73951*x[118]-9.91398*x[119]-3.07692*x[120]-3.83055*x[121]-2.3665*x[122]-3.16965*x[123]-2.4431*x[124]-3.70262*x[125]-2.79573*x[126]-1.49045*x[127]-1.14359*x[128]-2.44827*x[129]-1.84718*x[130]-6.77953*x[131]-5.16223*x[132]-6.24657*x[133]-4.8096*x[134]-0.95782*x[135]-0.70359*x[136]-0.95782*x[137]-0.70359*x[138] >= -100000.0)
@constraint(m, e4, -x[89]-x[90]-x[91]-x[92]-x[93]-x[94]-x[95]-x[96]-2*x[97]-2*x[98]-2*x[99]-2*x[100]-2*x[101]-2*x[102]-x[103]-x[104]-x[105]-x[106]-2*x[107]-2*x[108]-x[109]-x[110]-x[111]-x[112]-x[113]-x[114]-x[115]-x[116]-x[117]-x[118]-2*x[119]-2*x[120]-2*x[121]-2*x[122]-2*x[123]-2*x[124]-3*x[125]-3*x[126]-x[127]-x[128]-2*x[129]-2*x[130]-5*x[131]-5*x[132]-4*x[133]-4*x[134]-x[135]-x[136]-x[137]-x[138] <= -50.0)
@constraint(m, e5, -0.86441*x[89]-0.86441*x[90]-0.86441*x[91]-0.86441*x[92]-0.56156*x[93]-0.56156*x[94]-0.56156*x[95]-0.56156*x[96]-0.87605*x[97]-0.87605*x[98]-0.87605*x[99]-0.87605*x[100]-0.91637*x[101]-0.91637*x[102]-0.41715*x[103]-0.41715*x[104]-0.7308*x[105]-0.7308*x[106]-0.73165*x[107]-0.73165*x[108]-0.3145*x[109]-0.3145*x[110]-0.3145*x[111]-0.3145*x[112]-0.3145*x[113]-0.3145*x[114]-0.3145*x[115]-0.3145*x[116]-0.7308*x[117]-0.7308*x[118]-0.87605*x[119]-0.87605*x[120]-0.87605*x[121]-0.87605*x[122]-0.91637*x[123]-0.91637*x[124]-0.91722*x[125]-0.91722*x[126]-0.41715*x[127]-0.41715*x[128]-0.60273*x[129]-0.60273*x[130]-1.79328*x[131]-1.79328*x[132]-1.79242*x[133]-1.79242*x[134]-0.18557*x[135]-0.18557*x[136]-0.18557*x[137]-0.18557*x[138] <= 0.0)
@constraint(m, e6, -351.81396*x[89]-113.23743*x[90]-228.55299*x[93]-73.56374*x[94]-356.55371*x[97]-114.76299*x[98]-120.04449*x[101]-54.64705*x[103]-95.73444*x[105]-95.8463*x[107]-128.00075*x[109]-41.19926*x[110]-128.00075*x[113]-41.19926*x[114]-95.73444*x[117]-356.55371*x[119]-114.76299*x[120]-120.04449*x[123]-120.15637*x[125]-54.64705*x[127]-78.95706*x[129]-234.91937*x[131]-234.80756*x[133]-24.31007*x[135]-24.31007*x[137] <= 0.0)
@constraint(m, e7, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53] <= -9431.0)
@constraint(m, e8, -0.86441*x[1]-0.87605*x[2]-0.91637*x[3]-0.91722*x[4]-0.87605*x[5]-0.18557*x[6]-0.18557*x[7]-1.60685*x[8]-0.18557*x[9]-0.56156*x[10]-0.56156*x[11]-0.60273*x[12]-0.56156*x[13]-0.87605*x[14]-0.91637*x[15]-0.91722*x[16]-0.87605*x[17]-0.91637*x[18]-0.7308*x[19]-0.7308*x[20]-0.73165*x[21]-0.7308*x[22]-0.3145*x[23]-0.3145*x[24]-0.3145*x[25]-0.3145*x[26]-0.18557*x[27]-0.18557*x[28]-0.18557*x[29]-1.6077*x[30]-0.18557*x[31]-0.18557*x[32]-0.7308*x[33]-0.7308*x[34]-0.73165*x[35]-0.73165*x[36]-0.41715*x[37]-0.41715*x[38]-0.41715*x[39]-0.56156*x[40]-0.60273*x[41]-0.60273*x[42]-0.56156*x[43]-1.23087*x[44]-0.3145*x[45]-0.3145*x[46]-0.3145*x[47]-0.3145*x[48]-0.3145*x[49]-0.41715*x[50]-0.41715*x[51]-0.41715*x[52]-1.0453*x[53] <= 0.0)
@constraint(m, e9, 0.86441*x[1]+0.87605*x[2]+0.91637*x[3]+0.91722*x[4]+0.87605*x[5]+0.18557*x[6]+0.18557*x[7]+1.60685*x[8]+0.18557*x[9]+0.56156*x[10]+0.56156*x[11]+0.60273*x[12]+0.56156*x[13]+0.87605*x[14]+0.91637*x[15]+0.91722*x[16]+0.87605*x[17]+0.91637*x[18]+0.7308*x[19]+0.7308*x[20]+0.73165*x[21]+0.7308*x[22]+0.3145*x[23]+0.3145*x[24]+0.3145*x[25]+0.3145*x[26]+0.18557*x[27]+0.18557*x[28]+0.18557*x[29]+1.6077*x[30]+0.18557*x[31]+0.18557*x[32]+0.7308*x[33]+0.7308*x[34]+0.73165*x[35]+0.73165*x[36]+0.41715*x[37]+0.41715*x[38]+0.41715*x[39]+0.56156*x[40]+0.60273*x[41]+0.60273*x[42]+0.56156*x[43]+1.23087*x[44]+0.3145*x[45]+0.3145*x[46]+0.3145*x[47]+0.3145*x[48]+0.3145*x[49]+0.41715*x[50]+0.41715*x[51]+0.41715*x[52]+1.0453*x[53]-211.088376*x[89]-67.942458*x[90]-137.131794*x[93]-44.138244*x[94]-213.932226*x[97]-68.857794*x[98]-72.026694*x[101]-32.78823*x[103]-57.440664*x[105]-57.50778*x[107]-76.80045*x[109]-24.719556*x[110]-76.80045*x[113]-24.719556*x[114]-57.440664*x[117]-213.932226*x[119]-68.857794*x[120]-72.026694*x[123]-72.093822*x[125]-32.78823*x[127]-47.374236*x[129]-140.951622*x[131]-140.884536*x[133]-14.586042*x[135]-14.586042*x[137] <= 0.0)
@constraint(m, e10, -25.93224*x[89]-34.57631*x[91]-12.96612*x[92]-16.84665*x[93]-22.4622*x[95]-8.42333*x[96]-26.2816*x[97]-35.04214*x[99]-13.1408*x[100]-13.74556*x[102]-6.25729*x[104]-10.96196*x[106]-10.97477*x[108]-9.43495*x[109]-12.57993*x[111]-4.71747*x[112]-9.43495*x[113]-12.57993*x[115]-4.71747*x[116]-10.96196*x[118]-26.2816*x[119]-35.04214*x[121]-13.1408*x[122]-13.74556*x[124]-13.75836*x[126]-6.25729*x[128]-9.04089*x[130]-26.89915*x[132]-26.88635*x[134]-2.7836*x[136]-2.7836*x[138] <= 0.0)
@constraint(m, e11, -0.86441*x[54]-0.87605*x[55]-0.56156*x[56]-0.56156*x[57]-0.87605*x[58]-0.86441*x[59]-0.87605*x[60]-0.91637*x[61]-0.91722*x[62]-0.87605*x[63]-0.56156*x[64]-0.56156*x[65]-0.60273*x[66]-0.56156*x[67]-0.87605*x[68]-0.91637*x[69]-0.91722*x[70]-0.87605*x[71]-0.91637*x[72]-0.7308*x[73]-0.7308*x[74]-0.73165*x[75]-0.7308*x[76]-0.7308*x[77]-0.7308*x[78]-0.73165*x[79]-0.73165*x[80]-0.41715*x[81]-0.41715*x[82]-0.41715*x[83]-0.41715*x[84]-0.41715*x[85]-0.41715*x[86]-1.0453*x[87] <= 0.0)
@constraint(m, e12, 0.86441*x[54]+0.87605*x[55]+0.56156*x[56]+0.56156*x[57]+0.87605*x[58]+0.86441*x[59]+0.87605*x[60]+0.91637*x[61]+0.91722*x[62]+0.87605*x[63]+0.56156*x[64]+0.56156*x[65]+0.60273*x[66]+0.56156*x[67]+0.87605*x[68]+0.91637*x[69]+0.91722*x[70]+0.87605*x[71]+0.91637*x[72]+0.7308*x[73]+0.7308*x[74]+0.73165*x[75]+0.7308*x[76]+0.7308*x[77]+0.7308*x[78]+0.73165*x[79]+0.73165*x[80]+0.41715*x[81]+0.41715*x[82]+0.41715*x[83]+0.41715*x[84]+0.41715*x[85]+0.41715*x[86]+1.0453*x[87]-12.96612*x[89]-17.288155*x[91]-6.48306*x[92]-8.423325*x[93]-11.2311*x[95]-4.211665*x[96]-13.1408*x[97]-17.52107*x[99]-6.5704*x[100]-6.87278*x[102]-3.128645*x[104]-5.48098*x[106]-5.487385*x[108]-4.717475*x[109]-6.289965*x[111]-2.358735*x[112]-4.717475*x[113]-6.289965*x[115]-2.358735*x[116]-5.48098*x[118]-13.1408*x[119]-17.52107*x[121]-6.5704*x[122]-6.87278*x[124]-6.87918*x[126]-3.128645*x[128]-4.520445*x[130]-13.449575*x[132]-13.443175*x[134]-1.3918*x[136]-1.3918*x[138] <= 0.0)
@constraint(m, e13, x[88]+2.32729*x[89]+1000*x[93]+25*x[97]+1.34295*x[109]+1.34295*x[113]+3.12813*x[119]+x[139] == 30.0)
@constraint(m, e14, 2.10966*x[90]+2000*x[94]+25*x[98]+2.65943*x[101]+1.25093*x[103]+1.85313*x[105]+2.30477*x[107]+1.05384*x[110]+1.05384*x[114]+1.85313*x[117]+2.58202*x[120]+2.65943*x[123]+3.11107*x[125]+1.25093*x[127]+2.05723*x[129]+5.69309*x[131]+5.24145*x[133]+0.8063*x[135]+0.8063*x[137]+x[140]+x[141] == 45.0)
@constraint(m, e15, 2.10966*x[91]+3000*x[95]+26*x[99]+1.05384*x[111]+1.05384*x[115]+2.58202*x[121]+x[142] == 0.0)
@constraint(m, e16, 2.10966*x[92]+1500*x[96]+27*x[100]+2.65943*x[102]+1.25093*x[104]+1.85313*x[106]+2.30477*x[108]+1.05384*x[112]+1.05384*x[116]+1.85313*x[118]+2.58202*x[122]+2.65943*x[124]+3.11107*x[126]+1.25093*x[128]+2.05723*x[130]+5.69309*x[132]+5.24145*x[134]+0.8063*x[136]+0.8063*x[138]+x[143] == 0.0)
@constraint(m, e17, x[1]-305*x[89]-98*x[90] <= 0.0)
@constraint(m, e18, x[54]-12*x[89] <= 0.0)
@constraint(m, e19, x[59]-30*x[91]-11.25*x[92] <= 0.0)
@constraint(m, e20, x[10]-305*x[93]-98*x[94] <= 0.0)
@constraint(m, e21, x[56]-12*x[93] <= 0.0)
@constraint(m, e22, x[64]-30*x[95]-11.25*x[96] <= 0.0)
@constraint(m, e23, x[2]+x[11]-305*x[97]-98*x[98] <= 0.0)
@constraint(m, e24, x[2]+x[45]-305*x[97]-98*x[98] <= 0.0)
@constraint(m, e25, x[55]+x[57]-12*x[97] <= 0.0)
@constraint(m, e26, x[55]-12*x[97] <= 0.0)
@constraint(m, e27, x[60]+x[65]-30*x[99]-11.25*x[100] <= 0.0)
@constraint(m, e28, x[60]-30*x[99]-11.25*x[100] <= 0.0)
@constraint(m, e29, x[3]+x[6]-98*x[101] <= 0.0)
@constraint(m, e30, x[3]+x[33]-98*x[101] <= 0.0)
@constraint(m, e31, x[61]-11.25*x[102] <= 0.0)
@constraint(m, e32, x[61]+x[77]-11.25*x[102] <= 0.0)
@constraint(m, e33, x[37]-98*x[103] <= 0.0)
@constraint(m, e34, x[81]-11.25*x[104] <= 0.0)
@constraint(m, e35, x[34]-98*x[105] <= 0.0)
@constraint(m, e36, x[78]-11.25*x[106] <= 0.0)
@constraint(m, e37, x[35]+x[38]-98*x[107] <= 0.0)
@constraint(m, e38, x[35]+x[46]-98*x[107] <= 0.0)
@constraint(m, e39, x[79]+x[82]-11.25*x[108] <= 0.0)
@constraint(m, e40, x[79]-11.25*x[108] <= 0.0)
@constraint(m, e41, x[47]-305*x[109]-98*x[110] <= 0.0)
@constraint(m, e42, -12*x[109] <= 0.0)
@constraint(m, e43, -30*x[111]-11.25*x[112] <= 0.0)
@constraint(m, e44, x[23]-305*x[113]-98*x[114] <= 0.0)
@constraint(m, e45, -12*x[113] <= 0.0)
@constraint(m, e46, -30*x[115]-11.25*x[116] <= 0.0)
@constraint(m, e47, x[19]-98*x[117] <= 0.0)
@constraint(m, e48, x[73]-11.25*x[118] <= 0.0)
@constraint(m, e49, x[14]+x[24]-305*x[119]-98*x[120] <= 0.0)
@constraint(m, e50, x[14]+x[40]-305*x[119]-98*x[120] <= 0.0)
@constraint(m, e51, x[58]-12*x[119] <= 0.0)
@constraint(m, e52, x[58]-12*x[119] <= 0.0)
@constraint(m, e53, x[68]-30*x[121]-11.25*x[122] <= 0.0)
@constraint(m, e54, x[68]-30*x[121]-11.25*x[122] <= 0.0)
@constraint(m, e55, x[15]+x[20]-98*x[123] <= 0.0)
@constraint(m, e56, x[15]+x[27]-98*x[123] <= 0.0)
@constraint(m, e57, x[69]+x[74]-11.25*x[124] <= 0.0)
@constraint(m, e58, x[69]-11.25*x[124] <= 0.0)
@constraint(m, e59, x[16]+x[21]+x[25]-98*x[125] <= 0.0)
@constraint(m, e60, x[16]+x[21]+x[41]+x[50]-98*x[125] <= 0.0)
@constraint(m, e61, x[16]+x[28]+x[41]-98*x[125] <= 0.0)
@constraint(m, e62, x[70]+x[75]-11.25*x[126] <= 0.0)
@constraint(m, e63, x[70]+x[75]+x[84]-11.25*x[126] <= 0.0)
@constraint(m, e64, x[70]-11.25*x[126] <= 0.0)
@constraint(m, e65, x[51]-98*x[127] <= 0.0)
@constraint(m, e66, x[85]-11.25*x[128] <= 0.0)
@constraint(m, e67, x[42]+x[52]-98*x[129] <= 0.0)
@constraint(m, e68, x[29]+x[42]-98*x[129] <= 0.0)
@constraint(m, e69, x[86]-11.25*x[130] <= 0.0)
@constraint(m, e70, -11.25*x[130] <= 0.0)
@constraint(m, e71, x[4]+x[7]+x[12]-98*x[131] <= 0.0)
@constraint(m, e72, x[4]+x[12]+x[30]+x[36]+x[39]-98*x[131] <= 0.0)
@constraint(m, e73, x[4]+x[30]+x[36]+x[48]-98*x[131] <= 0.0)
@constraint(m, e74, x[17]+x[26]+x[30]-98*x[131] <= 0.0)
@constraint(m, e75, x[17]+x[30]+x[43]-98*x[131] <= 0.0)
@constraint(m, e76, x[62]+x[66]-11.25*x[132] <= 0.0)
@constraint(m, e77, x[62]+x[66]+x[80]+x[83]-11.25*x[132] <= 0.0)
@constraint(m, e78, x[62]+x[80]-11.25*x[132] <= 0.0)
@constraint(m, e79, x[71]-11.25*x[132] <= 0.0)
@constraint(m, e80, x[71]-11.25*x[132] <= 0.0)
@constraint(m, e81, x[5]+x[8]+x[13]-98*x[133] <= 0.0)
@constraint(m, e82, x[5]+x[8]+x[44]+x[49]+x[53]-98*x[133] <= 0.0)
@constraint(m, e83, x[8]+x[18]+x[22]+x[44]+x[53]-98*x[133] <= 0.0)
@constraint(m, e84, x[18]+x[31]+x[44]-98*x[133] <= 0.0)
@constraint(m, e85, x[63]+x[67]-11.25*x[134] <= 0.0)
@constraint(m, e86, x[63]+x[87]-11.25*x[134] <= 0.0)
@constraint(m, e87, x[72]+x[76]+x[87]-11.25*x[134] <= 0.0)
@constraint(m, e88, x[72]-11.25*x[134] <= 0.0)
@constraint(m, e89, x[9]-98*x[135] <= 0.0)
@constraint(m, e90, -11.25*x[136] <= 0.0)
@constraint(m, e91, x[32]-98*x[137] <= 0.0)
@constraint(m, e92, -11.25*x[138] <= 0.0)
@constraint(m, e93, -x[93]-x[94]-x[95]-x[96]-2*x[97]-2*x[98]-2*x[99]-2*x[100]-x[103]-x[104]-2*x[107]-2*x[108]-x[109]-x[110]-x[111]-x[112]-x[113]-x[114]-x[115]-x[116]-2*x[119]-2*x[120]-2*x[121]-2*x[122]-2*x[125]-2*x[126]-x[127]-x[128]-x[129]-x[130]-4*x[131]-4*x[132]-2*x[133]-2*x[134] <= -24.0)
@constraint(m, e94, -x[89]-x[93]-x[97]+x[119] <= 0.0)
@constraint(m, e95, -x[90]-x[94]-x[98]-x[101]+x[120]+x[123]+x[125]+x[129]-x[135]+x[137] <= 0.0)
@constraint(m, e96, -x[91]-x[95]-x[99]+x[121] <= 0.0)
@constraint(m, e97, -x[92]-x[96]-x[100]-x[102]+x[122]+x[124]+x[126]+x[130]-x[136]+x[138] <= 0.0)
@constraint(m, e98, x[89]+x[97]+x[109]-x[113]-x[119] <= 0.0)
@constraint(m, e99, x[90]+x[98]+x[101]+x[105]+x[107]+x[110]-x[114]-x[117]-x[120]-x[123]-x[125] <= 0.0)
@constraint(m, e100, x[91]+x[99]+x[111]-x[115]-x[121] <= 0.0)
@constraint(m, e101, x[92]+x[100]+x[102]+x[106]+x[108]+x[112]-x[116]-x[118]-x[122]-x[124]-x[126] <= 0.0)
@constraint(m, e102, -x[103]-x[105]-x[107]+x[117]+x[127]+x[135]-x[137] <= 0.0)
@constraint(m, e103, -x[104]-x[106]-x[108]+x[118]+x[128]+x[136]-x[138] <= 0.0)
@constraint(m, e104, x[93]-x[109]+x[113] <= 0.0)
@constraint(m, e105, x[94]+x[103]-x[110]+x[114]-x[127]-x[129] <= 0.0)
@constraint(m, e106, x[95]-x[111]+x[115] <= 0.0)
@constraint(m, e107, x[96]+x[104]-x[112]+x[116]-x[128]-x[130] <= 0.0)
@constraint(m, e108, -x[1]-x[2]-x[3]-x[4]-x[5] <= -302.0)
@constraint(m, e109, -x[6]-x[7]-x[8]-x[9] <= -2352.0)
@constraint(m, e110, -x[10]-x[11]-x[12]-x[13] <= -142.0)
@constraint(m, e111, -x[14]-x[15]-x[16]-x[17]-x[18] <= -302.0)
@constraint(m, e112, -x[19]-x[20]-x[21]-x[22] <= -515.0)
@constraint(m, e113, -x[23]-x[24]-x[25]-x[26] <= -619.0)
@constraint(m, e114, -x[27]-x[28]-x[29]-x[30]-x[31]-x[32] <= -2743.0)
@constraint(m, e115, -x[33]-x[34]-x[35]-x[36] <= -712.0)
@constraint(m, e116, -x[37]-x[38]-x[39] <= -517.0)
@constraint(m, e117, -x[40]-x[41]-x[42]-x[43]-x[44] <= -131.0)
@constraint(m, e118, -x[45]-x[46]-x[47]-x[48]-x[49] <= -712.0)
@constraint(m, e119, -x[50]-x[51]-x[52]-x[53] <= -409.0)
@constraint(m, e120, x[1]+x[2]+x[3]+x[4]+x[5] <= 363.0)
@constraint(m, e121, x[6]+x[7]+x[8]+x[9] <= 2823.0)
@constraint(m, e122, x[10]+x[11]+x[12]+x[13] <= 171.0)
@constraint(m, e123, x[14]+x[15]+x[16]+x[17]+x[18] <= 363.0)
@constraint(m, e124, x[19]+x[20]+x[21]+x[22] <= 618.0)
@constraint(m, e125, x[23]+x[24]+x[25]+x[26] <= 743.0)
@constraint(m, e126, x[27]+x[28]+x[29]+x[30]+x[31]+x[32] <= 3292.0)
@constraint(m, e127, x[33]+x[34]+x[35]+x[36] <= 855.0)
@constraint(m, e128, x[37]+x[38]+x[39] <= 621.0)
@constraint(m, e129, x[40]+x[41]+x[42]+x[43]+x[44] <= 158.0)
@constraint(m, e130, x[45]+x[46]+x[47]+x[48]+x[49] <= 855.0)
@constraint(m, e131, x[50]+x[51]+x[52]+x[53] <= 491.0)
@constraint(m, e132, -x[89]-x[90]-x[97]-x[98]-x[101]-x[131]-x[133] <= -3.0)
@constraint(m, e133, -x[101]-x[131]-x[133]-x[135] <= -7.0)
@constraint(m, e134, -x[93]-x[94]-x[97]-x[98]-x[131]-x[133] <= -1.0)
@constraint(m, e135, -x[119]-x[120]-x[123]-x[125]-x[131]-x[133] <= -3.0)
@constraint(m, e136, -x[117]-x[123]-x[125]-x[133] <= -4.0)
@constraint(m, e137, -x[113]-x[114]-x[119]-x[120]-x[125]-x[131] <= -5.0)
@constraint(m, e138, -x[123]-x[125]-x[129]-x[131]-x[133]-x[137] <= -7.0)
@constraint(m, e139, -x[101]-x[105]-x[107]-x[131] <= -5.0)
@constraint(m, e140, -x[103]-x[107]-x[131] <= -4.0)
@constraint(m, e141, -x[119]-x[120]-x[125]-x[129]-x[131]-x[133] <= -1.0)
@constraint(m, e142, -x[97]-x[98]-x[107]-x[109]-x[110]-x[131]-x[133] <= -6.0)
@constraint(m, e143, -x[125]-x[127]-x[129]-x[133] <= -3.0)
@constraint(m, e144, -x[54]-x[55]-x[59]-x[60]-x[61]-x[62]-x[63] <= -12.0)
@constraint(m, e145, -x[56]-x[57]-x[64]-x[65]-x[66]-x[67] <= -16.0)
@constraint(m, e146, -x[58]-x[68]-x[69]-x[70]-x[71]-x[72] <= -24.0)
@constraint(m, e147, -x[73]-x[74]-x[75]-x[76] <= -13.0)
@constraint(m, e148, -x[77]-x[78]-x[79]-x[80] <= -45.0)
@constraint(m, e149, -x[81]-x[82]-x[83] <= -16.0)
@constraint(m, e150, -x[84]-x[85]-x[86]-x[87] <= -5.0)
@constraint(m, e151, x[54]+x[55]+x[59]+x[60]+x[61]+x[62]+x[63] <= 24.0)
@constraint(m, e152, x[56]+x[57]+x[64]+x[65]+x[66]+x[67] <= 19.2)
@constraint(m, e153, x[58]+x[68]+x[69]+x[70]+x[71]+x[72] <= 28.8)
@constraint(m, e154, x[73]+x[74]+x[75]+x[76] <= 15.6)
@constraint(m, e155, x[77]+x[78]+x[79]+x[80] <= 54.0)
@constraint(m, e156, x[81]+x[82]+x[83] <= 19.2)
@constraint(m, e157, x[84]+x[85]+x[86]+x[87] <= 10.0)
@constraint(m, e158, -x[121]-x[122]-x[124]-x[126]-x[132]-x[134] <= -1.0)
@constraint(m, e159, -x[102]-x[106]-x[108]-x[132] <= -2.0)
@NLconstraint(m, e160, -(x[1]*x[1]+1.063380241*x[2]*x[2]+1.126760602*x[3]*x[3]+1.190140843*x[4]*x[4]+1.253521085*x[5]*x[5]+1.316901445*x[6]*x[6]+1.380281687*x[7]*x[7]+1.443661928*x[8]*x[8]+1.507042289*x[9]*x[9]+1.57042253*x[10]*x[10]+1.633802772*x[11]*x[11]+1.697183132*x[12]*x[12]+1.760563374*x[13]*x[13]+1.823943615*x[14]*x[14]+1.887323976*x[15]*x[15]+1.950704217*x[16]*x[16]+2.014084578*x[17]*x[17]+2.077464819*x[18]*x[18]+2.14084506*x[19]*x[19]+2.204225302*x[20]*x[20]+2.267605543*x[21]*x[21]+2.330986023*x[22]*x[22]+2.394366264*x[23]*x[23]+2.457746506*x[24]*x[24]+2.521126747*x[25]*x[25]+2.584506989*x[26]*x[26]+2.64788723*x[27]*x[27]+2.71126771*x[28]*x[28]+2.774647951*x[29]*x[29]+2.838028193*x[30]*x[30]+2.901408434*x[31]*x[31]+2.964788675*x[32]*x[32]+3.028168917*x[33]*x[33]+3.091549397*x[34]*x[34]+3.154929638*x[35]*x[35]+3.218309879*x[36]*x[36]+3.281690121*x[37]*x[37]+3.345070362*x[38]*x[38]+3.408450603*x[39]*x[39]+3.471831083*x[40]*x[40]+3.535211325*x[41]*x[41]+3.598591566*x[42]*x[42]+3.661971807*x[43]*x[43]+3.725352049*x[44]*x[44]+3.78873229*x[45]*x[45]+3.85211277*x[46]*x[46]+3.915493011*x[47]*x[47]+3.978873253*x[48]*x[48]+4.042253494*x[49]*x[49]+4.105633736*x[50]*x[50]+4.169013977*x[51]*x[51]+4.232394218*x[52]*x[52]+4.29577446*x[53]*x[53]+4.359154701*x[54]*x[54]+4.422535419*x[55]*x[55]+4.485915661*x[56]*x[56]+4.549295902*x[57]*x[57]+4.612676144*x[58]*x[58]+4.676056385*x[59]*x[59]+4.739436626*x[60]*x[60]+4.802816868*x[61]*x[61]+4.866197109*x[62]*x[62]+4.929577351*x[63]*x[63]+4.992957592*x[64]*x[64]+5.056337833*x[65]*x[65]+5.119718075*x[66]*x[66]+5.183098793*x[67]*x[67]+5.246479034*x[68]*x[68]+5.309859276*x[69]*x[69]+5.373239517*x[70]*x[70]+5.436619759*x[71]*x[71]+5.5*x[72]*x[72]+5.563380241*x[73]*x[73]+5.626760483*x[74]*x[74]+5.690140724*x[75]*x[75]+5.753520966*x[76]*x[76]+5.816901207*x[77]*x[77]+5.880281925*x[78]*x[78]+5.943662167*x[79]*x[79]+6.007042408*x[80]*x[80]+6.070422649*x[81]*x[81]+6.133802891*x[82]*x[82]+6.197183132*x[83]*x[83]+6.260563374*x[84]*x[84]+6.323943615*x[85]*x[85]+6.387323856*x[86]*x[86]+6.450704098*x[87]*x[87]+6.514084339*x[88]*x[88]+6.577464581*x[139]*x[139]+6.640845299*x[140]*x[140]+6.70422554*x[141]*x[141]+6.767605782*x[142]*x[142]+6.830986023*x[143]*x[143]+6.894366264*x[89]*x[89]+6.957746506*x[90]*x[90]+7.021126747*x[91]*x[91]+7.084506989*x[92]*x[92]+7.14788723*x[93]*x[93]+7.211267471*x[94]*x[94]+7.274647713*x[95]*x[95]+7.338027954*x[96]*x[96]+7.401408672*x[97]*x[97]+7.464788914*x[98]*x[98]+7.528169155*x[99]*x[99]+7.591549397*x[100]*x[100]+7.654929638*x[101]*x[101]+7.718309879*x[102]*x[102]+7.781690121*x[103]*x[103]+7.845070362*x[104]*x[104]+7.908450603*x[105]*x[105]+7.971830845*x[106]*x[106]+8.035211563*x[107]*x[107]+8.098591805*x[108]*x[108]+8.161972046*x[109]*x[109]+8.225352287*x[110]*x[110]+8.288732529*x[111]*x[111]+8.35211277*x[112]*x[112]+8.415493011*x[113]*x[113]+8.478873253*x[114]*x[114]+8.542253494*x[115]*x[115]+8.605633736*x[116]*x[116]+8.669013977*x[117]*x[117]+8.732394218*x[118]*x[118]+8.79577446*x[119]*x[119]+8.859154701*x[120]*x[120]+8.922534943*x[121]*x[121]+8.985915184*x[122]*x[122]+9.049295425*x[123]*x[123]+9.112675667*x[124]*x[124]+9.176055908*x[125]*x[125]+9.23943615*x[126]*x[126]+9.302817345*x[127]*x[127]+9.366197586*x[128]*x[128]+9.429577827*x[129]*x[129]+9.492958069*x[130]*x[130]+9.55633831*x[131]*x[131]+9.619718552*x[132]*x[132]+9.683098793*x[133]*x[133]+9.746479034*x[134]*x[134]+9.809859276*x[135]*x[135]+9.873239517*x[136]*x[136]+9.936619759*x[137]*x[137]+10*x[138]*x[138]-0.075*x[1]-0.075*x[2]-0.075*x[3]-0.075*x[4]-0.075*x[5]-0.027*x[6]-0.027*x[7]-0.027*x[8]-0.027*x[9]-0.053*x[10]-0.053*x[11]-0.053*x[12]-0.053*x[13]-0.075*x[14]-0.075*x[15]-0.075*x[16]-0.075*x[17]-0.075*x[18]-0.068*x[19]-0.068*x[20]-0.068*x[21]-0.068*x[22]-0.035*x[23]-0.035*x[24]-0.035*x[25]-0.035*x[26]-0.027*x[27]-0.027*x[28]-0.027*x[29]-0.027*x[30]-0.027*x[31]-0.027*x[32]-0.068*x[33]-0.068*x[34]-0.068*x[35]-0.068*x[36]-0.037*x[37]-0.037*x[38]-0.037*x[39]-0.053*x[40]-0.053*x[41]-0.053*x[42]-0.053*x[43]-0.053*x[44]-0.035*x[45]-0.035*x[46]-0.035*x[47]-0.035*x[48]-0.035*x[49]-0.037*x[50]-0.037*x[51]-0.037*x[52]-0.037*x[53]-0.75*x[54]-0.75*x[55]-0.53*x[56]-0.53*x[57]-0.75*x[58]-0.75*x[59]-0.75*x[60]-0.75*x[61]-0.75*x[62]-0.75*x[63]-0.53*x[64]-0.53*x[65]-0.53*x[66]-0.53*x[67]-0.75*x[68]-0.75*x[69]-0.75*x[70]-0.75*x[71]-0.75*x[72]-0.68*x[73]-0.68*x[74]-0.68*x[75]-0.68*x[76]-0.68*x[77]-0.68*x[78]-0.68*x[79]-0.68*x[80]-0.37*x[81]-0.37*x[82]-0.37*x[83]-0.37*x[84]-0.37*x[85]-0.37*x[86]-0.37*x[87]+0.65*x[88]-0.05*x[139]+0.275*x[140]-0.02889*x[141]-0.03611*x[142]-0.01333*x[143]+0.01*x[89]+0.02*x[90]+0.03*x[91]+0.04*x[92]+4.04337*x[93]+1.60964*x[94]+1.93119*x[95]+1.34618*x[96]+1.1*x[97]+1.2*x[98]+1.3*x[99]+2.34647*x[100]+2.36783*x[101]+1.90292*x[102]+1.36416*x[103]+1.14401*x[104]+1.64736*x[105]+1.33312*x[106]+2.55381*x[107]+2.14431*x[108]+3.12679*x[109]+1.18965*x[110]+1.42472*x[111]+1.0003*x[112]+3.12679*x[113]+1.18965*x[114]+1.42472*x[115]+1.0003*x[116]+1.64736*x[117]+1.33312*x[118]+7.17016*x[119]+2.79929*x[120]+3.35591*x[121]+2.34647*x[122]+2.36783*x[123]+1.90292*x[124]+3.27428*x[125]+2.71411*x[126]+1.36416*x[127]+1.14401*x[128]+2.08463*x[129]+1.71382*x[130]+6.07357*x[131]+5.06059*x[132]+5.16712*x[133]+4.24939*x[134]+0.72047*x[135]+0.5698*x[136]+0.72047*x[137]+0.5698*x[138])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 