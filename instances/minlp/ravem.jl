using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59]
@variable(m, x[x_Idx])
b_Idx = Any[60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[1], 5.7037824746562)
set_upper_bound(x[1], 8.1605182474775)
set_lower_bound(x[2], 5.7037824746562)
set_upper_bound(x[2], 8.1605182474775)
set_lower_bound(x[3], 5.7037824746562)
set_upper_bound(x[3], 8.1605182474775)
set_lower_bound(x[4], 5.7037824746562)
set_upper_bound(x[4], 8.1605182474775)
set_lower_bound(x[5], 5.7037824746562)
set_upper_bound(x[5], 8.1605182474775)
set_lower_bound(x[6], 5.7037824746562)
set_upper_bound(x[6], 8.1605182474775)
set_lower_bound(x[7], 4.45966260231685)
set_upper_bound(x[7], 6.09365548800453)
set_lower_bound(x[8], 4.45966260231685)
set_upper_bound(x[8], 6.09365548800453)
set_lower_bound(x[9], 4.45966260231685)
set_upper_bound(x[9], 6.09365548800453)
set_lower_bound(x[10], 4.45966260231685)
set_upper_bound(x[10], 6.09365548800453)
set_lower_bound(x[11], 4.45966260231685)
set_upper_bound(x[11], 6.09365548800453)
set_lower_bound(x[12], 4.45966260231685)
set_upper_bound(x[12], 6.09365548800453)
set_lower_bound(x[13], 3.74950407593037)
set_upper_bound(x[13], 6.93674281585539)
set_lower_bound(x[14], 3.74950407593037)
set_upper_bound(x[14], 6.93674281585539)
set_lower_bound(x[15], 3.74950407593037)
set_upper_bound(x[15], 6.93674281585539)
set_lower_bound(x[16], 3.74950407593037)
set_upper_bound(x[16], 6.93674281585539)
set_lower_bound(x[17], 3.74950407593037)
set_upper_bound(x[17], 6.93674281585539)
set_lower_bound(x[18], 3.74950407593037)
set_upper_bound(x[18], 6.93674281585539)
set_lower_bound(x[19], 4.49144142065975)
set_upper_bound(x[19], 6.87958440201544)
set_lower_bound(x[20], 4.49144142065975)
set_upper_bound(x[20], 6.87958440201544)
set_lower_bound(x[21], 4.49144142065975)
set_upper_bound(x[21], 6.87958440201544)
set_lower_bound(x[22], 4.49144142065975)
set_upper_bound(x[22], 6.87958440201544)
set_lower_bound(x[23], 4.49144142065975)
set_upper_bound(x[23], 6.87958440201544)
set_lower_bound(x[24], 4.49144142065975)
set_upper_bound(x[24], 6.87958440201544)
set_lower_bound(x[25], 3.14988295338125)
set_upper_bound(x[25], 6.61295573876149)
set_lower_bound(x[26], 3.14988295338125)
set_upper_bound(x[26], 6.61295573876149)
set_lower_bound(x[27], 3.14988295338125)
set_upper_bound(x[27], 6.61295573876149)
set_lower_bound(x[28], 3.14988295338125)
set_upper_bound(x[28], 6.61295573876149)
set_lower_bound(x[29], 3.14988295338125)
set_upper_bound(x[29], 6.61295573876149)
set_lower_bound(x[30], 3.14988295338125)
set_upper_bound(x[30], 6.61295573876149)
set_lower_bound(x[31], 3.04452243772342)
set_upper_bound(x[31], 6.65644085070123)
set_lower_bound(x[32], 3.04452243772342)
set_upper_bound(x[32], 6.65644085070123)
set_lower_bound(x[33], 3.04452243772342)
set_upper_bound(x[33], 6.65644085070123)
set_lower_bound(x[34], 3.04452243772342)
set_upper_bound(x[34], 6.65644085070123)
set_lower_bound(x[35], 3.04452243772342)
set_upper_bound(x[35], 6.65644085070123)
set_lower_bound(x[36], 3.04452243772342)
set_upper_bound(x[36], 6.65644085070123)
set_upper_bound(x[37], 1.38629436111989)
set_upper_bound(x[38], 1.38629436111989)
set_upper_bound(x[39], 1.38629436111989)
set_upper_bound(x[40], 1.38629436111989)
set_upper_bound(x[41], 1.38629436111989)
set_upper_bound(x[42], 1.38629436111989)
set_upper_bound(x[43], 1.38629436111989)
set_upper_bound(x[44], 1.38629436111989)
set_upper_bound(x[45], 1.38629436111989)
set_upper_bound(x[46], 1.38629436111989)
set_upper_bound(x[47], 1.38629436111989)
set_upper_bound(x[48], 1.38629436111989)
set_lower_bound(x[50], 4.60517018598809)
set_upper_bound(x[50], 9.61580548008435)
set_lower_bound(x[51], 4.60517018598809)
set_upper_bound(x[51], 9.61580548008435)
set_lower_bound(x[52], 4.60517018598809)
set_upper_bound(x[52], 9.61580548008435)
set_lower_bound(x[53], 4.60517018598809)
set_upper_bound(x[53], 9.61580548008435)
set_lower_bound(x[54], 4.60517018598809)
set_upper_bound(x[54], 9.61580548008435)


# ----- Constraints ----- #
@constraint(m, b[113] == 0)
@constraint(m, e1, x[1]-x[7]+x[37] >= 2.06686275947298)
@constraint(m, e2, x[2]-x[8]+x[38] >= 0.693147180559945)
@constraint(m, e3, x[3]-x[9]+x[39] >= 1.64865862558738)
@constraint(m, e4, x[4]-x[10]+x[40] >= 1.58923520511658)
@constraint(m, e5, x[5]-x[11]+x[41] >= 1.80828877117927)
@constraint(m, e6, x[6]-x[12]+x[42] >= 1.43508452528932)
@constraint(m, e7, x[1]-x[13]+x[37] >= -0.356674943938732)
@constraint(m, e8, x[2]-x[14]+x[38] >= -0.22314355131421)
@constraint(m, e9, x[3]-x[15]+x[39] >= -0.105360515657826)
@constraint(m, e10, x[4]-x[16]+x[40] >= 1.22377543162212)
@constraint(m, e11, x[5]-x[17]+x[41] >= 0.741937344729377)
@constraint(m, e12, x[6]-x[18]+x[42] >= 0.916290731874155)
@constraint(m, e13, x[1]-x[19]+x[37] >= -0.356674943938732)
@constraint(m, e14, x[2]-x[20]+x[38] >= 0.955511445027436)
@constraint(m, e15, x[3]-x[21]+x[39] >= 0.470003629245736)
@constraint(m, e16, x[4]-x[22]+x[40] >= 1.28093384546206)
@constraint(m, e17, x[5]-x[23]+x[41] >= 1.16315080980568)
@constraint(m, e18, x[6]-x[24]+x[42] >= 1.06471073699243)
@constraint(m, e19, x[1]-x[25]+x[37] >= 1.54756250871601)
@constraint(m, e20, x[2]-x[26]+x[38] >= 0.832909122935104)
@constraint(m, e21, x[3]-x[27]+x[39] >= 0.470003629245736)
@constraint(m, e22, x[4]-x[28]+x[40] >= 0.993251773010283)
@constraint(m, e23, x[5]-x[29]+x[41] >= 0.182321556793955)
@constraint(m, e24, x[6]-x[30]+x[42] >= 0.916290731874155)
@constraint(m, e25, x[1]-x[31]+x[37] >= 0.182321556793955)
@constraint(m, e26, x[2]-x[32]+x[38] >= 1.28093384546206)
@constraint(m, e27, x[3]-x[33]+x[39] >= 0.8754687373539)
@constraint(m, e28, x[4]-x[34]+x[40] >= 1.50407739677627)
@constraint(m, e29, x[5]-x[35]+x[41] >= 0.470003629245736)
@constraint(m, e30, x[6]-x[36]+x[42] >= 0.741937344729377)
@constraint(m, e31, x[7]+x[43]+x[55] >= 1.85629799036563)
@constraint(m, e32, x[8]+x[44]+x[55] >= 1.54756250871601)
@constraint(m, e33, x[9]+x[45]+x[55] >= 2.11625551480255)
@constraint(m, e34, x[10]+x[46]+x[55] >= 1.3609765531356)
@constraint(m, e35, x[11]+x[47]+x[55] >= 0.741937344729377)
@constraint(m, e36, x[12]+x[48]+x[55] >= 0.182321556793955)
@constraint(m, e37, x[13]+x[43]+x[56] >= 1.91692261218206)
@constraint(m, e38, x[14]+x[44]+x[56] >= 1.85629799036563)
@constraint(m, e39, x[15]+x[45]+x[56] >= 1.87180217690159)
@constraint(m, e40, x[16]+x[46]+x[56] >= 1.48160454092422)
@constraint(m, e41, x[17]+x[47]+x[56] >= 0.832909122935104)
@constraint(m, e42, x[18]+x[48]+x[56] >= 1.16315080980568)
@constraint(m, e43, x[19]+x[43]+x[57] >= 0.0)
@constraint(m, e44, x[20]+x[44]+x[57] >= 1.84054963339749)
@constraint(m, e45, x[21]+x[45]+x[57] >= 1.68639895357023)
@constraint(m, e46, x[22]+x[46]+x[57] >= 2.47653840011748)
@constraint(m, e47, x[23]+x[47]+x[57] >= 1.7404661748405)
@constraint(m, e48, x[24]+x[48]+x[57] >= 1.82454929205105)
@constraint(m, e49, x[25]+x[43]+x[58] >= 1.16315080980568)
@constraint(m, e50, x[26]+x[44]+x[58] >= 1.09861228866811)
@constraint(m, e51, x[27]+x[45]+x[58] >= 1.25276296849537)
@constraint(m, e52, x[28]+x[46]+x[58] >= 1.19392246847243)
@constraint(m, e53, x[29]+x[47]+x[58] >= 1.02961941718116)
@constraint(m, e54, x[30]+x[48]+x[58] >= 1.22377543162212)
@constraint(m, e55, x[31]+x[43]+x[59] >= 0.741937344729377)
@constraint(m, e56, x[32]+x[44]+x[59] >= 0.916290731874155)
@constraint(m, e57, x[33]+x[45]+x[59] >= 1.43508452528932)
@constraint(m, e58, x[34]+x[46]+x[59] >= 1.28093384546206)
@constraint(m, e59, x[35]+x[47]+x[59] >= 1.30833281965018)
@constraint(m, e60, x[36]+x[48]+x[59] >= 0.78845736036427)
@NLconstraint(m, e61, 250000*exp(x[55])+150000*exp(x[56])+180000*exp(x[57])+160000*exp(x[58])+120000*exp(x[59]) <= 6000.0)
@constraint(m, e62, -x[8]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e63, -x[9]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e64, -x[10]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e65, -x[11]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e66, -x[12]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e67, -x[14]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e68, -x[15]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e69, -x[16]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e70, -x[17]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e71, -x[18]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e72, -x[20]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e73, -x[21]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e74, -x[22]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e75, -x[23]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e76, -x[24]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e77, -x[26]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e78, -x[27]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e79, -x[28]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e80, -x[29]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e81, -x[30]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e82, -x[32]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e83, -x[33]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e84, -x[34]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e85, -x[35]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e86, -x[36]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e87, -x[7]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e88, -x[8]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e89, -x[9]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e90, -x[10]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e91, -x[11]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e92, -x[13]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e93, -x[14]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e94, -x[15]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e95, -x[16]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e96, -x[17]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e97, -x[19]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e98, -x[20]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e99, -x[21]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e100, -x[22]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e101, -x[23]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e102, -x[25]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e103, -x[26]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e104, -x[27]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e105, -x[28]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e106, -x[29]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e107, -x[31]+x[50]-10*b[108] >= -7.69741490700595)
@constraint(m, e108, -x[32]+x[51]-10*b[109] >= -7.69741490700595)
@constraint(m, e109, -x[33]+x[52]-10*b[110] >= -7.69741490700595)
@constraint(m, e110, -x[34]+x[53]-10*b[111] >= -7.69741490700595)
@constraint(m, e111, -x[35]+x[54]-10*b[112] >= -7.69741490700595)
@constraint(m, e112, x[37]-0.693147180559945*b[66]-1.09861228866811*b[72]-1.38629436111989*b[78] == 0.0)
@constraint(m, e113, x[38]-0.693147180559945*b[67]-1.09861228866811*b[73]-1.38629436111989*b[79] == 0.0)
@constraint(m, e114, x[39]-0.693147180559945*b[68]-1.09861228866811*b[74]-1.38629436111989*b[80] == 0.0)
@constraint(m, e115, x[40]-0.693147180559945*b[69]-1.09861228866811*b[75]-1.38629436111989*b[81] == 0.0)
@constraint(m, e116, x[41]-0.693147180559945*b[70]-1.09861228866811*b[76]-1.38629436111989*b[82] == 0.0)
@constraint(m, e117, x[42]-0.693147180559945*b[71]-1.09861228866811*b[77]-1.38629436111989*b[83] == 0.0)
@constraint(m, e118, x[43]-0.693147180559945*b[90]-1.09861228866811*b[96]-1.38629436111989*b[102] == 0.0)
@constraint(m, e119, x[44]-0.693147180559945*b[91]-1.09861228866811*b[97]-1.38629436111989*b[103] == 0.0)
@constraint(m, e120, x[45]-0.693147180559945*b[92]-1.09861228866811*b[98]-1.38629436111989*b[104] == 0.0)
@constraint(m, e121, x[46]-0.693147180559945*b[93]-1.09861228866811*b[99]-1.38629436111989*b[105] == 0.0)
@constraint(m, e122, x[47]-0.693147180559945*b[94]-1.09861228866811*b[100]-1.38629436111989*b[106] == 0.0)
@constraint(m, e123, x[48]-0.693147180559945*b[95]-1.09861228866811*b[101]-1.38629436111989*b[107] == 0.0)
@constraint(m, e124, b[60]+b[66]+b[72]+b[78] == 1.0)
@constraint(m, e125, b[61]+b[67]+b[73]+b[79] == 1.0)
@constraint(m, e126, b[62]+b[68]+b[74]+b[80] == 1.0)
@constraint(m, e127, b[63]+b[69]+b[75]+b[81] == 1.0)
@constraint(m, e128, b[64]+b[70]+b[76]+b[82] == 1.0)
@constraint(m, e129, b[65]+b[71]+b[77]+b[83] == 1.0)
@constraint(m, e130, b[84]+b[90]+b[96]+b[102] == 1.0)
@constraint(m, e131, b[85]+b[91]+b[97]+b[103] == 1.0)
@constraint(m, e132, b[86]+b[92]+b[98]+b[104] == 1.0)
@constraint(m, e133, b[87]+b[93]+b[99]+b[105] == 1.0)
@constraint(m, e134, b[88]+b[94]+b[100]+b[106] == 1.0)
@constraint(m, e135, b[89]+b[95]+b[101]+b[107] == 1.0)
@constraint(m, e136, b[108]+b[109]+b[110]+b[111]+b[112]+b[113] == 1.0)
@constraint(m, e137, x[7]-x[8]-0.693147180559945*b[108] <= 0.0)
@constraint(m, e138, x[8]-x[9]-0.693147180559945*b[109] <= 0.0)
@constraint(m, e139, x[9]-x[10]-0.693147180559945*b[110] <= 0.0)
@constraint(m, e140, x[10]-x[11]-0.693147180559945*b[111] <= 0.0)
@constraint(m, e141, x[11]-x[12]-0.693147180559945*b[112] <= 0.0)
@constraint(m, e142, x[13]-x[14]-0.693147180559945*b[108] <= 0.0)
@constraint(m, e143, x[14]-x[15]-0.693147180559945*b[109] <= 0.0)
@constraint(m, e144, x[15]-x[16]-0.693147180559945*b[110] <= 0.0)
@constraint(m, e145, x[16]-x[17]-0.693147180559945*b[111] <= 0.0)
@constraint(m, e146, x[17]-x[18]-0.693147180559945*b[112] <= 0.0)
@constraint(m, e147, x[19]-x[20]-0.693147180559945*b[108] <= 0.0)
@constraint(m, e148, x[20]-x[21]-0.693147180559945*b[109] <= 0.0)
@constraint(m, e149, x[21]-x[22]-0.693147180559945*b[110] <= 0.0)
@constraint(m, e150, x[22]-x[23]-0.693147180559945*b[111] <= 0.0)
@constraint(m, e151, x[23]-x[24]-0.693147180559945*b[112] <= 0.0)
@constraint(m, e152, x[25]-x[26]-0.693147180559945*b[108] <= 0.0)
@constraint(m, e153, x[26]-x[27]-0.693147180559945*b[109] <= 0.0)
@constraint(m, e154, x[27]-x[28]-0.693147180559945*b[110] <= 0.0)
@constraint(m, e155, x[28]-x[29]-0.693147180559945*b[111] <= 0.0)
@constraint(m, e156, x[29]-x[30]-0.693147180559945*b[112] <= 0.0)
@constraint(m, e157, x[31]-x[32]-0.693147180559945*b[108] <= 0.0)
@constraint(m, e158, x[32]-x[33]-0.693147180559945*b[109] <= 0.0)
@constraint(m, e159, x[33]-x[34]-0.693147180559945*b[110] <= 0.0)
@constraint(m, e160, x[34]-x[35]-0.693147180559945*b[111] <= 0.0)
@constraint(m, e161, x[35]-x[36]-0.693147180559945*b[112] <= 0.0)
@constraint(m, e162, x[7]-x[8]+0.693147180559945*b[108] >= 0.0)
@constraint(m, e163, x[8]-x[9]+0.693147180559945*b[109] >= 0.0)
@constraint(m, e164, x[9]-x[10]+0.693147180559945*b[110] >= 0.0)
@constraint(m, e165, x[10]-x[11]+0.693147180559945*b[111] >= 0.0)
@constraint(m, e166, x[11]-x[12]+0.693147180559945*b[112] >= 0.0)
@constraint(m, e167, x[13]-x[14]+0.693147180559945*b[108] >= 0.0)
@constraint(m, e168, x[14]-x[15]+0.693147180559945*b[109] >= 0.0)
@constraint(m, e169, x[15]-x[16]+0.693147180559945*b[110] >= 0.0)
@constraint(m, e170, x[16]-x[17]+0.693147180559945*b[111] >= 0.0)
@constraint(m, e171, x[17]-x[18]+0.693147180559945*b[112] >= 0.0)
@constraint(m, e172, x[19]-x[20]+0.693147180559945*b[108] >= 0.0)
@constraint(m, e173, x[20]-x[21]+0.693147180559945*b[109] >= 0.0)
@constraint(m, e174, x[21]-x[22]+0.693147180559945*b[110] >= 0.0)
@constraint(m, e175, x[22]-x[23]+0.693147180559945*b[111] >= 0.0)
@constraint(m, e176, x[23]-x[24]+0.693147180559945*b[112] >= 0.0)
@constraint(m, e177, x[25]-x[26]+0.693147180559945*b[108] >= 0.0)
@constraint(m, e178, x[26]-x[27]+0.693147180559945*b[109] >= 0.0)
@constraint(m, e179, x[27]-x[28]+0.693147180559945*b[110] >= 0.0)
@constraint(m, e180, x[28]-x[29]+0.693147180559945*b[111] >= 0.0)
@constraint(m, e181, x[29]-x[30]+0.693147180559945*b[112] >= 0.0)
@constraint(m, e182, x[31]-x[32]+0.693147180559945*b[108] >= 0.0)
@constraint(m, e183, x[32]-x[33]+0.693147180559945*b[109] >= 0.0)
@constraint(m, e184, x[33]-x[34]+0.693147180559945*b[110] >= 0.0)
@constraint(m, e185, x[34]-x[35]+0.693147180559945*b[111] >= 0.0)
@constraint(m, e186, x[35]-x[36]+0.693147180559945*b[112] >= 0.0)
@NLconstraint(m, e187, 250*(exp(0.6*x[1]+x[37]+x[43])+exp(0.6*x[2]+x[38]+x[44])+exp(0.6*x[3]+x[39]+x[45])+exp(0.6*x[4]+x[40]+x[46])+exp(0.6*x[5]+x[41]+x[47])+exp(0.6*x[6]+x[42]+x[48]))+150*(exp(0.5*x[50])+exp(0.5*x[51])+exp(0.5*x[52])+exp(0.5*x[53])+exp(0.5*x[54]))-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
