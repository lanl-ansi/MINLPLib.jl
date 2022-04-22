using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[65], 0.0)
set_upper_bound(x[2], 75.0)
set_upper_bound(x[3], 75.0)
set_upper_bound(x[4], 75.0)
set_upper_bound(x[5], 75.0)
set_upper_bound(x[6], 75.0)
set_upper_bound(x[7], 75.0)
set_upper_bound(x[8], 75.0)
set_upper_bound(x[9], 75.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 25.0)
set_upper_bound(x[12], 30.0)
set_upper_bound(x[13], 10.0)
set_upper_bound(x[14], 10.0)
set_upper_bound(x[15], 25.0)
set_upper_bound(x[16], 30.0)
set_upper_bound(x[17], 10.0)
set_upper_bound(x[18], 10.0)
set_upper_bound(x[19], 25.0)
set_upper_bound(x[20], 30.0)
set_upper_bound(x[21], 10.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 10.0)
set_upper_bound(x[43], 25.0)
set_upper_bound(x[44], 30.0)
set_upper_bound(x[45], 10.0)
set_upper_bound(x[46], 10.0)
set_upper_bound(x[47], 25.0)
set_upper_bound(x[48], 30.0)
set_upper_bound(x[49], 10.0)
set_upper_bound(x[50], 10.0)
set_upper_bound(x[51], 25.0)
set_upper_bound(x[52], 30.0)
set_upper_bound(x[53], 10.0)
set_upper_bound(x[54], 10.0)
set_upper_bound(x[55], 25.0)
set_upper_bound(x[56], 30.0)
set_upper_bound(x[57], 10.0)
set_upper_bound(x[58], 10.0)
set_upper_bound(x[59], 25.0)
set_upper_bound(x[60], 30.0)
set_upper_bound(x[61], 10.0)
set_upper_bound(x[62], 10.0)
set_upper_bound(x[63], 25.0)
set_upper_bound(x[64], 30.0)
set_upper_bound(x[65], 10.0)
set_upper_bound(x[66], 10.0)
set_upper_bound(x[67], 25.0)
set_upper_bound(x[68], 30.0)
set_upper_bound(x[69], 10.0)
set_upper_bound(x[70], 10.0)
set_upper_bound(x[71], 25.0)
set_upper_bound(x[72], 30.0)
set_upper_bound(x[73], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+9*x[42]+18*x[43]+8*x[44]+3*x[45]+13*x[46]+22*x[47]+12*x[48]+7*x[49]+14*x[50]+23*x[51]+13*x[52]+8*x[53]+6*x[54]+15*x[55]+5*x[56]+11*x[58]+20*x[59]+10*x[60]+5*x[61]+11*x[62]+20*x[63]+10*x[64]+5*x[65]+7*x[66]+16*x[67]+6*x[68]+x[69]+5*x[70]+14*x[71]+4*x[72]-x[73] == 0.0)
@constraint(m, e2, x[42]+x[43]+x[44]+x[45] <= 75.0)
@constraint(m, e3, x[46]+x[47]+x[48]+x[49] <= 75.0)
@constraint(m, e4, x[50]+x[51]+x[52]+x[53] <= 75.0)
@constraint(m, e5, x[54]+x[55]+x[56]+x[57] <= 75.0)
@constraint(m, e6, x[58]+x[59]+x[60]+x[61] <= 75.0)
@constraint(m, e7, x[62]+x[63]+x[64]+x[65] <= 75.0)
@constraint(m, e8, x[66]+x[67]+x[68]+x[69] <= 75.0)
@constraint(m, e9, x[70]+x[71]+x[72]+x[73] <= 75.0)
@constraint(m, e10, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49] <= 75.0)
@constraint(m, e11, x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61] <= 75.0)
@constraint(m, e12, x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73] <= 75.0)
@constraint(m, e13, x[42]+x[46]+x[50]+x[54]+x[58]+x[62]+x[66]+x[70] <= 10.0)
@constraint(m, e14, x[43]+x[47]+x[51]+x[55]+x[59]+x[63]+x[67]+x[71] <= 25.0)
@constraint(m, e15, x[44]+x[48]+x[52]+x[56]+x[60]+x[64]+x[68]+x[72] <= 30.0)
@constraint(m, e16, x[45]+x[49]+x[53]+x[57]+x[61]+x[65]+x[69]+x[73] <= 10.0)
@constraint(m, e17, -2*x[42]+x[46]+x[50]-2*x[58]-1.2*x[62]+2*x[66] <= 0.0)
@constraint(m, e18, 3*x[42]-2*x[46]+2.5*x[50]-0.3*x[58]-0.3*x[62]-2*x[66] <= 0.0)
@constraint(m, e19, 0.75*x[42]-0.25*x[46]-0.25*x[50]-0.25*x[54]+0.75*x[58]+0.75*x[62]-1.55*x[66]-0.25*x[70] <= 0.0)
@constraint(m, e20, -0.25*x[42]+1.25*x[46]+0.15*x[50]+0.25*x[54]+0.85*x[58]+2.75*x[62]+2.15*x[66]+0.25*x[70] <= 0.0)
@constraint(m, e21, -x[42]-2*x[46]+x[50]-3*x[54]-3*x[58]+0.0999999999999996*x[62]-2.5*x[66]-x[70] <= 0.0)
@constraint(m, e22, 4*x[42]-x[46]+5*x[50]-x[54]+2*x[58]-2*x[62]-2.1*x[66]-3*x[70] <= 0.0)
@constraint(m, e23, -3*x[43]-x[55]-3*x[59]-2.2*x[63]+x[67]-x[71] <= 0.0)
@constraint(m, e24, 3.5*x[43]-1.5*x[47]+3*x[51]+0.5*x[55]+0.2*x[59]+0.2*x[63]-1.5*x[67]+0.5*x[71] <= 0.0)
@constraint(m, e25, 0.5*x[43]-0.5*x[47]-0.5*x[51]-0.5*x[55]+0.5*x[59]+0.5*x[63]-1.8*x[67]-0.5*x[71] <= 0.0)
@constraint(m, e26, -x[43]+0.5*x[47]-0.6*x[51]-0.5*x[55]+0.1*x[59]+2*x[63]+1.4*x[67]-0.5*x[71] <= 0.0)
@constraint(m, e27, -2*x[43]-3*x[47]-4*x[55]-4*x[59]-0.9*x[63]-3.5*x[67]-2*x[71] <= 0.0)
@constraint(m, e28, 3*x[43]-2*x[47]+4*x[51]-2*x[55]+x[59]-3*x[63]-3.1*x[67]-4*x[71] <= 0.0)
@constraint(m, e29, -0.5*x[44]+2.5*x[48]+2.5*x[52]+1.5*x[56]-0.5*x[60]+0.3*x[64]+3.5*x[68]+1.5*x[72] <= 0.0)
@constraint(m, e30, 0.5*x[44]-4.5*x[48]-2.5*x[56]-2.8*x[60]-2.8*x[64]-4.5*x[68]-2.5*x[72] <= 0.0)
@constraint(m, e31, 0.1*x[44]-0.9*x[48]-0.9*x[52]-0.9*x[56]+0.1*x[60]+0.1*x[64]-2.2*x[68]-0.9*x[72] <= 0.0)
@constraint(m, e32, -0.3*x[44]+1.2*x[48]+0.1*x[52]+0.2*x[56]+0.8*x[60]+2.7*x[64]+2.1*x[68]+0.2*x[72] <= 0.0)
@constraint(m, e33, -2*x[44]-3*x[48]-4*x[56]-4*x[60]-0.9*x[64]-3.5*x[68]-2*x[72] <= 0.0)
@constraint(m, e34, 3*x[44]-2*x[48]+4*x[52]-2*x[56]+x[60]-3*x[64]-3.1*x[68]-4*x[72] <= 0.0)
@constraint(m, e35, -2*x[45]+x[49]+x[53]-2*x[61]-1.2*x[65]+2*x[69] <= 0.0)
@constraint(m, e36, 2*x[45]-3*x[49]+1.5*x[53]-x[57]-1.3*x[61]-1.3*x[65]-3*x[69]-x[73] <= 0.0)
@constraint(m, e37, -x[49]-x[53]-x[57]-2.3*x[69]-x[73] <= 0.0)
@constraint(m, e38, -1.3*x[45]+0.2*x[49]-0.9*x[53]-0.8*x[57]-0.2*x[61]+1.7*x[65]+1.1*x[69]-0.8*x[73] <= 0.0)
@constraint(m, e39, -x[45]-2*x[49]+x[53]-3*x[57]-3*x[61]+0.0999999999999996*x[65]-2.5*x[69]-x[73] <= 0.0)
@constraint(m, e40, 3*x[45]-2*x[49]+4*x[53]-2*x[57]+x[61]-3*x[65]-3.1*x[69]-4*x[73] <= 0.0)
@constraint(m, e41, x[22]+x[23] == 1.0)
@constraint(m, e42, x[24]+x[25]+x[26] == 1.0)
@constraint(m, e43, x[27]+x[28]+x[29] == 1.0)
@constraint(m, e44, x[30]+x[31]+x[32]+x[33] == 1.0)
@constraint(m, e45, x[34]+x[35]+x[36]+x[37] == 1.0)
@constraint(m, e46, x[38]+x[39]+x[40]+x[41] == 1.0)
@NLconstraint(m, e47, -x[22]*x[10]+x[42] == 0.0)
@NLconstraint(m, e48, -x[22]*x[11]+x[43] == 0.0)
@NLconstraint(m, e49, -x[22]*x[12]+x[44] == 0.0)
@NLconstraint(m, e50, -x[22]*x[13]+x[45] == 0.0)
@NLconstraint(m, e51, -x[23]*x[10]+x[46] == 0.0)
@NLconstraint(m, e52, -x[23]*x[11]+x[47] == 0.0)
@NLconstraint(m, e53, -x[23]*x[12]+x[48] == 0.0)
@NLconstraint(m, e54, -x[23]*x[13]+x[49] == 0.0)
@NLconstraint(m, e55, -x[24]*x[14]+x[50] == 0.0)
@NLconstraint(m, e56, -x[24]*x[15]+x[51] == 0.0)
@NLconstraint(m, e57, -x[24]*x[16]+x[52] == 0.0)
@NLconstraint(m, e58, -x[24]*x[17]+x[53] == 0.0)
@NLconstraint(m, e59, -x[25]*x[14]+x[54] == 0.0)
@NLconstraint(m, e60, -x[25]*x[15]+x[55] == 0.0)
@NLconstraint(m, e61, -x[25]*x[16]+x[56] == 0.0)
@NLconstraint(m, e62, -x[25]*x[17]+x[57] == 0.0)
@NLconstraint(m, e63, -x[26]*x[14]+x[58] == 0.0)
@NLconstraint(m, e64, -x[26]*x[15]+x[59] == 0.0)
@NLconstraint(m, e65, -x[26]*x[16]+x[60] == 0.0)
@NLconstraint(m, e66, -x[26]*x[17]+x[61] == 0.0)
@NLconstraint(m, e67, -x[27]*x[18]+x[62] == 0.0)
@NLconstraint(m, e68, -x[27]*x[19]+x[63] == 0.0)
@NLconstraint(m, e69, -x[27]*x[20]+x[64] == 0.0)
@NLconstraint(m, e70, -x[27]*x[21]+x[65] == 0.0)
@NLconstraint(m, e71, -x[28]*x[18]+x[66] == 0.0)
@NLconstraint(m, e72, -x[28]*x[19]+x[67] == 0.0)
@NLconstraint(m, e73, -x[28]*x[20]+x[68] == 0.0)
@NLconstraint(m, e74, -x[28]*x[21]+x[69] == 0.0)
@NLconstraint(m, e75, -x[29]*x[18]+x[70] == 0.0)
@NLconstraint(m, e76, -x[29]*x[19]+x[71] == 0.0)
@NLconstraint(m, e77, -x[29]*x[20]+x[72] == 0.0)
@NLconstraint(m, e78, -x[29]*x[21]+x[73] == 0.0)
@NLconstraint(m, e79, -x[30]*x[2]+x[42] == 0.0)
@NLconstraint(m, e80, -x[31]*x[2]+x[43] == 0.0)
@NLconstraint(m, e81, -x[32]*x[2]+x[44] == 0.0)
@NLconstraint(m, e82, -x[33]*x[2]+x[45] == 0.0)
@NLconstraint(m, e83, -x[30]*x[3]+x[46] == 0.0)
@NLconstraint(m, e84, -x[31]*x[3]+x[47] == 0.0)
@NLconstraint(m, e85, -x[32]*x[3]+x[48] == 0.0)
@NLconstraint(m, e86, -x[33]*x[3]+x[49] == 0.0)
@NLconstraint(m, e87, -x[34]*x[4]+x[50] == 0.0)
@NLconstraint(m, e88, -x[35]*x[4]+x[51] == 0.0)
@NLconstraint(m, e89, -x[36]*x[4]+x[52] == 0.0)
@NLconstraint(m, e90, -x[37]*x[4]+x[53] == 0.0)
@NLconstraint(m, e91, -x[34]*x[5]+x[54] == 0.0)
@NLconstraint(m, e92, -x[35]*x[5]+x[55] == 0.0)
@NLconstraint(m, e93, -x[36]*x[5]+x[56] == 0.0)
@NLconstraint(m, e94, -x[37]*x[5]+x[57] == 0.0)
@NLconstraint(m, e95, -x[34]*x[6]+x[58] == 0.0)
@NLconstraint(m, e96, -x[35]*x[6]+x[59] == 0.0)
@NLconstraint(m, e97, -x[36]*x[6]+x[60] == 0.0)
@NLconstraint(m, e98, -x[37]*x[6]+x[61] == 0.0)
@NLconstraint(m, e99, -x[38]*x[7]+x[62] == 0.0)
@NLconstraint(m, e100, -x[39]*x[7]+x[63] == 0.0)
@NLconstraint(m, e101, -x[40]*x[7]+x[64] == 0.0)
@NLconstraint(m, e102, -x[41]*x[7]+x[65] == 0.0)
@NLconstraint(m, e103, -x[38]*x[8]+x[66] == 0.0)
@NLconstraint(m, e104, -x[39]*x[8]+x[67] == 0.0)
@NLconstraint(m, e105, -x[40]*x[8]+x[68] == 0.0)
@NLconstraint(m, e106, -x[41]*x[8]+x[69] == 0.0)
@NLconstraint(m, e107, -x[38]*x[9]+x[70] == 0.0)
@NLconstraint(m, e108, -x[39]*x[9]+x[71] == 0.0)
@NLconstraint(m, e109, -x[40]*x[9]+x[72] == 0.0)
@NLconstraint(m, e110, -x[41]*x[9]+x[73] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
