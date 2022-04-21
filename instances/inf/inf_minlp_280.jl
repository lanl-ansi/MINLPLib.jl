using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34, 35, 36, 37, 38, 39]
@variable(m, x[x_Idx])
b_Idx = Any[24, 25, 26, 27]
@variable(m, b[b_Idx],  Bin)
i_Idx = Any[20, 21, 22, 23, 28, 29, 30, 31, 32, 33]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[23], 0.0)
set_upper_bound(i[23], 100.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(i[21], 0.0)
set_upper_bound(i[21], 100.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(i[29], 0.0)
set_upper_bound(i[29], 100.0)
set_lower_bound(i[33], 0.0)
set_upper_bound(i[33], 100.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(i[32], 0.0)
set_upper_bound(i[32], 100.0)
set_lower_bound(i[28], 0.0)
set_upper_bound(i[28], 100.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(i[31], 0.0)
set_upper_bound(i[31], 100.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(i[22], 0.0)
set_upper_bound(i[22], 100.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(i[20], 0.0)
set_upper_bound(i[20], 100.0)
set_lower_bound(i[30], 0.0)
set_upper_bound(i[30], 100.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(i[20], 100.0)
set_upper_bound(i[21], 100.0)
set_upper_bound(i[22], 100.0)
set_upper_bound(i[23], 100.0)
set_upper_bound(i[28], 100.0)
set_upper_bound(i[29], 100.0)
set_upper_bound(i[30], 100.0)
set_upper_bound(i[31], 100.0)
set_upper_bound(i[32], 100.0)
set_upper_bound(i[33], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-3.33139493995245*x[2]-9.94193188135218*x[3]-7.05866656577408*x[4]-4.6051366278377*x[5]-4.51726987487417*x[6]-3.84630024699381*x[7]-13.9139665874752*x[8]-27.5569978648254*x[9]-6.29783223484145*x[10]-17.9650722083023*x[11]-31.3782352820541*x[12]-20.0804029621452*x[13]-14.3135872460549*x[14]-11.4839694396338*x[15]-3.67617655397117*x[16]-9.969140679286*x[17]-4.03253750640957*x[18]-5.15214105927166*x[19]-13.709643571*i[20]-9.271771239*i[21]-7.834305054*i[22]-7.677385992*i[23]-7.44308791*b[24]-8.354987612*b[25]-29.86656885*b[26]-41.713747788*b[27]-2.384894428*i[28]-4.99440676*i[29]-5.655145636*i[30]-2.821950862*i[31]-1.662953746*i[32]-4.014309196*i[33] == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4]+x[5]+x[6]+x[7] == 1.0)
@constraint(m, e3, x[8]+x[9]+x[10]+x[11]+x[12]+x[13] == 1.0)
@constraint(m, e4, x[14]+x[15]+x[16]+x[17]+x[18]+x[19] == 1.0)
@constraint(m, e5, 2.57855704699118*x[2]+3.58968737626397*x[4]+4.01220846801715*x[6]+10.1313329389449*x[8]+8.65461423107813*x[10]+8.20122143310163*x[12]+2.54547090215734*x[14]+3.35530065159299*x[16]+2.25229307562537*x[18]-2.135456792*i[20] <= 0.0)
@constraint(m, e6, 2.57855704699118*x[3]+3.58968737626397*x[5]+4.01220846801715*x[7]+10.1313329389449*x[9]+8.65461423107813*x[11]+8.20122143310163*x[13]+2.54547090215734*x[15]+3.35530065159299*x[17]+2.25229307562537*x[19]-1.345698496*i[21] <= 0.0)
@constraint(m, e7, 2.75160384913673*x[2]+2.23822939215909*x[4]+3.75956848143932*x[6]+9.52517518454863*x[8]+11.4038733369019*x[10]+7.16405611067833*x[12]+4.78482178665333*x[14]+5.17513608162919*x[16]+4.64611684367018*x[18]-1.410058676*i[22] <= 0.0)
@constraint(m, e8, 2.75160384913673*x[3]+2.23822939215909*x[5]+3.75956848143932*x[7]+9.52517518454863*x[9]+11.4038733369019*x[11]+7.16405611067833*x[13]+4.78482178665333*x[15]+5.17513608162919*x[17]+4.64611684367018*x[19]-3.565004604*i[23] <= 0.0)
@constraint(m, e9, x[2] <= 1.0)
@constraint(m, e10, x[3] <= 1.0)
@constraint(m, e11, x[4] <= 1.0)
@constraint(m, e12, x[5] <= 1.0)
@constraint(m, e13, x[6] <= 1.0)
@constraint(m, e14, x[7] <= 1.0)
@constraint(m, e15, x[8] <= 1.0)
@constraint(m, e16, x[9] <= 1.0)
@constraint(m, e17, x[10] <= 1.0)
@constraint(m, e18, x[11] <= 1.0)
@constraint(m, e19, x[12] <= 1.0)
@constraint(m, e20, x[13] <= 1.0)
@constraint(m, e21, x[14] <= 1.0)
@constraint(m, e22, x[15] <= 1.0)
@constraint(m, e23, x[16] <= 1.0)
@constraint(m, e24, x[17] <= 1.0)
@constraint(m, e25, x[18] <= 1.0)
@constraint(m, e26, x[19] <= 1.0)
@constraint(m, e27, i[20]-3*b[24] <= 0.0)
@constraint(m, e28, i[21]-3*b[25] <= 0.0)
@constraint(m, e29, i[22]-3*b[26] <= 0.0)
@constraint(m, e30, i[23]-3*b[27] <= 0.0)
@constraint(m, e31, -1.640691048*x[2]-4.489849244*x[8]-2.06045818*x[14]+x[34] == 0.0)
@constraint(m, e32, -1.640691048*x[3]-4.489849244*x[9]-2.06045818*x[15]+x[35] == 0.0)
@constraint(m, e33, -1.640691048*x[2]-4.489849244*x[8]-2.06045818*x[14]+x[36] == 0.0)
@constraint(m, e34, -1.640691048*x[3]-4.489849244*x[9]-2.06045818*x[15]+x[37] == 0.0)
@constraint(m, e35, -1.640691048*x[2]-4.489849244*x[8]-2.06045818*x[14]+x[38] == 0.0)
@constraint(m, e36, -1.640691048*x[3]-4.489849244*x[9]-2.06045818*x[15]+x[39] == 0.0)
@NLconstraint(m, e37, 0.17047*x[35]*(i[28]+i[32])-0.4038*i[28]-0.063877*i[32]+8.21799*x[35]+0.0108996*i[29]*(-6.48955+i[28])+0.1066*i[29]-0.0108996*i[28]*i[32]+0.233355*i[33]*x[38]-0.063877*i[33]+4.0237586*x[36]*x[38]+4.02376*x[36]+0.063877*x[34]*x[39]+0.063877*x[34]+4.257*x[38]*x[38]-(0.930978*x[34]+0.930978*x[35])*(i[29]-x[35])+0.0108996*i[29]^2+0.34223*x[34]*(i[28]+x[39])*(i[28]+x[35]-x[38])+0.0036139*i[33]*(1+x[35])*(i[28]+i[32]+i[33])+0.005246895*i[28]*i[32]*(i[32]+2*x[35])+17.660077*x[36]*x[38]*(i[28]+x[39])^2 <= -0.48869)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 