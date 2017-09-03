function meyer4(;options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

    # ----- Variables ----- #
    xIdx = Int64[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119]
    @assert length(xIdx) == 119
    @variable(m, x[1:119])   # Set up all variables

    # ----> BINARY VARIABLES (IF ANY)
    binaryIdx = Int64[64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118]
    for i in binaryIdx
        setcategory(x[i], :Bin)
    end

    # ----> ALL BOUNDS
    setlowerbound(x[16], 0.0)
    setlowerbound(x[14], 0.0)
    setlowerbound(x[62], 0.0)
    setlowerbound(x[38], 0.0)
    setlowerbound(x[42], 0.0)
    setlowerbound(x[56], 0.0)
    setlowerbound(x[22], 0.0)
    setlowerbound(x[59], 0.0)
    setlowerbound(x[2], 0.0)
    setlowerbound(x[9], 0.0)
    setlowerbound(x[8], 0.0)
    setlowerbound(x[43], 0.0)
    setlowerbound(x[36], 0.0)
    setlowerbound(x[4], 0.0)
    setlowerbound(x[32], 0.0)
    setlowerbound(x[54], 0.0)
    setlowerbound(x[27], 0.0)
    setlowerbound(x[3], 0.0)
    setlowerbound(x[25], 0.0)
    setlowerbound(x[30], 0.0)
    setlowerbound(x[58], 0.0)
    setlowerbound(x[11], 0.0)
    setlowerbound(x[29], 0.0)
    setlowerbound(x[53], 0.0)
    setlowerbound(x[5], 0.0)
    setlowerbound(x[37], 0.0)
    setlowerbound(x[63], 0.0)
    setlowerbound(x[57], 0.0)
    setlowerbound(x[55], 0.0)
    setlowerbound(x[24], 0.0)
    setlowerbound(x[41], 0.0)
    setlowerbound(x[18], 0.0)
    setlowerbound(x[52], 0.0)
    setlowerbound(x[1], 0.0)
    setlowerbound(x[7], 0.0)
    setlowerbound(x[13], 0.0)
    setlowerbound(x[49], 0.0)
    setlowerbound(x[21], 0.0)
    setlowerbound(x[10], 0.0)
    setlowerbound(x[26], 0.0)
    setlowerbound(x[45], 0.0)
    setlowerbound(x[12], 0.0)
    setlowerbound(x[40], 0.0)
    setlowerbound(x[44], 0.0)
    setlowerbound(x[61], 0.0)
    setlowerbound(x[50], 0.0)
    setlowerbound(x[31], 0.0)
    setlowerbound(x[33], 0.0)
    setlowerbound(x[47], 0.0)
    setlowerbound(x[28], 0.0)
    setlowerbound(x[35], 0.0)
    setlowerbound(x[6], 0.0)
    setlowerbound(x[60], 0.0)
    setlowerbound(x[17], 0.0)
    setlowerbound(x[23], 0.0)
    setlowerbound(x[34], 0.0)
    setlowerbound(x[46], 0.0)
    setlowerbound(x[51], 0.0)
    setlowerbound(x[19], 0.0)
    setlowerbound(x[48], 0.0)
    setlowerbound(x[20], 0.0)
    setlowerbound(x[39], 0.0)
    setlowerbound(x[15], 0.0)
    setupperbound(x[1],20.0)
    setupperbound(x[2],20.0)
    setupperbound(x[3],20.0)
    setupperbound(x[4],20.0)
    setupperbound(x[5],50.0)
    setupperbound(x[6],50.0)
    setupperbound(x[7],50.0)
    setupperbound(x[8],50.0)
    setupperbound(x[9],47.5)
    setupperbound(x[10],47.5)
    setupperbound(x[11],47.5)
    setupperbound(x[12],47.5)
    setupperbound(x[13],28.0)
    setupperbound(x[14],28.0)
    setupperbound(x[15],28.0)
    setupperbound(x[16],28.0)
    setupperbound(x[17],100.0)
    setupperbound(x[18],100.0)
    setupperbound(x[19],100.0)
    setupperbound(x[20],100.0)
    setupperbound(x[21],30.0)
    setupperbound(x[22],30.0)
    setupperbound(x[23],30.0)
    setupperbound(x[24],30.0)
    setupperbound(x[25],25.0)
    setupperbound(x[26],25.0)
    setupperbound(x[27],25.0)
    setupperbound(x[28],25.0)
    setupperbound(x[29],300.5)
    setupperbound(x[30],300.5)
    setupperbound(x[31],300.5)
    setupperbound(x[32],300.5)
    setupperbound(x[33],300.5)
    setupperbound(x[34],300.5)
    setupperbound(x[35],300.5)
    setupperbound(x[36],300.5)
    setupperbound(x[37],300.5)
    setupperbound(x[38],300.5)
    setupperbound(x[39],300.5)
    setupperbound(x[40],300.5)
    setupperbound(x[41],300.5)
    setupperbound(x[42],300.5)
    setupperbound(x[43],300.5)
    setupperbound(x[44],300.5)
    setupperbound(x[45],20.0)
    setupperbound(x[46],50.0)
    setupperbound(x[47],47.5)
    setupperbound(x[48],28.0)
    setupperbound(x[49],100.0)
    setupperbound(x[50],30.0)
    setupperbound(x[51],25.0)
    setupperbound(x[52],12.0)
    setupperbound(x[53],175.0)
    setupperbound(x[54],100.0)
    setupperbound(x[55],1200.0)
    setupperbound(x[56],227.5)
    setupperbound(x[57],200.0)
    setupperbound(x[58],1080.0)
    setupperbound(x[59],17.5)
    setupperbound(x[60],2000.0)
    setupperbound(x[61],360.0)
    setupperbound(x[62],1400.0)
    setupperbound(x[63],1400.0)

    # ----> OBJECTIVE FUNCTION
    @objective(m, Min, x[119])

    # ----> NON-LINEAR CONSTRAINTS
    @NLconstraint(m, e26,0.01*(x[55]*x[36]+x[58]*x[39]+x[61]*x[42])-(x[52]*x[29]+x[52]*x[33]+x[52]*x[34]+x[52]*x[35])+x[1]+8.00000000000001*x[5]+4*x[9]+12*x[13]+5*x[17]+0.5*x[21]+10*x[25]==0.0)
    @NLconstraint(m, e27,0.1*(x[56]*x[36]+x[59]*x[39]+x[62]*x[42])-(x[53]*x[29]+x[53]*x[33]+x[53]*x[34]+x[53]*x[35])+50*x[1]+175*x[5]+8*x[9]+100*x[13]+70*x[17]+10*x[21]+5*x[25]==0.0)
    @NLconstraint(m, e28,0.05*(x[57]*x[36]+x[60]*x[39]+x[63]*x[42])-(x[54]*x[29]+x[54]*x[33]+x[54]*x[34]+x[54]*x[35])+25*x[1]+100*x[5]+5*x[9]+20*x[13]+12.5*x[17]+2.5*x[21]+7.50000000000001*x[25]==0.0)
    @NLconstraint(m, e29,x[52]*x[33]+x[58]*x[40]+x[61]*x[43]-(x[55]*x[30]+x[55]*x[36]+x[55]*x[37]+x[55]*x[38])+100*x[2]+800*x[6]+400*x[10]+1200*x[14]+500*x[18]+50*x[22]+1000*x[26]==0.0)
    @NLconstraint(m, e30,0.13*(x[53]*x[33]+x[59]*x[40]+x[62]*x[43])-(x[56]*x[30]+x[56]*x[36]+x[56]*x[37]+x[56]*x[38])+65*x[2]+227.5*x[6]+10.4*x[10]+130*x[14]+91*x[18]+13*x[22]+6.5*x[26]==0.0)
    @NLconstraint(m, e31,0.1*(x[54]*x[33]+x[60]*x[40]+x[63]*x[43])-(x[57]*x[30]+x[57]*x[36]+x[57]*x[37]+x[57]*x[38])+50*x[2]+200*x[6]+10*x[10]+40*x[14]+25*x[18]+5*x[22]+15*x[26]==0.0)
    @NLconstraint(m, e32,0.9*(x[52]*x[34]+x[55]*x[37]+x[61]*x[44])-(x[58]*x[31]+x[58]*x[39]+x[58]*x[40]+x[58]*x[41])+90*x[3]+720*x[7]+360*x[11]+1080*x[15]+450*x[19]+45*x[23]+900*x[27]==0.0)
    @NLconstraint(m, e33,0.01*(x[53]*x[34]+x[56]*x[37]+x[62]*x[44])-(x[59]*x[31]+x[59]*x[39]+x[59]*x[40]+x[59]*x[41])+5*x[3]+17.5*x[7]+0.800000000000001*x[11]+10*x[15]+7.00000000000001*x[19]+x[23]+0.5*x[27]==0.0)
    @NLconstraint(m, e34,x[54]*x[34]+x[57]*x[37]+x[63]*x[44]-(x[60]*x[31]+x[60]*x[39]+x[60]*x[40]+x[60]*x[41])+500*x[3]+2000*x[7]+100*x[11]+400*x[15]+250*x[19]+50*x[23]+150*x[27]==0.0)
    @NLconstraint(m, e35,0.3*(x[52]*x[35]+x[55]*x[38]+x[58]*x[41])-(x[61]*x[32]+x[61]*x[42]+x[61]*x[43]+x[61]*x[44])+30*x[4]+240*x[8]+120*x[12]+360*x[16]+150*x[20]+15*x[24]+300*x[28]==0.0)
    @NLconstraint(m, e36,0.8*(x[53]*x[35]+x[56]*x[38]+x[59]*x[41])-(x[62]*x[32]+x[62]*x[42]+x[62]*x[43]+x[62]*x[44])+400*x[4]+1400*x[8]+64*x[12]+800*x[16]+560*x[20]+80*x[24]+40*x[28]==0.0)
    @NLconstraint(m, e37,0.7*(x[54]*x[35]+x[57]*x[38]+x[60]*x[41])-(x[63]*x[32]+x[63]*x[42]+x[63]*x[43]+x[63]*x[44])+350*x[4]+1400*x[8]+70*x[12]+280*x[16]+175*x[20]+35*x[24]+105*x[28]==0.0)
    @NLconstraint(m, e38,x[52]*x[29]+x[55]*x[30]+x[58]*x[31]+x[61]*x[32]-5*x[29]-5*x[30]-5*x[31]-5*x[32]+95*x[45]+795*x[46]+395*x[47]+1195*x[48]+495*x[49]+45*x[50]+995*x[51]<=0.0)
    @NLconstraint(m, e39,x[53]*x[29]+x[56]*x[30]+x[59]*x[31]+x[62]*x[32]-5*x[29]-5*x[30]-5*x[31]-5*x[32]+495*x[45]+1745*x[46]+75*x[47]+995*x[48]+695*x[49]+95*x[50]+45*x[51]<=0.0)
    @NLconstraint(m, e40,x[54]*x[29]+x[57]*x[30]+x[60]*x[31]+x[63]*x[32]-10*x[29]-10*x[30]-10*x[31]-10*x[32]+490*x[45]+1990*x[46]+90*x[47]+390*x[48]+240*x[49]+40*x[50]+140*x[51]<=0.0)

    @constraint(m, e1,-75.0708333333333*x[1]-150.141666666667*x[2]-280.264444444444*x[3]-245.231388888889*x[4]-55.0519444444444*x[5]-125.118055555556*x[6]-260.245555555556*x[7]-215.203055555556*x[8]-30.0283333333333*x[9]-115.108611111111*x[10]-240.226666666667*x[11]-220.207777777778*x[12]-55.0519444444444*x[13]-140.132222222222*x[14]-245.231388888889*x[15]-245.231388888889*x[16]-55.0519444444444*x[17]-40.0377777777778*x[18]-150.141666666667*x[19]-150.141666666667*x[20]-40.0377777777778*x[21]-120.113333333333*x[22]-230.217222222222*x[23]-230.217222222222*x[24]-30.0283333333333*x[25]-60.0566666666667*x[26]-175.165277777778*x[27]-165.155833333333*x[28]-1177.97083333333*x[29]-2975.27555555556*x[30]-1263.05111111111*x[31]-1293.07944444444*x[32]-1182.97555555556*x[33]-1313.09833333333*x[34]-1293.07944444444*x[35]-2975.27555555556*x[36]-3025.32277777778*x[37]-2995.29444444444*x[38]-1313.09833333333*x[39]-1233.02277777778*x[40]-1213.00388888889*x[41]-1293.07944444444*x[42]-1202.99444444444*x[43]-1213.00388888889*x[44]-150.141666666667*x[45]-135.1275*x[46]-100.094444444444*x[47]-90.085*x[48]-40.0377777777778*x[49]-70.0661111111111*x[50]-45.0425*x[51]-9345*x[64]-18690*x[65]-34888*x[66]-30527*x[67]-6853*x[68]-15575*x[69]-32396*x[70]-26789*x[71]-3738*x[72]-14329*x[73]-29904*x[74]-27412*x[75]-6853*x[76]-17444*x[77]-30527*x[78]-30527*x[79]-6853*x[80]-4984*x[81]-18690*x[82]-18690*x[83]-4984*x[84]-14952*x[85]-28658*x[86]-28658*x[87]-3738*x[88]-7476*x[89]-21805*x[90]-20559*x[91]-9345*x[92]-9968*x[93]-19936*x[94]-23674*x[95]-9968*x[96]-26166*x[97]-23674*x[98]-9968*x[99]-16198*x[100]-12460*x[101]-26166*x[102]-16198*x[103]-13706*x[104]-23674*x[105]-12460*x[106]-13706*x[107]-18690*x[108]-16821*x[109]-12460*x[110]-11214*x[111]-4984*x[112]-8722*x[113]-5607*x[114]-13972*x[115]-36676*x[116]-13972*x[117]-13972*x[118]+x[119]==0.0)
    @constraint(m, e2,-x[1]-x[2]-x[3]-x[4]-x[45]<=-20.0)
    @constraint(m, e3,-x[5]-x[6]-x[7]-x[8]-x[46]<=-50.0)
    @constraint(m, e4,-x[9]-x[10]-x[11]-x[12]-x[47]<=-47.5)
    @constraint(m, e5,-x[13]-x[14]-x[15]-x[16]-x[48]<=-28.0)
    @constraint(m, e6,-x[17]-x[18]-x[19]-x[20]-x[49]<=-100.0)
    @constraint(m, e7,-x[21]-x[22]-x[23]-x[24]-x[50]<=-30.0)
    @constraint(m, e8,-x[25]-x[26]-x[27]-x[28]-x[51]<=-25.0)
    @constraint(m, e9,x[1]+x[2]+x[3]+x[4]+x[45]<=20.0)
    @constraint(m, e10,x[5]+x[6]+x[7]+x[8]+x[46]<=50.0)
    @constraint(m, e11,x[9]+x[10]+x[11]+x[12]+x[47]<=47.5)
    @constraint(m, e12,x[13]+x[14]+x[15]+x[16]+x[48]<=28.0)
    @constraint(m, e13,x[17]+x[18]+x[19]+x[20]+x[49]<=100.0)
    @constraint(m, e14,x[21]+x[22]+x[23]+x[24]+x[50]<=30.0)
    @constraint(m, e15,x[25]+x[26]+x[27]+x[28]+x[51]<=25.0)
    @constraint(m, e16,x[29]+x[33]+x[34]+x[35]-300.5*x[115]<=0.0)
    @constraint(m, e17,x[30]+x[36]+x[37]+x[38]-300.5*x[116]<=0.0)
    @constraint(m, e18,x[31]+x[39]+x[40]+x[41]-300.5*x[117]<=0.0)
    @constraint(m, e19,x[32]+x[42]+x[43]+x[44]-300.5*x[118]<=0.0)
    @constraint(m, e20,-x[29]-x[30]-x[31]-x[32]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]<=-300.5)
    @constraint(m, e21,x[29]+x[30]+x[31]+x[32]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]<=300.5)
    @constraint(m, e22,x[1]+x[5]+x[9]+x[13]+x[17]+x[21]+x[25]-x[29]-x[33]-x[34]-x[35]+x[36]+x[39]+x[42]==0.0)
    @constraint(m, e23,x[2]+x[6]+x[10]+x[14]+x[18]+x[22]+x[26]-x[30]+x[33]-x[36]-x[37]-x[38]+x[40]+x[43]==0.0)
    @constraint(m, e24,x[3]+x[7]+x[11]+x[15]+x[19]+x[23]+x[27]-x[31]+x[34]+x[37]-x[39]-x[40]-x[41]+x[44]==0.0)
    @constraint(m, e25,x[4]+x[8]+x[12]+x[16]+x[20]+x[24]+x[28]-x[32]+x[35]+x[38]+x[41]-x[42]-x[43]-x[44]==0.0)

    @constraint(m, e41,x[1]-0.2*x[64]>=0.0)
    @constraint(m, e42,x[2]-0.2*x[65]>=0.0)
    @constraint(m, e43,x[3]-0.2*x[66]>=0.0)
    @constraint(m, e44,x[4]-0.2*x[67]>=0.0)
    @constraint(m, e45,x[5]-0.2*x[68]>=0.0)
    @constraint(m, e46,x[6]-0.2*x[69]>=0.0)
    @constraint(m, e47,x[7]-0.2*x[70]>=0.0)
    @constraint(m, e48,x[8]-0.2*x[71]>=0.0)
    @constraint(m, e49,x[9]-0.2*x[72]>=0.0)
    @constraint(m, e50,x[10]-0.2*x[73]>=0.0)
    @constraint(m, e51,x[11]-0.2*x[74]>=0.0)
    @constraint(m, e52,x[12]-0.2*x[75]>=0.0)
    @constraint(m, e53,x[13]-0.2*x[76]>=0.0)
    @constraint(m, e54,x[14]-0.2*x[77]>=0.0)
    @constraint(m, e55,x[15]-0.2*x[78]>=0.0)
    @constraint(m, e56,x[16]-0.2*x[79]>=0.0)
    @constraint(m, e57,x[17]-0.2*x[80]>=0.0)
    @constraint(m, e58,x[18]-0.2*x[81]>=0.0)
    @constraint(m, e59,x[19]-0.2*x[82]>=0.0)
    @constraint(m, e60,x[20]-0.2*x[83]>=0.0)
    @constraint(m, e61,x[21]-0.2*x[84]>=0.0)
    @constraint(m, e62,x[22]-0.2*x[85]>=0.0)
    @constraint(m, e63,x[23]-0.2*x[86]>=0.0)
    @constraint(m, e64,x[24]-0.2*x[87]>=0.0)
    @constraint(m, e65,x[25]-0.2*x[88]>=0.0)
    @constraint(m, e66,x[26]-0.2*x[89]>=0.0)
    @constraint(m, e67,x[27]-0.2*x[90]>=0.0)
    @constraint(m, e68,x[28]-0.2*x[91]>=0.0)
    @constraint(m, e69,x[1]-20*x[64]<=0.0)
    @constraint(m, e70,x[2]-20*x[65]<=0.0)
    @constraint(m, e71,x[3]-20*x[66]<=0.0)
    @constraint(m, e72,x[4]-20*x[67]<=0.0)
    @constraint(m, e73,x[5]-50*x[68]<=0.0)
    @constraint(m, e74,x[6]-50*x[69]<=0.0)
    @constraint(m, e75,x[7]-50*x[70]<=0.0)
    @constraint(m, e76,x[8]-50*x[71]<=0.0)
    @constraint(m, e77,x[9]-47.5*x[72]<=0.0)
    @constraint(m, e78,x[10]-47.5*x[73]<=0.0)
    @constraint(m, e79,x[11]-47.5*x[74]<=0.0)
    @constraint(m, e80,x[12]-47.5*x[75]<=0.0)
    @constraint(m, e81,x[13]-28*x[76]<=0.0)
    @constraint(m, e82,x[14]-28*x[77]<=0.0)
    @constraint(m, e83,x[15]-28*x[78]<=0.0)
    @constraint(m, e84,x[16]-28*x[79]<=0.0)
    @constraint(m, e85,x[17]-100*x[80]<=0.0)
    @constraint(m, e86,x[18]-100*x[81]<=0.0)
    @constraint(m, e87,x[19]-100*x[82]<=0.0)
    @constraint(m, e88,x[20]-100*x[83]<=0.0)
    @constraint(m, e89,x[21]-30*x[84]<=0.0)
    @constraint(m, e90,x[22]-30*x[85]<=0.0)
    @constraint(m, e91,x[23]-30*x[86]<=0.0)
    @constraint(m, e92,x[24]-30*x[87]<=0.0)
    @constraint(m, e93,x[25]-25*x[88]<=0.0)
    @constraint(m, e94,x[26]-25*x[89]<=0.0)
    @constraint(m, e95,x[27]-25*x[90]<=0.0)
    @constraint(m, e96,x[28]-25*x[91]<=0.0)
    @constraint(m, e97,x[29]-0.2*x[92]>=0.0)
    @constraint(m, e98,x[30]-0.2*x[93]>=0.0)
    @constraint(m, e99,x[31]-0.2*x[94]>=0.0)
    @constraint(m, e100,x[32]-0.2*x[95]>=0.0)
    @constraint(m, e101,x[29]-300.5*x[92]<=0.0)
    @constraint(m, e102,x[30]-300.5*x[93]<=0.0)
    @constraint(m, e103,x[31]-300.5*x[94]<=0.0)
    @constraint(m, e104,x[32]-300.5*x[95]<=0.0)
    @constraint(m, e105,x[45]-0.2*x[108]>=0.0)
    @constraint(m, e106,x[46]-0.2*x[109]>=0.0)
    @constraint(m, e107,x[47]-0.2*x[110]>=0.0)
    @constraint(m, e108,x[48]-0.2*x[111]>=0.0)
    @constraint(m, e109,x[49]-0.2*x[112]>=0.0)
    @constraint(m, e110,x[50]-0.2*x[113]>=0.0)
    @constraint(m, e111,x[51]-0.2*x[114]>=0.0)
    @constraint(m, e112,x[45]-20*x[108]<=0.0)
    @constraint(m, e113,x[46]-50*x[109]<=0.0)
    @constraint(m, e114,x[47]-47.5*x[110]<=0.0)
    @constraint(m, e115,x[48]-28*x[111]<=0.0)
    @constraint(m, e116,x[49]-100*x[112]<=0.0)
    @constraint(m, e117,x[50]-30*x[113]<=0.0)
    @constraint(m, e118,x[51]-25*x[114]<=0.0)
    @constraint(m, e119,x[36]-0.2*x[99]>=0.0)
    @constraint(m, e120,x[39]-0.2*x[102]>=0.0)
    @constraint(m, e121,x[42]-0.2*x[105]>=0.0)
    @constraint(m, e122,x[33]-0.2*x[96]>=0.0)
    @constraint(m, e123,x[40]-0.2*x[103]>=0.0)
    @constraint(m, e124,x[43]-0.2*x[106]>=0.0)
    @constraint(m, e125,x[34]-0.2*x[97]>=0.0)
    @constraint(m, e126,x[37]-0.2*x[100]>=0.0)
    @constraint(m, e127,x[44]-0.2*x[107]>=0.0)
    @constraint(m, e128,x[35]-0.2*x[98]>=0.0)
    @constraint(m, e129,x[38]-0.2*x[101]>=0.0)
    @constraint(m, e130,x[41]-0.2*x[104]>=0.0)
    @constraint(m, e131,x[36]-300.5*x[99]<=0.0)
    @constraint(m, e132,x[39]-300.5*x[102]<=0.0)
    @constraint(m, e133,x[42]-300.5*x[105]<=0.0)
    @constraint(m, e134,x[33]-300.5*x[96]<=0.0)
    @constraint(m, e135,x[40]-300.5*x[103]<=0.0)
    @constraint(m, e136,x[43]-300.5*x[106]<=0.0)
    @constraint(m, e137,x[34]-300.5*x[97]<=0.0)
    @constraint(m, e138,x[37]-300.5*x[100]<=0.0)
    @constraint(m, e139,x[44]-300.5*x[107]<=0.0)
    @constraint(m, e140,x[35]-300.5*x[98]<=0.0)
    @constraint(m, e141,x[38]-300.5*x[101]<=0.0)
    @constraint(m, e142,x[41]-300.5*x[104]<=0.0)

    if verbose
        print(m)
    end

    return m
end
