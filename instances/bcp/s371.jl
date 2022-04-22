using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2+ ((-1)- (x[1])^2+x[2])^2+ ((-1)+x[2]- (x[1]+0.0344827586206897*x[2]+0.00118906064209275*x[3]+4.10020911066464e-5*x[4]+1.41386521057402e-6*x[5]+4.87539727784143e-8*x[6]+1.68117147511773e-9*x[7]+5.79714301764736e-11*x[8]+1.9990148336715e-12*x[9])^2+0.0689655172413793*x[3]+0.00356718192627824*x[4]+0.000164008364426586*x[5]+7.06932605287008e-6*x[6]+2.92523836670486e-7*x[7]+1.17682003258241e-8*x[8]+4.63771441411789e-10*x[9])^2+ ((-1)+x[2]- (x[1]+0.0689655172413793*x[2]+0.00475624256837099*x[3]+0.000328016728853171*x[4]+2.26218433691842e-5*x[5]+1.56012712890926e-6*x[6]+1.07594974407535e-7*x[7]+7.42034306258862e-9*x[8]+5.11747797419905e-10*x[9])^2+0.137931034482759*x[3]+0.014268727705113*x[4]+0.00131206691541269*x[5]+0.000113109216845921*x[6]+9.36076277345555e-6*x[7]+7.53164820852745e-7*x[8]+5.9362744500709e-8*x[9])^2+ ((-1)+x[2]- (x[1]+0.103448275862069*x[2]+0.0107015457788347*x[3]+0.00110705645987945*x[4]+0.000114523082056495*x[5]+1.18472153851547e-5*x[6]+1.22557400536083e-6*x[7]+1.26783517795948e-7*x[8]+1.31155363237187e-8*x[9])^2+0.206896551724138*x[3]+0.0321046373365042*x[4]+0.00442822583951782*x[5]+0.000572615410282476*x[6]+7.10832923109281e-5*x[7]+8.5790180375258e-6*x[8]+1.01426814236758e-6*x[9])^2+ ((-1)+x[2]- (x[1]+0.137931034482759*x[2]+0.0190249702734839*x[3]+0.00262413383082537*x[4]+0.000361949493906948*x[5]+4.99240681250963e-5*x[6]+6.88607836208224e-6*x[7]+9.49803912011344e-7*x[8]+1.31007436139496e-7*x[9])^2+0.275862068965517*x[3]+0.0570749108204518*x[4]+0.0104965353233015*x[5]+0.00180974746953474*x[6]+0.000299544408750578*x[7]+4.82025485345757e-5*x[8]+7.59843129609075e-6*x[9])^2+ ((-1)+x[2]- (x[1]+0.172413793103448*x[2]+0.0297265160523187*x[3]+0.00512526138833081*x[4]+0.00088366575660876*x[5]+0.000152356164932545*x[6]+2.62683042987146e-5*x[7]+4.529017982537e-6*x[8]+7.80865169402932e-7*x[9])^2+0.344827586206897*x[3]+0.089179548156956*x[4]+0.0205010455533232*x[5]+0.0044183287830438*x[6]+0.000914136989595269*x[7]+0.000183878130091002*x[8]+3.6232143860296e-5*x[9])^2+ ((-1)+x[2]- (x[1]+0.206896551724138*x[2]+0.0428061831153389*x[3]+0.00885645167903563*x[4]+0.00183236931290392*x[5]+0.00037911089232495*x[6]+7.8436736343093e-5*x[7]+1.62282902778813e-5*x[8]+3.357577298872e-6*x[9])^2+0.413793103448276*x[3]+0.128418549346017*x[4]+0.0354258067161425*x[5]+0.00916184656451962*x[6]+0.0022746653539497*x[7]+0.000549057154401651*x[8]+0.000129826322223051*x[9])^2+ ((-1)+x[2]- (x[1]+0.241379310344828*x[2]+0.0582639714625446*x[3]+0.0140637172495797*x[4]+0.00339469037058821*x[5]+0.000819408020486809*x[6]+0.000197788142876126*x[7]+4.77419655218236e-5*x[8]+1.15239227121643e-5*x[9])^2+0.482758620689655*x[3]+0.174791914387634*x[4]+0.0562548689983189*x[5]+0.0169734518529411*x[6]+0.00491644812292086*x[7]+0.00138451700013289*x[8]+0.000381935724174589*x[9])^2+ ((-1)+x[2]- (x[1]+0.275862068965517*x[2]+0.0760998810939358*x[3]+0.020993070646603*x[4]+0.00579119190251117*x[5]+0.00159757018000308*x[6]+0.000440709015173263*x[7]+0.000121574900737452*x[8]+3.35379036517109e-5*x[9])^2+0.551724137931034*x[3]+0.228299643281807*x[4]+0.0839722825864119*x[5]+0.0289559595125558*x[6]+0.00958542108001848*x[7]+0.00308496310621284*x[8]+0.000972599205899616*x[9])^2+ ((-1)+x[2]- (x[1]+0.310344827586207*x[2]+0.0963139120095125*x[3]+0.0298905244167453*x[4]+0.00927636964657612*x[5]+0.00287887333859259*x[6]+0.000893443449908044*x[7]+0.000277275553419738*x[8]+8.60510338199187e-5*x[9])^2+0.620689655172414*x[3]+0.288941736028537*x[4]+0.119562097666981*x[5]+0.0463818482328806*x[6]+0.0172732400315555*x[7]+0.00625410414935631*x[8]+0.0022182044273579*x[9])^2+ ((-1)+x[2]- (x[1]+0.344827586206897*x[2]+0.118906064209275*x[3]+0.0410020911066464*x[4]+0.0141386521057402*x[5]+0.00487539727784143*x[6]+0.00168117147511774*x[7]+0.000579714301764736*x[8]+0.000199901483367151*x[9])^2+0.689655172413793*x[3]+0.356718192627824*x[4]+0.164008364426586*x[5]+0.0706932605287008*x[6]+0.0292523836670486*x[7]+0.0117682003258241*x[8]+0.00463771441411789*x[9])^2+ ((-1)+x[2]- (x[1]+0.379310344827586*x[2]+0.143876337693222*x[3]+0.0545737832629464*x[4]+0.0207004005480142*x[5]+0.0078518760699364*x[6]+0.00297829781963105*x[7]+0.0011296991729635*x[8]+0.000428506582848225*x[9])^2+0.758620689655172*x[3]+0.431629013079667*x[4]+0.218295133051786*x[5]+0.103502002740071*x[6]+0.0471112564196184*x[7]+0.0208480847374173*x[8]+0.00903759338370801*x[9])^2+ ((-1)+x[2]- (x[1]+0.413793103448276*x[2]+0.171224732461356*x[3]+0.070851613432285*x[4]+0.0293179090064628*x[5]+0.0121315485543984*x[6]+0.00501995112595795*x[7]+0.00207722115556881*x[8]+0.000859539788511231*x[9])^2+0.827586206896552*x[3]+0.513674197384067*x[4]+0.28340645372914*x[5]+0.146589545032314*x[6]+0.0727892913263903*x[7]+0.0351396578817057*x[8]+0.0166177692445505*x[9])^2+ ((-1)+x[2]- (x[1]+0.448275862068966*x[2]+0.200951248513674*x[3]+0.0900815941613022*x[4]+0.0403814042792044*x[5]+0.0181020088148158*x[6]+0.00811469360664156*x[7]+0.00363762127194277*x[8]+0.00163065781156055*x[9])^2+0.896551724137931*x[3]+0.602853745541023*x[4]+0.360326376645209*x[5]+0.201907021396022*x[6]+0.108612052888895*x[7]+0.0568028552464909*x[8]+0.0291009701755422*x[9])^2+ ((-1)+x[2]- (x[1]+0.482758620689655*x[2]+0.233055885850178*x[3]+0.112509737996638*x[4]+0.0543150459294114*x[5]+0.0262210566555779*x[6]+0.0126584411440721*x[7]+0.00611097158679343*x[8]+0.00295012421431407*x[9])^2+0.96551724137931*x[3]+0.699167657550535*x[4]+0.450038951986551*x[5]+0.271575229647057*x[6]+0.157326339933467*x[7]+0.0886090880085047*x[8]+0.0488877726943474*x[9])^2+ ((-1)+x[2]- (x[1]+0.517241379310345*x[2]+0.267538644470868*x[3]+0.138382057484932*x[4]+0.0715769262853095*x[5]+0.0370225480786084*x[6]+0.019149593833763*x[7]+0.00990496232780843*x[8]+0.00512325637645264*x[9])^2+1.03448275862069*x[3]+0.802615933412604*x[4]+0.553528229939727*x[5]+0.357884631426548*x[6]+0.22213528847165*x[7]+0.134047156836341*x[8]+0.0792396986224674*x[9])^2+ ((-1)+x[2]- (x[1]+0.551724137931034*x[2]+0.304399524375743*x[3]+0.167944565172824*x[4]+0.0926590704401787*x[5]+0.0511222457600986*x[6]+0.0282053769710889*x[7]+0.0155615872943939*x[8]+0.00858570333483799*x[9])^2+1.10344827586207*x[3]+0.913198573127229*x[4]+0.671778260691295*x[5]+0.463295352200893*x[6]+0.306733474560591*x[7]+0.197437638797622*x[8]+0.124492698355151*x[9])^2+ ((-1)+x[2]- (x[1]+0.586206896551724*x[2]+0.343638525564804*x[3]+0.201443273606954*x[4]+0.118087436252352*x[5]+0.069223669527241*x[6]+0.0405793924814861*x[7]+0.0237879197305263*x[8]+0.0139446426006534*x[9])^2+1.17241379310345*x[3]+1.03091557669441*x[4]+0.805773094427816*x[5]+0.590437181261761*x[6]+0.415342017163446*x[7]+0.284055747370403*x[8]+0.190303357844211*x[9])^2+ ((-1)+x[2]- (x[1]+0.620689655172414*x[2]+0.38525564803805*x[3]+0.239124195333962*x[4]+0.148421914345218*x[5]+0.0921239468349628*x[6]+0.0571803807941148*x[7]+0.0354912708377264*x[8]+0.0220290646578992*x[9])^2+1.24137931034483*x[3]+1.15576694411415*x[4]+0.956496781335848*x[5]+0.742109571726089*x[6]+0.552743681009777*x[7]+0.400262665558804*x[8]+0.283930166701812*x[9])^2+ ((-1)+x[2]- (x[1]+0.655172413793103*x[2]+0.429250891795482*x[3]+0.281233342900488*x[4]+0.184256328107216*x[5]+0.120719663242659*x[6]+0.0790921931589834*x[7]+0.0518190231041615*x[8]+0.0339503944475541*x[9])^2+1.31034482758621*x[3]+1.28775267538644*x[4]+1.12493337160195*x[5]+0.921281640536081*x[6]+0.724317979455953*x[7]+0.553645352112884*x[8]+0.414552184833292*x[9])^2+ ((-1)+x[2]- (x[1]+0.689655172413793*x[2]+0.475624256837099*x[3]+0.328016728853172*x[4]+0.226218433691842*x[5]+0.156012712890926*x[6]+0.107594974407535*x[7]+0.0742034306258863*x[8]+0.0511747797419905*x[9])^2+1.37931034482759*x[3]+1.4268727705113*x[4]+1.31206691541269*x[5]+1.13109216845921*x[6]+0.936076277345555*x[7]+0.753164820852745*x[8]+0.59362744500709*x[9])^2+ ((-1)+x[2]- (x[1]+0.724137931034483*x[2]+0.524375743162901*x[3]+0.379720365738653*x[4]+0.274969920017645*x[5]+0.199116148978295*x[6]+0.144187556156696*x[7]+0.104411678596228*x[8]+0.0756084569145101*x[9])^2+1.44827586206897*x[3]+1.5731272294887*x[4]+1.51888146295461*x[5]+1.37484960008823*x[6]+1.19469689386977*x[7]+1.00931289309687*x[8]+0.835293428769826*x[9])^2+ ((-1)+x[2]- (x[1]+0.758620689655172*x[2]+0.575505350772889*x[3]+0.436590266103571*x[4]+0.331206408768226*x[5]+0.251260034237965*x[6]+0.190611060456387*x[7]+0.144601494139328*x[8]+0.109697685209145*x[9])^2+1.51724137931034*x[3]+1.72651605231867*x[4]+1.74636106441428*x[5]+1.65603204384113*x[6]+1.50756020542779*x[7]+1.33427742319471*x[8]+1.15681195311463*x[9])^2+ ((-1)+x[2]- (x[1]+0.793103448275862*x[2]+0.629013079667063*x[3]+0.498872442494567*x[4]+0.395657454392243*x[5]+0.313797291414538*x[6]+0.248873713880495*x[7]+0.197382600663841*x[8]+0.15654482121615*x[9])^2+1.58620689655172*x[3]+1.88703923900119*x[4]+1.99548976997827*x[5]+1.97828727196122*x[6]+1.88278374848723*x[7]+1.74211599716347*x[8]+1.57906080531073*x[9])^2+ ((-1)+x[2]- (x[1]+0.827586206896552*x[2]+0.684898929845422*x[3]+0.56681290745828*x[4]+0.469086544103404*x[5]+0.388209553740749*x[6]+0.321276872061309*x[7]+0.265884307912808*x[8]+0.220042185858875*x[9])^2+1.6551724137931*x[3]+2.05469678953627*x[4]+2.26725162983312*x[5]+2.34543272051702*x[6]+2.32925732244449*x[7]+2.24893810442916*x[8]+2.12707446330246*x[9])^2+ ((-1)+x[2]- (x[1]+0.862068965517241*x[2]+0.743162901307967*x[3]+0.640657673541351*x[4]+0.552291097880474*x[5]+0.476113015414202*x[6]+0.410442254667416*x[7]+0.353829529885703*x[8]+0.30502545679802*x[9])^2+1.72413793103448*x[3]+2.2294887039239*x[4]+2.5626306941654*x[5]+2.76145548940237*x[6]+2.85667809248521*x[7]+2.87309578267191*x[8]+2.83063623908562*x[9])^2+ ((-1)+x[2]- (x[1]+0.896551724137931*x[2]+0.803804994054697*x[3]+0.720652753290418*x[4]+0.646102468467271*x[5]+0.579264282074105*x[6]+0.51934039082506*x[7]+0.465615522808674*x[8]+0.417448399759501*x[9])^2+1.79310344827586*x[3]+2.41141498216409*x[4]+2.88261101316167*x[5]+3.23051234233636*x[6]+3.47558569244463*x[7]+3.63538273577542*x[8]+3.7249241824694*x[9])^2+ ((-1)+x[2]- (x[1]+0.931034482758621*x[2]+0.866825208085612*x[3]+0.807044159252122*x[4]+0.751385941372665*x[5]+0.699566221277999*x[6]+0.651320274982964*x[7]+0.606401635328967*x[8]+0.564580832892486*x[9])^2+1.86206896551724*x[3]+2.60047562425684*x[4]+3.22817663700849*x[5]+3.75692970686333*x[6]+4.19739732766799*x[7]+4.55924192488075*x[8]+4.85121308263173*x[9])^2+ ((-1)+x[2]- (x[1]+0.96551724137931*x[2]+0.932223543400714*x[3]+0.900077903973103*x[4]+0.869040734870582*x[5]+0.839073812978493*x[6]+0.810140233220614*x[7]+0.782204363109559*x[8]+0.755231798864401*x[9])^2+1.93103448275862*x[3]+2.79667063020214*x[4]+3.60031161589241*x[5]+4.34520367435291*x[6]+5.03444287787096*x[7]+5.6709816325443*x[8]+6.25763490487647*x[9])^2+ ((-1)+x[2]- (x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9])^2+2*x[3]+3*x[4]+4*x[5]+5*x[6]+6*x[7]+7*x[8]+8*x[9])^2)+x[10] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[10])

 
