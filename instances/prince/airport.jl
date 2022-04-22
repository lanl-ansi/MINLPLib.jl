using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84]
@variable(m, -10 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (6.3+x[1])^2+ ((-8)+x[43])^2 <= 0.09)
@NLconstraint(m, e2,  (7.8+x[2])^2+ ((-5.1)+x[44])^2 <= 0.3)
@NLconstraint(m, e3,  (9+x[3])^2+ ((-2)+x[45])^2 <= 0.09)
@NLconstraint(m, e4,  (7.2+x[4])^2+ ((-2.6)+x[46])^2 <= 0.45)
@NLconstraint(m, e5,  (5.7+x[5])^2+ ((-5.5)+x[47])^2 <= 0.5)
@NLconstraint(m, e6,  (1.9+x[6])^2+ ((-7.1)+x[48])^2 <= 0.04)
@NLconstraint(m, e7,  (3.5+x[7])^2+ ((-5.9)+x[49])^2 <= 0.1)
@NLconstraint(m, e8,  (0.5+x[8])^2+ ((-6.6)+x[50])^2 <= 0.02)
@NLconstraint(m, e9,  ((-1.4)+x[9])^2+ ((-6.1)+x[51])^2 <= 0.02)
@NLconstraint(m, e10,  ((-4)+x[10])^2+ ((-5.6)+x[52])^2 <= 0.07)
@NLconstraint(m, e11,  ((-2.1)+x[11])^2+ ((-4.9)+x[53])^2 <= 0.4)
@NLconstraint(m, e12,  ((-5.5)+x[12])^2+ ((-4.7)+x[54])^2 <= 0.045)
@NLconstraint(m, e13,  ((-5.7)+x[13])^2+ ((-4.3)+x[55])^2 <= 0.05)
@NLconstraint(m, e14,  ((-5.7)+x[14])^2+ ((-3.6)+x[56])^2 <= 0.056)
@NLconstraint(m, e15,  ((-3.8)+x[15])^2+ ((-4.1)+x[57])^2 <= 0.36)
@NLconstraint(m, e16,  ((-5.3)+x[16])^2+ ((-3)+x[58])^2 <= 0.08)
@NLconstraint(m, e17,  ((-4.7)+x[17])^2+ ((-2.4)+x[59])^2 <= 0.07)
@NLconstraint(m, e18,  ((-3.3)+x[18])^2+ ((-3)+x[60])^2 <= 0.36)
@NLconstraint(m, e19,  (x[19])^2+ ((-4.7)+x[61])^2 <= 0.67)
@NLconstraint(m, e20,  (1+x[20])^2+ ((-3.4)+x[62])^2 <= 0.38)
@NLconstraint(m, e21,  (0.4+x[21])^2+ ((-2.3)+x[63])^2 <= 0.37)
@NLconstraint(m, e22,  ((-4.2)+x[22])^2+ ((-1.5)+x[64])^2 <= 0.05)
@NLconstraint(m, e23,  ((-3.2)+x[23])^2+ ((-0.5)+x[65])^2 <= 0.4)
@NLconstraint(m, e24,  ((-1.7)+x[24])^2+ (1.7+x[66])^2 <= 0.66)
@NLconstraint(m, e25,  ((-3.3)+x[25])^2+ (2+x[67])^2 <= 0.05)
@NLconstraint(m, e26,  ((-2)+x[26])^2+ (3.1+x[68])^2 <= 0.07)
@NLconstraint(m, e27,  ((-0.7)+x[27])^2+ (3.5+x[69])^2 <= 0.08)
@NLconstraint(m, e28,  ((-0.1)+x[28])^2+ (2.4+x[70])^2 <= 0.3)
@NLconstraint(m, e29,  (0.1+x[29])^2+ (1.3+x[71])^2 <= 0.31)
@NLconstraint(m, e30,  (3.5+x[30])^2+ (x[72])^2 <= 0.49)
@NLconstraint(m, e31,  (4+x[31])^2+ (1.7+x[73])^2 <= 0.09)
@NLconstraint(m, e32,  (2.7+x[32])^2+ (2.1+x[74])^2 <= 0.46)
@NLconstraint(m, e33,  (0.5+x[33])^2+ (0.4+x[75])^2 <= 0.12)
@NLconstraint(m, e34,  (2.9+x[34])^2+ (2.9+x[76])^2 <= 0.07)
@NLconstraint(m, e35,  (1.2+x[35])^2+ (3.4+x[77])^2 <= 0.07)
@NLconstraint(m, e36,  (0.4+x[36])^2+ (4.3+x[78])^2 <= 0.09)
@NLconstraint(m, e37,  (0.1+x[37])^2+ (5.2+x[79])^2 <= 0.05)
@NLconstraint(m, e38,  (1+x[38])^2+ (6.5+x[80])^2 <= 0.13)
@NLconstraint(m, e39,  (1.7+x[39])^2+ (7.5+x[81])^2 <= 0.16)
@NLconstraint(m, e40,  (2.1+x[40])^2+ (6.4+x[82])^2 <= 0.46)
@NLconstraint(m, e41,  (1.8+x[41])^2+ (5.1+x[83])^2 <= 0.25)
@NLconstraint(m, e42,  (x[42])^2+ (x[84])^2 <= 0.1)
@NLconstraint(m, e43, -( (x[1]-x[2])^2+ (x[43]-x[44])^2+ (x[1]-x[3])^2+ (x[43]-x[45])^2+ (x[1]-x[4])^2+ (x[43]-x[46])^2+ (x[1]-x[5])^2+ (x[43]-x[47])^2+ (x[1]-x[6])^2+ (x[43]-x[48])^2+ (x[1]-x[7])^2+ (x[43]-x[49])^2+ (x[1]-x[8])^2+ (x[43]-x[50])^2+ (x[1]-x[9])^2+ (x[43]-x[51])^2+ (x[1]-x[10])^2+ (x[43]-x[52])^2+ (x[1]-x[11])^2+ (x[43]-x[53])^2+ (x[1]-x[12])^2+ (x[43]-x[54])^2+ (x[1]-x[13])^2+ (x[43]-x[55])^2+ (x[1]-x[14])^2+ (x[43]-x[56])^2+ (x[1]-x[15])^2+ (x[43]-x[57])^2+ (x[1]-x[16])^2+ (x[43]-x[58])^2+ (x[1]-x[17])^2+ (x[43]-x[59])^2+ (x[1]-x[18])^2+ (x[43]-x[60])^2+ (x[1]-x[19])^2+ (x[43]-x[61])^2+ (x[1]-x[20])^2+ (x[43]-x[62])^2+ (x[1]-x[21])^2+ (x[43]-x[63])^2+ (x[1]-x[22])^2+ (x[43]-x[64])^2+ (x[1]-x[23])^2+ (x[43]-x[65])^2+ (x[1]-x[24])^2+ (x[43]-x[66])^2+ (x[1]-x[25])^2+ (x[43]-x[67])^2+ (x[1]-x[26])^2+ (x[43]-x[68])^2+ (x[1]-x[27])^2+ (x[43]-x[69])^2+ (x[1]-x[28])^2+ (x[43]-x[70])^2+ (x[1]-x[29])^2+ (x[43]-x[71])^2+ (x[1]-x[30])^2+ (x[43]-x[72])^2+ (x[1]-x[31])^2+ (x[43]-x[73])^2+ (x[1]-x[32])^2+ (x[43]-x[74])^2+ (x[1]-x[33])^2+ (x[43]-x[75])^2+ (x[1]-x[34])^2+ (x[43]-x[76])^2+ (x[1]-x[35])^2+ (x[43]-x[77])^2+ (x[1]-x[36])^2+ (x[43]-x[78])^2+ (x[1]-x[37])^2+ (x[43]-x[79])^2+ (x[1]-x[38])^2+ (x[43]-x[80])^2+ (x[1]-x[39])^2+ (x[43]-x[81])^2+ (x[1]-x[40])^2+ (x[43]-x[82])^2+ (x[1]-x[41])^2+ (x[43]-x[83])^2+ (x[1]-x[42])^2+ (x[43]-x[84])^2+ (x[2]-x[3])^2+ (x[44]-x[45])^2+ (x[2]-x[4])^2+ (x[44]-x[46])^2+ (x[2]-x[5])^2+ (x[44]-x[47])^2+ (x[2]-x[6])^2+ (x[44]-x[48])^2+ (x[2]-x[7])^2+ (x[44]-x[49])^2+ (x[2]-x[8])^2+ (x[44]-x[50])^2+ (x[2]-x[9])^2+ (x[44]-x[51])^2+ (x[2]-x[10])^2+ (x[44]-x[52])^2+ (x[2]-x[11])^2+ (x[44]-x[53])^2+ (x[2]-x[12])^2+ (x[44]-x[54])^2+ (x[2]-x[13])^2+ (x[44]-x[55])^2+ (x[2]-x[14])^2+ (x[44]-x[56])^2+ (x[2]-x[15])^2+ (x[44]-x[57])^2+ (x[2]-x[16])^2+ (x[44]-x[58])^2+ (x[2]-x[17])^2+ (x[44]-x[59])^2+ (x[2]-x[18])^2+ (x[44]-x[60])^2+ (x[2]-x[19])^2+ (x[44]-x[61])^2+ (x[2]-x[20])^2+ (x[44]-x[62])^2+ (x[2]-x[21])^2+ (x[44]-x[63])^2+ (x[2]-x[22])^2+ (x[44]-x[64])^2+ (x[2]-x[23])^2+ (x[44]-x[65])^2+ (x[2]-x[24])^2+ (x[44]-x[66])^2+ (x[2]-x[25])^2+ (x[44]-x[67])^2+ (x[2]-x[26])^2+ (x[44]-x[68])^2+ (x[2]-x[27])^2+ (x[44]-x[69])^2+ (x[2]-x[28])^2+ (x[44]-x[70])^2+ (x[2]-x[29])^2+ (x[44]-x[71])^2+ (x[2]-x[30])^2+ (x[44]-x[72])^2+ (x[2]-x[31])^2+ (x[44]-x[73])^2+ (x[2]-x[32])^2+ (x[44]-x[74])^2+ (x[2]-x[33])^2+ (x[44]-x[75])^2+ (x[2]-x[34])^2+ (x[44]-x[76])^2+ (x[2]-x[35])^2+ (x[44]-x[77])^2+ (x[2]-x[36])^2+ (x[44]-x[78])^2+ (x[2]-x[37])^2+ (x[44]-x[79])^2+ (x[2]-x[38])^2+ (x[44]-x[80])^2+ (x[2]-x[39])^2+ (x[44]-x[81])^2+ (x[2]-x[40])^2+ (x[44]-x[82])^2+ (x[2]-x[41])^2+ (x[44]-x[83])^2+ (x[2]-x[42])^2+ (x[44]-x[84])^2+ (x[3]-x[4])^2+ (x[45]-x[46])^2+ (x[3]-x[5])^2+ (x[45]-x[47])^2+ (x[3]-x[6])^2+ (x[45]-x[48])^2+ (x[3]-x[7])^2+ (x[45]-x[49])^2+ (x[3]-x[8])^2+ (x[45]-x[50])^2+ (x[3]-x[9])^2+ (x[45]-x[51])^2+ (x[3]-x[10])^2+ (x[45]-x[52])^2+ (x[3]-x[11])^2+ (x[45]-x[53])^2+ (x[3]-x[12])^2+ (x[45]-x[54])^2+ (x[3]-x[13])^2+ (x[45]-x[55])^2+ (x[3]-x[14])^2+ (x[45]-x[56])^2+ (x[3]-x[15])^2+ (x[45]-x[57])^2+ (x[3]-x[16])^2+ (x[45]-x[58])^2+ (x[3]-x[17])^2+ (x[45]-x[59])^2+ (x[3]-x[18])^2+ (x[45]-x[60])^2+ (x[3]-x[19])^2+ (x[45]-x[61])^2+ (x[3]-x[20])^2+ (x[45]-x[62])^2+ (x[3]-x[21])^2+ (x[45]-x[63])^2+ (x[3]-x[22])^2+ (x[45]-x[64])^2+ (x[3]-x[23])^2+ (x[45]-x[65])^2+ (x[3]-x[24])^2+ (x[45]-x[66])^2+ (x[3]-x[25])^2+ (x[45]-x[67])^2+ (x[3]-x[26])^2+ (x[45]-x[68])^2+ (x[3]-x[27])^2+ (x[45]-x[69])^2+ (x[3]-x[28])^2+ (x[45]-x[70])^2+ (x[3]-x[29])^2+ (x[45]-x[71])^2+ (x[3]-x[30])^2+ (x[45]-x[72])^2+ (x[3]-x[31])^2+ (x[45]-x[73])^2+ (x[3]-x[32])^2+ (x[45]-x[74])^2+ (x[3]-x[33])^2+ (x[45]-x[75])^2+ (x[3]-x[34])^2+ (x[45]-x[76])^2+ (x[3]-x[35])^2+ (x[45]-x[77])^2+ (x[3]-x[36])^2+ (x[45]-x[78])^2+ (x[3]-x[37])^2+ (x[45]-x[79])^2+ (x[3]-x[38])^2+ (x[45]-x[80])^2+ (x[3]-x[39])^2+ (x[45]-x[81])^2+ (x[3]-x[40])^2+ (x[45]-x[82])^2+ (x[3]-x[41])^2+ (x[45]-x[83])^2+ (x[3]-x[42])^2+ (x[45]-x[84])^2+ (x[4]-x[5])^2+ (x[46]-x[47])^2+ (x[4]-x[6])^2+ (x[46]-x[48])^2+ (x[4]-x[7])^2+ (x[46]-x[49])^2+ (x[4]-x[8])^2+ (x[46]-x[50])^2+ (x[4]-x[9])^2+ (x[46]-x[51])^2+ (x[4]-x[10])^2+ (x[46]-x[52])^2+ (x[4]-x[11])^2+ (x[46]-x[53])^2+ (x[4]-x[12])^2+ (x[46]-x[54])^2+ (x[4]-x[13])^2+ (x[46]-x[55])^2+ (x[4]-x[14])^2+ (x[46]-x[56])^2+ (x[4]-x[15])^2+ (x[46]-x[57])^2+ (x[4]-x[16])^2+ (x[46]-x[58])^2+ (x[4]-x[17])^2+ (x[46]-x[59])^2+ (x[4]-x[18])^2+ (x[46]-x[60])^2+ (x[4]-x[19])^2+ (x[46]-x[61])^2+ (x[4]-x[20])^2+ (x[46]-x[62])^2+ (x[4]-x[21])^2+ (x[46]-x[63])^2+ (x[4]-x[22])^2+ (x[46]-x[64])^2+ (x[4]-x[23])^2+ (x[46]-x[65])^2+ (x[4]-x[24])^2+ (x[46]-x[66])^2+ (x[4]-x[25])^2+ (x[46]-x[67])^2+ (x[4]-x[26])^2+ (x[46]-x[68])^2+ (x[4]-x[27])^2+ (x[46]-x[69])^2+ (x[4]-x[28])^2+ (x[46]-x[70])^2+ (x[4]-x[29])^2+ (x[46]-x[71])^2+ (x[4]-x[30])^2+ (x[46]-x[72])^2+ (x[4]-x[31])^2+ (x[46]-x[73])^2+ (x[4]-x[32])^2+ (x[46]-x[74])^2+ (x[4]-x[33])^2+ (x[46]-x[75])^2+ (x[4]-x[34])^2+ (x[46]-x[76])^2+ (x[4]-x[35])^2+ (x[46]-x[77])^2+ (x[4]-x[36])^2+ (x[46]-x[78])^2+ (x[4]-x[37])^2+ (x[46]-x[79])^2+ (x[4]-x[38])^2+ (x[46]-x[80])^2+ (x[4]-x[39])^2+ (x[46]-x[81])^2+ (x[4]-x[40])^2+ (x[46]-x[82])^2+ (x[4]-x[41])^2+ (x[46]-x[83])^2+ (x[4]-x[42])^2+ (x[46]-x[84])^2+ (x[5]-x[6])^2+ (x[47]-x[48])^2+ (x[5]-x[7])^2+ (x[47]-x[49])^2+ (x[5]-x[8])^2+ (x[47]-x[50])^2+ (x[5]-x[9])^2+ (x[47]-x[51])^2+ (x[5]-x[10])^2+ (x[47]-x[52])^2+ (x[5]-x[11])^2+ (x[47]-x[53])^2+ (x[5]-x[12])^2+ (x[47]-x[54])^2+ (x[5]-x[13])^2+ (x[47]-x[55])^2+ (x[5]-x[14])^2+ (x[47]-x[56])^2+ (x[5]-x[15])^2+ (x[47]-x[57])^2+ (x[5]-x[16])^2+ (x[47]-x[58])^2+ (x[5]-x[17])^2+ (x[47]-x[59])^2+ (x[5]-x[18])^2+ (x[47]-x[60])^2+ (x[5]-x[19])^2+ (x[47]-x[61])^2+ (x[5]-x[20])^2+ (x[47]-x[62])^2+ (x[5]-x[21])^2+ (x[47]-x[63])^2+ (x[5]-x[22])^2+ (x[47]-x[64])^2+ (x[5]-x[23])^2+ (x[47]-x[65])^2+ (x[5]-x[24])^2+ (x[47]-x[66])^2+ (x[5]-x[25])^2+ (x[47]-x[67])^2+ (x[5]-x[26])^2+ (x[47]-x[68])^2+ (x[5]-x[27])^2+ (x[47]-x[69])^2+ (x[5]-x[28])^2+ (x[47]-x[70])^2+ (x[5]-x[29])^2+ (x[47]-x[71])^2+ (x[5]-x[30])^2+ (x[47]-x[72])^2+ (x[5]-x[31])^2+ (x[47]-x[73])^2+ (x[5]-x[32])^2+ (x[47]-x[74])^2+ (x[5]-x[33])^2+ (x[47]-x[75])^2+ (x[5]-x[34])^2+ (x[47]-x[76])^2+ (x[5]-x[35])^2+ (x[47]-x[77])^2+ (x[5]-x[36])^2+ (x[47]-x[78])^2+ (x[5]-x[37])^2+ (x[47]-x[79])^2+ (x[5]-x[38])^2+ (x[47]-x[80])^2+ (x[5]-x[39])^2+ (x[47]-x[81])^2+ (x[5]-x[40])^2+ (x[47]-x[82])^2+ (x[5]-x[41])^2+ (x[47]-x[83])^2+ (x[5]-x[42])^2+ (x[47]-x[84])^2+ (x[6]-x[7])^2+ (x[48]-x[49])^2+ (x[6]-x[8])^2+ (x[48]-x[50])^2+ (x[6]-x[9])^2+ (x[48]-x[51])^2+ (x[6]-x[10])^2+ (x[48]-x[52])^2+ (x[6]-x[11])^2+ (x[48]-x[53])^2+ (x[6]-x[12])^2+ (x[48]-x[54])^2+ (x[6]-x[13])^2+ (x[48]-x[55])^2+ (x[6]-x[14])^2+ (x[48]-x[56])^2+ (x[6]-x[15])^2+ (x[48]-x[57])^2+ (x[6]-x[16])^2+ (x[48]-x[58])^2+ (x[6]-x[17])^2+ (x[48]-x[59])^2+ (x[6]-x[18])^2+ (x[48]-x[60])^2+ (x[6]-x[19])^2+ (x[48]-x[61])^2+ (x[6]-x[20])^2+ (x[48]-x[62])^2+ (x[6]-x[21])^2+ (x[48]-x[63])^2+ (x[6]-x[22])^2+ (x[48]-x[64])^2+ (x[6]-x[23])^2+ (x[48]-x[65])^2+ (x[6]-x[24])^2+ (x[48]-x[66])^2+ (x[6]-x[25])^2+ (x[48]-x[67])^2+ (x[6]-x[26])^2+ (x[48]-x[68])^2+ (x[6]-x[27])^2+ (x[48]-x[69])^2+ (x[6]-x[28])^2+ (x[48]-x[70])^2+ (x[6]-x[29])^2+ (x[48]-x[71])^2+ (x[6]-x[30])^2+ (x[48]-x[72])^2+ (x[6]-x[31])^2+ (x[48]-x[73])^2+ (x[6]-x[32])^2+ (x[48]-x[74])^2+ (x[6]-x[33])^2+ (x[48]-x[75])^2+ (x[6]-x[34])^2+ (x[48]-x[76])^2+ (x[6]-x[35])^2+ (x[48]-x[77])^2+ (x[6]-x[36])^2+ (x[48]-x[78])^2+ (x[6]-x[37])^2+ (x[48]-x[79])^2+ (x[6]-x[38])^2+ (x[48]-x[80])^2+ (x[6]-x[39])^2+ (x[48]-x[81])^2+ (x[6]-x[40])^2+ (x[48]-x[82])^2+ (x[6]-x[41])^2+ (x[48]-x[83])^2+ (x[6]-x[42])^2+ (x[48]-x[84])^2+ (x[7]-x[8])^2+ (x[49]-x[50])^2+ (x[7]-x[9])^2+ (x[49]-x[51])^2+ (x[7]-x[10])^2+ (x[49]-x[52])^2+ (x[7]-x[11])^2+ (x[49]-x[53])^2+ (x[7]-x[12])^2+ (x[49]-x[54])^2+ (x[7]-x[13])^2+ (x[49]-x[55])^2+ (x[7]-x[14])^2+ (x[49]-x[56])^2+ (x[7]-x[15])^2+ (x[49]-x[57])^2+ (x[7]-x[16])^2+ (x[49]-x[58])^2+ (x[7]-x[17])^2+ (x[49]-x[59])^2+ (x[7]-x[18])^2+ (x[49]-x[60])^2+ (x[7]-x[19])^2+ (x[49]-x[61])^2+ (x[7]-x[20])^2+ (x[49]-x[62])^2+ (x[7]-x[21])^2+ (x[49]-x[63])^2+ (x[7]-x[22])^2+ (x[49]-x[64])^2+ (x[7]-x[23])^2+ (x[49]-x[65])^2+ (x[7]-x[24])^2+ (x[49]-x[66])^2+ (x[7]-x[25])^2+ (x[49]-x[67])^2+ (x[7]-x[26])^2+ (x[49]-x[68])^2+ (x[7]-x[27])^2+ (x[49]-x[69])^2+ (x[7]-x[28])^2+ (x[49]-x[70])^2+ (x[7]-x[29])^2+ (x[49]-x[71])^2+ (x[7]-x[30])^2+ (x[49]-x[72])^2+ (x[7]-x[31])^2+ (x[49]-x[73])^2+ (x[7]-x[32])^2+ (x[49]-x[74])^2+ (x[7]-x[33])^2+ (x[49]-x[75])^2+ (x[7]-x[34])^2+ (x[49]-x[76])^2+ (x[7]-x[35])^2+ (x[49]-x[77])^2+ (x[7]-x[36])^2+ (x[49]-x[78])^2+ (x[7]-x[37])^2+ (x[49]-x[79])^2+ (x[7]-x[38])^2+ (x[49]-x[80])^2+ (x[7]-x[39])^2+ (x[49]-x[81])^2+ (x[7]-x[40])^2+ (x[49]-x[82])^2+ (x[7]-x[41])^2+ (x[49]-x[83])^2+ (x[7]-x[42])^2+ (x[49]-x[84])^2+ (x[8]-x[9])^2+ (x[50]-x[51])^2+ (x[8]-x[10])^2+ (x[50]-x[52])^2+ (x[8]-x[11])^2+ (x[50]-x[53])^2+ (x[8]-x[12])^2+ (x[50]-x[54])^2+ (x[8]-x[13])^2+ (x[50]-x[55])^2+ (x[8]-x[14])^2+ (x[50]-x[56])^2+ (x[8]-x[15])^2+ (x[50]-x[57])^2+ (x[8]-x[16])^2+ (x[50]-x[58])^2+ (x[8]-x[17])^2+ (x[50]-x[59])^2+ (x[8]-x[18])^2+ (x[50]-x[60])^2+ (x[8]-x[19])^2+ (x[50]-x[61])^2+ (x[8]-x[20])^2+ (x[50]-x[62])^2+ (x[8]-x[21])^2+ (x[50]-x[63])^2+ (x[8]-x[22])^2+ (x[50]-x[64])^2+ (x[8]-x[23])^2+ (x[50]-x[65])^2+ (x[8]-x[24])^2+ (x[50]-x[66])^2+ (x[8]-x[25])^2+ (x[50]-x[67])^2+ (x[8]-x[26])^2+ (x[50]-x[68])^2+ (x[8]-x[27])^2+ (x[50]-x[69])^2+ (x[8]-x[28])^2+ (x[50]-x[70])^2+ (x[8]-x[29])^2+ (x[50]-x[71])^2+ (x[8]-x[30])^2+ (x[50]-x[72])^2+ (x[8]-x[31])^2+ (x[50]-x[73])^2+ (x[8]-x[32])^2+ (x[50]-x[74])^2+ (x[8]-x[33])^2+ (x[50]-x[75])^2+ (x[8]-x[34])^2+ (x[50]-x[76])^2+ (x[8]-x[35])^2+ (x[50]-x[77])^2+ (x[8]-x[36])^2+ (x[50]-x[78])^2+ (x[8]-x[37])^2+ (x[50]-x[79])^2+ (x[8]-x[38])^2+ (x[50]-x[80])^2+ (x[8]-x[39])^2+ (x[50]-x[81])^2+ (x[8]-x[40])^2+ (x[50]-x[82])^2+ (x[8]-x[41])^2+ (x[50]-x[83])^2+ (x[8]-x[42])^2+ (x[50]-x[84])^2+ (x[9]-x[10])^2+ (x[51]-x[52])^2+ (x[9]-x[11])^2+ (x[51]-x[53])^2+ (x[9]-x[12])^2+ (x[51]-x[54])^2+ (x[9]-x[13])^2+ (x[51]-x[55])^2+ (x[9]-x[14])^2+ (x[51]-x[56])^2+ (x[9]-x[15])^2+ (x[51]-x[57])^2+ (x[9]-x[16])^2+ (x[51]-x[58])^2+ (x[9]-x[17])^2+ (x[51]-x[59])^2+ (x[9]-x[18])^2+ (x[51]-x[60])^2+ (x[9]-x[19])^2+ (x[51]-x[61])^2+ (x[9]-x[20])^2+ (x[51]-x[62])^2+ (x[9]-x[21])^2+ (x[51]-x[63])^2+ (x[9]-x[22])^2+ (x[51]-x[64])^2+ (x[9]-x[23])^2+ (x[51]-x[65])^2+ (x[9]-x[24])^2+ (x[51]-x[66])^2+ (x[9]-x[25])^2+ (x[51]-x[67])^2+ (x[9]-x[26])^2+ (x[51]-x[68])^2+ (x[9]-x[27])^2+ (x[51]-x[69])^2+ (x[9]-x[28])^2+ (x[51]-x[70])^2+ (x[9]-x[29])^2+ (x[51]-x[71])^2+ (x[9]-x[30])^2+ (x[51]-x[72])^2+ (x[9]-x[31])^2+ (x[51]-x[73])^2+ (x[9]-x[32])^2+ (x[51]-x[74])^2+ (x[9]-x[33])^2+ (x[51]-x[75])^2+ (x[9]-x[34])^2+ (x[51]-x[76])^2+ (x[9]-x[35])^2+ (x[51]-x[77])^2+ (x[9]-x[36])^2+ (x[51]-x[78])^2+ (x[9]-x[37])^2+ (x[51]-x[79])^2+ (x[9]-x[38])^2+ (x[51]-x[80])^2+ (x[9]-x[39])^2+ (x[51]-x[81])^2+ (x[9]-x[40])^2+ (x[51]-x[82])^2+ (x[9]-x[41])^2+ (x[51]-x[83])^2+ (x[9]-x[42])^2+ (x[51]-x[84])^2+ (x[10]-x[11])^2+ (x[52]-x[53])^2+ (x[10]-x[12])^2+ (x[52]-x[54])^2+ (x[10]-x[13])^2+ (x[52]-x[55])^2+ (x[10]-x[14])^2+ (x[52]-x[56])^2+ (x[10]-x[15])^2+ (x[52]-x[57])^2+ (x[10]-x[16])^2+ (x[52]-x[58])^2+ (x[10]-x[17])^2+ (x[52]-x[59])^2+ (x[10]-x[18])^2+ (x[52]-x[60])^2+ (x[10]-x[19])^2+ (x[52]-x[61])^2+ (x[10]-x[20])^2+ (x[52]-x[62])^2+ (x[10]-x[21])^2+ (x[52]-x[63])^2+ (x[10]-x[22])^2+ (x[52]-x[64])^2+ (x[10]-x[23])^2+ (x[52]-x[65])^2+ (x[10]-x[24])^2+ (x[52]-x[66])^2+ (x[10]-x[25])^2+ (x[52]-x[67])^2+ (x[10]-x[26])^2+ (x[52]-x[68])^2+ (x[10]-x[27])^2+ (x[52]-x[69])^2+ (x[10]-x[28])^2+ (x[52]-x[70])^2+ (x[10]-x[29])^2+ (x[52]-x[71])^2+ (x[10]-x[30])^2+ (x[52]-x[72])^2+ (x[10]-x[31])^2+ (x[52]-x[73])^2+ (x[10]-x[32])^2+ (x[52]-x[74])^2+ (x[10]-x[33])^2+ (x[52]-x[75])^2+ (x[10]-x[34])^2+ (x[52]-x[76])^2+ (x[10]-x[35])^2+ (x[52]-x[77])^2+ (x[10]-x[36])^2+ (x[52]-x[78])^2+ (x[10]-x[37])^2+ (x[52]-x[79])^2+ (x[10]-x[38])^2+ (x[52]-x[80])^2+ (x[10]-x[39])^2+ (x[52]-x[81])^2+ (x[10]-x[40])^2+ (x[52]-x[82])^2+ (x[10]-x[41])^2+ (x[52]-x[83])^2+ (x[10]-x[42])^2+ (x[52]-x[84])^2+ (x[11]-x[12])^2+ (x[53]-x[54])^2+ (x[11]-x[13])^2+ (x[53]-x[55])^2+ (x[11]-x[14])^2+ (x[53]-x[56])^2+ (x[11]-x[15])^2+ (x[53]-x[57])^2+ (x[11]-x[16])^2+ (x[53]-x[58])^2+ (x[11]-x[17])^2+ (x[53]-x[59])^2+ (x[11]-x[18])^2+ (x[53]-x[60])^2+ (x[11]-x[19])^2+ (x[53]-x[61])^2+ (x[11]-x[20])^2+ (x[53]-x[62])^2+ (x[11]-x[21])^2+ (x[53]-x[63])^2+ (x[11]-x[22])^2+ (x[53]-x[64])^2+ (x[11]-x[23])^2+ (x[53]-x[65])^2+ (x[11]-x[24])^2+ (x[53]-x[66])^2+ (x[11]-x[25])^2+ (x[53]-x[67])^2+ (x[11]-x[26])^2+ (x[53]-x[68])^2+ (x[11]-x[27])^2+ (x[53]-x[69])^2+ (x[11]-x[28])^2+ (x[53]-x[70])^2+ (x[11]-x[29])^2+ (x[53]-x[71])^2+ (x[11]-x[30])^2+ (x[53]-x[72])^2+ (x[11]-x[31])^2+ (x[53]-x[73])^2+ (x[11]-x[32])^2+ (x[53]-x[74])^2+ (x[11]-x[33])^2+ (x[53]-x[75])^2+ (x[11]-x[34])^2+ (x[53]-x[76])^2+ (x[11]-x[35])^2+ (x[53]-x[77])^2+ (x[11]-x[36])^2+ (x[53]-x[78])^2+ (x[11]-x[37])^2+ (x[53]-x[79])^2+ (x[11]-x[38])^2+ (x[53]-x[80])^2+ (x[11]-x[39])^2+ (x[53]-x[81])^2+ (x[11]-x[40])^2+ (x[53]-x[82])^2+ (x[11]-x[41])^2+ (x[53]-x[83])^2+ (x[11]-x[42])^2+ (x[53]-x[84])^2+ (x[12]-x[13])^2+ (x[54]-x[55])^2+ (x[12]-x[14])^2+ (x[54]-x[56])^2+ (x[12]-x[15])^2+ (x[54]-x[57])^2+ (x[12]-x[16])^2+ (x[54]-x[58])^2+ (x[12]-x[17])^2+ (x[54]-x[59])^2+ (x[12]-x[18])^2+ (x[54]-x[60])^2+ (x[12]-x[19])^2+ (x[54]-x[61])^2+ (x[12]-x[20])^2+ (x[54]-x[62])^2+ (x[12]-x[21])^2+ (x[54]-x[63])^2+ (x[12]-x[22])^2+ (x[54]-x[64])^2+ (x[12]-x[23])^2+ (x[54]-x[65])^2+ (x[12]-x[24])^2+ (x[54]-x[66])^2+ (x[12]-x[25])^2+ (x[54]-x[67])^2+ (x[12]-x[26])^2+ (x[54]-x[68])^2+ (x[12]-x[27])^2+ (x[54]-x[69])^2+ (x[12]-x[28])^2+ (x[54]-x[70])^2+ (x[12]-x[29])^2+ (x[54]-x[71])^2+ (x[12]-x[30])^2+ (x[54]-x[72])^2+ (x[12]-x[31])^2+ (x[54]-x[73])^2+ (x[12]-x[32])^2+ (x[54]-x[74])^2+ (x[12]-x[33])^2+ (x[54]-x[75])^2+ (x[12]-x[34])^2+ (x[54]-x[76])^2+ (x[12]-x[35])^2+ (x[54]-x[77])^2+ (x[12]-x[36])^2+ (x[54]-x[78])^2+ (x[12]-x[37])^2+ (x[54]-x[79])^2+ (x[12]-x[38])^2+ (x[54]-x[80])^2+ (x[12]-x[39])^2+ (x[54]-x[81])^2+ (x[12]-x[40])^2+ (x[54]-x[82])^2+ (x[12]-x[41])^2+ (x[54]-x[83])^2+ (x[12]-x[42])^2+ (x[54]-x[84])^2+ (x[13]-x[14])^2+ (x[55]-x[56])^2+ (x[13]-x[15])^2+ (x[55]-x[57])^2+ (x[13]-x[16])^2+ (x[55]-x[58])^2+ (x[13]-x[17])^2+ (x[55]-x[59])^2+ (x[13]-x[18])^2+ (x[55]-x[60])^2+ (x[13]-x[19])^2+ (x[55]-x[61])^2+ (x[13]-x[20])^2+ (x[55]-x[62])^2+ (x[13]-x[21])^2+ (x[55]-x[63])^2+ (x[13]-x[22])^2+ (x[55]-x[64])^2+ (x[13]-x[23])^2+ (x[55]-x[65])^2+ (x[13]-x[24])^2+ (x[55]-x[66])^2+ (x[13]-x[25])^2+ (x[55]-x[67])^2+ (x[13]-x[26])^2+ (x[55]-x[68])^2+ (x[13]-x[27])^2+ (x[55]-x[69])^2+ (x[13]-x[28])^2+ (x[55]-x[70])^2+ (x[13]-x[29])^2+ (x[55]-x[71])^2+ (x[13]-x[30])^2+ (x[55]-x[72])^2+ (x[13]-x[31])^2+ (x[55]-x[73])^2+ (x[13]-x[32])^2+ (x[55]-x[74])^2+ (x[13]-x[33])^2+ (x[55]-x[75])^2+ (x[13]-x[34])^2+ (x[55]-x[76])^2+ (x[13]-x[35])^2+ (x[55]-x[77])^2+ (x[13]-x[36])^2+ (x[55]-x[78])^2+ (x[13]-x[37])^2+ (x[55]-x[79])^2+ (x[13]-x[38])^2+ (x[55]-x[80])^2+ (x[13]-x[39])^2+ (x[55]-x[81])^2+ (x[13]-x[40])^2+ (x[55]-x[82])^2+ (x[13]-x[41])^2+ (x[55]-x[83])^2+ (x[13]-x[42])^2+ (x[55]-x[84])^2+ (x[14]-x[15])^2+ (x[56]-x[57])^2+ (x[14]-x[16])^2+ (x[56]-x[58])^2+ (x[14]-x[17])^2+ (x[56]-x[59])^2+ (x[14]-x[18])^2+ (x[56]-x[60])^2+ (x[14]-x[19])^2+ (x[56]-x[61])^2+ (x[14]-x[20])^2+ (x[56]-x[62])^2+ (x[14]-x[21])^2+ (x[56]-x[63])^2+ (x[14]-x[22])^2+ (x[56]-x[64])^2+ (x[14]-x[23])^2+ (x[56]-x[65])^2+ (x[14]-x[24])^2+ (x[56]-x[66])^2+ (x[14]-x[25])^2+ (x[56]-x[67])^2+ (x[14]-x[26])^2+ (x[56]-x[68])^2+ (x[14]-x[27])^2+ (x[56]-x[69])^2+ (x[14]-x[28])^2+ (x[56]-x[70])^2+ (x[14]-x[29])^2+ (x[56]-x[71])^2+ (x[14]-x[30])^2+ (x[56]-x[72])^2+ (x[14]-x[31])^2+ (x[56]-x[73])^2+ (x[14]-x[32])^2+ (x[56]-x[74])^2+ (x[14]-x[33])^2+ (x[56]-x[75])^2+ (x[14]-x[34])^2+ (x[56]-x[76])^2+ (x[14]-x[35])^2+ (x[56]-x[77])^2+ (x[14]-x[36])^2+ (x[56]-x[78])^2+ (x[14]-x[37])^2+ (x[56]-x[79])^2+ (x[14]-x[38])^2+ (x[56]-x[80])^2+ (x[14]-x[39])^2+ (x[56]-x[81])^2+ (x[14]-x[40])^2+ (x[56]-x[82])^2+ (x[14]-x[41])^2+ (x[56]-x[83])^2+ (x[14]-x[42])^2+ (x[56]-x[84])^2+ (x[15]-x[16])^2+ (x[57]-x[58])^2+ (x[15]-x[17])^2+ (x[57]-x[59])^2+ (x[15]-x[18])^2+ (x[57]-x[60])^2+ (x[15]-x[19])^2+ (x[57]-x[61])^2+ (x[15]-x[20])^2+ (x[57]-x[62])^2+ (x[15]-x[21])^2+ (x[57]-x[63])^2+ (x[15]-x[22])^2+ (x[57]-x[64])^2+ (x[15]-x[23])^2+ (x[57]-x[65])^2+ (x[15]-x[24])^2+ (x[57]-x[66])^2+ (x[15]-x[25])^2+ (x[57]-x[67])^2+ (x[15]-x[26])^2+ (x[57]-x[68])^2+ (x[15]-x[27])^2+ (x[57]-x[69])^2+ (x[15]-x[28])^2+ (x[57]-x[70])^2+ (x[15]-x[29])^2+ (x[57]-x[71])^2+ (x[15]-x[30])^2+ (x[57]-x[72])^2+ (x[15]-x[31])^2+ (x[57]-x[73])^2+ (x[15]-x[32])^2+ (x[57]-x[74])^2+ (x[15]-x[33])^2+ (x[57]-x[75])^2+ (x[15]-x[34])^2+ (x[57]-x[76])^2+ (x[15]-x[35])^2+ (x[57]-x[77])^2+ (x[15]-x[36])^2+ (x[57]-x[78])^2+ (x[15]-x[37])^2+ (x[57]-x[79])^2+ (x[15]-x[38])^2+ (x[57]-x[80])^2+ (x[15]-x[39])^2+ (x[57]-x[81])^2+ (x[15]-x[40])^2+ (x[57]-x[82])^2+ (x[15]-x[41])^2+ (x[57]-x[83])^2+ (x[15]-x[42])^2+ (x[57]-x[84])^2+ (x[16]-x[17])^2+ (x[58]-x[59])^2+ (x[16]-x[18])^2+ (x[58]-x[60])^2+ (x[16]-x[19])^2+ (x[58]-x[61])^2+ (x[16]-x[20])^2+ (x[58]-x[62])^2+ (x[16]-x[21])^2+ (x[58]-x[63])^2+ (x[16]-x[22])^2+ (x[58]-x[64])^2+ (x[16]-x[23])^2+ (x[58]-x[65])^2+ (x[16]-x[24])^2+ (x[58]-x[66])^2+ (x[16]-x[25])^2+ (x[58]-x[67])^2+ (x[16]-x[26])^2+ (x[58]-x[68])^2+ (x[16]-x[27])^2+ (x[58]-x[69])^2+ (x[16]-x[28])^2+ (x[58]-x[70])^2+ (x[16]-x[29])^2+ (x[58]-x[71])^2+ (x[16]-x[30])^2+ (x[58]-x[72])^2+ (x[16]-x[31])^2+ (x[58]-x[73])^2+ (x[16]-x[32])^2+ (x[58]-x[74])^2+ (x[16]-x[33])^2+ (x[58]-x[75])^2+ (x[16]-x[34])^2+ (x[58]-x[76])^2+ (x[16]-x[35])^2+ (x[58]-x[77])^2+ (x[16]-x[36])^2+ (x[58]-x[78])^2+ (x[16]-x[37])^2+ (x[58]-x[79])^2+ (x[16]-x[38])^2+ (x[58]-x[80])^2+ (x[16]-x[39])^2+ (x[58]-x[81])^2+ (x[16]-x[40])^2+ (x[58]-x[82])^2+ (x[16]-x[41])^2+ (x[58]-x[83])^2+ (x[16]-x[42])^2+ (x[58]-x[84])^2+ (x[17]-x[18])^2+ (x[59]-x[60])^2+ (x[17]-x[19])^2+ (x[59]-x[61])^2+ (x[17]-x[20])^2+ (x[59]-x[62])^2+ (x[17]-x[21])^2+ (x[59]-x[63])^2+ (x[17]-x[22])^2+ (x[59]-x[64])^2+ (x[17]-x[23])^2+ (x[59]-x[65])^2+ (x[17]-x[24])^2+ (x[59]-x[66])^2+ (x[17]-x[25])^2+ (x[59]-x[67])^2+ (x[17]-x[26])^2+ (x[59]-x[68])^2+ (x[17]-x[27])^2+ (x[59]-x[69])^2+ (x[17]-x[28])^2+ (x[59]-x[70])^2+ (x[17]-x[29])^2+ (x[59]-x[71])^2+ (x[17]-x[30])^2+ (x[59]-x[72])^2+ (x[17]-x[31])^2+ (x[59]-x[73])^2+ (x[17]-x[32])^2+ (x[59]-x[74])^2+ (x[17]-x[33])^2+ (x[59]-x[75])^2+ (x[17]-x[34])^2+ (x[59]-x[76])^2+ (x[17]-x[35])^2+ (x[59]-x[77])^2+ (x[17]-x[36])^2+ (x[59]-x[78])^2+ (x[17]-x[37])^2+ (x[59]-x[79])^2+ (x[17]-x[38])^2+ (x[59]-x[80])^2+ (x[17]-x[39])^2+ (x[59]-x[81])^2+ (x[17]-x[40])^2+ (x[59]-x[82])^2+ (x[17]-x[41])^2+ (x[59]-x[83])^2+ (x[17]-x[42])^2+ (x[59]-x[84])^2+ (x[18]-x[19])^2+ (x[60]-x[61])^2+ (x[18]-x[20])^2+ (x[60]-x[62])^2+ (x[18]-x[21])^2+ (x[60]-x[63])^2+ (x[18]-x[22])^2+ (x[60]-x[64])^2+ (x[18]-x[23])^2+ (x[60]-x[65])^2+ (x[18]-x[24])^2+ (x[60]-x[66])^2+ (x[18]-x[25])^2+ (x[60]-x[67])^2+ (x[18]-x[26])^2+ (x[60]-x[68])^2+ (x[18]-x[27])^2+ (x[60]-x[69])^2+ (x[18]-x[28])^2+ (x[60]-x[70])^2+ (x[18]-x[29])^2+ (x[60]-x[71])^2+ (x[18]-x[30])^2+ (x[60]-x[72])^2+ (x[18]-x[31])^2+ (x[60]-x[73])^2+ (x[18]-x[32])^2+ (x[60]-x[74])^2+ (x[18]-x[33])^2+ (x[60]-x[75])^2+ (x[18]-x[34])^2+ (x[60]-x[76])^2+ (x[18]-x[35])^2+ (x[60]-x[77])^2+ (x[18]-x[36])^2+ (x[60]-x[78])^2+ (x[18]-x[37])^2+ (x[60]-x[79])^2+ (x[18]-x[38])^2+ (x[60]-x[80])^2+ (x[18]-x[39])^2+ (x[60]-x[81])^2+ (x[18]-x[40])^2+ (x[60]-x[82])^2+ (x[18]-x[41])^2+ (x[60]-x[83])^2+ (x[18]-x[42])^2+ (x[60]-x[84])^2+ (x[19]-x[20])^2+ (x[61]-x[62])^2+ (x[19]-x[21])^2+ (x[61]-x[63])^2+ (x[19]-x[22])^2+ (x[61]-x[64])^2+ (x[19]-x[23])^2+ (x[61]-x[65])^2+ (x[19]-x[24])^2+ (x[61]-x[66])^2+ (x[19]-x[25])^2+ (x[61]-x[67])^2+ (x[19]-x[26])^2+ (x[61]-x[68])^2+ (x[19]-x[27])^2+ (x[61]-x[69])^2+ (x[19]-x[28])^2+ (x[61]-x[70])^2+ (x[19]-x[29])^2+ (x[61]-x[71])^2+ (x[19]-x[30])^2+ (x[61]-x[72])^2+ (x[19]-x[31])^2+ (x[61]-x[73])^2+ (x[19]-x[32])^2+ (x[61]-x[74])^2+ (x[19]-x[33])^2+ (x[61]-x[75])^2+ (x[19]-x[34])^2+ (x[61]-x[76])^2+ (x[19]-x[35])^2+ (x[61]-x[77])^2+ (x[19]-x[36])^2+ (x[61]-x[78])^2+ (x[19]-x[37])^2+ (x[61]-x[79])^2+ (x[19]-x[38])^2+ (x[61]-x[80])^2+ (x[19]-x[39])^2+ (x[61]-x[81])^2+ (x[19]-x[40])^2+ (x[61]-x[82])^2+ (x[19]-x[41])^2+ (x[61]-x[83])^2+ (x[19]-x[42])^2+ (x[61]-x[84])^2+ (x[20]-x[21])^2+ (x[62]-x[63])^2+ (x[20]-x[22])^2+ (x[62]-x[64])^2+ (x[20]-x[23])^2+ (x[62]-x[65])^2+ (x[20]-x[24])^2+ (x[62]-x[66])^2+ (x[20]-x[25])^2+ (x[62]-x[67])^2+ (x[20]-x[26])^2+ (x[62]-x[68])^2+ (x[20]-x[27])^2+ (x[62]-x[69])^2+ (x[20]-x[28])^2+ (x[62]-x[70])^2+ (x[20]-x[29])^2+ (x[62]-x[71])^2+ (x[20]-x[30])^2+ (x[62]-x[72])^2+ (x[20]-x[31])^2+ (x[62]-x[73])^2+ (x[20]-x[32])^2+ (x[62]-x[74])^2+ (x[20]-x[33])^2+ (x[62]-x[75])^2+ (x[20]-x[34])^2+ (x[62]-x[76])^2+ (x[20]-x[35])^2+ (x[62]-x[77])^2+ (x[20]-x[36])^2+ (x[62]-x[78])^2+ (x[20]-x[37])^2+ (x[62]-x[79])^2+ (x[20]-x[38])^2+ (x[62]-x[80])^2+ (x[20]-x[39])^2+ (x[62]-x[81])^2+ (x[20]-x[40])^2+ (x[62]-x[82])^2+ (x[20]-x[41])^2+ (x[62]-x[83])^2+ (x[20]-x[42])^2+ (x[62]-x[84])^2+ (x[21]-x[22])^2+ (x[63]-x[64])^2+ (x[21]-x[23])^2+ (x[63]-x[65])^2+ (x[21]-x[24])^2+ (x[63]-x[66])^2+ (x[21]-x[25])^2+ (x[63]-x[67])^2+ (x[21]-x[26])^2+ (x[63]-x[68])^2+ (x[21]-x[27])^2+ (x[63]-x[69])^2+ (x[21]-x[28])^2+ (x[63]-x[70])^2+ (x[21]-x[29])^2+ (x[63]-x[71])^2+ (x[21]-x[30])^2+ (x[63]-x[72])^2+ (x[21]-x[31])^2+ (x[63]-x[73])^2+ (x[21]-x[32])^2+ (x[63]-x[74])^2+ (x[21]-x[33])^2+ (x[63]-x[75])^2+ (x[21]-x[34])^2+ (x[63]-x[76])^2+ (x[21]-x[35])^2+ (x[63]-x[77])^2+ (x[21]-x[36])^2+ (x[63]-x[78])^2+ (x[21]-x[37])^2+ (x[63]-x[79])^2+ (x[21]-x[38])^2+ (x[63]-x[80])^2+ (x[21]-x[39])^2+ (x[63]-x[81])^2+ (x[21]-x[40])^2+ (x[63]-x[82])^2+ (x[21]-x[41])^2+ (x[63]-x[83])^2+ (x[21]-x[42])^2+ (x[63]-x[84])^2+ (x[22]-x[23])^2+ (x[64]-x[65])^2+ (x[22]-x[24])^2+ (x[64]-x[66])^2+ (x[22]-x[25])^2+ (x[64]-x[67])^2+ (x[22]-x[26])^2+ (x[64]-x[68])^2+ (x[22]-x[27])^2+ (x[64]-x[69])^2+ (x[22]-x[28])^2+ (x[64]-x[70])^2+ (x[22]-x[29])^2+ (x[64]-x[71])^2+ (x[22]-x[30])^2+ (x[64]-x[72])^2+ (x[22]-x[31])^2+ (x[64]-x[73])^2+ (x[22]-x[32])^2+ (x[64]-x[74])^2+ (x[22]-x[33])^2+ (x[64]-x[75])^2+ (x[22]-x[34])^2+ (x[64]-x[76])^2+ (x[22]-x[35])^2+ (x[64]-x[77])^2+ (x[22]-x[36])^2+ (x[64]-x[78])^2+ (x[22]-x[37])^2+ (x[64]-x[79])^2+ (x[22]-x[38])^2+ (x[64]-x[80])^2+ (x[22]-x[39])^2+ (x[64]-x[81])^2+ (x[22]-x[40])^2+ (x[64]-x[82])^2+ (x[22]-x[41])^2+ (x[64]-x[83])^2+ (x[22]-x[42])^2+ (x[64]-x[84])^2+ (x[23]-x[24])^2+ (x[65]-x[66])^2+ (x[23]-x[25])^2+ (x[65]-x[67])^2+ (x[23]-x[26])^2+ (x[65]-x[68])^2+ (x[23]-x[27])^2+ (x[65]-x[69])^2+ (x[23]-x[28])^2+ (x[65]-x[70])^2+ (x[23]-x[29])^2+ (x[65]-x[71])^2+ (x[23]-x[30])^2+ (x[65]-x[72])^2+ (x[23]-x[31])^2+ (x[65]-x[73])^2+ (x[23]-x[32])^2+ (x[65]-x[74])^2+ (x[23]-x[33])^2+ (x[65]-x[75])^2+ (x[23]-x[34])^2+ (x[65]-x[76])^2+ (x[23]-x[35])^2+ (x[65]-x[77])^2+ (x[23]-x[36])^2+ (x[65]-x[78])^2+ (x[23]-x[37])^2+ (x[65]-x[79])^2+ (x[23]-x[38])^2+ (x[65]-x[80])^2+ (x[23]-x[39])^2+ (x[65]-x[81])^2+ (x[23]-x[40])^2+ (x[65]-x[82])^2+ (x[23]-x[41])^2+ (x[65]-x[83])^2+ (x[23]-x[42])^2+ (x[65]-x[84])^2+ (x[24]-x[25])^2+ (x[66]-x[67])^2+ (x[24]-x[26])^2+ (x[66]-x[68])^2+ (x[24]-x[27])^2+ (x[66]-x[69])^2+ (x[24]-x[28])^2+ (x[66]-x[70])^2+ (x[24]-x[29])^2+ (x[66]-x[71])^2+ (x[24]-x[30])^2+ (x[66]-x[72])^2+ (x[24]-x[31])^2+ (x[66]-x[73])^2+ (x[24]-x[32])^2+ (x[66]-x[74])^2+ (x[24]-x[33])^2+ (x[66]-x[75])^2+ (x[24]-x[34])^2+ (x[66]-x[76])^2+ (x[24]-x[35])^2+ (x[66]-x[77])^2+ (x[24]-x[36])^2+ (x[66]-x[78])^2+ (x[24]-x[37])^2+ (x[66]-x[79])^2+ (x[24]-x[38])^2+ (x[66]-x[80])^2+ (x[24]-x[39])^2+ (x[66]-x[81])^2+ (x[24]-x[40])^2+ (x[66]-x[82])^2+ (x[24]-x[41])^2+ (x[66]-x[83])^2+ (x[24]-x[42])^2+ (x[66]-x[84])^2+ (x[25]-x[26])^2+ (x[67]-x[68])^2+ (x[25]-x[27])^2+ (x[67]-x[69])^2+ (x[25]-x[28])^2+ (x[67]-x[70])^2+ (x[25]-x[29])^2+ (x[67]-x[71])^2+ (x[25]-x[30])^2+ (x[67]-x[72])^2+ (x[25]-x[31])^2+ (x[67]-x[73])^2+ (x[25]-x[32])^2+ (x[67]-x[74])^2+ (x[25]-x[33])^2+ (x[67]-x[75])^2+ (x[25]-x[34])^2+ (x[67]-x[76])^2+ (x[25]-x[35])^2+ (x[67]-x[77])^2+ (x[25]-x[36])^2+ (x[67]-x[78])^2+ (x[25]-x[37])^2+ (x[67]-x[79])^2+ (x[25]-x[38])^2+ (x[67]-x[80])^2+ (x[25]-x[39])^2+ (x[67]-x[81])^2+ (x[25]-x[40])^2+ (x[67]-x[82])^2+ (x[25]-x[41])^2+ (x[67]-x[83])^2+ (x[25]-x[42])^2+ (x[67]-x[84])^2+ (x[26]-x[27])^2+ (x[68]-x[69])^2+ (x[26]-x[28])^2+ (x[68]-x[70])^2+ (x[26]-x[29])^2+ (x[68]-x[71])^2+ (x[26]-x[30])^2+ (x[68]-x[72])^2+ (x[26]-x[31])^2+ (x[68]-x[73])^2+ (x[26]-x[32])^2+ (x[68]-x[74])^2+ (x[26]-x[33])^2+ (x[68]-x[75])^2+ (x[26]-x[34])^2+ (x[68]-x[76])^2+ (x[26]-x[35])^2+ (x[68]-x[77])^2+ (x[26]-x[36])^2+ (x[68]-x[78])^2+ (x[26]-x[37])^2+ (x[68]-x[79])^2+ (x[26]-x[38])^2+ (x[68]-x[80])^2+ (x[26]-x[39])^2+ (x[68]-x[81])^2+ (x[26]-x[40])^2+ (x[68]-x[82])^2+ (x[26]-x[41])^2+ (x[68]-x[83])^2+ (x[26]-x[42])^2+ (x[68]-x[84])^2+ (x[27]-x[28])^2+ (x[69]-x[70])^2+ (x[27]-x[29])^2+ (x[69]-x[71])^2+ (x[27]-x[30])^2+ (x[69]-x[72])^2+ (x[27]-x[31])^2+ (x[69]-x[73])^2+ (x[27]-x[32])^2+ (x[69]-x[74])^2+ (x[27]-x[33])^2+ (x[69]-x[75])^2+ (x[27]-x[34])^2+ (x[69]-x[76])^2+ (x[27]-x[35])^2+ (x[69]-x[77])^2+ (x[27]-x[36])^2+ (x[69]-x[78])^2+ (x[27]-x[37])^2+ (x[69]-x[79])^2+ (x[27]-x[38])^2+ (x[69]-x[80])^2+ (x[27]-x[39])^2+ (x[69]-x[81])^2+ (x[27]-x[40])^2+ (x[69]-x[82])^2+ (x[27]-x[41])^2+ (x[69]-x[83])^2+ (x[27]-x[42])^2+ (x[69]-x[84])^2+ (x[28]-x[29])^2+ (x[70]-x[71])^2+ (x[28]-x[30])^2+ (x[70]-x[72])^2+ (x[28]-x[31])^2+ (x[70]-x[73])^2+ (x[28]-x[32])^2+ (x[70]-x[74])^2+ (x[28]-x[33])^2+ (x[70]-x[75])^2+ (x[28]-x[34])^2+ (x[70]-x[76])^2+ (x[28]-x[35])^2+ (x[70]-x[77])^2+ (x[28]-x[36])^2+ (x[70]-x[78])^2+ (x[28]-x[37])^2+ (x[70]-x[79])^2+ (x[28]-x[38])^2+ (x[70]-x[80])^2+ (x[28]-x[39])^2+ (x[70]-x[81])^2+ (x[28]-x[40])^2+ (x[70]-x[82])^2+ (x[28]-x[41])^2+ (x[70]-x[83])^2+ (x[28]-x[42])^2+ (x[70]-x[84])^2+ (x[29]-x[30])^2+ (x[71]-x[72])^2+ (x[29]-x[31])^2+ (x[71]-x[73])^2+ (x[29]-x[32])^2+ (x[71]-x[74])^2+ (x[29]-x[33])^2+ (x[71]-x[75])^2+ (x[29]-x[34])^2+ (x[71]-x[76])^2+ (x[29]-x[35])^2+ (x[71]-x[77])^2+ (x[29]-x[36])^2+ (x[71]-x[78])^2+ (x[29]-x[37])^2+ (x[71]-x[79])^2+ (x[29]-x[38])^2+ (x[71]-x[80])^2+ (x[29]-x[39])^2+ (x[71]-x[81])^2+ (x[29]-x[40])^2+ (x[71]-x[82])^2+ (x[29]-x[41])^2+ (x[71]-x[83])^2+ (x[29]-x[42])^2+ (x[71]-x[84])^2+ (x[30]-x[31])^2+ (x[72]-x[73])^2+ (x[30]-x[32])^2+ (x[72]-x[74])^2+ (x[30]-x[33])^2+ (x[72]-x[75])^2+ (x[30]-x[34])^2+ (x[72]-x[76])^2+ (x[30]-x[35])^2+ (x[72]-x[77])^2+ (x[30]-x[36])^2+ (x[72]-x[78])^2+ (x[30]-x[37])^2+ (x[72]-x[79])^2+ (x[30]-x[38])^2+ (x[72]-x[80])^2+ (x[30]-x[39])^2+ (x[72]-x[81])^2+ (x[30]-x[40])^2+ (x[72]-x[82])^2+ (x[30]-x[41])^2+ (x[72]-x[83])^2+ (x[30]-x[42])^2+ (x[72]-x[84])^2+ (x[31]-x[32])^2+ (x[73]-x[74])^2+ (x[31]-x[33])^2+ (x[73]-x[75])^2+ (x[31]-x[34])^2+ (x[73]-x[76])^2+ (x[31]-x[35])^2+ (x[73]-x[77])^2+ (x[31]-x[36])^2+ (x[73]-x[78])^2+ (x[31]-x[37])^2+ (x[73]-x[79])^2+ (x[31]-x[38])^2+ (x[73]-x[80])^2+ (x[31]-x[39])^2+ (x[73]-x[81])^2+ (x[31]-x[40])^2+ (x[73]-x[82])^2+ (x[31]-x[41])^2+ (x[73]-x[83])^2+ (x[31]-x[42])^2+ (x[73]-x[84])^2+ (x[32]-x[33])^2+ (x[74]-x[75])^2+ (x[32]-x[34])^2+ (x[74]-x[76])^2+ (x[32]-x[35])^2+ (x[74]-x[77])^2+ (x[32]-x[36])^2+ (x[74]-x[78])^2+ (x[32]-x[37])^2+ (x[74]-x[79])^2+ (x[32]-x[38])^2+ (x[74]-x[80])^2+ (x[32]-x[39])^2+ (x[74]-x[81])^2+ (x[32]-x[40])^2+ (x[74]-x[82])^2+ (x[32]-x[41])^2+ (x[74]-x[83])^2+ (x[32]-x[42])^2+ (x[74]-x[84])^2+ (x[33]-x[34])^2+ (x[75]-x[76])^2+ (x[33]-x[35])^2+ (x[75]-x[77])^2+ (x[33]-x[36])^2+ (x[75]-x[78])^2+ (x[33]-x[37])^2+ (x[75]-x[79])^2+ (x[33]-x[38])^2+ (x[75]-x[80])^2+ (x[33]-x[39])^2+ (x[75]-x[81])^2+ (x[33]-x[40])^2+ (x[75]-x[82])^2+ (x[33]-x[41])^2+ (x[75]-x[83])^2+ (x[33]-x[42])^2+ (x[75]-x[84])^2+ (x[34]-x[35])^2+ (x[76]-x[77])^2+ (x[34]-x[36])^2+ (x[76]-x[78])^2+ (x[34]-x[37])^2+ (x[76]-x[79])^2+ (x[34]-x[38])^2+ (x[76]-x[80])^2+ (x[34]-x[39])^2+ (x[76]-x[81])^2+ (x[34]-x[40])^2+ (x[76]-x[82])^2+ (x[34]-x[41])^2+ (x[76]-x[83])^2+ (x[34]-x[42])^2+ (x[76]-x[84])^2+ (x[35]-x[36])^2+ (x[77]-x[78])^2+ (x[35]-x[37])^2+ (x[77]-x[79])^2+ (x[35]-x[38])^2+ (x[77]-x[80])^2+ (x[35]-x[39])^2+ (x[77]-x[81])^2+ (x[35]-x[40])^2+ (x[77]-x[82])^2+ (x[35]-x[41])^2+ (x[77]-x[83])^2+ (x[35]-x[42])^2+ (x[77]-x[84])^2+ (x[36]-x[37])^2+ (x[78]-x[79])^2+ (x[36]-x[38])^2+ (x[78]-x[80])^2+ (x[36]-x[39])^2+ (x[78]-x[81])^2+ (x[36]-x[40])^2+ (x[78]-x[82])^2+ (x[36]-x[41])^2+ (x[78]-x[83])^2+ (x[36]-x[42])^2+ (x[78]-x[84])^2+ (x[37]-x[38])^2+ (x[79]-x[80])^2+ (x[37]-x[39])^2+ (x[79]-x[81])^2+ (x[37]-x[40])^2+ (x[79]-x[82])^2+ (x[37]-x[41])^2+ (x[79]-x[83])^2+ (x[37]-x[42])^2+ (x[79]-x[84])^2+ (x[38]-x[39])^2+ (x[80]-x[81])^2+ (x[38]-x[40])^2+ (x[80]-x[82])^2+ (x[38]-x[41])^2+ (x[80]-x[83])^2+ (x[38]-x[42])^2+ (x[80]-x[84])^2+ (x[39]-x[40])^2+ (x[81]-x[82])^2+ (x[39]-x[41])^2+ (x[81]-x[83])^2+ (x[39]-x[42])^2+ (x[81]-x[84])^2+ (x[40]-x[41])^2+ (x[82]-x[83])^2+ (x[40]-x[42])^2+ (x[82]-x[84])^2+ (x[41]-x[42])^2+ (x[83]-x[84])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)


