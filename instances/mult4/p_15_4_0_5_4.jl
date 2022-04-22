using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.9461*x[9]^2-0.9526*x[9]+(-0.9402*x[1]*x[15])-0.9433*x[5]*x[11]-0.9394*x[7]*x[12]-0.9582*x[11]*x[12]-0.967*x[13]*x[15]-0.5344*x[1]+0.1293*x[5]-0.1023*x[7]-0.4876*x[11]-0.4892*x[12]-0.8809*x[13]-0.5909*x[15]+(-0.6488*x[1]*x[6]*x[8])-0.769*x[1]*x[7]*x[14]-0.789*x[2]*x[4]*x[14]-0.82*x[2]*x[5]*x[6]-0.7606*x[2]*x[5]*x[13]-0.6164*x[2]*x[8]*x[10]-0.723*x[3]*x[4]*x[13]-0.7493*x[3]*x[6]*x[12]-0.842*x[3]*x[10]*x[11]-0.6195*x[3]*x[11]*x[13]-0.919*x[3]*x[12]*x[13]-0.8291*x[4]*x[5]*x[11]-0.8299*x[4]*x[5]*x[14]-0.8395*x[4]*x[8]*x[12]-0.6056*x[4]*x[9]*x[14]-0.8729*x[4]*x[13]*x[14]-0.7388*x[6]*x[9]*x[11]-0.7416*x[6]*x[10]*x[12]-0.6549*x[9]*x[10]*x[11]-0.7832*x[9]*x[10]*x[12]-0.6729*x[10]*x[12]*x[13]+0.3443*x[2]+0.0946*x[3]+0.99*x[4]-0.1439*x[6]+0.4527*x[8]-0.9404*x[10]+0.5844*x[14]+0.93*x[1]*x[2]*x[5]*x[13]-0.2119*x[1]*x[2]*x[3]*x[8]-0.4441*x[1]*x[2]*x[6]*x[7]+0.3423*x[1]*x[2]*x[6]*x[13]-0.147*x[1]*x[2]*x[7]*x[14]+0.0322*x[1]*x[3]*x[4]*x[13]+0.2282*x[1]*x[3]*x[6]*x[11]+0.8903*x[1]*x[3]*x[9]*x[12]+0.3018*x[1]*x[3]*x[11]*x[15]-0.1007*x[1]*x[4]*x[9]*x[13]-0.2369*x[1]*x[4]*x[11]*x[15]+0.8088*x[1]*x[5]*x[7]*x[14]+0.1919*x[1]*x[5]*x[8]*x[9]+0.0769*x[1]*x[5]*x[10]*x[11]-0.4571*x[1]*x[7]*x[8]*x[11]-0.3177*x[1]*x[8]*x[10]*x[11]+0.6134*x[1]*x[8]*x[14]*x[15]-0.1947*x[2]*x[3]*x[4]*x[13]-0.5367*x[2]*x[3]*x[6]*x[7]+0.0372*x[2]*x[3]*x[6]*x[15]+0.2328*x[2]*x[3]*x[7]*x[8]+0.3731*x[2]*x[3]*x[7]*x[15]+0.7973*x[2]*x[3]*x[8]*x[10]+0.3748*x[2]*x[3]*x[9]*x[14]-0.0695*x[2]*x[3]*x[11]*x[12]+0.9029*x[2]*x[3]*x[11]*x[13]-0.0071*x[2]*x[3]*x[12]*x[14]-0.3145*x[2]*x[3]*x[12]*x[15]-0.2986*x[2]*x[4]*x[7]*x[8]-0.4666*x[2]*x[4]*x[7]*x[9]+0.397*x[2]*x[4]*x[7]*x[15]-0.1372*x[2]*x[4]*x[10]*x[15]+0.8057*x[2]*x[5]*x[13]*x[14]-0.021*x[2]*x[6]*x[7]*x[8]-0.3842*x[2]*x[6]*x[7]*x[12]+0.9914*x[2]*x[6]*x[7]*x[14]+0.2792*x[2]*x[6]*x[8]*x[13]+0.3442*x[2]*x[6]*x[9]*x[14]+0.4864*x[2]*x[6]*x[11]*x[13]+0.6177*x[2]*x[7]*x[8]*x[12]+0.5099*x[2]*x[7]*x[11]*x[13]-0.4492*x[2]*x[8]*x[9]*x[13]-0.1976*x[2]*x[8]*x[10]*x[13]+0.7695*x[2]*x[9]*x[11]*x[12]-0.3989*x[3]*x[4]*x[6]*x[7]-0.2946*x[3]*x[4]*x[6]*x[11]+0.008*x[3]*x[4]*x[6]*x[14]-0.5453*x[3]*x[4]*x[9]*x[12]+0.235*x[3]*x[4]*x[12]*x[13]-0.2869*x[3]*x[5]*x[11]*x[13]+0.4177*x[3]*x[5]*x[12]*x[14]+0.6829*x[3]*x[6]*x[9]*x[10]+0.3256*x[3]*x[6]*x[9]*x[15]-0.3282*x[3]*x[6]*x[10]*x[13]-0.1189*x[3]*x[6]*x[11]*x[14]-0.0236*x[3]*x[7]*x[8]*x[13]-0.0897*x[3]*x[7]*x[8]*x[15]+0.2846*x[3]*x[7]*x[10]*x[13]-0.13*x[3]*x[7]*x[10]*x[15]+0.7614*x[3]*x[7]*x[11]*x[13]+0.4058*x[3]*x[8]*x[10]*x[14]+0.8112*x[3]*x[9]*x[12]*x[13]+0.6998*x[3]*x[9]*x[13]*x[14]+0.5984*x[3]*x[12]*x[14]*x[15]+0.7289*x[4]*x[5]*x[6]*x[9]-0.3458*x[4]*x[5]*x[10]*x[14]+0.2669*x[4]*x[6]*x[7]*x[10]-0.2048*x[4]*x[6]*x[7]*x[11]+0.326*x[4]*x[6]*x[7]*x[14]+0.7684*x[4]*x[6]*x[11]*x[12]-0.3534*x[4]*x[7]*x[8]*x[9]+0.5277*x[4]*x[7]*x[8]*x[13]-0.2321*x[4]*x[7]*x[10]*x[14]+0.0203*x[4]*x[7]*x[13]*x[14]-0.3678*x[4]*x[8]*x[9]*x[10]-0.5534*x[4]*x[8]*x[9]*x[13]-0.3467*x[4]*x[8]*x[11]*x[12]-0.5737*x[4]*x[9]*x[10]*x[13]+0.2624*x[5]*x[6]*x[7]*x[9]-0.117*x[5]*x[6]*x[10]*x[14]+0.5843*x[5]*x[6]*x[11]*x[12]+0.6143*x[5]*x[7]*x[8]*x[9]+0.3989*x[5]*x[7]*x[12]*x[13]+0.0664*x[5]*x[8]*x[11]*x[14]+0.5071*x[5]*x[8]*x[13]*x[14]+0.5142*x[5]*x[9]*x[12]*x[13]+0.255*x[6]*x[7]*x[9]*x[13]-0.2425*x[6]*x[8]*x[9]*x[13]+0.0963*x[6]*x[8]*x[12]*x[15]-0.0916*x[6]*x[9]*x[11]*x[12]-0.007*x[6]*x[10]*x[12]*x[14]+0.8267*x[7]*x[9]*x[10]*x[13]-0.556*x[7]*x[10]*x[11]*x[13]+0.5494*x[7]*x[10]*x[12]*x[13]+0.3609*x[7]*x[10]*x[13]*x[14]+0.1693*x[7]*x[13]*x[14]*x[15]-0.0035*x[8]*x[9]*x[12]*x[14]+0.3384*x[8]*x[10]*x[14]*x[15]+0.4229*x[8]*x[11]*x[14]*x[15]-0.2952*x[9]*x[10]*x[11]*x[14]+0.9553*x[9]*x[11]*x[13]*x[14]-0.3261*x[9]*x[11]*x[13]*x[15]+0.4885*x[9]*x[12]*x[14]*x[15]+0.5075*x[3]^3*x[6]+0.2074*x[8]^3*x[13]+0.6098*x[5]^2*x[13]^2+0.0689*x[5]^2*x[14]^2+0.9107*x[9]^2*x[12]^2+(-0.8295*x[2]^2*x[4])-0.6817*x[2]^2*x[12]-0.7918*x[4]^2*x[15]-0.6553*x[6]^2*x[9]-0.7744*x[7]^2*x[10]-0.83*x[14]^2*x[4]+0.2517*x[1]^2*x[6]*x[7]+0.4415*x[2]^2*x[1]*x[7]+0.064*x[2]^2*x[3]*x[10]+0.5377*x[2]^2*x[4]*x[15]+0.6431*x[2]^2*x[5]*x[11]+0.1216*x[2]^2*x[7]*x[10]+0.9889*x[2]^2*x[10]*x[13]+0.3781*x[3]^2*x[1]*x[11]-0.4469*x[3]^2*x[5]*x[13]+0.6279*x[4]^2*x[3]*x[9]-0.2114*x[4]^2*x[7]*x[10]-0.2862*x[4]^2*x[9]*x[10]-0.0174*x[5]^2*x[3]*x[10]-0.0832*x[5]^2*x[4]*x[9]+0.3677*x[5]^2*x[4]*x[10]+0.7644*x[5]^2*x[6]*x[9]-0.3337*x[5]^2*x[7]*x[11]+0.2589*x[5]^2*x[9]*x[13]-0.0043*x[6]^2*x[5]*x[7]+0.1586*x[6]^2*x[11]*x[12]+0.0518*x[8]^2*x[2]*x[6]+0.0691*x[9]^2*x[2]*x[6]+0.5367*x[9]^2*x[2]*x[13]+0.531*x[9]^2*x[3]*x[14]+0.7748*x[9]^2*x[5]*x[11]+0.1474*x[9]^2*x[6]*x[10]-0.299*x[9]^2*x[8]*x[14]-0.456*x[9]^2*x[11]*x[13]+0.4038*x[10]^2*x[3]*x[12]-0.4416*x[10]^2*x[9]*x[15]+0.6883*x[11]^2*x[2]*x[10]+0.3243*x[11]^2*x[3]*x[9]-0.4475*x[11]^2*x[4]*x[7]+0.5783*x[11]^2*x[4]*x[10]-0.3684*x[11]^2*x[7]*x[13]+0.6639*x[12]^2*x[2]*x[4]+0.4531*x[12]^2*x[3]*x[4]+0.9452*x[12]^2*x[5]*x[7]+0.2956*x[13]^2*x[1]*x[2]+0.5879*x[13]^2*x[1]*x[10]-0.4715*x[13]^2*x[5]*x[14]+0.9969*x[13]^2*x[6]*x[9]+0.6231*x[13]^2*x[6]*x[11]+0.3769*x[13]^2*x[8]*x[11]-0.4937*x[13]^2*x[8]*x[15]+0.0515*x[14]^2*x[3]*x[8]+0.3068*x[14]^2*x[5]*x[10]+0.9983*x[14]^2*x[5]*x[13]-0.3197*x[14]^2*x[6]*x[8]+0.6841*x[14]^2*x[6]*x[9]-0.5191*x[14]^2*x[8]*x[10]+0.8134*x[15]^2*x[10]*x[13])+obj == 0.0)

 
