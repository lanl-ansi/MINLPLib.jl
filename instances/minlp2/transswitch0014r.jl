using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138]
@variable(m, x[x_Idx])
b_Idx = Any[109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 430.293* (x[129])^2+2000*x[129]+2500* (x[130])^2+2000*x[130]+100* (x[131])^2+4000*x[131]+100* (x[132])^2+4000*x[132]+100* (x[133])^2+4000*x[133]-objvar == 0.0)
@NLconstraint(m, e2, -(1.1350191923074*( (x[82])^2+ (x[96])^2)-1.1350191923074*(x[82]*x[83]+x[96]*x[97])+4.78186315175772*(x[82]*x[97]-x[83]*x[96]))*b[109]+x[1] == 0.0)
@NLconstraint(m, e3, -(1.1350191923074*( (x[83])^2+ (x[97])^2)-1.1350191923074*(x[83]*x[82]+x[97]*x[96])+4.78186315175772*(x[83]*x[96]-x[82]*x[97]))*b[109]+x[2] == 0.0)
@NLconstraint(m, e4, -9.09008271975275*(x[87]*x[103]-x[89]*x[101])*b[110]+x[3] == 0.0)
@NLconstraint(m, e5, -9.09008271975275*(x[89]*x[101]-x[87]*x[103])*b[110]+x[4] == 0.0)
@NLconstraint(m, e6, -(1.8808847537004*( (x[90])^2+ (x[104])^2)-1.8808847537004*(x[90]*x[91]+x[104]*x[105])+4.40294374946052*(x[90]*x[105]-x[91]*x[104]))*b[111]+x[5] == 0.0)
@NLconstraint(m, e7, -(1.8808847537004*( (x[91])^2+ (x[105])^2)-1.8808847537004*(x[91]*x[90]+x[105]*x[104])+4.40294374946052*(x[91]*x[104]-x[90]*x[105]))*b[111]+x[6] == 0.0)
@NLconstraint(m, e8, -4.78194338179036*(x[84]*x[101]-x[87]*x[98])*b[112]+x[7] == 0.0)
@NLconstraint(m, e9, -4.78194338179036*(x[87]*x[98]-x[84]*x[101])*b[112]+x[8] == 0.0)
@NLconstraint(m, e10, -3.96793905245615*(x[85]*x[100]-x[86]*x[99])*b[113]+x[9] == 0.0)
@NLconstraint(m, e11, -3.96793905245615*(x[86]*x[99]-x[85]*x[100])*b[113]+x[10] == 0.0)
@NLconstraint(m, e12, -(1.42400548701993*( (x[89])^2+ (x[103])^2)-1.42400548701993*(x[89]*x[94]+x[103]*x[108])+3.0290504569306*(x[89]*x[108]-x[94]*x[103]))*b[114]+x[11] == 0.0)
@NLconstraint(m, e13, -(1.42400548701993*( (x[94])^2+ (x[108])^2)-1.42400548701993*(x[94]*x[89]+x[108]*x[103])+3.0290504569306*(x[94]*x[103]-x[89]*x[108]))*b[114]+x[12] == 0.0)
@NLconstraint(m, e14, -(6.84098066149567*( (x[84])^2+ (x[98])^2)-6.84098066149567*(x[84]*x[85]+x[98]*x[99])+21.5785539816916*(x[84]*x[99]-x[85]*x[98]))*b[115]+x[13] == 0.0)
@NLconstraint(m, e15, -(6.84098066149567*( (x[85])^2+ (x[99])^2)-6.84098066149567*(x[85]*x[84]+x[99]*x[98])+21.5785539816916*(x[85]*x[98]-x[84]*x[99]))*b[115]+x[14] == 0.0)
@NLconstraint(m, e16, -(3.09892740383799*( (x[86])^2+ (x[100])^2)-3.09892740383799*(x[86]*x[93]+x[100]*x[107])+6.10275544819311*(x[86]*x[107]-x[93]*x[100]))*b[116]+x[15] == 0.0)
@NLconstraint(m, e17, -(3.09892740383799*( (x[93])^2+ (x[107])^2)-3.09892740383799*(x[93]*x[86]+x[107]*x[100])+6.10275544819311*(x[93]*x[100]-x[86]*x[107]))*b[116]+x[16] == 0.0)
@NLconstraint(m, e18, -5.67697984672154*(x[87]*x[102]-x[88]*x[101])*b[117]+x[17] == 0.0)
@NLconstraint(m, e19, -5.67697984672154*(x[88]*x[101]-x[87]*x[102])*b[117]+x[18] == 0.0)
@NLconstraint(m, e20, -(1.13699415780633*( (x[93])^2+ (x[107])^2)-1.13699415780633*(x[93]*x[94]+x[107]*x[108])+2.31496347510535*(x[93]*x[108]-x[94]*x[107]))*b[118]+x[19] == 0.0)
@NLconstraint(m, e21, -(1.13699415780633*( (x[94])^2+ (x[108])^2)-1.13699415780633*(x[94]*x[93]+x[108]*x[107])+2.31496347510535*(x[94]*x[107]-x[93]*x[108]))*b[118]+x[20] == 0.0)
@NLconstraint(m, e22, -(1.52596744045097*( (x[86])^2+ (x[100])^2)-1.52596744045097*(x[86]*x[92]+x[100]*x[106])+3.1759639650294*(x[86]*x[106]-x[92]*x[100]))*b[119]+x[21] == 0.0)
@NLconstraint(m, e23, -(1.52596744045097*( (x[92])^2+ (x[106])^2)-1.52596744045097*(x[92]*x[86]+x[106]*x[100])+3.1759639650294*(x[92]*x[100]-x[86]*x[106]))*b[119]+x[22] == 0.0)
@NLconstraint(m, e24, -(1.95502856317726*( (x[86])^2+ (x[100])^2)-1.95502856317726*(x[86]*x[91]+x[100]*x[105])+4.09407434424044*(x[86]*x[105]-x[91]*x[100]))*b[120]+x[23] == 0.0)
@NLconstraint(m, e25, -(1.95502856317726*( (x[91])^2+ (x[105])^2)-1.95502856317726*(x[91]*x[86]+x[105]*x[100])+4.09407434424044*(x[91]*x[100]-x[86]*x[105]))*b[120]+x[24] == 0.0)
@NLconstraint(m, e26, -(2.48902458682192*( (x[92])^2+ (x[106])^2)-2.48902458682192*(x[92]*x[93]+x[106]*x[107])+2.25197462617221*(x[92]*x[107]-x[93]*x[106]))*b[121]+x[25] == 0.0)
@NLconstraint(m, e27, -(2.48902458682192*( (x[93])^2+ (x[107])^2)-2.48902458682192*(x[93]*x[92]+x[107]*x[106])+2.25197462617221*(x[93]*x[106]-x[92]*x[107]))*b[121]+x[26] == 0.0)
@NLconstraint(m, e28, -(1.02589745497019*( (x[81])^2+ (x[95])^2)-1.02589745497019*(x[81]*x[85]+x[95]*x[99])+4.23498368233483*(x[81]*x[99]-x[85]*x[95]))*b[122]+x[27] == 0.0)
@NLconstraint(m, e29, -(1.02589745497019*( (x[85])^2+ (x[99])^2)-1.02589745497019*(x[85]*x[81]+x[99]*x[95])+4.23498368233483*(x[85]*x[95]-x[81]*x[99]))*b[122]+x[28] == 0.0)
@NLconstraint(m, e30, -(3.90204955244743*( (x[89])^2+ (x[103])^2)-3.90204955244743*(x[89]*x[90]+x[103]*x[104])+10.3653941270609*(x[89]*x[104]-x[90]*x[103]))*b[123]+x[29] == 0.0)
@NLconstraint(m, e31, -(3.90204955244743*( (x[90])^2+ (x[104])^2)-3.90204955244743*(x[90]*x[89]+x[104]*x[103])+10.3653941270609*(x[90]*x[103]-x[89]*x[104]))*b[123]+x[30] == 0.0)
@NLconstraint(m, e32, -(4.99913160079803*( (x[81])^2+ (x[95])^2)-4.99913160079803*(x[81]*x[82]+x[95]*x[96])+15.2630865231796*(x[81]*x[96]-x[82]*x[95]))*b[124]+x[31] == 0.0)
@NLconstraint(m, e33, -(4.99913160079803*( (x[82])^2+ (x[96])^2)-4.99913160079803*(x[82]*x[81]+x[96]*x[95])+15.2630865231796*(x[82]*x[95]-x[81]*x[96]))*b[124]+x[32] == 0.0)
@NLconstraint(m, e34, -(1.7011396670944*( (x[82])^2+ (x[96])^2)-1.7011396670944*(x[82]*x[85]+x[96]*x[99])+5.19392739796971*(x[82]*x[99]-x[85]*x[96]))*b[125]+x[33] == 0.0)
@NLconstraint(m, e35, -(1.7011396670944*( (x[85])^2+ (x[99])^2)-1.7011396670944*(x[85]*x[82]+x[99]*x[96])+5.19392739796971*(x[85]*x[96]-x[82]*x[99]))*b[125]+x[34] == 0.0)
@NLconstraint(m, e36, -(1.98597570992556*( (x[83])^2+ (x[97])^2)-1.98597570992556*(x[83]*x[84]+x[97]*x[98])+5.06881697759392*(x[83]*x[98]-x[84]*x[97]))*b[126]+x[35] == 0.0)
@NLconstraint(m, e37, -(1.98597570992556*( (x[84])^2+ (x[98])^2)-1.98597570992556*(x[84]*x[83]+x[98]*x[97])+5.06881697759392*(x[84]*x[97]-x[83]*x[98]))*b[126]+x[36] == 0.0)
@NLconstraint(m, e38, -1.79797907152361*(x[84]*x[103]-x[89]*x[98])*b[127]+x[37] == 0.0)
@NLconstraint(m, e39, -1.79797907152361*(x[89]*x[98]-x[84]*x[103])*b[127]+x[38] == 0.0)
@NLconstraint(m, e40, -(1.68603315061494*( (x[82])^2+ (x[96])^2)-1.68603315061494*(x[82]*x[84]+x[96]*x[98])+5.11583832587208*(x[82]*x[98]-x[84]*x[96]))*b[128]+x[39] == 0.0)
@NLconstraint(m, e41, -(1.68603315061494*( (x[84])^2+ (x[98])^2)-1.68603315061494*(x[84]*x[82]+x[98]*x[96])+5.11583832587208*(x[84]*x[96]-x[82]*x[98]))*b[128]+x[40] == 0.0)
@NLconstraint(m, e42, -(4.75996315175772*( (x[82])^2+ (x[96])^2)-4.78186315175772*(x[82]*x[83]+x[96]*x[97])-1.1350191923074*(x[82]*x[97]-x[83]*x[96]))*b[109]+x[41] == 0.0)
@NLconstraint(m, e43, -(4.75996315175772*( (x[83])^2+ (x[97])^2)-4.78186315175772*(x[83]*x[82]+x[97]*x[96])-1.1350191923074*(x[83]*x[96]-x[82]*x[97]))*b[109]+x[42] == 0.0)
@NLconstraint(m, e44, -(9.09008271975275*( (x[87])^2+ (x[101])^2)-9.09008271975275*(x[87]*x[89]+x[101]*x[103]))*b[110]+x[43] == 0.0)
@NLconstraint(m, e45, -(9.09008271975275*( (x[89])^2+ (x[103])^2)-9.09008271975275*(x[89]*x[87]+x[103]*x[101]))*b[110]+x[44] == 0.0)
@NLconstraint(m, e46, -(4.40294374946052*( (x[90])^2+ (x[104])^2)-4.40294374946052*(x[90]*x[91]+x[104]*x[105])-1.8808847537004*(x[90]*x[105]-x[91]*x[104]))*b[111]+x[45] == 0.0)
@NLconstraint(m, e47, -(4.40294374946052*( (x[91])^2+ (x[105])^2)-4.40294374946052*(x[91]*x[90]+x[105]*x[104])-1.8808847537004*(x[91]*x[104]-x[90]*x[105]))*b[111]+x[46] == 0.0)
@NLconstraint(m, e48, -(4.78194338179036*( (x[84])^2+ (x[98])^2)-4.78194338179036*(x[84]*x[87]+x[98]*x[101]))*b[112]+x[47] == 0.0)
@NLconstraint(m, e49, -(4.78194338179036*( (x[87])^2+ (x[101])^2)-4.78194338179036*(x[87]*x[84]+x[101]*x[98]))*b[112]+x[48] == 0.0)
@NLconstraint(m, e50, -(3.96793905245615*( (x[85])^2+ (x[99])^2)-3.96793905245615*(x[85]*x[86]+x[99]*x[100]))*b[113]+x[49] == 0.0)
@NLconstraint(m, e51, -(3.96793905245615*( (x[86])^2+ (x[100])^2)-3.96793905245615*(x[86]*x[85]+x[100]*x[99]))*b[113]+x[50] == 0.0)
@NLconstraint(m, e52, -(3.0290504569306*( (x[89])^2+ (x[103])^2)-3.0290504569306*(x[89]*x[94]+x[103]*x[108])-1.42400548701993*(x[89]*x[108]-x[94]*x[103]))*b[114]+x[51] == 0.0)
@NLconstraint(m, e53, -(3.0290504569306*( (x[94])^2+ (x[108])^2)-3.0290504569306*(x[94]*x[89]+x[108]*x[103])-1.42400548701993*(x[94]*x[103]-x[89]*x[108]))*b[114]+x[52] == 0.0)
@NLconstraint(m, e54, -(21.5785539816916*( (x[84])^2+ (x[98])^2)-21.5785539816916*(x[84]*x[85]+x[98]*x[99])-6.84098066149567*(x[84]*x[99]-x[85]*x[98]))*b[115]+x[53] == 0.0)
@NLconstraint(m, e55, -(21.5785539816916*( (x[85])^2+ (x[99])^2)-21.5785539816916*(x[85]*x[84]+x[99]*x[98])-6.84098066149567*(x[85]*x[98]-x[84]*x[99]))*b[115]+x[54] == 0.0)
@NLconstraint(m, e56, -(6.10275544819311*( (x[86])^2+ (x[100])^2)-6.10275544819311*(x[86]*x[93]+x[100]*x[107])-3.09892740383799*(x[86]*x[107]-x[93]*x[100]))*b[116]+x[55] == 0.0)
@NLconstraint(m, e57, -(6.10275544819311*( (x[93])^2+ (x[107])^2)-6.10275544819311*(x[93]*x[86]+x[107]*x[100])-3.09892740383799*(x[93]*x[100]-x[86]*x[107]))*b[116]+x[56] == 0.0)
@NLconstraint(m, e58, -(5.67697984672154*( (x[87])^2+ (x[101])^2)-5.67697984672154*(x[87]*x[88]+x[101]*x[102]))*b[117]+x[57] == 0.0)
@NLconstraint(m, e59, -(5.67697984672154*( (x[88])^2+ (x[102])^2)-5.67697984672154*(x[88]*x[87]+x[102]*x[101]))*b[117]+x[58] == 0.0)
@NLconstraint(m, e60, -(2.31496347510535*( (x[93])^2+ (x[107])^2)-2.31496347510535*(x[93]*x[94]+x[107]*x[108])-1.13699415780633*(x[93]*x[108]-x[94]*x[107]))*b[118]+x[59] == 0.0)
@NLconstraint(m, e61, -(2.31496347510535*( (x[94])^2+ (x[108])^2)-2.31496347510535*(x[94]*x[93]+x[108]*x[107])-1.13699415780633*(x[94]*x[107]-x[93]*x[108]))*b[118]+x[60] == 0.0)
@NLconstraint(m, e62, -(3.1759639650294*( (x[86])^2+ (x[100])^2)-3.1759639650294*(x[86]*x[92]+x[100]*x[106])-1.52596744045097*(x[86]*x[106]-x[92]*x[100]))*b[119]+x[61] == 0.0)
@NLconstraint(m, e63, -(3.1759639650294*( (x[92])^2+ (x[106])^2)-3.1759639650294*(x[92]*x[86]+x[106]*x[100])-1.52596744045097*(x[92]*x[100]-x[86]*x[106]))*b[119]+x[62] == 0.0)
@NLconstraint(m, e64, -(4.09407434424044*( (x[86])^2+ (x[100])^2)-4.09407434424044*(x[86]*x[91]+x[100]*x[105])-1.95502856317726*(x[86]*x[105]-x[91]*x[100]))*b[120]+x[63] == 0.0)
@NLconstraint(m, e65, -(4.09407434424044*( (x[91])^2+ (x[105])^2)-4.09407434424044*(x[91]*x[86]+x[105]*x[100])-1.95502856317726*(x[91]*x[100]-x[86]*x[105]))*b[120]+x[64] == 0.0)
@NLconstraint(m, e66, -(2.25197462617221*( (x[92])^2+ (x[106])^2)-2.25197462617221*(x[92]*x[93]+x[106]*x[107])-2.48902458682192*(x[92]*x[107]-x[93]*x[106]))*b[121]+x[65] == 0.0)
@NLconstraint(m, e67, -(2.25197462617221*( (x[93])^2+ (x[107])^2)-2.25197462617221*(x[93]*x[92]+x[107]*x[106])-2.48902458682192*(x[93]*x[106]-x[92]*x[107]))*b[121]+x[66] == 0.0)
@NLconstraint(m, e68, -(4.21038368233483*( (x[81])^2+ (x[95])^2)-4.23498368233483*(x[81]*x[85]+x[95]*x[99])-1.02589745497019*(x[81]*x[99]-x[85]*x[95]))*b[122]+x[67] == 0.0)
@NLconstraint(m, e69, -(4.21038368233483*( (x[85])^2+ (x[99])^2)-4.23498368233483*(x[85]*x[81]+x[99]*x[95])-1.02589745497019*(x[85]*x[95]-x[81]*x[99]))*b[122]+x[68] == 0.0)
@NLconstraint(m, e70, -(10.3653941270609*( (x[89])^2+ (x[103])^2)-10.3653941270609*(x[89]*x[90]+x[103]*x[104])-3.90204955244743*(x[89]*x[104]-x[90]*x[103]))*b[123]+x[69] == 0.0)
@NLconstraint(m, e71, -(10.3653941270609*( (x[90])^2+ (x[104])^2)-10.3653941270609*(x[90]*x[89]+x[104]*x[103])-3.90204955244743*(x[90]*x[103]-x[89]*x[104]))*b[123]+x[70] == 0.0)
@NLconstraint(m, e72, -(15.2366865231796*( (x[81])^2+ (x[95])^2)-15.2630865231796*(x[81]*x[82]+x[95]*x[96])-4.99913160079803*(x[81]*x[96]-x[82]*x[95]))*b[124]+x[71] == 0.0)
@NLconstraint(m, e73, -(15.2366865231796*( (x[82])^2+ (x[96])^2)-15.2630865231796*(x[82]*x[81]+x[96]*x[95])-4.99913160079803*(x[82]*x[95]-x[81]*x[96]))*b[124]+x[72] == 0.0)
@NLconstraint(m, e74, -(5.17662739796971*( (x[82])^2+ (x[96])^2)-5.19392739796971*(x[82]*x[85]+x[96]*x[99])-1.7011396670944*(x[82]*x[99]-x[85]*x[96]))*b[125]+x[73] == 0.0)
@NLconstraint(m, e75, -(5.17662739796971*( (x[85])^2+ (x[99])^2)-5.19392739796971*(x[85]*x[82]+x[99]*x[96])-1.7011396670944*(x[85]*x[96]-x[82]*x[99]))*b[125]+x[74] == 0.0)
@NLconstraint(m, e76, -(5.06241697759392*( (x[83])^2+ (x[97])^2)-5.06881697759392*(x[83]*x[84]+x[97]*x[98])-1.98597570992556*(x[83]*x[98]-x[84]*x[97]))*b[126]+x[75] == 0.0)
@NLconstraint(m, e77, -(5.06241697759392*( (x[84])^2+ (x[98])^2)-5.06881697759392*(x[84]*x[83]+x[98]*x[97])-1.98597570992556*(x[84]*x[97]-x[83]*x[98]))*b[126]+x[76] == 0.0)
@NLconstraint(m, e78, -(1.79797907152361*( (x[84])^2+ (x[98])^2)-1.79797907152361*(x[84]*x[89]+x[98]*x[103]))*b[127]+x[77] == 0.0)
@NLconstraint(m, e79, -(1.79797907152361*( (x[89])^2+ (x[103])^2)-1.79797907152361*(x[89]*x[84]+x[103]*x[98]))*b[127]+x[78] == 0.0)
@NLconstraint(m, e80, -(5.09883832587208*( (x[82])^2+ (x[96])^2)-5.11583832587208*(x[82]*x[84]+x[96]*x[98])-1.68603315061494*(x[82]*x[98]-x[84]*x[96]))*b[128]+x[79] == 0.0)
@NLconstraint(m, e81, -(5.09883832587208*( (x[84])^2+ (x[98])^2)-5.11583832587208*(x[84]*x[82]+x[98]*x[96])-1.68603315061494*(x[84]*x[96]-x[82]*x[98]))*b[128]+x[80] == 0.0)
@NLconstraint(m, e82,  (x[1])^2+ (x[41])^2 <= 9801.0)
@NLconstraint(m, e83,  (x[2])^2+ (x[42])^2 <= 9801.0)
@NLconstraint(m, e84,  (x[3])^2+ (x[43])^2 <= 9801.0)
@NLconstraint(m, e85,  (x[4])^2+ (x[44])^2 <= 9801.0)
@NLconstraint(m, e86,  (x[5])^2+ (x[45])^2 <= 9801.0)
@NLconstraint(m, e87,  (x[6])^2+ (x[46])^2 <= 9801.0)
@NLconstraint(m, e88,  (x[7])^2+ (x[47])^2 <= 9801.0)
@NLconstraint(m, e89,  (x[8])^2+ (x[48])^2 <= 9801.0)
@NLconstraint(m, e90,  (x[9])^2+ (x[49])^2 <= 9801.0)
@NLconstraint(m, e91,  (x[10])^2+ (x[50])^2 <= 9801.0)
@NLconstraint(m, e92,  (x[11])^2+ (x[51])^2 <= 9801.0)
@NLconstraint(m, e93,  (x[12])^2+ (x[52])^2 <= 9801.0)
@NLconstraint(m, e94,  (x[13])^2+ (x[53])^2 <= 9801.0)
@NLconstraint(m, e95,  (x[14])^2+ (x[54])^2 <= 9801.0)
@NLconstraint(m, e96,  (x[15])^2+ (x[55])^2 <= 9801.0)
@NLconstraint(m, e97,  (x[16])^2+ (x[56])^2 <= 9801.0)
@NLconstraint(m, e98,  (x[17])^2+ (x[57])^2 <= 9801.0)
@NLconstraint(m, e99,  (x[18])^2+ (x[58])^2 <= 9801.0)
@NLconstraint(m, e100,  (x[19])^2+ (x[59])^2 <= 9801.0)
@NLconstraint(m, e101,  (x[20])^2+ (x[60])^2 <= 9801.0)
@NLconstraint(m, e102,  (x[21])^2+ (x[61])^2 <= 9801.0)
@NLconstraint(m, e103,  (x[22])^2+ (x[62])^2 <= 9801.0)
@NLconstraint(m, e104,  (x[23])^2+ (x[63])^2 <= 9801.0)
@NLconstraint(m, e105,  (x[24])^2+ (x[64])^2 <= 9801.0)
@NLconstraint(m, e106,  (x[25])^2+ (x[65])^2 <= 9801.0)
@NLconstraint(m, e107,  (x[26])^2+ (x[66])^2 <= 9801.0)
@NLconstraint(m, e108,  (x[27])^2+ (x[67])^2 <= 9801.0)
@NLconstraint(m, e109,  (x[28])^2+ (x[68])^2 <= 9801.0)
@NLconstraint(m, e110,  (x[29])^2+ (x[69])^2 <= 9801.0)
@NLconstraint(m, e111,  (x[30])^2+ (x[70])^2 <= 9801.0)
@NLconstraint(m, e112,  (x[31])^2+ (x[71])^2 <= 9801.0)
@NLconstraint(m, e113,  (x[32])^2+ (x[72])^2 <= 9801.0)
@NLconstraint(m, e114,  (x[33])^2+ (x[73])^2 <= 9801.0)
@NLconstraint(m, e115,  (x[34])^2+ (x[74])^2 <= 9801.0)
@NLconstraint(m, e116,  (x[35])^2+ (x[75])^2 <= 9801.0)
@NLconstraint(m, e117,  (x[36])^2+ (x[76])^2 <= 9801.0)
@NLconstraint(m, e118,  (x[37])^2+ (x[77])^2 <= 9801.0)
@NLconstraint(m, e119,  (x[38])^2+ (x[78])^2 <= 9801.0)
@NLconstraint(m, e120,  (x[39])^2+ (x[79])^2 <= 9801.0)
@NLconstraint(m, e121,  (x[40])^2+ (x[80])^2 <= 9801.0)
@NLconstraint(m, e122,  (x[81])^2+ (x[95])^2 <= 1.1236)
@NLconstraint(m, e123,  (x[82])^2+ (x[96])^2 <= 1.1236)
@NLconstraint(m, e124,  (x[83])^2+ (x[97])^2 <= 1.1236)
@NLconstraint(m, e125,  (x[84])^2+ (x[98])^2 <= 1.1236)
@NLconstraint(m, e126,  (x[85])^2+ (x[99])^2 <= 1.1236)
@NLconstraint(m, e127,  (x[86])^2+ (x[100])^2 <= 1.1236)
@NLconstraint(m, e128,  (x[87])^2+ (x[101])^2 <= 1.1236)
@NLconstraint(m, e129,  (x[88])^2+ (x[102])^2 <= 1.1236)
@NLconstraint(m, e130,  (x[89])^2+ (x[103])^2 <= 1.1236)
@NLconstraint(m, e131,  (x[90])^2+ (x[104])^2 <= 1.1236)
@NLconstraint(m, e132,  (x[91])^2+ (x[105])^2 <= 1.1236)
@NLconstraint(m, e133,  (x[92])^2+ (x[106])^2 <= 1.1236)
@NLconstraint(m, e134,  (x[93])^2+ (x[107])^2 <= 1.1236)
@NLconstraint(m, e135,  (x[94])^2+ (x[108])^2 <= 1.1236)
@NLconstraint(m, e136,  (x[81])^2+ (x[95])^2 >= 0.8836)
@NLconstraint(m, e137,  (x[82])^2+ (x[96])^2 >= 0.8836)
@NLconstraint(m, e138,  (x[83])^2+ (x[97])^2 >= 0.8836)
@NLconstraint(m, e139,  (x[84])^2+ (x[98])^2 >= 0.8836)
@NLconstraint(m, e140,  (x[85])^2+ (x[99])^2 >= 0.8836)
@NLconstraint(m, e141,  (x[86])^2+ (x[100])^2 >= 0.8836)
@NLconstraint(m, e142,  (x[87])^2+ (x[101])^2 >= 0.8836)
@NLconstraint(m, e143,  (x[88])^2+ (x[102])^2 >= 0.8836)
@NLconstraint(m, e144,  (x[89])^2+ (x[103])^2 >= 0.8836)
@NLconstraint(m, e145,  (x[90])^2+ (x[104])^2 >= 0.8836)
@NLconstraint(m, e146,  (x[91])^2+ (x[105])^2 >= 0.8836)
@NLconstraint(m, e147,  (x[92])^2+ (x[106])^2 >= 0.8836)
@NLconstraint(m, e148,  (x[93])^2+ (x[107])^2 >= 0.8836)
@NLconstraint(m, e149,  (x[94])^2+ (x[108])^2 >= 0.8836)
@constraint(m, e150, x[129] <= 3.324)
@constraint(m, e151, x[130] <= 1.4)
@constraint(m, e152, x[131] <= 1.0)
@constraint(m, e153, x[132] <= 1.0)
@constraint(m, e154, x[133] <= 1.0)
@constraint(m, e155, x[129] >= 0.0)
@constraint(m, e156, x[130] >= 0.0)
@constraint(m, e157, x[131] >= 0.0)
@constraint(m, e158, x[132] >= 0.0)
@constraint(m, e159, x[133] >= 0.0)
@constraint(m, e160, x[134] <= 0.1)
@constraint(m, e161, x[135] <= 0.5)
@constraint(m, e162, x[136] <= 0.4)
@constraint(m, e163, x[137] <= 0.24)
@constraint(m, e164, x[138] <= 0.24)
@constraint(m, e165, x[134] >= 0.0)
@constraint(m, e166, x[135] >= -0.4)
@constraint(m, e167, x[136] >= 0.0)
@constraint(m, e168, x[137] >= -0.06)
@constraint(m, e169, x[138] >= -0.06)
@constraint(m, e170, x[95] == 0.0)
@constraint(m, e171, x[27]+x[31]-x[129] == 0.0)
@constraint(m, e172, x[1]+x[32]+x[33]+x[39]-x[130] == -0.217)
@constraint(m, e173, x[2]+x[35]-x[131] == -0.942)
@constraint(m, e174, x[10]+x[15]+x[21]+x[23]-x[132] == -0.112)
@constraint(m, e175, x[18]-x[133] == 0.0)
@constraint(m, e176, x[67]+x[71]-x[134] == 0.0)
@constraint(m, e177, x[41]+x[72]+x[73]+x[79]-x[135] == -0.127)
@constraint(m, e178, x[42]+x[75]-x[136] == -0.19)
@constraint(m, e179, x[50]+x[55]+x[61]+x[63]-x[137] == -0.075)
@constraint(m, e180, x[58]-x[138] == 0.0)
@constraint(m, e181, x[7]+x[13]+x[36]+x[37]+x[40] == -0.478)
@constraint(m, e182, x[9]+x[14]+x[28]+x[34] == -0.076)
@constraint(m, e183, x[3]+x[8]+x[17] == 0.0)
@constraint(m, e184, x[4]+x[11]+x[29]+x[38] == -0.295)
@constraint(m, e185, x[5]+x[30] == -0.09)
@constraint(m, e186, x[6]+x[24] == -0.035)
@constraint(m, e187, x[22]+x[25] == -0.061)
@constraint(m, e188, x[16]+x[19]+x[26] == -0.135)
@constraint(m, e189, x[12]+x[20] == -0.149)
@constraint(m, e190, x[47]+x[53]+x[76]+x[77]+x[80] == 0.039)
@constraint(m, e191, x[49]+x[54]+x[68]+x[74] == -0.016)
@constraint(m, e192, x[43]+x[48]+x[57] == 0.0)
@constraint(m, e193, x[44]+x[51]+x[69]+x[78] == -0.166)
@constraint(m, e194, x[45]+x[70] == -0.058)
@constraint(m, e195, x[46]+x[64] == -0.018)
@constraint(m, e196, x[62]+x[65] == -0.016)
@constraint(m, e197, x[56]+x[59]+x[66] == -0.058)
@constraint(m, e198, x[52]+x[60] == -0.05)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
