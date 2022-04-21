using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250]
@variable(m, x[x_Idx])
b_Idx = Any[251, 252, 253, 254, 255, 256, 257, 258, 259, 260]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(23.5458254446414*x[1]*x[1]+18.979955090698*x[2]*x[2]+40.4475389896435*x[3]*x[3]+32.3871907368369*x[4]*x[4]+5.87832983721956*x[5]*x[5]+27.7861809155978*x[6]*x[6]+29.0093260544642*x[7]*x[7]+27.8172341004716*x[8]*x[8]+23.8990137163284*x[9]*x[9]+31.1572073885704*x[10]*x[10]+13.2824851151917*x[11]*x[11]+33.2405661163705*x[12]*x[12]+11.9226979325457*x[13]*x[13]+20.4359563497062*x[14]*x[14]+24.448648939004*x[15]*x[15]+18.4191355125177*x[16]*x[16]+39.1206587833304*x[17]*x[17]+10.0203431071565*x[18]*x[18]+19.3631588126017*x[19]*x[19]+23.3360726377184*x[20]*x[20]+28.9471017656799*x[21]*x[21]+11.4841952994712*x[22]*x[22]+6.08794717116601*x[23]*x[23]+23.4037893982626*x[24]*x[24]+23.6180996877181*x[25]*x[25]+30.4354193350913*x[26]*x[26]+40.4712603455849*x[27]*x[27]+36.2213094971555*x[28]*x[28]+5.60976290451329*x[29]*x[29]+23.1725988276517*x[30]*x[30]+20.1796238073169*x[31]*x[31]+4.57861955410779*x[32]*x[32]+30.5653982993017*x[33]*x[33]+50.4967526356669*x[34]*x[34]+8.28478358470783*x[35]*x[35]+25.018545195819*x[36]*x[36]+12.6329611025149*x[37]*x[37]+27.6454711698144*x[38]*x[38]+33.9905967791569*x[39]*x[39]+6.07228540920208*x[40]*x[40]+37.4354673126797*x[41]*x[41]+37.4709444132233*x[42]*x[42]+35.7354026371941*x[43]*x[43]+22.4419684331029*x[44]*x[44]+32.5374941409*x[45]*x[45]+15.9337490518623*x[46]*x[46]+39.6539821536571*x[47]*x[47]+34.007214287844*x[48]*x[48]+31.9891521836171*x[49]*x[49]+11.3076337580825*x[50]*x[50]+48.8107919790236*x[51]*x[51]+16.5702835116504*x[52]*x[52]+17.1831503223043*x[53]*x[53]+35.1142641830025*x[54]*x[54]+29.1350141677348*x[55]*x[55]+47.6949431536515*x[56]*x[56]+32.149139849139*x[57]*x[57]+52.2374267154665*x[58]*x[58]+29.9609434870647*x[59]*x[59]+42.6183607184712*x[60]*x[60]+38.2238650857062*x[61]*x[61]+29.3601737959953*x[62]*x[62]+15.0635022726005*x[63]*x[63]+47.0245320338646*x[64]*x[64]+29.0759225713501*x[65]*x[65]+13.0424768501865*x[66]*x[66]+14.4753873350758*x[67]*x[67]+22.3704949637257*x[68]*x[68]+42.3038766759241*x[69]*x[69]+49.2326533720743*x[70]*x[70]+46.1780910030554*x[71]*x[71]+29.881771182396*x[72]*x[72]+30.5553734434501*x[73]*x[73]+3.7922842075966*x[74]*x[74]+39.37658717414*x[75]*x[75]+38.4041161777079*x[76]*x[76]+25.9812660558023*x[77]*x[77]+20.5750893036448*x[78]*x[78]+18.2591550063973*x[79]*x[79]+21.315708405139*x[80]*x[80]+33.6312833302058*x[81]*x[81]+15.2250454251428*x[82]*x[82]+40.6998421656809*x[83]*x[83]+38.4406211511874*x[84]*x[84]+26.1744753218587*x[85]*x[85]+28.8520619191213*x[86]*x[86]+13.6877901486106*x[87]*x[87]+14.6611183170587*x[88]*x[88]+38.8217787386064*x[89]*x[89]+12.3633235324976*x[90]*x[90]+22.2787064512218*x[91]*x[91]+20.7514901250986*x[92]*x[92]+25.2034704837712*x[93]*x[93]+30.6376270730567*x[94]*x[94]+39.5843101734575*x[95]*x[95]+31.1038558069605*x[96]*x[96]+31.6979288753493*x[97]*x[97]+28.645307801904*x[98]*x[98]+14.1025463900177*x[99]*x[99]+24.4462384012991*x[100]*x[100]+23.9588130600444*x[101]*x[101]+37.2092218308638*x[102]*x[102]+38.9284967423033*x[103]*x[103]+12.2912287240524*x[104]*x[104]+17.3040001983168*x[105]*x[105]+15.1907239390981*x[106]*x[106]+10.214640056875*x[107]*x[107]+24.5444413988224*x[108]*x[108]+45.991792998601*x[109]*x[109]+8.80808064222724*x[110]*x[110]+18.2698135895014*x[111]*x[111]+18.0129352025772*x[112]*x[112]+24.5906708393765*x[113]*x[113]+27.2479130814562*x[114]*x[114]+8.14284930897828*x[115]*x[115]+34.6101764845155*x[116]*x[116]+39.6172338889732*x[117]*x[117]+31.2334618018089*x[118]*x[118]+15.8448912894477*x[119]*x[119]+25.9622870070524*x[120]*x[120]+12.0380295338836*x[121]*x[121]+34.2734923291195*x[122]*x[122]+28.2417522551125*x[123]*x[123]+31.2100255255497*x[124]*x[124]+5.69874151661421*x[125]*x[125]+20.1924959476585*x[126]*x[126]+25.1047390556883*x[127]*x[127]+50.8540191789234*x[128]*x[128]+40.7654848119428*x[129]*x[129]+13.1660129719096*x[130]*x[130]+29.3477563113135*x[131]*x[131]+37.623504079514*x[132]*x[132]+25.0512445521536*x[133]*x[133]+24.194699080593*x[134]*x[134]+36.8817798615649*x[135]*x[135]+13.4670522383906*x[136]*x[136]+42.8355399696766*x[137]*x[137]+21.9449104264389*x[138]*x[138]+14.6179503747045*x[139]*x[139]+33.2656663596617*x[140]*x[140]+25.9752193871067*x[141]*x[141]+49.3747299640844*x[142]*x[142]+15.5177231557714*x[143]*x[143]+19.9897426371933*x[144]*x[144]+18.8657675463725*x[145]*x[145]+32.1150351106216*x[146]*x[146]+10.6354802846521*x[147]*x[147]+6.03289686797428*x[148]*x[148]+33.2130951842154*x[149]*x[149]+28.5459989363559*x[150]*x[150]+27.1814982971647*x[151]*x[151]+17.4732774311302*x[152]*x[152]+45.7430205440514*x[153]*x[153]+41.078689482825*x[154]*x[154]+14.0894075046248*x[155]*x[155]+34.4518041752158*x[156]*x[156]+37.6827979486941*x[157]*x[157]+31.9402692210917*x[158]*x[158]+17.176342113498*x[159]*x[159]+39.5175600805753*x[160]*x[160]+18.6428109082815*x[161]*x[161]+41.5887207579041*x[162]*x[162]+16.8382070886681*x[163]*x[163]+22.1667280473665*x[164]*x[164]+33.1071436309494*x[165]*x[165]+18.7491083157469*x[166]*x[166]+43.8897007571818*x[167]*x[167]+8.18685938107562*x[168]*x[168]+25.3225669621538*x[169]*x[169]+26.1676213722903*x[170]*x[170]+36.3794013637756*x[171]*x[171]+3.36357996902708*x[172]*x[172]+3.41423836465036*x[173]*x[173]+27.3030303493034*x[174]*x[174]+31.6570416640525*x[175]*x[175]+29.2490776122094*x[176]*x[176]+47.155909768506*x[177]*x[177]+43.747688859322*x[178]*x[178]+10.7493671026891*x[179]*x[179]+27.3502033243542*x[180]*x[180]+16.7299902035031*x[181]*x[181]+11.8402360490836*x[182]*x[182]+28.1306173784301*x[183]*x[183]+56.2444171745252*x[184]*x[184]+2.57815337422008*x[185]*x[185]+26.6018920054246*x[186]*x[186]+19.1214185252706*x[187]*x[187]+34.3953781800726*x[188]*x[188]+34.0930847416161*x[189]*x[189]+13.8204269927978*x[190]*x[190]+44.358450354143*x[191]*x[191]+45.1466792975147*x[192]*x[192]+41.4784118603196*x[193]*x[193]+22.1771123969423*x[194]*x[194]+31.6502071872129*x[195]*x[195]+11.7484412314793*x[196]*x[196]+44.4308470618447*x[197]*x[197]+38.2511037822993*x[198]*x[198]+39.6390015319532*x[199]*x[199]+10.8473239818109*x[200]*x[200]+32.7864705333551*x[201]*x[201]+10.2391421240902*x[202]*x[202]+39.5607896432743*x[203]*x[203]+39.8410872942397*x[204]*x[204]+15.9484846229643*x[205]*x[205]+37.9732738105522*x[206]*x[206]+36.3288913334737*x[207]*x[207]+37.3308942844016*x[208]*x[208]+14.138807380771*x[209]*x[209]+40.5225760141947*x[210]*x[210]+23.0942213546361*x[211]*x[211]+38.8745557957034*x[212]*x[212]+11.721117960742*x[213]*x[213]+28.5280949777182*x[214]*x[214]+31.7525052480902*x[215]*x[215]+11.4257984420683*x[216]*x[216]+37.4452338564339*x[217]*x[217]+1.12488644365266*x[218]*x[218]+29.4353246473701*x[219]*x[219]+32.1453138866363*x[220]*x[220]+39.0350080216973*x[221]*x[221]+6.46693171499145*x[222]*x[222]+9.11562848937319*x[223]*x[223]+20.7606750347532*x[224]*x[224]+33.4319480801873*x[225]*x[225]+28.1441444643013*x[226]*x[226]+34.4021397840332*x[227]*x[227]+33.6749639035632*x[228]*x[228]+10.1168794661545*x[229]*x[229]+17.6213921739784*x[230]*x[230]+20.3933915426277*x[231]*x[231]+6.98038357032972*x[232]*x[232]+29.2368220177179*x[233]*x[233]+44.3389168003468*x[234]*x[234]+12.4614270571251*x[235]*x[235]+20.9897984897617*x[236]*x[236]+13.7049805915567*x[237]*x[237]+21.5807687963342*x[238]*x[238]+30.6259335202425*x[239]*x[239]+3.25199498753833*x[240]*x[240]+31.4568158826796*x[241]*x[241]+34.4026496483618*x[242]*x[242]+29.5859985016407*x[243]*x[243]+19.9367729999238*x[244]*x[244]+29.9359444021784*x[245]*x[245]+17.2658241038544*x[246]*x[246]+33.6872082476686*x[247]*x[247]+28.2574825233421*x[248]*x[248]+26.807114591537*x[249]*x[249]+10.9132753163671*x[250]*x[250])-31*b[251]-99*b[252]-59*b[253]-85*b[254]-31*b[255]-18*b[256]-55*b[257]-56*b[258]-2*b[259]-42*b[260]+objvar == 0.0)
@constraint(m, e2, x[1]-b[251] <= 0.0)
@constraint(m, e3, x[2]-b[251] <= 0.0)
@constraint(m, e4, x[3]-b[251] <= 0.0)
@constraint(m, e5, x[4]-b[251] <= 0.0)
@constraint(m, e6, x[5]-b[251] <= 0.0)
@constraint(m, e7, x[6]-b[251] <= 0.0)
@constraint(m, e8, x[7]-b[251] <= 0.0)
@constraint(m, e9, x[8]-b[251] <= 0.0)
@constraint(m, e10, x[9]-b[251] <= 0.0)
@constraint(m, e11, x[10]-b[251] <= 0.0)
@constraint(m, e12, x[11]-b[251] <= 0.0)
@constraint(m, e13, x[12]-b[251] <= 0.0)
@constraint(m, e14, x[13]-b[251] <= 0.0)
@constraint(m, e15, x[14]-b[251] <= 0.0)
@constraint(m, e16, x[15]-b[251] <= 0.0)
@constraint(m, e17, x[16]-b[251] <= 0.0)
@constraint(m, e18, x[17]-b[251] <= 0.0)
@constraint(m, e19, x[18]-b[251] <= 0.0)
@constraint(m, e20, x[19]-b[251] <= 0.0)
@constraint(m, e21, x[20]-b[251] <= 0.0)
@constraint(m, e22, x[21]-b[251] <= 0.0)
@constraint(m, e23, x[22]-b[251] <= 0.0)
@constraint(m, e24, x[23]-b[251] <= 0.0)
@constraint(m, e25, x[24]-b[251] <= 0.0)
@constraint(m, e26, x[25]-b[251] <= 0.0)
@constraint(m, e27, x[26]-b[252] <= 0.0)
@constraint(m, e28, x[27]-b[252] <= 0.0)
@constraint(m, e29, x[28]-b[252] <= 0.0)
@constraint(m, e30, x[29]-b[252] <= 0.0)
@constraint(m, e31, x[30]-b[252] <= 0.0)
@constraint(m, e32, x[31]-b[252] <= 0.0)
@constraint(m, e33, x[32]-b[252] <= 0.0)
@constraint(m, e34, x[33]-b[252] <= 0.0)
@constraint(m, e35, x[34]-b[252] <= 0.0)
@constraint(m, e36, x[35]-b[252] <= 0.0)
@constraint(m, e37, x[36]-b[252] <= 0.0)
@constraint(m, e38, x[37]-b[252] <= 0.0)
@constraint(m, e39, x[38]-b[252] <= 0.0)
@constraint(m, e40, x[39]-b[252] <= 0.0)
@constraint(m, e41, x[40]-b[252] <= 0.0)
@constraint(m, e42, x[41]-b[252] <= 0.0)
@constraint(m, e43, x[42]-b[252] <= 0.0)
@constraint(m, e44, x[43]-b[252] <= 0.0)
@constraint(m, e45, x[44]-b[252] <= 0.0)
@constraint(m, e46, x[45]-b[252] <= 0.0)
@constraint(m, e47, x[46]-b[252] <= 0.0)
@constraint(m, e48, x[47]-b[252] <= 0.0)
@constraint(m, e49, x[48]-b[252] <= 0.0)
@constraint(m, e50, x[49]-b[252] <= 0.0)
@constraint(m, e51, x[50]-b[252] <= 0.0)
@constraint(m, e52, x[51]-b[253] <= 0.0)
@constraint(m, e53, x[52]-b[253] <= 0.0)
@constraint(m, e54, x[53]-b[253] <= 0.0)
@constraint(m, e55, x[54]-b[253] <= 0.0)
@constraint(m, e56, x[55]-b[253] <= 0.0)
@constraint(m, e57, x[56]-b[253] <= 0.0)
@constraint(m, e58, x[57]-b[253] <= 0.0)
@constraint(m, e59, x[58]-b[253] <= 0.0)
@constraint(m, e60, x[59]-b[253] <= 0.0)
@constraint(m, e61, x[60]-b[253] <= 0.0)
@constraint(m, e62, x[61]-b[253] <= 0.0)
@constraint(m, e63, x[62]-b[253] <= 0.0)
@constraint(m, e64, x[63]-b[253] <= 0.0)
@constraint(m, e65, x[64]-b[253] <= 0.0)
@constraint(m, e66, x[65]-b[253] <= 0.0)
@constraint(m, e67, x[66]-b[253] <= 0.0)
@constraint(m, e68, x[67]-b[253] <= 0.0)
@constraint(m, e69, x[68]-b[253] <= 0.0)
@constraint(m, e70, x[69]-b[253] <= 0.0)
@constraint(m, e71, x[70]-b[253] <= 0.0)
@constraint(m, e72, x[71]-b[253] <= 0.0)
@constraint(m, e73, x[72]-b[253] <= 0.0)
@constraint(m, e74, x[73]-b[253] <= 0.0)
@constraint(m, e75, x[74]-b[253] <= 0.0)
@constraint(m, e76, x[75]-b[253] <= 0.0)
@constraint(m, e77, x[76]-b[254] <= 0.0)
@constraint(m, e78, x[77]-b[254] <= 0.0)
@constraint(m, e79, x[78]-b[254] <= 0.0)
@constraint(m, e80, x[79]-b[254] <= 0.0)
@constraint(m, e81, x[80]-b[254] <= 0.0)
@constraint(m, e82, x[81]-b[254] <= 0.0)
@constraint(m, e83, x[82]-b[254] <= 0.0)
@constraint(m, e84, x[83]-b[254] <= 0.0)
@constraint(m, e85, x[84]-b[254] <= 0.0)
@constraint(m, e86, x[85]-b[254] <= 0.0)
@constraint(m, e87, x[86]-b[254] <= 0.0)
@constraint(m, e88, x[87]-b[254] <= 0.0)
@constraint(m, e89, x[88]-b[254] <= 0.0)
@constraint(m, e90, x[89]-b[254] <= 0.0)
@constraint(m, e91, x[90]-b[254] <= 0.0)
@constraint(m, e92, x[91]-b[254] <= 0.0)
@constraint(m, e93, x[92]-b[254] <= 0.0)
@constraint(m, e94, x[93]-b[254] <= 0.0)
@constraint(m, e95, x[94]-b[254] <= 0.0)
@constraint(m, e96, x[95]-b[254] <= 0.0)
@constraint(m, e97, x[96]-b[254] <= 0.0)
@constraint(m, e98, x[97]-b[254] <= 0.0)
@constraint(m, e99, x[98]-b[254] <= 0.0)
@constraint(m, e100, x[99]-b[254] <= 0.0)
@constraint(m, e101, x[100]-b[254] <= 0.0)
@constraint(m, e102, x[101]-b[255] <= 0.0)
@constraint(m, e103, x[102]-b[255] <= 0.0)
@constraint(m, e104, x[103]-b[255] <= 0.0)
@constraint(m, e105, x[104]-b[255] <= 0.0)
@constraint(m, e106, x[105]-b[255] <= 0.0)
@constraint(m, e107, x[106]-b[255] <= 0.0)
@constraint(m, e108, x[107]-b[255] <= 0.0)
@constraint(m, e109, x[108]-b[255] <= 0.0)
@constraint(m, e110, x[109]-b[255] <= 0.0)
@constraint(m, e111, x[110]-b[255] <= 0.0)
@constraint(m, e112, x[111]-b[255] <= 0.0)
@constraint(m, e113, x[112]-b[255] <= 0.0)
@constraint(m, e114, x[113]-b[255] <= 0.0)
@constraint(m, e115, x[114]-b[255] <= 0.0)
@constraint(m, e116, x[115]-b[255] <= 0.0)
@constraint(m, e117, x[116]-b[255] <= 0.0)
@constraint(m, e118, x[117]-b[255] <= 0.0)
@constraint(m, e119, x[118]-b[255] <= 0.0)
@constraint(m, e120, x[119]-b[255] <= 0.0)
@constraint(m, e121, x[120]-b[255] <= 0.0)
@constraint(m, e122, x[121]-b[255] <= 0.0)
@constraint(m, e123, x[122]-b[255] <= 0.0)
@constraint(m, e124, x[123]-b[255] <= 0.0)
@constraint(m, e125, x[124]-b[255] <= 0.0)
@constraint(m, e126, x[125]-b[255] <= 0.0)
@constraint(m, e127, x[126]-b[256] <= 0.0)
@constraint(m, e128, x[127]-b[256] <= 0.0)
@constraint(m, e129, x[128]-b[256] <= 0.0)
@constraint(m, e130, x[129]-b[256] <= 0.0)
@constraint(m, e131, x[130]-b[256] <= 0.0)
@constraint(m, e132, x[131]-b[256] <= 0.0)
@constraint(m, e133, x[132]-b[256] <= 0.0)
@constraint(m, e134, x[133]-b[256] <= 0.0)
@constraint(m, e135, x[134]-b[256] <= 0.0)
@constraint(m, e136, x[135]-b[256] <= 0.0)
@constraint(m, e137, x[136]-b[256] <= 0.0)
@constraint(m, e138, x[137]-b[256] <= 0.0)
@constraint(m, e139, x[138]-b[256] <= 0.0)
@constraint(m, e140, x[139]-b[256] <= 0.0)
@constraint(m, e141, x[140]-b[256] <= 0.0)
@constraint(m, e142, x[141]-b[256] <= 0.0)
@constraint(m, e143, x[142]-b[256] <= 0.0)
@constraint(m, e144, x[143]-b[256] <= 0.0)
@constraint(m, e145, x[144]-b[256] <= 0.0)
@constraint(m, e146, x[145]-b[256] <= 0.0)
@constraint(m, e147, x[146]-b[256] <= 0.0)
@constraint(m, e148, x[147]-b[256] <= 0.0)
@constraint(m, e149, x[148]-b[256] <= 0.0)
@constraint(m, e150, x[149]-b[256] <= 0.0)
@constraint(m, e151, x[150]-b[256] <= 0.0)
@constraint(m, e152, x[151]-b[257] <= 0.0)
@constraint(m, e153, x[152]-b[257] <= 0.0)
@constraint(m, e154, x[153]-b[257] <= 0.0)
@constraint(m, e155, x[154]-b[257] <= 0.0)
@constraint(m, e156, x[155]-b[257] <= 0.0)
@constraint(m, e157, x[156]-b[257] <= 0.0)
@constraint(m, e158, x[157]-b[257] <= 0.0)
@constraint(m, e159, x[158]-b[257] <= 0.0)
@constraint(m, e160, x[159]-b[257] <= 0.0)
@constraint(m, e161, x[160]-b[257] <= 0.0)
@constraint(m, e162, x[161]-b[257] <= 0.0)
@constraint(m, e163, x[162]-b[257] <= 0.0)
@constraint(m, e164, x[163]-b[257] <= 0.0)
@constraint(m, e165, x[164]-b[257] <= 0.0)
@constraint(m, e166, x[165]-b[257] <= 0.0)
@constraint(m, e167, x[166]-b[257] <= 0.0)
@constraint(m, e168, x[167]-b[257] <= 0.0)
@constraint(m, e169, x[168]-b[257] <= 0.0)
@constraint(m, e170, x[169]-b[257] <= 0.0)
@constraint(m, e171, x[170]-b[257] <= 0.0)
@constraint(m, e172, x[171]-b[257] <= 0.0)
@constraint(m, e173, x[172]-b[257] <= 0.0)
@constraint(m, e174, x[173]-b[257] <= 0.0)
@constraint(m, e175, x[174]-b[257] <= 0.0)
@constraint(m, e176, x[175]-b[257] <= 0.0)
@constraint(m, e177, x[176]-b[258] <= 0.0)
@constraint(m, e178, x[177]-b[258] <= 0.0)
@constraint(m, e179, x[178]-b[258] <= 0.0)
@constraint(m, e180, x[179]-b[258] <= 0.0)
@constraint(m, e181, x[180]-b[258] <= 0.0)
@constraint(m, e182, x[181]-b[258] <= 0.0)
@constraint(m, e183, x[182]-b[258] <= 0.0)
@constraint(m, e184, x[183]-b[258] <= 0.0)
@constraint(m, e185, x[184]-b[258] <= 0.0)
@constraint(m, e186, x[185]-b[258] <= 0.0)
@constraint(m, e187, x[186]-b[258] <= 0.0)
@constraint(m, e188, x[187]-b[258] <= 0.0)
@constraint(m, e189, x[188]-b[258] <= 0.0)
@constraint(m, e190, x[189]-b[258] <= 0.0)
@constraint(m, e191, x[190]-b[258] <= 0.0)
@constraint(m, e192, x[191]-b[258] <= 0.0)
@constraint(m, e193, x[192]-b[258] <= 0.0)
@constraint(m, e194, x[193]-b[258] <= 0.0)
@constraint(m, e195, x[194]-b[258] <= 0.0)
@constraint(m, e196, x[195]-b[258] <= 0.0)
@constraint(m, e197, x[196]-b[258] <= 0.0)
@constraint(m, e198, x[197]-b[258] <= 0.0)
@constraint(m, e199, x[198]-b[258] <= 0.0)
@constraint(m, e200, x[199]-b[258] <= 0.0)
@constraint(m, e201, x[200]-b[258] <= 0.0)
@constraint(m, e202, x[201]-b[259] <= 0.0)
@constraint(m, e203, x[202]-b[259] <= 0.0)
@constraint(m, e204, x[203]-b[259] <= 0.0)
@constraint(m, e205, x[204]-b[259] <= 0.0)
@constraint(m, e206, x[205]-b[259] <= 0.0)
@constraint(m, e207, x[206]-b[259] <= 0.0)
@constraint(m, e208, x[207]-b[259] <= 0.0)
@constraint(m, e209, x[208]-b[259] <= 0.0)
@constraint(m, e210, x[209]-b[259] <= 0.0)
@constraint(m, e211, x[210]-b[259] <= 0.0)
@constraint(m, e212, x[211]-b[259] <= 0.0)
@constraint(m, e213, x[212]-b[259] <= 0.0)
@constraint(m, e214, x[213]-b[259] <= 0.0)
@constraint(m, e215, x[214]-b[259] <= 0.0)
@constraint(m, e216, x[215]-b[259] <= 0.0)
@constraint(m, e217, x[216]-b[259] <= 0.0)
@constraint(m, e218, x[217]-b[259] <= 0.0)
@constraint(m, e219, x[218]-b[259] <= 0.0)
@constraint(m, e220, x[219]-b[259] <= 0.0)
@constraint(m, e221, x[220]-b[259] <= 0.0)
@constraint(m, e222, x[221]-b[259] <= 0.0)
@constraint(m, e223, x[222]-b[259] <= 0.0)
@constraint(m, e224, x[223]-b[259] <= 0.0)
@constraint(m, e225, x[224]-b[259] <= 0.0)
@constraint(m, e226, x[225]-b[259] <= 0.0)
@constraint(m, e227, x[226]-b[260] <= 0.0)
@constraint(m, e228, x[227]-b[260] <= 0.0)
@constraint(m, e229, x[228]-b[260] <= 0.0)
@constraint(m, e230, x[229]-b[260] <= 0.0)
@constraint(m, e231, x[230]-b[260] <= 0.0)
@constraint(m, e232, x[231]-b[260] <= 0.0)
@constraint(m, e233, x[232]-b[260] <= 0.0)
@constraint(m, e234, x[233]-b[260] <= 0.0)
@constraint(m, e235, x[234]-b[260] <= 0.0)
@constraint(m, e236, x[235]-b[260] <= 0.0)
@constraint(m, e237, x[236]-b[260] <= 0.0)
@constraint(m, e238, x[237]-b[260] <= 0.0)
@constraint(m, e239, x[238]-b[260] <= 0.0)
@constraint(m, e240, x[239]-b[260] <= 0.0)
@constraint(m, e241, x[240]-b[260] <= 0.0)
@constraint(m, e242, x[241]-b[260] <= 0.0)
@constraint(m, e243, x[242]-b[260] <= 0.0)
@constraint(m, e244, x[243]-b[260] <= 0.0)
@constraint(m, e245, x[244]-b[260] <= 0.0)
@constraint(m, e246, x[245]-b[260] <= 0.0)
@constraint(m, e247, x[246]-b[260] <= 0.0)
@constraint(m, e248, x[247]-b[260] <= 0.0)
@constraint(m, e249, x[248]-b[260] <= 0.0)
@constraint(m, e250, x[249]-b[260] <= 0.0)
@constraint(m, e251, x[250]-b[260] <= 0.0)
@constraint(m, e252, x[1]+x[26]+x[51]+x[76]+x[101]+x[126]+x[151]+x[176]+x[201]+x[226] == 1.0)
@constraint(m, e253, x[2]+x[27]+x[52]+x[77]+x[102]+x[127]+x[152]+x[177]+x[202]+x[227] == 1.0)
@constraint(m, e254, x[3]+x[28]+x[53]+x[78]+x[103]+x[128]+x[153]+x[178]+x[203]+x[228] == 1.0)
@constraint(m, e255, x[4]+x[29]+x[54]+x[79]+x[104]+x[129]+x[154]+x[179]+x[204]+x[229] == 1.0)
@constraint(m, e256, x[5]+x[30]+x[55]+x[80]+x[105]+x[130]+x[155]+x[180]+x[205]+x[230] == 1.0)
@constraint(m, e257, x[6]+x[31]+x[56]+x[81]+x[106]+x[131]+x[156]+x[181]+x[206]+x[231] == 1.0)
@constraint(m, e258, x[7]+x[32]+x[57]+x[82]+x[107]+x[132]+x[157]+x[182]+x[207]+x[232] == 1.0)
@constraint(m, e259, x[8]+x[33]+x[58]+x[83]+x[108]+x[133]+x[158]+x[183]+x[208]+x[233] == 1.0)
@constraint(m, e260, x[9]+x[34]+x[59]+x[84]+x[109]+x[134]+x[159]+x[184]+x[209]+x[234] == 1.0)
@constraint(m, e261, x[10]+x[35]+x[60]+x[85]+x[110]+x[135]+x[160]+x[185]+x[210]+x[235] == 1.0)
@constraint(m, e262, x[11]+x[36]+x[61]+x[86]+x[111]+x[136]+x[161]+x[186]+x[211]+x[236] == 1.0)
@constraint(m, e263, x[12]+x[37]+x[62]+x[87]+x[112]+x[137]+x[162]+x[187]+x[212]+x[237] == 1.0)
@constraint(m, e264, x[13]+x[38]+x[63]+x[88]+x[113]+x[138]+x[163]+x[188]+x[213]+x[238] == 1.0)
@constraint(m, e265, x[14]+x[39]+x[64]+x[89]+x[114]+x[139]+x[164]+x[189]+x[214]+x[239] == 1.0)
@constraint(m, e266, x[15]+x[40]+x[65]+x[90]+x[115]+x[140]+x[165]+x[190]+x[215]+x[240] == 1.0)
@constraint(m, e267, x[16]+x[41]+x[66]+x[91]+x[116]+x[141]+x[166]+x[191]+x[216]+x[241] == 1.0)
@constraint(m, e268, x[17]+x[42]+x[67]+x[92]+x[117]+x[142]+x[167]+x[192]+x[217]+x[242] == 1.0)
@constraint(m, e269, x[18]+x[43]+x[68]+x[93]+x[118]+x[143]+x[168]+x[193]+x[218]+x[243] == 1.0)
@constraint(m, e270, x[19]+x[44]+x[69]+x[94]+x[119]+x[144]+x[169]+x[194]+x[219]+x[244] == 1.0)
@constraint(m, e271, x[20]+x[45]+x[70]+x[95]+x[120]+x[145]+x[170]+x[195]+x[220]+x[245] == 1.0)
@constraint(m, e272, x[21]+x[46]+x[71]+x[96]+x[121]+x[146]+x[171]+x[196]+x[221]+x[246] == 1.0)
@constraint(m, e273, x[22]+x[47]+x[72]+x[97]+x[122]+x[147]+x[172]+x[197]+x[222]+x[247] == 1.0)
@constraint(m, e274, x[23]+x[48]+x[73]+x[98]+x[123]+x[148]+x[173]+x[198]+x[223]+x[248] == 1.0)
@constraint(m, e275, x[24]+x[49]+x[74]+x[99]+x[124]+x[149]+x[174]+x[199]+x[224]+x[249] == 1.0)
@constraint(m, e276, x[25]+x[50]+x[75]+x[100]+x[125]+x[150]+x[175]+x[200]+x[225]+x[250] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 