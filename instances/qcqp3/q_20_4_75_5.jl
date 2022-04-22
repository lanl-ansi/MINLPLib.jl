using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.2836*x[1]*x[1]-0.8083*x[1]*x[2]-0.767*x[1]*x[3]-0.7751*x[1]*x[4]+0.6105*x[1]*x[6]-0.9271*x[1]*x[7]+0.7631*x[1]*x[8]+0.8594*x[1]*x[9]-0.8755*x[1]*x[10]+0.8643*x[1]*x[11]-0.6373*x[1]*x[12]-0.3507*x[1]*x[13]+0.3766*x[1]*x[14]-0.368*x[1]*x[15]+0.0163*x[1]*x[16]+0.3319*x[1]*x[18]+0.0764*x[1]*x[20]+0.3133*x[2]*x[2]+0.9254*x[2]*x[3]+0.5831*x[2]*x[6]+0.6328*x[2]*x[7]+0.4813*x[2]*x[15]+0.8477*x[2]*x[16]+0.1267*x[2]*x[19]-0.0578*x[3]*x[3]-0.9871*x[3]*x[6]-0.9052*x[3]*x[7]-0.3575*x[3]*x[8]-0.7701*x[3]*x[9]-0.2787*x[3]*x[10]+0.5171*x[3]*x[12]+0.8146*x[3]*x[14]+0.6966*x[3]*x[17]+0.5929*x[3]*x[19]-0.8551*x[3]*x[20]+0.6237*x[4]*x[4]-0.1681*x[4]*x[6]+0.7504*x[4]*x[7]+0.563*x[4]*x[9]+0.2542*x[4]*x[10]+0.7762*x[4]*x[11]+0.1871*x[4]*x[12]+0.9747*x[4]*x[13]+0.3439*x[4]*x[15]-0.6369*x[4]*x[17]-0.8733*x[4]*x[19]+0.3479*x[4]*x[20]+0.1103*x[5]*x[5]-0.7751*x[5]*x[7]-0.0068*x[5]*x[12]-0.0702*x[5]*x[15]+0.0477*x[5]*x[16]+0.3784*x[5]*x[18]+0.8261*x[5]*x[20]-0.0863*x[6]*x[7]+0.409*x[6]*x[8]-0.8169*x[6]*x[15]-0.9935*x[6]*x[17]+0.529*x[7]*x[8]+0.5509*x[7]*x[9]+0.5682*x[7]*x[12]+0.7036*x[7]*x[14]-0.035*x[7]*x[15]-0.2856*x[7]*x[16]-0.9515*x[7]*x[18]+0.3214*x[7]*x[20]-0.3409*x[8]*x[8]+0.2111*x[8]*x[9]-0.2634*x[8]*x[10]-0.2968*x[8]*x[11]-0.5945*x[8]*x[12]-0.622*x[8]*x[15]+0.455*x[8]*x[16]-0.2588*x[8]*x[17]-0.7214*x[8]*x[18]+0.9409*x[8]*x[20]+0.889*x[9]*x[10]-0.9144*x[9]*x[12]+0.5282*x[9]*x[13]+0.3283*x[9]*x[16]-0.0707*x[9]*x[17]+0.4222*x[9]*x[18]+0.4827*x[10]*x[10]-0.2653*x[10]*x[11]+0.2878*x[10]*x[12]-0.0986*x[10]*x[16]+0.2734*x[10]*x[19]-0.6828*x[11]*x[13]-0.2854*x[11]*x[14]-0.8903*x[11]*x[16]+0.5504*x[11]*x[18]+0.4851*x[12]*x[12]+0.0425*x[12]*x[14]+0.2277*x[12]*x[16]+0.1448*x[12]*x[17]+0.7396*x[12]*x[18]-0.4417*x[12]*x[19]-0.2304*x[12]*x[20]+0.9223*x[13]*x[13]-0.9064*x[13]*x[17]+0.5744*x[15]*x[15]+0.8767*x[15]*x[17]-0.5792*x[15]*x[20]-0.7828*x[16]*x[16]-0.5629*x[16]*x[18]+0.7049*x[16]*x[20]+0.9937*x[17]*x[17]+0.9042*x[17]*x[20]-0.3082*x[18]*x[18]-0.7641*x[20]*x[20]+0.6764*x[1]+0.9619*x[2]+0.1215*x[3]+0.6925*x[4]+0.3733*x[5]+0.3799*x[6]+0.0334*x[7]+0.5111*x[8]+0.6279*x[9]+0.4825*x[10]+0.3167*x[11]+0.7111*x[12]-0.7877*x[13]+0.965*x[14]-0.7714*x[15]+0.1066*x[16]+0.6476*x[17]-0.8322*x[18]-0.8679*x[19]-0.1452*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.718*x[1]*x[2]-0.2757*x[1]*x[1]+0.7158*x[1]*x[4]-0.2389*x[1]*x[7]+0.2344*x[1]*x[9]-0.7464*x[1]*x[11]+0.2897*x[1]*x[12]+0.4408*x[1]*x[15]+0.3929*x[1]*x[17]+0.8672*x[1]*x[19]-0.372*x[1]*x[20]+0.5234*x[2]*x[2]-0.016*x[2]*x[5]+0.8508*x[2]*x[9]+0.7222*x[2]*x[10]+0.2099*x[2]*x[11]+0.2753*x[2]*x[13]-0.0376*x[2]*x[17]-0.2478*x[2]*x[20]+0.3003*x[3]*x[4]+0.8704*x[3]*x[5]+0.5421*x[3]*x[10]-0.7168*x[3]*x[11]-0.5864*x[3]*x[12]-0.872*x[3]*x[17]-0.6573*x[3]*x[19]+0.7287*x[3]*x[20]+0.6232*x[4]*x[4]+0.3768*x[4]*x[7]-0.3045*x[4]*x[8]-0.8243*x[4]*x[9]-0.9695*x[4]*x[11]+0.0245*x[4]*x[14]+0.7578*x[4]*x[16]+0.136*x[4]*x[18]-0.9606*x[4]*x[20]-0.8254*x[5]*x[5]-0.8313*x[5]*x[6]+0.5186*x[5]*x[9]+0.9094*x[5]*x[11]-0.4794*x[5]*x[12]+0.1516*x[5]*x[14]+0.7775*x[5]*x[18]+0.136*x[5]*x[19]+0.0367*x[6]*x[10]-0.6688*x[6]*x[14]-0.3935*x[6]*x[16]+0.4194*x[6]*x[17]-0.4538*x[6]*x[19]+0.075*x[6]*x[20]-0.3988*x[7]*x[8]-0.3406*x[7]*x[13]-0.5948*x[7]*x[14]-0.3929*x[7]*x[19]+0.6553*x[8]*x[8]-0.8243*x[8]*x[9]+0.8822*x[8]*x[10]+0.1895*x[8]*x[11]-0.6292*x[8]*x[13]-0.3081*x[8]*x[14]+0.9673*x[8]*x[15]-0.9131*x[8]*x[17]-0.0957*x[8]*x[19]+0.4056*x[8]*x[20]+0.0877*x[9]*x[9]-0.6554*x[9]*x[11]+0.938*x[9]*x[12]-0.3022*x[9]*x[13]-0.0418*x[9]*x[16]+0.1593*x[9]*x[17]+0.7385*x[10]*x[10]+0.5924*x[10]*x[11]-0.9821*x[10]*x[12]+0.9176*x[10]*x[13]+0.5029*x[10]*x[17]-0.7755*x[10]*x[19]-0.0684*x[10]*x[20]+0.8024*x[11]*x[11]+0.2599*x[11]*x[14]+0.4099*x[11]*x[19]+0.8164*x[12]*x[12]+0.0284*x[12]*x[13]-0.0658*x[12]*x[15]+0.1025*x[12]*x[16]+0.3001*x[12]*x[17]-0.3635*x[12]*x[18]+0.2956*x[12]*x[19]-0.7667*x[13]*x[14]+0.7247*x[13]*x[19]-0.3435*x[13]*x[20]+0.6767*x[14]*x[16]+0.4849*x[14]*x[19]-0.3591*x[14]*x[20]+0.3664*x[15]*x[15]+0.9158*x[15]*x[16]+0.2723*x[15]*x[18]-0.8383*x[15]*x[19]-0.3088*x[15]*x[20]-0.3323*x[16]*x[16]+0.9299*x[16]*x[17]+0.4586*x[16]*x[20]-0.2235*x[17]*x[17]-0.4283*x[17]*x[18]+0.9633*x[17]*x[19]+0.2777*x[17]*x[20]-0.8423*x[18]*x[18]-0.7306*x[18]*x[20]-0.7641*x[19]*x[19]+0.6016*x[19]*x[20]-0.3196*x[20]*x[20]-0.1609*x[1]+0.7309*x[2]+0.4977*x[3]+0.2829*x[4]-0.6099*x[5]-0.7996*x[6]+0.3218*x[7]-0.6309*x[8]+0.5041*x[9]+0.7424*x[10]-0.6027*x[11]+0.965*x[12]-0.9937*x[13]+0.6049*x[14]-0.9632*x[15]-0.5825*x[16]+0.1448*x[17]-0.0147*x[18]-0.0997*x[19]+0.1135*x[20] <= 50.841)
@NLconstraint(m, e3, 0.2858*x[1]*x[1]-0.5175*x[1]*x[5]+0.3596*x[1]*x[6]+0.0034*x[1]*x[9]+0.5146*x[1]*x[10]+0.3201*x[1]*x[11]+0.5943*x[1]*x[13]+0.1961*x[1]*x[15]+0.7462*x[1]*x[16]+0.4328*x[1]*x[17]+0.3605*x[1]*x[19]-0.9385*x[1]*x[20]+0.8248*x[2]*x[2]+0.4994*x[2]*x[3]+0.7224*x[2]*x[5]-0.9325*x[2]*x[6]-0.617*x[2]*x[10]-0.5378*x[2]*x[13]+0.3801*x[2]*x[15]+0.9379*x[2]*x[16]-0.3135*x[2]*x[18]+0.6152*x[2]*x[20]+0.5898*x[3]*x[4]+0.9177*x[3]*x[9]-0.4846*x[3]*x[10]+0.0728*x[3]*x[11]+0.1326*x[3]*x[12]+0.0303*x[3]*x[14]+0.5825*x[3]*x[20]+0.8522*x[4]*x[4]+0.7479*x[4]*x[8]-0.9419*x[4]*x[11]+0.9986*x[4]*x[12]+0.3461*x[4]*x[16]+0.3855*x[4]*x[17]-0.6577*x[4]*x[18]+0.4746*x[5]*x[5]-0.8737*x[5]*x[7]-0.0693*x[5]*x[10]-0.531*x[5]*x[13]+0.2619*x[5]*x[18]+0.7759*x[6]*x[6]-0.8152*x[6]*x[7]-0.7558*x[6]*x[8]-0.7223*x[6]*x[10]+0.4888*x[6]*x[12]+0.7821*x[6]*x[14]-0.9252*x[6]*x[15]+0.7971*x[6]*x[17]-0.5829*x[6]*x[18]-0.034*x[6]*x[19]+0.4056*x[6]*x[20]-0.88*x[7]*x[7]+0.4228*x[7]*x[8]-0.9389*x[7]*x[14]+0.8658*x[7]*x[16]+0.7211*x[7]*x[17]-0.4657*x[7]*x[19]-0.7535*x[7]*x[20]-0.0735*x[8]*x[8]-0.1349*x[8]*x[9]-0.5373*x[8]*x[14]+0.2019*x[8]*x[16]-0.8292*x[8]*x[19]-0.2807*x[8]*x[20]+0.6909*x[9]*x[9]-0.3411*x[9]*x[10]-0.4094*x[9]*x[12]-0.2912*x[9]*x[15]+0.8844*x[9]*x[17]-0.8173*x[9]*x[18]-0.5673*x[9]*x[19]+0.1886*x[10]*x[10]+0.5261*x[10]*x[12]-0.4091*x[10]*x[13]-0.8374*x[10]*x[15]+0.7834*x[10]*x[16]-0.3163*x[10]*x[17]-0.8926*x[10]*x[18]-0.9043*x[10]*x[19]-0.706*x[10]*x[20]+0.7451*x[11]*x[11]-0.664*x[11]*x[13]+0.9466*x[11]*x[14]-0.1186*x[11]*x[15]-0.4192*x[11]*x[18]+0.6151*x[11]*x[20]-0.0504*x[12]*x[12]+0.9574*x[12]*x[16]-0.9114*x[12]*x[17]+0.2263*x[12]*x[19]+0.6297*x[12]*x[20]+0.1457*x[13]*x[14]+0.0044*x[13]*x[15]-0.0535*x[13]*x[17]+0.6572*x[13]*x[18]+0.405*x[14]*x[14]-0.7969*x[14]*x[15]+0.9239*x[14]*x[19]-0.682*x[15]*x[15]-0.5902*x[15]*x[18]-0.8263*x[15]*x[19]+0.019*x[16]*x[16]-0.5654*x[16]*x[18]-0.4068*x[16]*x[20]-0.4188*x[17]*x[18]-0.3325*x[17]*x[20]-0.0805*x[18]*x[20]-0.8854*x[19]*x[19]+0.5526*x[19]*x[20]+0.6779*x[1]-0.3872*x[2]+0.2552*x[3]+0.8844*x[4]-0.9211*x[5]+0.0837*x[6]-0.3835*x[7]-0.9304*x[8]-0.9384*x[9]+0.2625*x[10]+0.5946*x[11]+0.3923*x[12]+0.3641*x[13]+0.4553*x[14]-0.1385*x[15]-0.36*x[16]+0.9557*x[17]-0.3659*x[18]+0.7798*x[19]-0.6314*x[20] <= 7.479)
@NLconstraint(m, e4, 0.0251*x[1]*x[1]+0.1727*x[1]*x[2]-0.1656*x[1]*x[3]-0.7663*x[1]*x[4]-0.9996*x[1]*x[6]-0.4905*x[1]*x[7]-0.6694*x[1]*x[8]-0.4286*x[1]*x[9]+0.2862*x[1]*x[10]+0.0247*x[1]*x[11]-0.9652*x[1]*x[12]-0.8352*x[1]*x[13]-0.5099*x[1]*x[14]-0.6331*x[1]*x[16]+0.8321*x[1]*x[18]+0.0951*x[1]*x[20]+0.7352*x[2]*x[3]-0.6864*x[2]*x[7]-0.0386*x[2]*x[13]-0.99*x[2]*x[14]-0.2603*x[2]*x[15]-0.8459*x[2]*x[16]-0.118*x[2]*x[17]+0.7679*x[3]*x[3]+0.2016*x[3]*x[5]+0.8604*x[3]*x[7]+0.9474*x[3]*x[9]-0.6858*x[3]*x[10]+0.4481*x[3]*x[11]+0.7099*x[3]*x[12]+0.798*x[3]*x[13]-0.3159*x[3]*x[14]+0.5596*x[3]*x[15]+0.2071*x[3]*x[16]-0.2917*x[3]*x[20]+0.948*x[4]*x[4]+0.868*x[4]*x[13]-0.3007*x[4]*x[14]+0.4229*x[4]*x[17]-0.3115*x[4]*x[19]+0.4712*x[4]*x[20]+0.0306*x[5]*x[5]-0.1532*x[5]*x[10]+0.5391*x[5]*x[11]+0.8638*x[5]*x[12]-0.4371*x[5]*x[13]-0.3952*x[5]*x[14]-0.3578*x[5]*x[19]+0.2803*x[6]*x[8]-0.5994*x[6]*x[10]+0.1987*x[6]*x[11]-0.5984*x[6]*x[13]-0.6414*x[6]*x[14]+0.1849*x[6]*x[15]+0.4192*x[6]*x[18]+0.3054*x[6]*x[19]-0.3732*x[6]*x[20]-0.876*x[7]*x[7]-0.8766*x[7]*x[12]-0.9306*x[7]*x[16]+0.0994*x[7]*x[17]+0.9439*x[7]*x[18]+0.1365*x[8]*x[8]-0.7992*x[8]*x[15]-0.694*x[8]*x[16]+0.9646*x[8]*x[18]+0.7605*x[8]*x[19]-0.4248*x[8]*x[20]+0.9537*x[9]*x[9]+0.2575*x[9]*x[10]-0.0251*x[9]*x[15]-0.2024*x[9]*x[17]-0.7663*x[9]*x[19]-0.925*x[9]*x[20]-0.6804*x[10]*x[10]+0.1988*x[10]*x[11]-0.9651*x[10]*x[12]-0.7238*x[10]*x[13]-0.7036*x[10]*x[14]-0.4961*x[10]*x[16]-0.7315*x[10]*x[17]-0.5924*x[10]*x[20]-0.5411*x[11]*x[13]+0.9245*x[11]*x[20]+0.7388*x[12]*x[12]-0.1304*x[12]*x[14]+0.151*x[12]*x[15]-0.0506*x[12]*x[16]+0.9126*x[12]*x[18]-0.0086*x[12]*x[20]+0.9128*x[13]*x[13]-0.4122*x[13]*x[14]-0.646*x[13]*x[17]+0.2933*x[13]*x[19]-0.2271*x[14]*x[14]-0.5639*x[14]*x[15]+0.5472*x[14]*x[18]+0.4298*x[14]*x[20]-0.7718*x[15]*x[15]-0.4099*x[15]*x[18]+0.3039*x[15]*x[20]+0.973*x[16]*x[16]-0.4335*x[16]*x[19]-0.7831*x[16]*x[20]-0.8783*x[17]*x[17]+0.0931*x[17]*x[19]-0.1678*x[17]*x[20]+0.2904*x[18]*x[18]-0.6145*x[19]*x[20]-0.7762*x[20]*x[20]+0.6637*x[1]+0.3243*x[2]-0.9179*x[3]-0.2024*x[4]-0.3614*x[5]+0.6923*x[6]-0.6987*x[7]-0.3324*x[8]+0.2958*x[9]+0.3663*x[10]-0.6154*x[11]+0.6713*x[12]-0.9334*x[13]-0.8831*x[14]-0.2644*x[15]-0.2765*x[16]+0.3136*x[17]-0.8821*x[18]-0.6316*x[19]+0.6725*x[20] <= 86.921)
@NLconstraint(m, e5, 0.3759*x[1]*x[1]-0.3773*x[1]*x[3]-0.3505*x[1]*x[4]-0.1923*x[1]*x[6]+0.3752*x[1]*x[7]-0.0967*x[1]*x[8]+0.8282*x[1]*x[9]-0.4846*x[1]*x[10]+0.0018*x[1]*x[13]-0.6977*x[1]*x[15]+0.2478*x[1]*x[16]-0.1357*x[1]*x[17]+0.4816*x[1]*x[18]+0.8381*x[1]*x[20]-0.6253*x[2]*x[7]+0.5723*x[2]*x[9]-0.1555*x[2]*x[13]+0.3243*x[2]*x[14]+0.0614*x[2]*x[18]+0.6028*x[2]*x[20]+0.44*x[3]*x[3]-0.6618*x[3]*x[6]+0.4818*x[3]*x[7]+0.8458*x[3]*x[9]+0.9232*x[3]*x[10]+0.0437*x[3]*x[17]+0.2984*x[3]*x[19]-0.613*x[4]*x[4]+0.3039*x[4]*x[5]+0.1466*x[4]*x[8]-0.6311*x[4]*x[11]-0.909*x[4]*x[13]+0.4336*x[4]*x[15]-0.3321*x[4]*x[18]+0.9798*x[4]*x[19]-0.0629*x[4]*x[20]+0.3694*x[5]*x[5]-0.4493*x[5]*x[11]+0.923*x[5]*x[12]-0.0733*x[5]*x[16]-0.1531*x[5]*x[18]+0.1802*x[5]*x[20]+0.1944*x[6]*x[6]+0.894*x[6]*x[7]-0.8613*x[6]*x[10]-0.4835*x[6]*x[12]+0.7671*x[6]*x[14]+0.0583*x[6]*x[17]+0.8813*x[6]*x[19]-0.0146*x[6]*x[20]+0.1434*x[7]*x[8]-0.1487*x[7]*x[12]+0.9763*x[7]*x[13]-0.5704*x[7]*x[17]+0.7438*x[7]*x[19]+0.4536*x[7]*x[20]-0.5108*x[8]*x[8]+0.9601*x[8]*x[9]+0.5533*x[8]*x[12]+0.7182*x[8]*x[16]+0.235*x[9]*x[9]-0.9393*x[9]*x[10]-0.3468*x[9]*x[11]+0.0937*x[9]*x[13]-0.6601*x[9]*x[15]+0.1715*x[9]*x[17]+0.3667*x[9]*x[19]+0.6411*x[10]*x[13]+0.3253*x[10]*x[16]+0.5387*x[10]*x[19]-0.9094*x[10]*x[20]-0.1406*x[11]*x[13]-0.8511*x[11]*x[14]+0.0185*x[11]*x[16]+0.8827*x[11]*x[19]-0.2548*x[11]*x[20]+0.4361*x[12]*x[12]+0.9304*x[12]*x[13]+0.8033*x[12]*x[15]+0.2807*x[12]*x[16]+0.7634*x[12]*x[17]-0.9826*x[12]*x[19]-0.3666*x[13]*x[13]+0.4857*x[13]*x[15]-0.4248*x[13]*x[16]-0.6236*x[13]*x[17]+0.5256*x[13]*x[18]-0.9891*x[13]*x[19]-0.5941*x[13]*x[20]+0.2342*x[14]*x[14]-0.8701*x[14]*x[16]-0.5265*x[14]*x[17]+0.3819*x[14]*x[18]-0.6136*x[15]*x[15]+0.3384*x[15]*x[17]+0.0468*x[15]*x[18]-0.6842*x[15]*x[19]-0.5436*x[15]*x[20]+0.1188*x[16]*x[16]-0.9886*x[16]*x[18]-0.9313*x[16]*x[19]+0.1185*x[17]*x[17]+0.6724*x[17]*x[18]-0.0356*x[17]*x[19]-0.1857*x[17]*x[20]+0.2757*x[18]*x[18]-0.8058*x[18]*x[20]+0.4015*x[19]*x[19]+0.5596*x[19]*x[20]-0.0106*x[20]*x[20]+0.536*x[1]+0.5357*x[2]+0.8335*x[3]-0.4088*x[4]+0.1983*x[5]-0.9789*x[6]-0.8035*x[7]-0.2847*x[8]+0.3765*x[9]-0.4816*x[10]-0.0022*x[11]+0.8677*x[12]+0.9182*x[13]+0.5269*x[14]-0.8899*x[15]+0.8132*x[16]+0.643*x[17]-0.0493*x[18]-0.6313*x[19]+0.135*x[20] <= 16.167)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
