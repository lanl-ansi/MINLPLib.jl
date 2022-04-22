using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@constraint(m, e31, b[91]+b[92]+b[93] == 1.0)
@constraint(m, e32, b[94]+b[95]+b[96] == 1.0)
@constraint(m, e33, b[97]+b[98]+b[99] == 1.0)
@constraint(m, e34, b[100]+b[101]+b[102] == 1.0)
@constraint(m, e35, b[103]+b[104]+b[105] == 1.0)
@constraint(m, e36, b[106]+b[107]+b[108] == 1.0)
@constraint(m, e37, b[109]+b[110]+b[111] == 1.0)
@constraint(m, e38, b[112]+b[113]+b[114] == 1.0)
@constraint(m, e39, b[115]+b[116]+b[117] == 1.0)
@constraint(m, e40, b[118]+b[119]+b[120] == 1.0)
@constraint(m, e41, b[121]+b[122]+b[123] == 1.0)
@constraint(m, e42, b[124]+b[125]+b[126] == 1.0)
@constraint(m, e43, b[127]+b[128]+b[129] == 1.0)
@constraint(m, e44, b[130]+b[131]+b[132] == 1.0)
@constraint(m, e45, b[133]+b[134]+b[135] == 1.0)
@constraint(m, e46, b[136]+b[137]+b[138] == 1.0)
@constraint(m, e47, b[139]+b[140]+b[141] == 1.0)
@constraint(m, e48, b[142]+b[143]+b[144] == 1.0)
@constraint(m, e49, b[145]+b[146]+b[147] == 1.0)
@constraint(m, e50, b[148]+b[149]+b[150] == 1.0)
@constraint(m, e51, b[151]+b[152]+b[153] == 1.0)
@constraint(m, e52, b[154]+b[155]+b[156] == 1.0)
@constraint(m, e53, b[157]+b[158]+b[159] == 1.0)
@constraint(m, e54, b[160]+b[161]+b[162] == 1.0)
@constraint(m, e55, b[163]+b[164]+b[165] == 1.0)
@constraint(m, e56, b[166]+b[167]+b[168] == 1.0)
@constraint(m, e57, b[169]+b[170]+b[171] == 1.0)
@constraint(m, e58, b[172]+b[173]+b[174] == 1.0)
@constraint(m, e59, b[175]+b[176]+b[177] == 1.0)
@constraint(m, e60, b[178]+b[179]+b[180] == 1.0)
@constraint(m, e61, b[181]+b[182]+b[183] == 1.0)
@constraint(m, e62, b[184]+b[185]+b[186] == 1.0)
@constraint(m, e63, b[187]+b[188]+b[189] == 1.0)
@constraint(m, e64, b[190]+b[191]+b[192] == 1.0)
@NLconstraint(m, e65, 67634*b[1]*b[22]-83602*b[1]*b[4]+61711*b[1]*b[25]-59956*b[1]*b[169]-83602*b[2]*b[5]+67634*b[2]*b[23]+61711*b[2]*b[26]-59956*b[2]*b[170]-83602*b[3]*b[6]+67634*b[3]*b[24]+61711*b[3]*b[27]-59956*b[3]*b[171]+127500*b[4]*b[7]+35260*b[4]*b[28]-110030*b[4]*b[172]+127500*b[5]*b[8]+35260*b[5]*b[29]-110030*b[5]*b[173]+127500*b[6]*b[9]+35260*b[6]*b[30]-110030*b[6]*b[174]-68458*b[7]*b[10]-22985*b[7]*b[31]-35743*b[7]*b[175]-68458*b[8]*b[11]-22985*b[8]*b[32]-35743*b[8]*b[176]-68458*b[9]*b[12]-22985*b[9]*b[33]-35743*b[9]*b[177]+173612*b[10]*b[13]+199680*b[10]*b[34]+92582*b[10]*b[178]+173612*b[11]*b[14]+199680*b[11]*b[35]+92582*b[11]*b[179]+173612*b[12]*b[15]+199680*b[12]*b[36]+92582*b[12]*b[180]+117135*b[13]*b[16]-147716*b[13]*b[37]+130308*b[13]*b[181]+117135*b[14]*b[17]-147716*b[14]*b[38]+130308*b[14]*b[182]+117135*b[15]*b[18]-147716*b[15]*b[39]+130308*b[15]*b[183]+91667*b[16]*b[19]+153955*b[16]*b[40]-21093*b[16]*b[184]+91667*b[17]*b[20]+153955*b[17]*b[41]-21093*b[17]*b[185]+91667*b[18]*b[21]+153955*b[18]*b[42]-21093*b[18]*b[186]+74165*b[19]*b[22]-220722*b[19]*b[43]-162288*b[19]*b[187]+74165*b[20]*b[23]-220722*b[20]*b[44]-162288*b[20]*b[188]+74165*b[21]*b[24]-220722*b[21]*b[45]-162288*b[21]*b[189]+35287*b[22]*b[46]-73662*b[22]*b[190]+35287*b[23]*b[47]-73662*b[23]*b[191]+35287*b[24]*b[48]-73662*b[24]*b[192]+47953*b[25]*b[28]+2925*b[25]*b[46]-24145*b[25]*b[49]+47953*b[26]*b[29]+2925*b[26]*b[47]-24145*b[26]*b[50]+47953*b[27]*b[30]+2925*b[27]*b[48]-24145*b[27]*b[51]-122136*b[28]*b[31]-77871*b[28]*b[52]-122136*b[29]*b[32]-77871*b[29]*b[53]-122136*b[30]*b[33]-77871*b[30]*b[54]-129158*b[31]*b[34]-45165*b[31]*b[55]-129158*b[32]*b[35]-45165*b[32]*b[56]-129158*b[33]*b[36]-45165*b[33]*b[57]-44654*b[34]*b[37]+18064*b[34]*b[58]-44654*b[35]*b[38]+18064*b[35]*b[59]-44654*b[36]*b[39]+18064*b[36]*b[60]-164293*b[37]*b[40]-62562*b[37]*b[61]-164293*b[38]*b[41]-62562*b[38]*b[62]-164293*b[39]*b[42]-62562*b[39]*b[63]+15254*b[40]*b[43]-73788*b[40]*b[64]+15254*b[41]*b[44]-73788*b[41]*b[65]+15254*b[42]*b[45]-73788*b[42]*b[66]+67357*b[43]*b[46]+145724*b[43]*b[67]+67357*b[44]*b[47]+145724*b[44]*b[68]+67357*b[45]*b[48]+145724*b[45]*b[69]+77518*b[46]*b[70]+77518*b[47]*b[71]+77518*b[48]*b[72]+73006*b[49]*b[52]-97425*b[49]*b[70]-36871*b[49]*b[73]+73006*b[50]*b[53]-97425*b[50]*b[71]-36871*b[50]*b[74]+73006*b[51]*b[54]-97425*b[51]*b[72]-36871*b[51]*b[75]-85230*b[52]*b[55]-63550*b[52]*b[76]-85230*b[53]*b[56]-63550*b[53]*b[77]-85230*b[54]*b[57]-63550*b[54]*b[78]-153638*b[55]*b[58]+84496*b[55]*b[79]-153638*b[56]*b[59]+84496*b[56]*b[80]-153638*b[57]*b[60]+84496*b[57]*b[81]+7440*b[58]*b[61]-67520*b[58]*b[82]+7440*b[59]*b[62]-67520*b[59]*b[83]+7440*b[60]*b[63]-67520*b[60]*b[84]+97476*b[61]*b[64]-234690*b[61]*b[85]+97476*b[62]*b[65]-234690*b[62]*b[86]+97476*b[63]*b[66]-234690*b[63]*b[87]+114707*b[64]*b[67]+218718*b[64]*b[88]+114707*b[65]*b[68]+218718*b[65]*b[89]+114707*b[66]*b[69]+218718*b[66]*b[90]-72968*b[67]*b[70]+54754*b[67]*b[91]-72968*b[68]*b[71]+54754*b[68]*b[92]-72968*b[69]*b[72]+54754*b[69]*b[93]-169837*b[70]*b[94]-169837*b[71]*b[95]-169837*b[72]*b[96]-18652*b[73]*b[76]+114918*b[73]*b[94]-6803*b[73]*b[97]-18652*b[74]*b[77]+114918*b[74]*b[95]-6803*b[74]*b[98]-18652*b[75]*b[78]+114918*b[75]*b[96]-6803*b[75]*b[99]-35802*b[76]*b[79]-95280*b[76]*b[100]-35802*b[77]*b[80]-95280*b[77]*b[101]-35802*b[78]*b[81]-95280*b[78]*b[102]+70821*b[79]*b[82]-58023*b[79]*b[103]+70821*b[80]*b[83]-58023*b[80]*b[104]+70821*b[81]*b[84]-58023*b[81]*b[105]-61946*b[82]*b[85]-264072*b[82]*b[106]-61946*b[83]*b[86]-264072*b[83]*b[107]-61946*b[84]*b[87]-264072*b[84]*b[108]-92130*b[85]*b[88]+16108*b[85]*b[109]-92130*b[86]*b[89]+16108*b[86]*b[110]-92130*b[87]*b[90]+16108*b[87]*b[111]+159379*b[88]*b[91]+204734*b[88]*b[112]+159379*b[89]*b[92]+204734*b[89]*b[113]+159379*b[90]*b[93]+204734*b[90]*b[114]-189099*b[91]*b[94]-64588*b[91]*b[115]-189099*b[92]*b[95]-64588*b[92]*b[116]-189099*b[93]*b[96]-64588*b[93]*b[117]+130590*b[94]*b[118]+130590*b[95]*b[119]+130590*b[96]*b[120]-8447*b[97]*b[100]+90736*b[97]*b[118]+38420*b[97]*b[121]-8447*b[98]*b[101]+90736*b[98]*b[119]+38420*b[98]*b[122]-8447*b[99]*b[102]+90736*b[99]*b[120]+38420*b[99]*b[123]+22308*b[100]*b[103]+177432*b[100]*b[124]+22308*b[101]*b[104]+177432*b[101]*b[125]+22308*b[102]*b[105]+177432*b[102]*b[126]-14134*b[103]*b[106]-28668*b[103]*b[127]-14134*b[104]*b[107]-28668*b[104]*b[128]-14134*b[105]*b[108]-28668*b[105]*b[129]-61805*b[106]*b[109]-22047*b[106]*b[130]-61805*b[107]*b[110]-22047*b[107]*b[131]-61805*b[108]*b[111]-22047*b[108]*b[132]+29936*b[109]*b[112]-36716*b[109]*b[133]+29936*b[110]*b[113]-36716*b[110]*b[134]+29936*b[111]*b[114]-36716*b[111]*b[135]-189188*b[112]*b[115]+56108*b[112]*b[136]-189188*b[113]*b[116]+56108*b[113]*b[137]-189188*b[114]*b[117]+56108*b[114]*b[138]+87321*b[115]*b[118]+43200*b[115]*b[139]+87321*b[116]*b[119]+43200*b[116]*b[140]+87321*b[117]*b[120]+43200*b[117]*b[141]-105343*b[118]*b[142]-105343*b[119]*b[143]-105343*b[120]*b[144]+1787*b[121]*b[124]-39963*b[121]*b[142]-49240*b[121]*b[145]+1787*b[122]*b[125]-39963*b[122]*b[143]-49240*b[122]*b[146]+1787*b[123]*b[126]-39963*b[123]*b[144]-49240*b[123]*b[147]-19759*b[124]*b[127]-51266*b[124]*b[148]-19759*b[125]*b[128]-51266*b[125]*b[149]-19759*b[126]*b[129]-51266*b[126]*b[150]-156795*b[127]*b[130]-90008*b[127]*b[151]-156795*b[128]*b[131]-90008*b[128]*b[152]-156795*b[129]*b[132]-90008*b[129]*b[153]+76764*b[130]*b[133]-54058*b[130]*b[154]+76764*b[131]*b[134]-54058*b[131]*b[155]+76764*b[132]*b[135]-54058*b[132]*b[156]-20555*b[133]*b[136]-275957*b[133]*b[157]-20555*b[134]*b[137]-275957*b[134]*b[158]-20555*b[135]*b[138]-275957*b[135]*b[159]+17070*b[136]*b[139]-154864*b[136]*b[160]+17070*b[137]*b[140]-154864*b[137]*b[161]+17070*b[138]*b[141]-154864*b[138]*b[162]-162791*b[139]*b[142]-8148*b[139]*b[163]-162791*b[140]*b[143]-8148*b[140]*b[164]-162791*b[141]*b[144]-8148*b[141]*b[165]-3896*b[142]*b[166]-3896*b[143]*b[167]-3896*b[144]*b[168]-105352*b[145]*b[148]+45364*b[145]*b[166]-37043*b[145]*b[169]-105352*b[146]*b[149]+45364*b[146]*b[167]-37043*b[146]*b[170]-105352*b[147]*b[150]+45364*b[147]*b[168]-37043*b[147]*b[171]+211004*b[148]*b[151]-65416*b[148]*b[172]+211004*b[149]*b[152]-65416*b[149]*b[173]+211004*b[150]*b[153]-65416*b[150]*b[174]-12091*b[151]*b[154]+47044*b[151]*b[175]-12091*b[152]*b[155]+47044*b[152]*b[176]-12091*b[153]*b[156]+47044*b[153]*b[177]-64916*b[154]*b[157]-158531*b[154]*b[178]-64916*b[155]*b[158]-158531*b[155]*b[179]-64916*b[156]*b[159]-158531*b[156]*b[180]-19908*b[157]*b[160]+66609*b[157]*b[181]-19908*b[158]*b[161]+66609*b[158]*b[182]-19908*b[159]*b[162]+66609*b[159]*b[183]-22331*b[160]*b[163]-32557*b[160]*b[184]-22331*b[161]*b[164]-32557*b[161]*b[185]-22331*b[162]*b[165]-32557*b[162]*b[186]-218808*b[163]*b[166]-85264*b[163]*b[187]-218808*b[164]*b[167]-85264*b[164]*b[188]-218808*b[165]*b[168]-85264*b[165]*b[189]-75908*b[166]*b[190]-75908*b[167]*b[191]-75908*b[168]*b[192]-75258*b[169]*b[172]+15236*b[169]*b[190]-75258*b[170]*b[173]+15236*b[170]*b[191]-75258*b[171]*b[174]+15236*b[171]*b[192]-72030*b[172]*b[175]-72030*b[173]*b[176]-72030*b[174]*b[177]-3058*b[175]*b[178]-3058*b[176]*b[179]-3058*b[177]*b[180]+33988*b[178]*b[181]+33988*b[179]*b[182]+33988*b[180]*b[183]+116509*b[181]*b[184]+116509*b[182]*b[185]+116509*b[183]*b[186]+59421*b[184]*b[187]+59421*b[185]*b[188]+59421*b[186]*b[189]-277077*b[187]*b[190]-277077*b[188]*b[191]-277077*b[189]*b[192]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
