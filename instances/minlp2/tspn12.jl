using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, x[x_Idx])
b_Idx = Any[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[12], 0.0)
set_upper_bound(x[1], 17.0)
set_lower_bound(x[2], 49.0)
set_upper_bound(x[2], 64.0)
set_lower_bound(x[3], 102.0)
set_upper_bound(x[3], 119.0)
set_lower_bound(x[4], 42.0)
set_upper_bound(x[4], 50.0)
set_lower_bound(x[5], 26.0)
set_upper_bound(x[5], 40.0)
set_lower_bound(x[6], 65.0)
set_upper_bound(x[6], 84.0)
set_lower_bound(x[7], 6.0)
set_upper_bound(x[7], 27.0)
set_lower_bound(x[8], 74.0)
set_upper_bound(x[8], 86.0)
set_lower_bound(x[9], 33.0)
set_upper_bound(x[9], 45.0)
set_lower_bound(x[10], 37.0)
set_upper_bound(x[10], 53.0)
set_lower_bound(x[11], 94.0)
set_upper_bound(x[11], 113.0)
set_upper_bound(x[12], 14.0)
set_lower_bound(x[13], 93.0)
set_upper_bound(x[13], 112.0)
set_lower_bound(x[14], 56.0)
set_upper_bound(x[14], 70.0)
set_lower_bound(x[15], 66.0)
set_upper_bound(x[15], 77.0)
set_lower_bound(x[16], 87.0)
set_upper_bound(x[16], 96.0)
set_lower_bound(x[17], 51.0)
set_upper_bound(x[17], 60.0)
set_lower_bound(x[18], 12.0)
set_upper_bound(x[18], 26.0)
set_lower_bound(x[19], 49.0)
set_upper_bound(x[19], 75.0)
set_lower_bound(x[20], 41.0)
set_upper_bound(x[20], 54.0)
set_lower_bound(x[21], 17.0)
set_upper_bound(x[21], 28.0)
set_lower_bound(x[22], 25.0)
set_upper_bound(x[22], 43.0)
set_lower_bound(x[23], 92.0)
set_upper_bound(x[23], 104.0)
set_lower_bound(x[24], 79.0)
set_upper_bound(x[24], 88.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt( (x[1]-x[3])^2+ (x[2]-x[4])^2)*b[25]+sqrt( (x[1]-x[5])^2+ (x[2]-x[6])^2)*b[26]+sqrt( (x[1]-x[7])^2+ (x[2]-x[8])^2)*b[27]+sqrt( (x[1]-x[9])^2+ (x[2]-x[10])^2)*b[28]+sqrt( (x[1]-x[11])^2+ (x[2]-x[12])^2)*b[29]+sqrt( (x[1]-x[13])^2+ (x[2]-x[14])^2)*b[30]+sqrt( (x[1]-x[15])^2+ (x[2]-x[16])^2)*b[31]+sqrt( (x[1]-x[17])^2+ (x[2]-x[18])^2)*b[32]+sqrt( (x[1]-x[19])^2+ (x[2]-x[20])^2)*b[33]+sqrt( (x[1]-x[21])^2+ (x[2]-x[22])^2)*b[34]+sqrt( (x[1]-x[23])^2+ (x[2]-x[24])^2)*b[35]+sqrt( (x[3]-x[5])^2+ (x[4]-x[6])^2)*b[36]+sqrt( (x[3]-x[7])^2+ (x[4]-x[8])^2)*b[37]+sqrt( (x[3]-x[9])^2+ (x[4]-x[10])^2)*b[38]+sqrt( (x[3]-x[11])^2+ (x[4]-x[12])^2)*b[39]+sqrt( (x[3]-x[13])^2+ (x[4]-x[14])^2)*b[40]+sqrt( (x[3]-x[15])^2+ (x[4]-x[16])^2)*b[41]+sqrt( (x[3]-x[17])^2+ (x[4]-x[18])^2)*b[42]+sqrt( (x[3]-x[19])^2+ (x[4]-x[20])^2)*b[43]+sqrt( (x[3]-x[21])^2+ (x[4]-x[22])^2)*b[44]+sqrt( (x[3]-x[23])^2+ (x[4]-x[24])^2)*b[45]+sqrt( (x[5]-x[7])^2+ (x[6]-x[8])^2)*b[46]+sqrt( (x[5]-x[9])^2+ (x[6]-x[10])^2)*b[47]+sqrt( (x[5]-x[11])^2+ (x[6]-x[12])^2)*b[48]+sqrt( (x[5]-x[13])^2+ (x[6]-x[14])^2)*b[49]+sqrt( (x[5]-x[15])^2+ (x[6]-x[16])^2)*b[50]+sqrt( (x[5]-x[17])^2+ (x[6]-x[18])^2)*b[51]+sqrt( (x[5]-x[19])^2+ (x[6]-x[20])^2)*b[52]+sqrt( (x[5]-x[21])^2+ (x[6]-x[22])^2)*b[53]+sqrt( (x[5]-x[23])^2+ (x[6]-x[24])^2)*b[54]+sqrt( (x[7]-x[9])^2+ (x[8]-x[10])^2)*b[55]+sqrt( (x[7]-x[11])^2+ (x[8]-x[12])^2)*b[56]+sqrt( (x[7]-x[13])^2+ (x[8]-x[14])^2)*b[57]+sqrt( (x[7]-x[15])^2+ (x[8]-x[16])^2)*b[58]+sqrt( (x[7]-x[17])^2+ (x[8]-x[18])^2)*b[59]+sqrt( (x[7]-x[19])^2+ (x[8]-x[20])^2)*b[60]+sqrt( (x[7]-x[21])^2+ (x[8]-x[22])^2)*b[61]+sqrt( (x[7]-x[23])^2+ (x[8]-x[24])^2)*b[62]+sqrt( (x[9]-x[11])^2+ (x[10]-x[12])^2)*b[63]+sqrt( (x[9]-x[13])^2+ (x[10]-x[14])^2)*b[64]+sqrt( (x[9]-x[15])^2+ (x[10]-x[16])^2)*b[65]+sqrt( (x[9]-x[17])^2+ (x[10]-x[18])^2)*b[66]+sqrt( (x[9]-x[19])^2+ (x[10]-x[20])^2)*b[67]+sqrt( (x[9]-x[21])^2+ (x[10]-x[22])^2)*b[68]+sqrt( (x[9]-x[23])^2+ (x[10]-x[24])^2)*b[69]+sqrt( (x[11]-x[13])^2+ (x[12]-x[14])^2)*b[70]+sqrt( (x[11]-x[15])^2+ (x[12]-x[16])^2)*b[71]+sqrt( (x[11]-x[17])^2+ (x[12]-x[18])^2)*b[72]+sqrt( (x[11]-x[19])^2+ (x[12]-x[20])^2)*b[73]+sqrt( (x[11]-x[21])^2+ (x[12]-x[22])^2)*b[74]+sqrt( (x[11]-x[23])^2+ (x[12]-x[24])^2)*b[75]+sqrt( (x[13]-x[15])^2+ (x[14]-x[16])^2)*b[76]+sqrt( (x[13]-x[17])^2+ (x[14]-x[18])^2)*b[77]+sqrt( (x[13]-x[19])^2+ (x[14]-x[20])^2)*b[78]+sqrt( (x[13]-x[21])^2+ (x[14]-x[22])^2)*b[79]+sqrt( (x[13]-x[23])^2+ (x[14]-x[24])^2)*b[80]+sqrt( (x[15]-x[17])^2+ (x[16]-x[18])^2)*b[81]+sqrt( (x[15]-x[19])^2+ (x[16]-x[20])^2)*b[82]+sqrt( (x[15]-x[21])^2+ (x[16]-x[22])^2)*b[83]+sqrt( (x[15]-x[23])^2+ (x[16]-x[24])^2)*b[84]+sqrt( (x[17]-x[19])^2+ (x[18]-x[20])^2)*b[85]+sqrt( (x[17]-x[21])^2+ (x[18]-x[22])^2)*b[86]+sqrt( (x[17]-x[23])^2+ (x[18]-x[24])^2)*b[87]+sqrt( (x[19]-x[21])^2+ (x[20]-x[22])^2)*b[88]+sqrt( (x[19]-x[23])^2+ (x[20]-x[24])^2)*b[89]+sqrt( (x[21]-x[23])^2+ (x[22]-x[24])^2)*b[90]-objvar == 0.0)
@NLconstraint(m, e2, 0.013840830449827* (x[1])^2-0.235294117647059*x[1]+0.0177777777777778* (x[2])^2-2.00888888888889*x[2] <= -56.7511111111111)
@NLconstraint(m, e3, 0.013840830449827* (x[3])^2-3.05882352941176*x[3]+0.0625* (x[4])^2-5.75*x[4] <= -300.25)
@NLconstraint(m, e4, 0.0204081632653061* (x[5])^2-1.3469387755102*x[5]+0.0110803324099723* (x[6])^2-1.65096952908587*x[6] <= -82.7231047543671)
@NLconstraint(m, e5, 0.0090702947845805* (x[7])^2-0.299319727891156*x[7]+0.0277777777777778* (x[8])^2-4.44444444444444*x[8] <= -179.24716553288)
@NLconstraint(m, e6, 0.0277777777777778* (x[9])^2-2.16666666666667*x[9]+0.015625* (x[10])^2-1.40625*x[10] <= -72.890625)
@NLconstraint(m, e7, 0.0110803324099723* (x[11])^2-2.29362880886427*x[11]+0.0204081632653061* (x[12])^2-0.285714285714286*x[12] <= -118.695290858726)
@NLconstraint(m, e8, 0.0110803324099723* (x[13])^2-2.27146814404432*x[13]+0.0204081632653061* (x[14])^2-2.57142857142857*x[14] <= -196.412742382271)
@NLconstraint(m, e9, 0.0330578512396694* (x[15])^2-4.72727272727273*x[15]+0.0493827160493827* (x[16])^2-9.03703703703704*x[16] <= -581.444444444444)
@NLconstraint(m, e10, 0.0493827160493827* (x[17])^2-5.48148148148148*x[17]+0.0204081632653061* (x[18])^2-0.775510204081633*x[18] <= -158.478458049887)
@NLconstraint(m, e11, 0.00591715976331361* (x[19])^2-0.733727810650888*x[19]+0.0236686390532544* (x[20])^2-2.24852071005917*x[20] <= -75.1479289940828)
@NLconstraint(m, e12, 0.0330578512396694* (x[21])^2-1.48760330578512*x[21]+0.0123456790123457* (x[22])^2-0.839506172839506*x[22] <= -30.0071421283542)
@NLconstraint(m, e13, 0.0277777777777778* (x[23])^2-5.44444444444444*x[23]+0.0493827160493827* (x[24])^2-8.24691358024691*x[24] <= -610.086419753086)
@constraint(m, e14, b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35] == 2.0)
@constraint(m, e15, b[25]+b[36]+b[37]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44]+b[45] == 2.0)
@constraint(m, e16, b[26]+b[36]+b[46]+b[47]+b[48]+b[49]+b[50]+b[51]+b[52]+b[53]+b[54] == 2.0)
@constraint(m, e17, b[27]+b[37]+b[46]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62] == 2.0)
@constraint(m, e18, b[28]+b[38]+b[47]+b[55]+b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69] == 2.0)
@constraint(m, e19, b[29]+b[39]+b[48]+b[56]+b[63]+b[70]+b[71]+b[72]+b[73]+b[74]+b[75] == 2.0)
@constraint(m, e20, b[30]+b[40]+b[49]+b[57]+b[64]+b[70]+b[76]+b[77]+b[78]+b[79]+b[80] == 2.0)
@constraint(m, e21, b[31]+b[41]+b[50]+b[58]+b[65]+b[71]+b[76]+b[81]+b[82]+b[83]+b[84] == 2.0)
@constraint(m, e22, b[32]+b[42]+b[51]+b[59]+b[66]+b[72]+b[77]+b[81]+b[85]+b[86]+b[87] == 2.0)
@constraint(m, e23, b[33]+b[43]+b[52]+b[60]+b[67]+b[73]+b[78]+b[82]+b[85]+b[88]+b[89] == 2.0)
@constraint(m, e24, b[34]+b[44]+b[53]+b[61]+b[68]+b[74]+b[79]+b[83]+b[86]+b[88]+b[90] == 2.0)
@constraint(m, e25, b[35]+b[45]+b[54]+b[62]+b[69]+b[75]+b[80]+b[84]+b[87]+b[89]+b[90] == 2.0)
@constraint(m, e26, b[26]+b[27]+b[34]+b[46]+b[53]+b[61] <= 3.0)
@constraint(m, e27, b[26]+b[27]+b[46] <= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 