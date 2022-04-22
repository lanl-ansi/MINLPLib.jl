using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 1.35103388687838*(exp(-0.740173884394968*( (x[1])^2+ (x[2])^2))-2*exp(-0.740173884394968* (x[2])^2))+x[3] == -1.35103388687838)
@NLconstraint(m, e2, 0.085216171650906*(exp(-11.734861829942*( (x[1])^2+ (x[2])^2))-2*exp(-11.734861829942* (x[2])^2))+x[4] == -0.085216171650906)
@NLconstraint(m, e3, 0.0241319683635307*(exp(-41.4388078475705*( (x[1])^2+ (x[2])^2))-2*exp(-41.4388078475705* (x[2])^2))+x[5] == -0.0241319683635307)
@NLconstraint(m, e4, 0.0110122196401316*(exp(-90.8082142092153*( (x[1])^2+ (x[2])^2))-2*exp(-90.8082142092153* (x[2])^2))+x[6] == -0.0110122196401316)
@NLconstraint(m, e5, 0.00625378005929352*(exp(-159.903288973832*( (x[1])^2+ (x[2])^2))-2*exp(-159.903288973832* (x[2])^2))+x[7] == -0.00625378005929352)
@NLconstraint(m, e6, 0.004020368366483*(exp(-248.733426602596*( (x[1])^2+ (x[2])^2))-2*exp(-248.733426602596* (x[2])^2))+x[8] == -0.004020368366483)
@NLconstraint(m, e7, 0.00279875990839809*(exp(-357.301102177201*( (x[1])^2+ (x[2])^2))-2*exp(-357.301102177201* (x[2])^2))+x[9] == -0.00279875990839809)
@NLconstraint(m, e8, 0.00205927759025821*(exp(-485.607188040447*( (x[1])^2+ (x[2])^2))-2*exp(-485.607188040447* (x[2])^2))+x[10] == -0.00205927759025821)
@NLconstraint(m, e9, 0.00157815317346518*(exp(-633.652054067907*( (x[1])^2+ (x[2])^2))-2*exp(-633.652054067907* (x[2])^2))+x[11] == -0.00157815317346518)
@NLconstraint(m, e10, 0.00124776045940626*(exp(-801.435878546626*( (x[1])^2+ (x[2])^2))-2*exp(-801.435878546626* (x[2])^2))+x[12] == -0.00124776045940626)
@NLconstraint(m, e11, 0.00101116451420175*(exp(-988.958755924539*( (x[1])^2+ (x[2])^2))-2*exp(-988.958755924539* (x[2])^2))+x[13] == -0.00101116451420175)
@NLconstraint(m, e12, 0.000835966111070824*(exp(-1196.22073999992*( (x[1])^2+ (x[2])^2))-2*exp(-1196.22073999992* (x[2])^2))+x[14] == -0.000835966111070824)
@NLconstraint(m, e13, 0.000702631139834791*(exp(-1423.22186323129*( (x[1])^2+ (x[2])^2))-2*exp(-1423.22186323129* (x[2])^2))+x[15] == -0.000702631139834791)
@NLconstraint(m, e14, 0.000598815968560454*(exp(-1669.9621461398*( (x[1])^2+ (x[2])^2))-2*exp(-1669.9621461398* (x[2])^2))+x[16] == -0.000598815968560454)
@NLconstraint(m, e15, 0.00051641113207719*(exp(-1936.44160221264*( (x[1])^2+ (x[2])^2))-2*exp(-1936.44160221264* (x[2])^2))+x[17] == -0.00051641113207719)
@NLconstraint(m, e16, 0.000449911318756535*(exp(-2222.66024060875*( (x[1])^2+ (x[2])^2))-2*exp(-2222.66024060875* (x[2])^2))+x[18] == -0.000449911318756535)
@NLconstraint(m, e17, 0.000395472931544801*(exp(-2528.6180677241*( (x[1])^2+ (x[2])^2))-2*exp(-2528.6180677241* (x[2])^2))+x[19] == -0.000395472931544801)
@NLconstraint(m, e18, 0.000350346744883579*(exp(-2854.31508813447*( (x[1])^2+ (x[2])^2))-2*exp(-2854.31508813447* (x[2])^2))+x[20] == -0.000350346744883579)
@NLconstraint(m, e19, 0.000312524288490825*(exp(-3199.7513051833*( (x[1])^2+ (x[2])^2))-2*exp(-3199.7513051833* (x[2])^2))+x[21] == -0.000312524288490825)
@NLconstraint(m, e20, 0.000280510674737987*(exp(-3564.92672135938*( (x[1])^2+ (x[2])^2))-2*exp(-3564.92672135938* (x[2])^2))+x[22] == -0.000280510674737987)
@NLconstraint(m, e21, 0.000253174726346871*(exp(-3949.84133854622*( (x[1])^2+ (x[2])^2))-2*exp(-3949.84133854622* (x[2])^2))+x[23] == -0.000253174726346871)
@NLconstraint(m, e22, 0.000229647746448653*(exp(-4354.49515819041*( (x[1])^2+ (x[2])^2))-2*exp(-4354.49515819041* (x[2])^2))+x[24] == -0.000229647746448653)
@NLconstraint(m, e23, 0.000209253692917193*(exp(-4778.88818141779*( (x[1])^2+ (x[2])^2))-2*exp(-4778.88818141779* (x[2])^2))+x[25] == -0.000209253692917193)
@NLconstraint(m, e24, 0.00019146009811771*(exp(-5223.0204091152*( (x[1])^2+ (x[2])^2))-2*exp(-5223.0204091152* (x[2])^2))+x[26] == -0.00019146009811771)
@NLconstraint(m, e25, 0.000175842978517116*(exp(-5686.89184198882*( (x[1])^2+ (x[2])^2))-2*exp(-5686.89184198882* (x[2])^2))+x[27] == -0.000175842978517116)
@NLconstraint(m, e26, 0.000162061356128277*(exp(-6170.5024806066*( (x[1])^2+ (x[2])^2))-2*exp(-6170.5024806066* (x[2])^2))+x[28] == -0.000162061356128277)
@NLconstraint(m, e27, 0.000149838496753918*(exp(-6673.85232542952*( (x[1])^2+ (x[2])^2))-2*exp(-6673.85232542952* (x[2])^2))+x[29] == -0.000149838496753918)
@NLconstraint(m, e28, 0.000138947915182239*(exp(-7196.94137683488*( (x[1])^2+ (x[2])^2))-2*exp(-7196.94137683488* (x[2])^2))+x[30] == -0.000138947915182239)
@NLconstraint(m, e29, 0.000129202811858974*(exp(-7739.76963513384*( (x[1])^2+ (x[2])^2))-2*exp(-7739.76963513384* (x[2])^2))+x[31] == -0.000129202811858974)
@NLconstraint(m, e30, 0.000120448012154258*(exp(-8302.33710058494*( (x[1])^2+ (x[2])^2))-2*exp(-8302.33710058494* (x[2])^2))+x[32] == -0.000120448012154258)
@NLconstraint(m, e31, (-1.22780211710163e-16*x[3]*x[4])-1.10979466867667e-16*x[3]*x[5]+2.71433521326503e-16*x[3]*x[6]+2.2778273395183e-17*x[3]*x[7]+3.42807054976076e-17*x[3]*x[8]-1.48820024156456e-16*x[3]*x[9]+4.469527759934e-16*x[3]*x[10]-3.44056990601054e-17*x[3]*x[11]-5.73711638357183e-17*x[3]*x[12]-2.18087603398167e-16*x[3]*x[13]-1.37775663494728e-16*x[3]*x[14]+5.74179884710585e-18*x[3]*x[15]+9.18830670328441e-17*x[3]*x[16]+9.76378110364102e-17*x[3]*x[17]-2.87198646755441e-17*x[3]*x[18]-2.32649882004262e-16*x[3]*x[19]-1.23513845927791e-16*x[3]*x[20]+1.17775692380682e-16*x[3]*x[21]+6.60724614052086e-17*x[3]*x[22]-8.90578364848221e-17*x[3]*x[23]+1.32154999113869e-16*x[3]*x[24]-1.20666949447098e-16*x[3]*x[25]+2.87309925317317e-18*x[3]*x[26]-1.17799827706712e-16*x[3]*x[27]-1.63773876413019e-16*x[3]*x[28]-1.17804421036154e-16*x[3]*x[29]+2.58599293555006e-17*x[3]*x[30]+1.66655313399047e-16*x[3]*x[31]+2.47112846795256e-16*x[3]*x[32]+1.20305137213229e-15*x[4]*x[6]-3.10036425529119e-16*x[4]*x[5]+1.71322964361157e-16*x[4]*x[7]-1.22779323302001e-16*x[4]*x[8]-5.90413113330088e-16*x[4]*x[9]+1.34836630185756e-15*x[4]*x[10]-1.66356448108871e-16*x[4]*x[11]-2.280825832873e-16*x[4]*x[12]-7.15322872093112e-16*x[4]*x[13]-6.97005896209553e-16*x[4]*x[14]+1.32642644763051e-16*x[4]*x[15]+3.7330827287627e-16*x[4]*x[16]+3.82611079019721e-16*x[4]*x[17]-2.77729260448651e-17*x[4]*x[18]-6.78949132216532e-16*x[4]*x[19]-3.48756549123297e-16*x[4]*x[20]+4.25939223432893e-16*x[4]*x[21]+2.53106466753945e-16*x[4]*x[22]+1.14211256561554e-16*x[4]*x[23]+4.1981834461614e-16*x[4]*x[24]-3.79700259228713e-16*x[4]*x[25]+1.23483053325856e-17*x[4]*x[26]-3.67370685765145e-16*x[4]*x[27]-5.17108079388371e-16*x[4]*x[28]-3.78190452014037e-16*x[4]*x[29]+8.181396443633e-17*x[4]*x[30]+5.31026698863919e-16*x[4]*x[31]+7.76482372747735e-16*x[4]*x[32]+2.16166468990934e-15*x[5]*x[6]-1.59281117129717e-16*x[5]*x[7]+1.13198237123802e-16*x[5]*x[8]-5.67021060345721e-16*x[5]*x[9]+1.71295773366725e-15*x[5]*x[10]-1.20293976783186e-16*x[5]*x[11]-5.91737608450981e-16*x[5]*x[12]-1.13038485284597e-15*x[5]*x[13]-3.98080108031821e-16*x[5]*x[14]+1.0037636729904e-16*x[5]*x[15]+3.86509106433437e-16*x[5]*x[16]+4.03290884207453e-16*x[5]*x[17]-6.02486244234254e-17*x[5]*x[18]-7.93338270517015e-16*x[5]*x[19]-4.08412721472447e-16*x[5]*x[20]+4.63675153154686e-16*x[5]*x[21]+6.76295130990211e-16*x[5]*x[22]+9.37477210967121e-17*x[5]*x[23]+4.57036260006072e-16*x[5]*x[24]-4.41982644154997e-16*x[5]*x[25]+3.34844269310563e-18*x[5]*x[26]-4.21913658595951e-16*x[5]*x[27]-5.89351892005066e-16*x[5]*x[28]-4.33650390971773e-16*x[5]*x[29]+8.45548354108566e-17*x[5]*x[30]+5.87706553077218e-16*x[5]*x[31]+8.62315807440618e-16*x[5]*x[32]+(-1.57586343002831e-15*x[6]*x[7])-6.85364682179089e-16*x[6]*x[8]-1.11489435648371e-15*x[6]*x[9]+1.69120119057455e-15*x[6]*x[10]-3.37121290857038e-16*x[6]*x[11]-7.49528569922091e-16*x[6]*x[12]-1.30191489864009e-15*x[6]*x[13]-5.30106968753839e-16*x[6]*x[14]+2.38681008624226e-17*x[6]*x[15]+3.37615631409306e-16*x[6]*x[16]+3.64942750803477e-16*x[6]*x[17]-1.17680181795742e-16*x[6]*x[18]-8.74997945900825e-16*x[6]*x[19]-4.69085203132267e-16*x[6]*x[20]+4.44376810631141e-16*x[6]*x[21]-1.54387835958657e-16*x[6]*x[22]-7.19937421444672e-16*x[6]*x[23]+4.48697204308926e-16*x[6]*x[24]-4.82833427323199e-16*x[6]*x[25]-1.87678777150273e-17*x[6]*x[26]-4.57264454982756e-16*x[6]*x[27]-6.29604741126299e-16*x[6]*x[28]-4.65813670856453e-16*x[6]*x[29]+6.9958506926621e-17*x[6]*x[30]+5.92096503598392e-16*x[6]*x[31]+8.77065124882698e-16*x[6]*x[32]+(-7.03843555031166e-16*x[7]*x[8])-8.42041598294943e-16*x[7]*x[9]+2.1434076056469e-15*x[7]*x[10]-3.87496689474978e-16*x[7]*x[11]-1.18364964522377e-16*x[7]*x[12]-1.16347618619536e-15*x[7]*x[13]-3.07252002355347e-16*x[7]*x[14]+2.40356809672342e-16*x[7]*x[15]+5.33159959974791e-16*x[7]*x[16]+5.3408443748526e-16*x[7]*x[17]+8.58742210467796e-18*x[7]*x[18]-7.95260159277507e-16*x[7]*x[19]+3.693142508632e-17*x[7]*x[20]+5.48849267485601e-16*x[7]*x[21]+7.19808697521684e-16*x[7]*x[22]+9.44895005027955e-17*x[7]*x[23]+5.24005711731759e-16*x[7]*x[24]-4.35539375364234e-16*x[7]*x[25]+3.35039226772213e-17*x[7]*x[26]-4.18379292501195e-16*x[7]*x[27]-5.97942515231547e-16*x[7]*x[28]-4.34289484490826e-16*x[7]*x[29]+1.1039982215712e-16*x[7]*x[30]+6.38352268793104e-16*x[7]*x[31]+9.25751816559151e-16*x[7]*x[32]+3.69249083118957e-15*x[8]*x[10]-1.56088180526984e-15*x[8]*x[9]+8.4293352766363e-17*x[8]*x[11]-3.82089186420175e-16*x[8]*x[12]-1.12773431539279e-15*x[8]*x[13]-7.00067524575243e-16*x[8]*x[14]-3.01442258293398e-17*x[8]*x[15]+3.29915250359915e-16*x[8]*x[16]+3.62693126617561e-16*x[8]*x[17]-1.63702044133305e-16*x[8]*x[18]-9.79707414127687e-16*x[8]*x[19]-5.30818455084536e-16*x[8]*x[20]+6.29090000007339e-17*x[8]*x[21]+2.40444565388903e-16*x[8]*x[22]-3.75763894340168e-16*x[8]*x[23]+1.10750833754682e-16*x[8]*x[24]-8.528505894895e-16*x[8]*x[25]-3.52957689316665e-16*x[8]*x[26]-7.98590858401915e-16*x[8]*x[27]-9.64965936868335e-16*x[8]*x[28]-3.55134660557763e-16*x[8]*x[29]+1.9222408397846e-16*x[8]*x[30]+7.22790357706054e-16*x[8]*x[31]+1.00898893347264e-15*x[8]*x[32]+7.985677483805e-15*x[9]*x[10]+7.32446149485288e-16*x[9]*x[11]+5.6038261732796e-17*x[9]*x[12]-9.1590312052029e-16*x[9]*x[13]-6.09899562488728e-16*x[9]*x[14]+5.64291307915545e-16*x[9]*x[15]+8.76772353778373e-16*x[9]*x[16]+4.01328225094163e-16*x[9]*x[17]+2.39957771177466e-16*x[9]*x[18]-1.06263350433415e-15*x[9]*x[19]-1.91649547387169e-16*x[9]*x[20]+4.13105888625208e-16*x[9]*x[21]+5.33566751460962e-16*x[9]*x[22]-1.34692272157567e-16*x[9]*x[23]+4.27835736258197e-16*x[9]*x[24]-5.72911585378544e-16*x[9]*x[25]-6.82158593882158e-17*x[9]*x[26]-5.31923460034788e-16*x[9]*x[27]-7.09389857615506e-16*x[9]*x[28]-5.30648882477449e-16*x[9]*x[29]+4.01555345699166e-17*x[9]*x[30]+5.91547164273565e-16*x[9]*x[31]+8.91650314767088e-16*x[9]*x[32]+(-5.8643103830559e-15*x[10]*x[11])-3.31508462645455e-15*x[10]*x[12]-3.3680612891563e-15*x[10]*x[13]-1.79630987160306e-15*x[10]*x[14]-6.89298791783378e-16*x[10]*x[15]-1.19220582466635e-16*x[10]*x[16]-4.24235743984349e-16*x[10]*x[17]-5.38340537395628e-16*x[10]*x[18]-1.0063381996436e-15*x[10]*x[19]-4.7101022950712e-16*x[10]*x[20]+2.67929263936352e-16*x[10]*x[21]+4.06666993968832e-16*x[10]*x[22]-2.46776162824667e-16*x[10]*x[23]+3.26741435013944e-16*x[10]*x[24]-6.94995095346783e-16*x[10]*x[25]-1.6467673852696e-16*x[10]*x[26]-6.31923961369954e-16*x[10]*x[27]-8.0483360519732e-16*x[10]*x[28]-6.14658626345845e-16*x[10]*x[29]-2.55031302235089e-17*x[10]*x[30]+5.41192976912282e-16*x[10]*x[31]+8.5027201372486e-16*x[10]*x[32]+(-8.00648964018361e-16*x[11]*x[12])-2.20407614298602e-15*x[11]*x[13]-7.24225879547154e-16*x[11]*x[14]+2.82660080435523e-16*x[11]*x[15]+7.04166469311622e-16*x[11]*x[16]+2.62419775814006e-16*x[11]*x[17]-4.10747327411891e-17*x[11]*x[18]-6.73680571632216e-16*x[11]*x[19]-1.50485683439494e-16*x[11]*x[20]+6.23167136119073e-16*x[11]*x[21]+6.94987956083229e-16*x[11]*x[22]-2.24896419916733e-17*x[11]*x[23]+5.74371115075672e-16*x[11]*x[24]-5.09942959460864e-16*x[11]*x[25]+1.94639909870174e-17*x[11]*x[26]-4.78392846893344e-16*x[11]*x[27]-6.69590804819702e-16*x[11]*x[28]-4.85765022869022e-16*x[11]*x[29]+1.06844096213001e-16*x[11]*x[30]+6.75463539507271e-16*x[11]*x[31]+9.81089605998952e-16*x[11]*x[32]+(-3.22605891558718e-15*x[12]*x[13])-5.80185760310736e-16*x[12]*x[14]+2.90583216752335e-16*x[12]*x[15]+7.39977970162706e-16*x[12]*x[16]+1.04543983348768e-15*x[12]*x[17]-1.7000363814675e-16*x[12]*x[18]-9.18008015538103e-16*x[12]*x[19]-3.35298930140477e-16*x[12]*x[20]+5.38239375187877e-16*x[12]*x[21]+5.77639909885471e-16*x[12]*x[22]-5.8891395799455e-16*x[12]*x[23]+8.53327911086773e-16*x[12]*x[24]-3.06809324373386e-16*x[12]*x[25]+2.22864622568916e-16*x[12]*x[26]-3.12017777608352e-16*x[12]*x[27]-5.24295907005191e-16*x[12]*x[28]-3.47517399504766e-16*x[12]*x[29]+2.49714587878872e-16*x[12]*x[30]+8.21213786340336e-16*x[12]*x[31]+1.12288123355776e-15*x[12]*x[32]+1.60277916390361e-15*x[13]*x[14]+1.91281828900662e-15*x[13]*x[15]+1.89883874676896e-15*x[13]*x[16]+1.84541969810431e-15*x[13]*x[17]+3.31040266996126e-16*x[13]*x[18]-6.65596688237237e-16*x[13]*x[19]-6.79491206650293e-17*x[13]*x[20]+8.78194788594384e-16*x[13]*x[21]+8.37549759929746e-16*x[13]*x[22]+1.1079442234767e-15*x[13]*x[24]-1.39390095000668e-16*x[13]*x[25]+3.96752888960037e-16*x[13]*x[26]-1.76627353138829e-16*x[13]*x[27]-4.09325032814565e-16*x[13]*x[28]-2.37027565122377e-16*x[13]*x[29]+3.69292812464639e-16*x[13]*x[30]+9.47490188066016e-16*x[13]*x[31]+1.24731782903085e-15*x[13]*x[32]+3.17372272497416e-15*x[14]*x[15]+2.77868335976697e-15*x[14]*x[16]+1.73424058322012e-15*x[14]*x[17]-1.21196842616709e-17*x[14]*x[18]-1.18566154721602e-15*x[14]*x[19]-4.37672470182886e-16*x[14]*x[20]+1.31439065239945e-15*x[14]*x[21]+6.20642101084233e-16*x[14]*x[22]-2.66062225300647e-16*x[14]*x[23]+1.08853381063832e-15*x[14]*x[24]-2.04160455289901e-16*x[14]*x[25]+3.89279206453955e-16*x[14]*x[26]-1.90746947437109e-16*x[14]*x[27]-4.13762711830419e-16*x[14]*x[28]-7.05639660915686e-16*x[14]*x[29]+4.22871053411708e-16*x[14]*x[30]+5.65785053551447e-16*x[14]*x[31]+8.92319485652788e-16*x[14]*x[32]+2.05423833051658e-15*x[15]*x[16]+1.61684099811326e-15*x[15]*x[17]-3.61065530036757e-16*x[15]*x[18]-2.32373715761175e-15*x[15]*x[19]-1.26045395201722e-15*x[15]*x[20]+7.75757907998004e-16*x[15]*x[21]+1.00465794810104e-16*x[15]*x[22]-8.21947813100725e-16*x[15]*x[23]+6.53943611354537e-16*x[15]*x[24]-6.97922087081014e-16*x[15]*x[25]-3.50811028368369e-17*x[15]*x[26]-6.20430327775989e-16*x[15]*x[27]-8.29423127177276e-16*x[15]*x[28]-6.02479746829072e-16*x[15]*x[29]+8.27286203125497e-17*x[15]*x[30]+7.2572685285012e-16*x[15]*x[31]+6.22864169023469e-16*x[15]*x[32]+8.77169807889231e-16*x[16]*x[17]-1.44015670497074e-15*x[16]*x[18]-3.47921918473505e-15*x[16]*x[19]-1.87646727506915e-15*x[16]*x[20]+5.69511736891704e-16*x[16]*x[21]-1.07411170018333e-16*x[16]*x[22]-1.09472926345995e-15*x[16]*x[23]+5.24968809333974e-16*x[16]*x[24]-9.16774305049216e-16*x[16]*x[25]-1.80197630716257e-16*x[16]*x[26]-7.85134263231831e-16*x[16]*x[27]-9.87665165140489e-16*x[16]*x[28]-7.33831339498923e-16*x[16]*x[29]-4.98181713007523e-18*x[16]*x[30]+1.11204447401105e-15*x[16]*x[31]+5.96318392908815e-16*x[16]*x[32]+(-3.59932056032975e-15*x[17]*x[18])-4.83976281339299e-15*x[17]*x[19]-2.19135893170475e-15*x[17]*x[20]+8.56538779496719e-16*x[17]*x[21]+1.14355038794677e-16*x[17]*x[22]-1.00216372627466e-15*x[17]*x[23]+7.80835889584029e-16*x[17]*x[24]-8.03386647967918e-16*x[17]*x[25]+4.76542943668087e-18*x[17]*x[26]-6.42048345178169e-16*x[17]*x[27]-8.52832850722053e-16*x[17]*x[28]-1.03156323793945e-15*x[17]*x[29]+1.87382774582591e-16*x[17]*x[30]+4.62723069863798e-16*x[17]*x[31]+8.36855190074823e-16*x[17]*x[32]+(-6.00060447815169e-15*x[18]*x[19])-1.41210434733506e-15*x[18]*x[20]+1.70696706576914e-15*x[18]*x[21]+1.10575879261616e-15*x[18]*x[22]-3.65424393035714e-16*x[18]*x[23]+1.0350084963852e-15*x[18]*x[24]-8.03899951763952e-16*x[18]*x[25]+5.17750509901535e-17*x[18]*x[26]-6.80673721537274e-16*x[18]*x[27]-9.24626185958055e-16*x[18]*x[28]-6.46253623168341e-16*x[18]*x[29]-2.75360968398523e-16*x[18]*x[30]+8.83832797868782e-16*x[18]*x[31]+1.25107476282078e-15*x[18]*x[32]+2.62495225388892e-15*x[19]*x[20]+5.08904401766508e-15*x[19]*x[21]+2.94625901299988e-15*x[19]*x[22]+5.97681179768952e-16*x[19]*x[23]+2.0192761044326e-15*x[19]*x[24]-2.94852355740586e-16*x[19]*x[25]+5.40974264560663e-16*x[19]*x[26]-3.62680065726063e-16*x[19]*x[27]-6.93742872264978e-16*x[19]*x[28]-1.40831084189299e-17*x[19]*x[29]+3.67358465578554e-16*x[19]*x[30]+1.51062261849407e-15*x[19]*x[31]+1.85179370402273e-15*x[19]*x[32]+7.67069193356454e-15*x[20]*x[21]+3.09355372313894e-15*x[20]*x[22]-5.19946301619904e-18*x[20]*x[23]+1.94726757965449e-15*x[20]*x[24]-7.42922195302072e-16*x[20]*x[25]+2.92063527696101e-16*x[20]*x[26]-6.74708547249183e-16*x[20]*x[27]-9.93124769375146e-16*x[20]*x[28]-2.62830244139028e-16*x[20]*x[29]+2.18198168213859e-16*x[20]*x[30]+1.41830881910426e-15*x[20]*x[31]+1.78929628449599e-15*x[20]*x[32]+(-1.72451566144156e-15*x[21]*x[22])-3.8974351136484e-15*x[21]*x[23]+4.66478056967825e-16*x[21]*x[24]-2.35824542978775e-15*x[21]*x[25]-7.47751019307563e-16*x[21]*x[26]-1.61947898656685e-15*x[21]*x[27]-1.79101955772154e-15*x[21]*x[28]-8.97963955691136e-16*x[21]*x[29]-2.25144736021002e-16*x[21]*x[30]+1.09941146336699e-15*x[21]*x[31]+7.79577148767815e-16*x[21]*x[32]+1.14079183915668e-15*x[22]*x[24]-5.72780805106347e-15*x[22]*x[23]-2.84264116583919e-15*x[22]*x[25]-8.01308596358866e-16*x[22]*x[26]-1.85336747101707e-15*x[22]*x[27]-2.03987316909091e-15*x[22]*x[28]-1.08751167180574e-15*x[22]*x[29]-2.95259310612539e-16*x[22]*x[30]+1.09036251791727e-15*x[22]*x[31]+1.55619517750602e-15*x[22]*x[32]+7.89551309925656e-15*x[23]*x[24]-1.39548435849113e-15*x[23]*x[25]+7.58327297489744e-16*x[23]*x[26]-9.43407685217379e-16*x[23]*x[27]-1.36036846769696e-15*x[23]*x[28]-4.64408292587445e-16*x[23]*x[29]+3.762137012567e-16*x[23]*x[30]+1.75962660471596e-15*x[23]*x[31]+2.17997615514775e-15*x[23]*x[32]+(-1.00450246974219e-14*x[24]*x[25])-2.36228530944958e-15*x[24]*x[26]-3.42746347285347e-15*x[24]*x[27]-3.22664126124436e-15*x[24]*x[28]-2.57698263401561e-15*x[24]*x[29]-5.06259333945157e-16*x[24]*x[30]+4.20119032534239e-16*x[24]*x[31]+1.72969513438005e-15*x[24]*x[32]+4.97967458918685e-15*x[25]*x[26]-3.34066545847947e-16*x[25]*x[27]-1.14709748065956e-15*x[25]*x[28]-8.10004800730242e-16*x[25]*x[29]+1.16815977891801e-15*x[25]*x[30]+1.98059074931082e-15*x[25]*x[31]+3.09765989163363e-15*x[25]*x[32]+(-5.42225165463532e-15*x[26]*x[27])-4.0192828013938e-15*x[26]*x[28]-2.45966280402986e-15*x[26]*x[29]+3.10578408516169e-16*x[26]*x[30]+1.52213819761743e-15*x[26]*x[31]+2.76840758155923e-15*x[26]*x[32]+(-2.67380512900782e-15*x[27]*x[28])-1.63634584674178e-16*x[27]*x[29]+2.07169102009099e-15*x[27]*x[30]+3.87359972467166e-15*x[27]*x[31]+3.47094003879678e-15*x[27]*x[32]+1.18502063530838e-15*x[28]*x[29]+4.30775852719543e-15*x[28]*x[30]+5.0956922229498e-15*x[28]*x[31]+5.61823157423248e-15*x[28]*x[32]+6.6304933995676e-15*x[29]*x[30]+7.27737141844533e-15*x[29]*x[31]+6.44080210546173e-15*x[29]*x[32]+7.24335162521621e-15*x[30]*x[31]+6.51243679751327e-15*x[30]*x[32]+4.85562418198745e-15*x[31]*x[32]+0.540238623986739* (x[3])^2+1.70877027744975* (x[4])^2+1.90791644158291* (x[5])^2+1.95690036669622* (x[6])^2+1.97529389288289* (x[7])^2+1.98404680199921* (x[8])^2+1.98886727600946* (x[9])^2+1.99179667548404* (x[10])^2+1.99370724915552* (x[11])^2+1.99502138240663* (x[12])^2+1.99596350506368* (x[13])^2+1.99666171693848* (x[14])^2+1.99719341942255* (x[15])^2+1.99760760133912* (x[16])^2+1.99793648671455* (x[17])^2+1.99820197263063* (x[18])^2+1.99841935847465* (x[19])^2+1.99859959427503* (x[20])^2+1.99875068373015* (x[21])^2+1.99887858643848* (x[22])^2+1.99898781361402* (x[23])^2+1.99908183072624* (x[24])^2+1.99916333537755* (x[25])^2+1.99923445275103* (x[26])^2+1.99929687536373* (x[27])^2+1.99935196461657* (x[28])^2+1.99940082557026* (x[29])^2+1.99944436274885* (x[30])^2+1.99948332226736* (x[31])^2+1.99951832398895* (x[32])^2-0.512425709736866*x[3]+0.266412240523561*x[4]+0.089861400898556*x[5]+0.0426250106754744*x[6]+0.0245516005570788*x[7]+0.0158890602681724*x[8]+0.011101566168865*x[9]+0.00818643159400726*x[10]+0.00628281991971577*x[11]+0.00497240547109876*x[12]+0.0040324133754837*x[13]+0.00333549236975795*x[14]+0.00280460858660855*x[15]+0.00239096605467754*x[16]+0.00206244766461297*x[17]+0.00179721841643146*x[18]+0.00158001642336678*x[19]+0.00139991509677297*x[20]+0.00124892582892782*x[21]+0.00112109899352727*x[22]+0.00101193012535395*x[23]+0.000917958419280411*x[24]+0.00083648954618329*x[25]+0.000765400677216638*x[26]+0.000703000995477976*x[27]+0.000647930360034549*x[28]+0.000599084648828589*x[29]+0.000555560046815938*x[30]+0.00051661097878764*x[31]+0.000481617997862032*x[32] <= -0.133233333333333)
@NLconstraint(m, e32, -( (x[1])^2+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
