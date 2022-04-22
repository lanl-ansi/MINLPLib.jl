using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54]
@variable(m, x[x_Idx])
b_Idx = Any[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
@variable(m, b[b_Idx], Bin)
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
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
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
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[1], 1000.0)
set_upper_bound(x[2], 1000.0)
set_upper_bound(x[3], 1000.0)
set_upper_bound(x[4], 1000.0)
set_upper_bound(x[5], 1000.0)
set_upper_bound(x[6], 1000.0)
set_upper_bound(x[7], 1000.0)
set_upper_bound(x[8], 1000.0)
set_upper_bound(x[9], 1000.0)
set_upper_bound(x[10], 1000.0)
set_upper_bound(x[11], 1000.0)
set_upper_bound(x[12], 1000.0)
set_upper_bound(x[13], 1000.0)
set_upper_bound(x[14], 1000.0)
set_upper_bound(x[15], 1000.0)
set_upper_bound(x[16], 1000.0)
set_upper_bound(x[17], 1000.0)
set_upper_bound(x[18], 1000.0)
set_upper_bound(x[19], 1000.0)
set_upper_bound(x[20], 1000.0)
set_upper_bound(x[21], 1000.0)
set_upper_bound(x[22], 1000.0)
set_upper_bound(x[23], 1000.0)
set_upper_bound(x[24], 1000.0)
set_upper_bound(x[25], 1000.0)
set_upper_bound(x[26], 1000.0)
set_upper_bound(x[27], 1000.0)
set_upper_bound(x[28], 1000.0)
set_upper_bound(x[29], 1000.0)
set_upper_bound(x[30], 1000.0)
set_upper_bound(x[31], 1000.0)
set_upper_bound(x[32], 1000.0)
set_upper_bound(x[33], 1000.0)
set_upper_bound(x[34], 1000.0)
set_upper_bound(x[35], 1000.0)
set_upper_bound(x[36], 1000.0)
set_upper_bound(x[37], 1000.0)
set_upper_bound(x[38], 1000.0)
set_upper_bound(x[39], 1000.0)
set_upper_bound(x[40], 1000.0)
set_upper_bound(x[41], 1000.0)
set_upper_bound(x[42], 1000.0)
set_upper_bound(x[43], 1000.0)
set_upper_bound(x[44], 1000.0)
set_upper_bound(x[45], 1000.0)
set_upper_bound(x[46], 1000.0)
set_upper_bound(x[47], 1000.0)
set_upper_bound(x[48], 1000.0)
set_upper_bound(x[49], 1000.0)
set_upper_bound(x[50], 1000.0)
set_upper_bound(x[51], 1000.0)
set_upper_bound(x[52], 1000.0)
set_upper_bound(x[53], 1000.0)
set_upper_bound(x[54], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(276.28* (x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42])^2+792.912* (x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48])^2+991.679* (x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54])^2+115.274*x[1]+98.5559*x[2]+142.777*x[3]+33.9886*x[4]+163.087*x[5]+10.4376*x[6]+234.406*x[7]+142.066*x[8]+50.6436*x[9]+123.61*x[10]+242.356*x[11]+135.071*x[12]+10.7347*x[13]+56.0272*x[14]+14.912*x[15]+169.218*x[16]+209.028*x[17]+259.29*x[18]+165.41*x[19]+40.7497*x[20]+124.907*x[21]+18.495*x[22]+95.2789*x[23]+251.899*x[24]+114.185*x[25]+37.8148*x[26]+10.5547*x[27]+52.5162*x[28]+37.4727*x[29]+254.843*x[30]+266.645*x[31]+136.583*x[32]+15.092*x[33]+194.101*x[34]+78.768*x[35]+120.36*x[36]+257.318*x[37]+172.747*x[38]+142.813*x[39]+251.331*x[40]+15.9113*x[41]+48.8251*x[42]+289.116*x[43]+129.705*x[44]+275.621*x[45]+20.2235*x[46]+253.789*x[47]+56.7474*x[48]+201.646*x[49]+164.573*x[50]+295.157*x[51]+151.474*x[52]+221.794*x[53]+278.304*x[54])-2481400*b[64]-2156460*b[65]-2097730*b[66]+objvar == 0.0)
@constraint(m, e2, x[1]+x[3]+x[5]+x[7]+x[9]+x[11]+x[13]+x[15]+x[17] <= 60.0)
@constraint(m, e3, x[2]+x[4]+x[6]+x[8]+x[10]+x[12]+x[14]+x[16]+x[18] <= 60.0)
@constraint(m, e4, x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35] <= 60.0)
@constraint(m, e5, x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]+x[36] <= 60.0)
@constraint(m, e6, x[37]+x[39]+x[41]+x[43]+x[45]+x[47]+x[49]+x[51]+x[53] <= 60.0)
@constraint(m, e7, x[38]+x[40]+x[42]+x[44]+x[46]+x[48]+x[50]+x[52]+x[54] <= 60.0)
@constraint(m, e8, x[1]+x[19]+x[37]-60*b[55] == 0.0)
@constraint(m, e9, x[2]+x[20]+x[38]-60*b[55] == 0.0)
@constraint(m, e10, x[3]+x[21]+x[39]-60*b[56] == 0.0)
@constraint(m, e11, x[4]+x[22]+x[40]-60*b[56] == 0.0)
@constraint(m, e12, x[5]+x[23]+x[41]-60*b[57] == 0.0)
@constraint(m, e13, x[6]+x[24]+x[42]-60*b[57] == 0.0)
@constraint(m, e14, x[7]+x[25]+x[43]-60*b[58] == 0.0)
@constraint(m, e15, x[8]+x[26]+x[44]-60*b[58] == 0.0)
@constraint(m, e16, x[9]+x[27]+x[45]-60*b[59] == 0.0)
@constraint(m, e17, x[10]+x[28]+x[46]-60*b[59] == 0.0)
@constraint(m, e18, x[11]+x[29]+x[47]-60*b[60] == 0.0)
@constraint(m, e19, x[12]+x[30]+x[48]-60*b[60] == 0.0)
@constraint(m, e20, x[13]+x[31]+x[49]-60*b[61] == 0.0)
@constraint(m, e21, x[14]+x[32]+x[50]-60*b[61] == 0.0)
@constraint(m, e22, x[15]+x[33]+x[51]-60*b[62] == 0.0)
@constraint(m, e23, x[16]+x[34]+x[52]-60*b[62] == 0.0)
@constraint(m, e24, x[17]+x[35]+x[53]-60*b[63] == 0.0)
@constraint(m, e25, x[18]+x[36]+x[54]-60*b[63] == 0.0)
@constraint(m, e26, 120*b[55]+120*b[56]+120*b[57]-2749.5*b[64] <= 0.0)
@constraint(m, e27, 120*b[58]+120*b[59]+120*b[60]-2872.94*b[65] <= 0.0)
@constraint(m, e28, 120*b[61]+120*b[62]+120*b[63]-2508.06*b[66] <= 0.0)
@constraint(m, e29, 120*b[55]+120*b[56]+120*b[57]-50*b[64] >= 0.0)
@constraint(m, e30, 120*b[58]+120*b[59]+120*b[60]-50*b[65] >= 0.0)
@constraint(m, e31, 120*b[61]+120*b[62]+120*b[63]-50*b[66] >= 0.0)
@constraint(m, e32, b[55]+b[58]+b[61] == 1.0)
@constraint(m, e33, b[56]+b[59]+b[62] == 1.0)
@constraint(m, e34, b[57]+b[60]+b[63] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
