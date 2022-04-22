using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52]
@variable(m, x[x_Idx])
b_Idx = Any[9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[1], 11.5)
set_upper_bound(x[1], 57.5)
set_lower_bound(x[2], 12.5)
set_upper_bound(x[2], 56.5)
set_lower_bound(x[3], 10.5)
set_upper_bound(x[3], 58.5)
set_lower_bound(x[4], 10.0)
set_upper_bound(x[4], 59.0)
set_lower_bound(x[5], 7.0)
set_upper_bound(x[5], 87.0)
set_lower_bound(x[6], 6.5)
set_upper_bound(x[6], 87.5)
set_lower_bound(x[7], 5.5)
set_upper_bound(x[7], 88.5)
set_lower_bound(x[8], 5.5)
set_upper_bound(x[8], 88.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[41]-240*x[42]-210*x[43]-100*x[44]-150*x[45]-120*x[46]-300*x[47]-240*x[48]-210*x[49]-100*x[50]-150*x[51]-120*x[52]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[41] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[42] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[43] >= 0.0)
@constraint(m, e5, -x[2]+x[3]+x[44] >= 0.0)
@constraint(m, e6, -x[2]+x[4]+x[45] >= 0.0)
@constraint(m, e7, -x[3]+x[4]+x[46] >= 0.0)
@constraint(m, e8, x[1]-x[2]+x[41] >= 0.0)
@constraint(m, e9, x[1]-x[3]+x[42] >= 0.0)
@constraint(m, e10, x[1]-x[4]+x[43] >= 0.0)
@constraint(m, e11, x[2]-x[3]+x[44] >= 0.0)
@constraint(m, e12, x[2]-x[4]+x[45] >= 0.0)
@constraint(m, e13, x[3]-x[4]+x[46] >= 0.0)
@constraint(m, e14, -x[5]+x[6]+x[47] >= 0.0)
@constraint(m, e15, -x[5]+x[7]+x[48] >= 0.0)
@constraint(m, e16, -x[5]+x[8]+x[49] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[50] >= 0.0)
@constraint(m, e18, -x[6]+x[8]+x[51] >= 0.0)
@constraint(m, e19, -x[7]+x[8]+x[52] >= 0.0)
@constraint(m, e20, x[5]-x[6]+x[47] >= 0.0)
@constraint(m, e21, x[5]-x[7]+x[48] >= 0.0)
@constraint(m, e22, x[5]-x[8]+x[49] >= 0.0)
@constraint(m, e23, x[6]-x[7]+x[50] >= 0.0)
@constraint(m, e24, x[6]-x[8]+x[51] >= 0.0)
@constraint(m, e25, x[7]-x[8]+x[52] >= 0.0)
@constraint(m, e26, x[1]-x[2]+51*b[9] <= 45.0)
@constraint(m, e27, x[1]-x[3]+51*b[10] <= 47.0)
@constraint(m, e28, x[1]-x[4]+51*b[11] <= 47.5)
@constraint(m, e29, x[2]-x[3]+51*b[12] <= 46.0)
@constraint(m, e30, x[2]-x[4]+51*b[13] <= 46.5)
@constraint(m, e31, x[3]-x[4]+51*b[14] <= 48.5)
@constraint(m, e32, -x[1]+x[2]+51*b[15] <= 45.0)
@constraint(m, e33, -x[1]+x[3]+51*b[16] <= 47.0)
@constraint(m, e34, -x[1]+x[4]+51*b[17] <= 47.5)
@constraint(m, e35, -x[2]+x[3]+51*b[18] <= 46.0)
@constraint(m, e36, -x[2]+x[4]+51*b[19] <= 46.5)
@constraint(m, e37, -x[3]+x[4]+51*b[20] <= 48.5)
@constraint(m, e38, x[5]-x[6]+86*b[21] <= 80.5)
@constraint(m, e39, x[5]-x[7]+86*b[22] <= 81.5)
@constraint(m, e40, x[5]-x[8]+86*b[23] <= 81.5)
@constraint(m, e41, x[6]-x[7]+86*b[24] <= 82.0)
@constraint(m, e42, x[6]-x[8]+86*b[25] <= 82.0)
@constraint(m, e43, x[7]-x[8]+86*b[26] <= 83.0)
@constraint(m, e44, -x[5]+x[6]+86*b[27] <= 80.5)
@constraint(m, e45, -x[5]+x[7]+86*b[28] <= 81.5)
@constraint(m, e46, -x[5]+x[8]+86*b[29] <= 81.5)
@constraint(m, e47, -x[6]+x[7]+86*b[30] <= 82.0)
@constraint(m, e48, -x[6]+x[8]+86*b[31] <= 82.0)
@constraint(m, e49, -x[7]+x[8]+86*b[32] <= 83.0)
@constraint(m, e50, b[9]+b[15]+b[21]+b[27] == 1.0)
@constraint(m, e51, b[10]+b[16]+b[22]+b[28] == 1.0)
@constraint(m, e52, b[11]+b[17]+b[23]+b[29] == 1.0)
@constraint(m, e53, b[12]+b[18]+b[24]+b[30] == 1.0)
@constraint(m, e54, b[13]+b[19]+b[25]+b[31] == 1.0)
@constraint(m, e55, b[14]+b[20]+b[26]+b[32] == 1.0)
@NLconstraint(m, e56,  ((-17.5)+x[1])^2+ ((-7)+x[5])^2+7964*b[33] <= 8000.0)
@NLconstraint(m, e57,  ((-18.5)+x[2])^2+ ((-7.5)+x[6])^2+7808*b[34] <= 7844.0)
@NLconstraint(m, e58,  ((-16.5)+x[3])^2+ ((-8.5)+x[7])^2+8128*b[35] <= 8164.0)
@NLconstraint(m, e59,  ((-16)+x[4])^2+ ((-8.5)+x[8])^2+8213*b[36] <= 8249.0)
@NLconstraint(m, e60,  ((-52.5)+x[1])^2+ ((-77)+x[5])^2+6481*b[37] <= 6581.0)
@NLconstraint(m, e61,  ((-53.5)+x[2])^2+ ((-77.5)+x[6])^2+6622*b[38] <= 6722.0)
@NLconstraint(m, e62,  ((-51.5)+x[3])^2+ ((-78.5)+x[7])^2+6951.25*b[39] <= 7051.25)
@NLconstraint(m, e63,  ((-51)+x[4])^2+ ((-78.5)+x[8])^2+6910*b[40] <= 7010.0)
@NLconstraint(m, e64,  ((-17.5)+x[1])^2+ ((-13)+x[5])^2+7040*b[33] <= 7076.0)
@NLconstraint(m, e65,  ((-18.5)+x[2])^2+ ((-12.5)+x[6])^2+7033*b[34] <= 7069.0)
@NLconstraint(m, e66,  ((-16.5)+x[3])^2+ ((-11.5)+x[7])^2+7657*b[35] <= 7693.0)
@NLconstraint(m, e67,  ((-16)+x[4])^2+ ((-11.5)+x[8])^2+7742*b[36] <= 7778.0)
@NLconstraint(m, e68,  ((-52.5)+x[1])^2+ ((-83)+x[5])^2+7357*b[37] <= 7457.0)
@NLconstraint(m, e69,  ((-53.5)+x[2])^2+ ((-82.5)+x[6])^2+7357*b[38] <= 7457.0)
@NLconstraint(m, e70,  ((-51.5)+x[3])^2+ ((-81.5)+x[7])^2+7398.25*b[39] <= 7498.25)
@NLconstraint(m, e71,  ((-51)+x[4])^2+ ((-81.5)+x[8])^2+7357*b[40] <= 7457.0)
@NLconstraint(m, e72,  ((-12.5)+x[1])^2+ ((-7)+x[5])^2+8389*b[33] <= 8425.0)
@NLconstraint(m, e73,  ((-11.5)+x[2])^2+ ((-7.5)+x[6])^2+8389*b[34] <= 8425.0)
@NLconstraint(m, e74,  ((-13.5)+x[3])^2+ ((-8.5)+x[7])^2+8389*b[35] <= 8425.0)
@NLconstraint(m, e75,  ((-14)+x[4])^2+ ((-8.5)+x[8])^2+8389*b[36] <= 8425.0)
@NLconstraint(m, e76,  ((-47.5)+x[1])^2+ ((-77)+x[5])^2+6096*b[37] <= 6196.0)
@NLconstraint(m, e77,  ((-46.5)+x[2])^2+ ((-77.5)+x[6])^2+6097*b[38] <= 6197.0)
@NLconstraint(m, e78,  ((-48.5)+x[3])^2+ ((-78.5)+x[7])^2+6711.25*b[39] <= 6811.25)
@NLconstraint(m, e79,  ((-49)+x[4])^2+ ((-78.5)+x[8])^2+6750*b[40] <= 6850.0)
@NLconstraint(m, e80,  ((-12.5)+x[1])^2+ ((-13)+x[5])^2+7465*b[33] <= 7501.0)
@NLconstraint(m, e81,  ((-11.5)+x[2])^2+ ((-12.5)+x[6])^2+7614*b[34] <= 7650.0)
@NLconstraint(m, e82,  ((-13.5)+x[3])^2+ ((-11.5)+x[7])^2+7918*b[35] <= 7954.0)
@NLconstraint(m, e83,  ((-14)+x[4])^2+ ((-11.5)+x[8])^2+7918*b[36] <= 7954.0)
@NLconstraint(m, e84,  ((-47.5)+x[1])^2+ ((-83)+x[5])^2+6972*b[37] <= 7072.0)
@NLconstraint(m, e85,  ((-46.5)+x[2])^2+ ((-82.5)+x[6])^2+6832*b[38] <= 6932.0)
@NLconstraint(m, e86,  ((-48.5)+x[3])^2+ ((-81.5)+x[7])^2+7158.25*b[39] <= 7258.25)
@NLconstraint(m, e87,  ((-49)+x[4])^2+ ((-81.5)+x[8])^2+7197*b[40] <= 7297.0)
@constraint(m, e88, b[33]+b[37] == 1.0)
@constraint(m, e89, b[34]+b[38] == 1.0)
@constraint(m, e90, b[35]+b[39] == 1.0)
@constraint(m, e91, b[36]+b[40] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
