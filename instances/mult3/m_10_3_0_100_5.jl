using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.3775*x[1]*x[2]+0.8783*x[1]*x[3]+0.4335*x[1]*x[4]-0.0967*x[1]*x[5]+0.269*x[1]*x[6]-0.5516*x[1]*x[7]-0.2037*x[1]*x[8]+0.6602*x[1]*x[9]-0.722*x[1]*x[10]+0.5119*x[2]*x[3]+0.586*x[2]*x[4]-0.5442*x[2]*x[5]+0.0562*x[2]*x[6]-0.7251*x[2]*x[7]-0.6521*x[2]*x[8]-0.7049*x[2]*x[9]+0.62*x[2]*x[10]-0.497*x[3]*x[4]-0.1799*x[3]*x[5]+0.9132*x[3]*x[6]+0.4395*x[3]*x[7]+0.6708*x[3]*x[8]+0.5537*x[3]*x[9]+0.0758*x[3]*x[10]+0.2226*x[4]*x[5]+0.3882*x[4]*x[6]+0.2014*x[4]*x[7]-0.8073*x[4]*x[8]+0.0984*x[4]*x[9]-0.4142*x[4]*x[10]-0.5883*x[5]*x[6]+0.6861*x[5]*x[7]+0.303*x[5]*x[8]+0.9262*x[5]*x[9]+0.2199*x[5]*x[10]-0.1922*x[6]*x[7]-0.7428*x[6]*x[8]-0.7244*x[6]*x[9]-0.5698*x[6]*x[10]+0.046*x[7]*x[8]+0.4195*x[7]*x[9]+0.0448*x[7]*x[10]-0.6311*x[8]*x[9]+0.7262*x[8]*x[10]-0.3714*x[9]*x[10]-0.9939*x[1]+0.9992*x[2]+0.7608*x[3]-0.5125*x[4]+0.0878*x[5]+0.522*x[6]+0.3632*x[7]-0.1574*x[8]+0.1895*x[9]-0.1071*x[10]+0.3035*x[1]*x[2]*x[3]-0.2096*x[1]*x[2]*x[4]+0.2399*x[1]*x[2]*x[5]+0.6504*x[1]*x[2]*x[6]-0.3218*x[1]*x[2]*x[7]-0.3831*x[1]*x[2]*x[8]-0.2782*x[1]*x[2]*x[9]-0.1766*x[1]*x[2]*x[10]-0.0781*x[1]*x[3]*x[4]-0.2352*x[1]*x[3]*x[5]+0.2862*x[1]*x[3]*x[6]-0.5167*x[1]*x[3]*x[7]+0.4314*x[1]*x[3]*x[8]+0.7136*x[1]*x[3]*x[9]-0.6721*x[1]*x[3]*x[10]+0.4626*x[1]*x[4]*x[5]+0.0198*x[1]*x[4]*x[6]-0.4397*x[1]*x[4]*x[7]+0.9861*x[1]*x[4]*x[8]+0.5225*x[1]*x[4]*x[9]-0.9346*x[1]*x[4]*x[10]+0.4133*x[1]*x[5]*x[6]+0.3442*x[1]*x[5]*x[7]-0.8199*x[1]*x[5]*x[8]-0.0776*x[1]*x[5]*x[9]-0.4723*x[1]*x[5]*x[10]-0.289*x[1]*x[6]*x[7]+0.4463*x[1]*x[6]*x[8]-0.9454*x[1]*x[6]*x[9]+0.1697*x[1]*x[6]*x[10]+0.3885*x[1]*x[7]*x[8]-0.7786*x[1]*x[7]*x[9]+0.0525*x[1]*x[7]*x[10]+0.9874*x[1]*x[8]*x[9]+0.4525*x[1]*x[8]*x[10]+0.521*x[1]*x[9]*x[10]-0.5928*x[2]*x[3]*x[4]+0.7265*x[2]*x[3]*x[5]-0.615*x[2]*x[3]*x[6]-0.8237*x[2]*x[3]*x[7]-0.5174*x[2]*x[3]*x[8]+0.821*x[2]*x[3]*x[9]+0.6597*x[2]*x[3]*x[10]-0.8449*x[2]*x[4]*x[5]+0.743*x[2]*x[4]*x[6]+0.1144*x[2]*x[4]*x[7]-0.2056*x[2]*x[4]*x[8]+0.9986*x[2]*x[4]*x[9]+0.54*x[2]*x[4]*x[10]+0.5713*x[2]*x[5]*x[6]+0.5068*x[2]*x[5]*x[7]+0.1204*x[2]*x[5]*x[8]+0.3888*x[2]*x[5]*x[9]+0.7512*x[2]*x[5]*x[10]-0.9713*x[2]*x[6]*x[7]-0.4285*x[2]*x[6]*x[8]-0.6373*x[2]*x[6]*x[9]+0.6154*x[2]*x[6]*x[10]+0.1051*x[2]*x[7]*x[8]-0.0283*x[2]*x[7]*x[9]+0.0735*x[2]*x[7]*x[10]-0.9093*x[2]*x[8]*x[9]-0.7123*x[2]*x[8]*x[10]+0.5603*x[2]*x[9]*x[10]+0.5412*x[3]*x[4]*x[5]-0.6809*x[3]*x[4]*x[6]-0.0621*x[3]*x[4]*x[7]-0.674*x[3]*x[4]*x[8]+0.0977*x[3]*x[4]*x[9]-0.3899*x[3]*x[4]*x[10]-0.6912*x[3]*x[5]*x[6]+0.15*x[3]*x[5]*x[7]-0.7118*x[3]*x[5]*x[8]-0.6134*x[3]*x[5]*x[9]+0.3822*x[3]*x[5]*x[10]+0.9004*x[3]*x[6]*x[7]-0.7372*x[3]*x[6]*x[8]+0.42*x[3]*x[6]*x[9]-0.2405*x[3]*x[6]*x[10]-0.204*x[3]*x[7]*x[8]-0.998*x[3]*x[7]*x[9]-0.1736*x[3]*x[7]*x[10]+0.6076*x[3]*x[8]*x[9]+0.7557*x[3]*x[8]*x[10]-0.7184*x[3]*x[9]*x[10]-0.9139*x[4]*x[5]*x[6]+0.1313*x[4]*x[5]*x[7]-0.8836*x[4]*x[5]*x[8]+0.7427*x[4]*x[5]*x[9]-0.3114*x[4]*x[5]*x[10]-0.0203*x[4]*x[6]*x[7]-0.4356*x[4]*x[6]*x[8]-0.5229*x[4]*x[6]*x[9]+0.0993*x[4]*x[6]*x[10]+0.4277*x[4]*x[7]*x[8]+0.8057*x[4]*x[7]*x[9]+0.5147*x[4]*x[7]*x[10]+0.0785*x[4]*x[8]*x[9]+0.2918*x[4]*x[8]*x[10]+0.5539*x[4]*x[9]*x[10]+0.758*x[5]*x[6]*x[7]+0.2055*x[5]*x[6]*x[8]-0.877*x[5]*x[6]*x[9]-0.1218*x[5]*x[6]*x[10]-0.9826*x[5]*x[7]*x[8]-0.4008*x[5]*x[7]*x[9]+0.947*x[5]*x[7]*x[10]+0.9103*x[5]*x[8]*x[9]-0.5734*x[5]*x[8]*x[10]+0.3479*x[5]*x[9]*x[10]+0.0723*x[6]*x[7]*x[8]-0.2806*x[6]*x[7]*x[9]-0.9973*x[6]*x[7]*x[10]+0.6989*x[6]*x[8]*x[9]-0.1571*x[6]*x[8]*x[10]+0.4957*x[6]*x[9]*x[10]-0.9767*x[7]*x[8]*x[9]+0.2287*x[7]*x[8]*x[10]-0.1111*x[7]*x[9]*x[10]+0.3253*x[8]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 