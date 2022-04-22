using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 12.735)
set_upper_bound(x[1], 12.735)
set_upper_bound(x[2], 140.0)
set_upper_bound(x[3], 140.0)
set_upper_bound(x[4], 140.0)
set_upper_bound(x[5], 140.0)
set_upper_bound(x[6], 140.0)
set_upper_bound(x[7], 140.0)
set_upper_bound(x[8], 140.0)
set_upper_bound(x[9], 140.0)
set_upper_bound(x[10], 140.0)
set_upper_bound(x[11], 140.0)
set_upper_bound(x[12], 140.0)
set_upper_bound(x[13], 140.0)
set_upper_bound(x[14], 140.0)
set_upper_bound(x[15], 140.0)
set_upper_bound(x[16], 140.0)
set_upper_bound(x[17], 140.0)
set_upper_bound(x[18], 140.0)
set_upper_bound(x[19], 140.0)
set_upper_bound(x[20], 140.0)
set_upper_bound(x[21], 140.0)
set_upper_bound(x[22], 140.0)
set_upper_bound(x[23], 140.0)
set_upper_bound(x[24], 140.0)
set_upper_bound(x[25], 140.0)
set_upper_bound(x[26], 140.0)
set_upper_bound(x[27], 140.0)
set_upper_bound(x[28], 140.0)
set_upper_bound(x[29], 140.0)
set_upper_bound(x[30], 140.0)
set_upper_bound(x[31], 140.0)
set_upper_bound(x[32], 140.0)
set_upper_bound(x[33], 140.0)
set_lower_bound(x[34], 0.1)
set_upper_bound(x[34], 0.1)
set_lower_bound(x[35], 0.1)
set_upper_bound(x[35], 10000.0)
set_lower_bound(x[36], 0.1)
set_upper_bound(x[36], 10000.0)
set_lower_bound(x[37], 0.1)
set_upper_bound(x[37], 10000.0)
set_lower_bound(x[38], 0.1)
set_upper_bound(x[38], 10000.0)
set_lower_bound(x[39], 0.1)
set_upper_bound(x[39], 10000.0)
set_lower_bound(x[40], 0.1)
set_upper_bound(x[40], 10000.0)
set_lower_bound(x[41], 0.1)
set_upper_bound(x[41], 10000.0)
set_lower_bound(x[42], 0.1)
set_upper_bound(x[42], 10000.0)
set_lower_bound(x[43], 0.1)
set_upper_bound(x[43], 10000.0)
set_lower_bound(x[44], 0.1)
set_upper_bound(x[44], 10000.0)
set_lower_bound(x[45], 0.2)
set_upper_bound(x[45], 0.2)
set_lower_bound(x[46], 0.2)
set_upper_bound(x[46], 10000.0)
set_lower_bound(x[47], 0.2)
set_upper_bound(x[47], 10000.0)
set_lower_bound(x[48], 0.2)
set_upper_bound(x[48], 10000.0)
set_lower_bound(x[49], 0.2)
set_upper_bound(x[49], 10000.0)
set_lower_bound(x[50], 0.2)
set_upper_bound(x[50], 10000.0)
set_lower_bound(x[51], 0.2)
set_upper_bound(x[51], 10000.0)
set_lower_bound(x[52], 0.2)
set_upper_bound(x[52], 10000.0)
set_lower_bound(x[53], 0.2)
set_upper_bound(x[53], 10000.0)
set_lower_bound(x[54], 0.2)
set_upper_bound(x[54], 10000.0)
set_lower_bound(x[55], 0.2)
set_upper_bound(x[55], 10000.0)
set_lower_bound(x[56], 0.01)
set_upper_bound(x[56], 0.01)
set_lower_bound(x[57], 0.01)
set_upper_bound(x[57], 10000.0)
set_lower_bound(x[58], 0.01)
set_upper_bound(x[58], 10000.0)
set_lower_bound(x[59], 0.01)
set_upper_bound(x[59], 10000.0)
set_lower_bound(x[60], 0.01)
set_upper_bound(x[60], 10000.0)
set_lower_bound(x[61], 0.01)
set_upper_bound(x[61], 10000.0)
set_lower_bound(x[62], 0.01)
set_upper_bound(x[62], 10000.0)
set_lower_bound(x[63], 0.01)
set_upper_bound(x[63], 10000.0)
set_lower_bound(x[64], 0.01)
set_upper_bound(x[64], 10000.0)
set_lower_bound(x[65], 0.01)
set_upper_bound(x[65], 10000.0)
set_lower_bound(x[66], 0.01)
set_upper_bound(x[66], 10000.0)
set_lower_bound(x[67], 0.0)
set_upper_bound(x[67], 0.0)
set_upper_bound(x[68], 400.0)
set_upper_bound(x[69], 400.0)
set_upper_bound(x[70], 400.0)
set_upper_bound(x[71], 400.0)
set_upper_bound(x[72], 400.0)
set_upper_bound(x[73], 400.0)
set_upper_bound(x[74], 400.0)
set_upper_bound(x[75], 400.0)
set_upper_bound(x[76], 400.0)
set_upper_bound(x[77], 400.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 30000.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[12]+x[23] >= 12.735)
@constraint(m, e2, x[2]+x[13]+x[24] >= 18.523)
@constraint(m, e3, x[3]+x[14]+x[25] >= 24.42)
@constraint(m, e4, x[4]+x[15]+x[26] >= 30.729)
@constraint(m, e5, x[5]+x[16]+x[27] >= 41.698)
@constraint(m, e6, x[6]+x[17]+x[28] >= 52.802)
@constraint(m, e7, x[7]+x[18]+x[29] >= 65.155)
@constraint(m, e8, x[8]+x[19]+x[30] >= 81.675)
@constraint(m, e9, x[9]+x[20]+x[31] >= 98.667)
@constraint(m, e10, x[10]+x[21]+x[32] >= 115.501)
@constraint(m, e11, x[11]+x[22]+x[33] >= 133.561)
@constraint(m, e12, -0.744093914896725*x[1]+x[2] >= 0.0)
@constraint(m, e13, -0.744093914896725*x[2]+x[3] >= 0.0)
@constraint(m, e14, -0.744093914896725*x[3]+x[4] >= 0.0)
@constraint(m, e15, -0.744093914896725*x[4]+x[5] >= 0.0)
@constraint(m, e16, -0.744093914896725*x[5]+x[6] >= 0.0)
@constraint(m, e17, -0.744093914896725*x[6]+x[7] >= 0.0)
@constraint(m, e18, -0.744093914896725*x[7]+x[8] >= 0.0)
@constraint(m, e19, -0.744093914896725*x[8]+x[9] >= 0.0)
@constraint(m, e20, -0.744093914896725*x[9]+x[10] >= 0.0)
@constraint(m, e21, -0.744093914896725*x[10]+x[11] >= 0.0)
@constraint(m, e22, -0.744093914896725*x[12]+x[13] >= 0.0)
@constraint(m, e23, -0.744093914896725*x[13]+x[14] >= 0.0)
@constraint(m, e24, -0.744093914896725*x[14]+x[15] >= 0.0)
@constraint(m, e25, -0.744093914896725*x[15]+x[16] >= 0.0)
@constraint(m, e26, -0.744093914896725*x[16]+x[17] >= 0.0)
@constraint(m, e27, -0.744093914896725*x[17]+x[18] >= 0.0)
@constraint(m, e28, -0.744093914896725*x[18]+x[19] >= 0.0)
@constraint(m, e29, -0.744093914896725*x[19]+x[20] >= 0.0)
@constraint(m, e30, -0.744093914896725*x[20]+x[21] >= 0.0)
@constraint(m, e31, -0.744093914896725*x[21]+x[22] >= 0.0)
@constraint(m, e32, -0.744093914896725*x[23]+x[24] >= 0.0)
@constraint(m, e33, -0.744093914896725*x[24]+x[25] >= 0.0)
@constraint(m, e34, -0.744093914896725*x[25]+x[26] >= 0.0)
@constraint(m, e35, -0.744093914896725*x[26]+x[27] >= 0.0)
@constraint(m, e36, -0.744093914896725*x[27]+x[28] >= 0.0)
@constraint(m, e37, -0.744093914896725*x[28]+x[29] >= 0.0)
@constraint(m, e38, -0.744093914896725*x[29]+x[30] >= 0.0)
@constraint(m, e39, -0.744093914896725*x[30]+x[31] >= 0.0)
@constraint(m, e40, -0.744093914896725*x[31]+x[32] >= 0.0)
@constraint(m, e41, -0.744093914896725*x[32]+x[33] >= 0.0)
@constraint(m, e42, -4*x[1]+x[2] <= 0.18523)
@constraint(m, e43, -4*x[2]+x[3] <= 0.2442)
@constraint(m, e44, -4*x[3]+x[4] <= 0.30729)
@constraint(m, e45, -4*x[4]+x[5] <= 0.41698)
@constraint(m, e46, -4*x[5]+x[6] <= 0.52802)
@constraint(m, e47, -4*x[6]+x[7] <= 0.65155)
@constraint(m, e48, -4*x[7]+x[8] <= 0.81675)
@constraint(m, e49, -4*x[8]+x[9] <= 0.98667)
@constraint(m, e50, -4*x[9]+x[10] <= 1.15501)
@constraint(m, e51, -4*x[10]+x[11] <= 1.33561)
@constraint(m, e52, -4*x[12]+x[13] <= 0.18523)
@constraint(m, e53, -4*x[13]+x[14] <= 0.2442)
@constraint(m, e54, -4*x[14]+x[15] <= 0.30729)
@constraint(m, e55, -4*x[15]+x[16] <= 0.41698)
@constraint(m, e56, -4*x[16]+x[17] <= 0.52802)
@constraint(m, e57, -4*x[17]+x[18] <= 0.65155)
@constraint(m, e58, -4*x[18]+x[19] <= 0.81675)
@constraint(m, e59, -4*x[19]+x[20] <= 0.98667)
@constraint(m, e60, -4*x[20]+x[21] <= 1.15501)
@constraint(m, e61, -4*x[21]+x[22] <= 1.33561)
@constraint(m, e62, -4*x[23]+x[24] <= 0.18523)
@constraint(m, e63, -4*x[24]+x[25] <= 0.2442)
@constraint(m, e64, -4*x[25]+x[26] <= 0.30729)
@constraint(m, e65, -4*x[26]+x[27] <= 0.41698)
@constraint(m, e66, -4*x[27]+x[28] <= 0.52802)
@constraint(m, e67, -4*x[28]+x[29] <= 0.65155)
@constraint(m, e68, -4*x[29]+x[30] <= 0.81675)
@constraint(m, e69, -4*x[30]+x[31] <= 0.98667)
@constraint(m, e70, -4*x[31]+x[32] <= 1.15501)
@constraint(m, e71, -4*x[32]+x[33] <= 1.33561)
@constraint(m, e72, -5*x[1]-5*x[2]-x[34]+x[35] == 0.0)
@constraint(m, e73, -5*x[2]-5*x[3]-x[35]+x[36] == 0.0)
@constraint(m, e74, -5*x[3]-5*x[4]-x[36]+x[37] == 0.0)
@constraint(m, e75, -5*x[4]-5*x[5]-x[37]+x[38] == 0.0)
@constraint(m, e76, -5*x[5]-5*x[6]-x[38]+x[39] == 0.0)
@constraint(m, e77, -5*x[6]-5*x[7]-x[39]+x[40] == 0.0)
@constraint(m, e78, -5*x[7]-5*x[8]-x[40]+x[41] == 0.0)
@constraint(m, e79, -5*x[8]-5*x[9]-x[41]+x[42] == 0.0)
@constraint(m, e80, -5*x[9]-5*x[10]-x[42]+x[43] == 0.0)
@constraint(m, e81, -5*x[10]-5*x[11]-x[43]+x[44] == 0.0)
@constraint(m, e82, -5*x[12]-5*x[13]-x[45]+x[46] == 0.0)
@constraint(m, e83, -5*x[13]-5*x[14]-x[46]+x[47] == 0.0)
@constraint(m, e84, -5*x[14]-5*x[15]-x[47]+x[48] == 0.0)
@constraint(m, e85, -5*x[15]-5*x[16]-x[48]+x[49] == 0.0)
@constraint(m, e86, -5*x[16]-5*x[17]-x[49]+x[50] == 0.0)
@constraint(m, e87, -5*x[17]-5*x[18]-x[50]+x[51] == 0.0)
@constraint(m, e88, -5*x[18]-5*x[19]-x[51]+x[52] == 0.0)
@constraint(m, e89, -5*x[19]-5*x[20]-x[52]+x[53] == 0.0)
@constraint(m, e90, -5*x[20]-5*x[21]-x[53]+x[54] == 0.0)
@constraint(m, e91, -5*x[21]-5*x[22]-x[54]+x[55] == 0.0)
@constraint(m, e92, -5*x[23]-5*x[24]-x[56]+x[57] == 0.0)
@constraint(m, e93, -5*x[24]-5*x[25]-x[57]+x[58] == 0.0)
@constraint(m, e94, -5*x[25]-5*x[26]-x[58]+x[59] == 0.0)
@constraint(m, e95, -5*x[26]-5*x[27]-x[59]+x[60] == 0.0)
@constraint(m, e96, -5*x[27]-5*x[28]-x[60]+x[61] == 0.0)
@constraint(m, e97, -5*x[28]-5*x[29]-x[61]+x[62] == 0.0)
@constraint(m, e98, -5*x[29]-5*x[30]-x[62]+x[63] == 0.0)
@constraint(m, e99, -5*x[30]-5*x[31]-x[63]+x[64] == 0.0)
@constraint(m, e100, -5*x[31]-5*x[32]-x[64]+x[65] == 0.0)
@constraint(m, e101, -5*x[32]-5*x[33]-x[65]+x[66] == 0.0)
@constraint(m, e102, -0.850412249705536*x[1]-0.850412249705536*x[2]-x[67]+x[68] == 0.0)
@constraint(m, e103, -0.850412249705536*x[2]-0.850412249705536*x[3]-x[68]+x[69] == 0.0)
@constraint(m, e104, -0.850412249705536*x[3]-0.850412249705536*x[4]-x[69]+x[70] == 0.0)
@constraint(m, e105, -0.850412249705536*x[4]-0.850412249705536*x[5]-x[70]+x[71] == 0.0)
@constraint(m, e106, -0.850412249705536*x[5]-0.850412249705536*x[6]-x[71]+x[72] == 0.0)
@constraint(m, e107, -0.850412249705536*x[6]-0.850412249705536*x[7]-x[72]+x[73] == 0.0)
@constraint(m, e108, -0.850412249705536*x[7]-0.850412249705536*x[8]-x[73]+x[74] == 0.0)
@constraint(m, e109, -0.850412249705536*x[8]-0.850412249705536*x[9]-x[74]+x[75] == 0.0)
@constraint(m, e110, -0.850412249705536*x[9]-0.850412249705536*x[10]-x[75]+x[76] == 0.0)
@constraint(m, e111, -0.850412249705536*x[10]-0.850412249705536*x[11]-x[76]+x[77] == 0.0)
@NLconstraint(m, e112, -(15*(5*x[45])^(-0.1)*x[12]+130*(100*x[56])^(-0.3)*x[23]+30*x[12]+30*x[23]+0.613913253540759*(15*(5*x[46])^(-0.1)*x[13]+130*(100*x[57])^(-0.3)*x[24]+30*x[13]+30*x[24])+0.376889482873*(15*(5*x[47])^(-0.1)*x[14]+130*(100*x[58])^(-0.3)*x[25]+30*x[14]+30*x[25])+0.231377448655858*(15*(5*x[48])^(-0.1)*x[15]+130*(100*x[59])^(-0.3)*x[26]+30*x[15]+30*x[26])+0.142045682300278*(15*(5*x[49])^(-0.1)*x[16]+130*(100*x[60])^(-0.3)*x[27]+30*x[16]+30*x[27])+0.0872037269723804*(15*(5*x[50])^(-0.1)*x[17]+130*(100*x[61])^(-0.3)*x[28]+30*x[17]+30*x[28])+0.0535355237464941*(15*(5*x[51])^(-0.1)*x[18]+130*(100*x[62])^(-0.3)*x[29]+30*x[18]+30*x[29])+0.0328661675632188*(15*(5*x[52])^(-0.1)*x[19]+130*(100*x[63])^(-0.3)*x[30]+30*x[19]+30*x[30])+0.0201769758601514*(15*(5*x[53])^(-0.1)*x[20]+130*(100*x[64])^(-0.3)*x[31]+30*x[20]+30*x[31])+0.0123869128969189*(15*(5*x[54])^(-0.1)*x[21]+130*(100*x[65])^(-0.3)*x[32]+30*x[21]+30*x[32])+0.00760448999787347*(15*(5*x[55])^(-0.1)*x[22]+130*(100*x[66])^(-0.3)*x[33]+30*x[22]+30*x[33]))-40*x[1]-24.5565301416304*x[2]-15.07557931492*x[3]-9.25509794623431*x[4]-5.6818272920111*x[5]-3.48814907889522*x[6]-2.14142094985976*x[7]-1.31464670252875*x[8]-0.807079034406055*x[9]-0.495476515876756*x[10]-0.304179599914939*x[11]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
