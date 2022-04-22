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
@NLconstraint(m, e1, -(0.6967*x[1]*x[1]+0.2682*x[1]*x[2]-0.4825*x[1]*x[3]+0.5106*x[1]*x[4]+0.6178*x[1]*x[6]-0.6965*x[1]*x[8]-0.6307*x[1]*x[10]+0.8415*x[1]*x[11]-0.7613*x[1]*x[15]-0.3847*x[1]*x[18]+0.2822*x[1]*x[19]+0.2858*x[1]*x[20]-0.5175*x[2]*x[6]+0.3596*x[2]*x[7]+0.0034*x[2]*x[8]+0.5146*x[2]*x[11]+0.3201*x[2]*x[12]+0.5943*x[2]*x[13]+0.1961*x[2]*x[14]+0.7462*x[2]*x[15]+0.4328*x[2]*x[16]+0.3605*x[2]*x[17]-0.9385*x[2]*x[18]+0.8248*x[3]*x[5]+0.4994*x[3]*x[6]+0.7224*x[3]*x[7]-0.9325*x[3]*x[10]-0.617*x[3]*x[11]-0.5378*x[3]*x[12]+0.3801*x[3]*x[13]+0.9379*x[3]*x[15]-0.3135*x[3]*x[18]+0.6152*x[4]*x[4]+0.5898*x[4]*x[6]+0.9177*x[4]*x[8]-0.4846*x[4]*x[12]+0.0728*x[4]*x[17]+0.1326*x[4]*x[18]+0.0303*x[4]*x[20]+0.5825*x[5]*x[5]+0.8522*x[5]*x[6]+0.7479*x[5]*x[11]-0.9419*x[5]*x[12]+0.9986*x[5]*x[14]+0.3461*x[6]*x[6]+0.3855*x[6]*x[7]-0.6577*x[6]*x[8]+0.4746*x[6]*x[10]-0.8737*x[6]*x[11]-0.0693*x[6]*x[13]-0.531*x[6]*x[14]+0.2619*x[6]*x[17]+0.7759*x[6]*x[19]-0.8152*x[7]*x[11]-0.7558*x[7]*x[12]-0.7223*x[7]*x[15]+0.4888*x[7]*x[17]+0.7821*x[7]*x[19]-0.9252*x[8]*x[8]+0.7971*x[8]*x[10]-0.5829*x[8]*x[11]-0.034*x[8]*x[12]+0.4056*x[8]*x[15]-0.88*x[8]*x[17]+0.4228*x[9]*x[9]-0.9389*x[9]*x[11]+0.8658*x[9]*x[13]+0.7211*x[9]*x[14]-0.4657*x[9]*x[16]-0.7535*x[9]*x[17]-0.0735*x[9]*x[19]-0.1349*x[9]*x[20]-0.5373*x[10]*x[10]+0.2019*x[10]*x[13]-0.8292*x[10]*x[14]-0.2807*x[10]*x[15]+0.6909*x[10]*x[16]-0.3411*x[10]*x[17]-0.4094*x[10]*x[19]-0.2912*x[11]*x[14]+0.8844*x[11]*x[16]-0.8173*x[11]*x[19]-0.5673*x[11]*x[20]+0.1886*x[12]*x[13]+0.5261*x[12]*x[15]-0.4091*x[12]*x[17]-0.8374*x[12]*x[18]+0.7834*x[12]*x[19]-0.3163*x[12]*x[20]-0.8926*x[13]*x[14]-0.9043*x[13]*x[16]-0.706*x[13]*x[18]+0.7451*x[13]*x[20]-0.664*x[14]*x[14]+0.9466*x[14]*x[19]-0.1186*x[14]*x[20]-0.4192*x[15]*x[16]+0.6151*x[15]*x[17]-0.0504*x[15]*x[18]+0.9574*x[15]*x[19]-0.9114*x[15]*x[20]+0.2263*x[16]*x[16]+0.6297*x[16]*x[17]+0.1457*x[16]*x[20]+0.0044*x[17]*x[17]-0.0535*x[18]*x[18]+0.6572*x[18]*x[19]+0.405*x[18]*x[20]-0.7969*x[19]*x[19]+0.9239*x[20]*x[20]-0.682*x[1]-0.5902*x[2]-0.8263*x[3]+0.019*x[4]-0.5654*x[5]-0.4068*x[6]-0.4188*x[7]-0.3325*x[8]-0.0805*x[9]-0.8854*x[10]+0.5526*x[11]+0.6779*x[12]-0.3872*x[13]+0.2552*x[14]+0.8844*x[15]-0.9211*x[16]+0.0837*x[17]-0.3835*x[18]-0.9304*x[19]-0.9384*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.5827*x[1]*x[1]+0.6633*x[1]*x[2]-0.5997*x[1]*x[3]+0.7406*x[1]*x[4]+0.8833*x[1]*x[6]-0.0639*x[1]*x[7]+0.7093*x[1]*x[8]+0.4285*x[1]*x[9]+0.6178*x[1]*x[10]+0.8015*x[1]*x[11]-0.3*x[1]*x[12]-0.858*x[1]*x[13]+0.0251*x[1]*x[14]+0.1727*x[1]*x[16]-0.1656*x[1]*x[18]-0.7663*x[1]*x[20]-0.9996*x[2]*x[3]-0.4905*x[2]*x[7]-0.6694*x[2]*x[8]-0.4286*x[2]*x[13]+0.2862*x[2]*x[14]+0.0247*x[2]*x[15]-0.9652*x[2]*x[16]-0.8352*x[2]*x[17]-0.5099*x[3]*x[3]-0.6331*x[3]*x[5]+0.8321*x[3]*x[7]+0.0951*x[3]*x[9]+0.7352*x[3]*x[10]-0.6864*x[3]*x[11]-0.0386*x[3]*x[12]-0.99*x[3]*x[13]-0.2603*x[3]*x[14]-0.8459*x[3]*x[15]-0.118*x[3]*x[16]+0.7679*x[3]*x[20]+0.2016*x[4]*x[4]+0.8604*x[4]*x[13]+0.9474*x[4]*x[14]-0.6858*x[4]*x[17]+0.4481*x[4]*x[19]+0.7099*x[4]*x[20]+0.798*x[5]*x[5]-0.3159*x[5]*x[10]+0.5596*x[5]*x[11]+0.2071*x[5]*x[12]-0.2917*x[5]*x[13]+0.948*x[5]*x[14]+0.868*x[5]*x[18]-0.3007*x[5]*x[19]+0.4229*x[6]*x[8]-0.3115*x[6]*x[10]+0.4712*x[6]*x[11]+0.0306*x[6]*x[13]-0.1532*x[6]*x[14]+0.5391*x[6]*x[15]+0.8638*x[6]*x[18]-0.4371*x[6]*x[19]-0.3952*x[6]*x[20]-0.3578*x[7]*x[7]+0.2803*x[7]*x[12]-0.5994*x[7]*x[16]+0.1987*x[7]*x[17]-0.5984*x[8]*x[8]-0.6414*x[8]*x[15]+0.1849*x[8]*x[16]+0.4192*x[8]*x[18]+0.3054*x[8]*x[19]-0.3732*x[8]*x[20]-0.876*x[9]*x[9]-0.8766*x[9]*x[10]-0.9306*x[9]*x[17]+0.0994*x[9]*x[19]+0.9439*x[9]*x[20]+0.1365*x[10]*x[10]-0.7992*x[10]*x[11]-0.694*x[10]*x[12]+0.9646*x[10]*x[13]+0.7605*x[10]*x[14]-0.4248*x[10]*x[16]+0.9537*x[10]*x[17]+0.2575*x[10]*x[19]-0.0251*x[10]*x[20]-0.2024*x[11]*x[13]-0.7663*x[11]*x[20]-0.925*x[12]*x[12]-0.6804*x[12]*x[14]+0.1988*x[12]*x[15]-0.9651*x[12]*x[16]-0.7238*x[12]*x[18]-0.7036*x[12]*x[20]-0.4961*x[13]*x[13]-0.7315*x[13]*x[14]-0.5924*x[13]*x[17]-0.5411*x[13]*x[19]+0.9245*x[14]*x[15]+0.7388*x[14]*x[18]-0.1304*x[14]*x[20]+0.151*x[15]*x[15]-0.0506*x[15]*x[18]+0.9126*x[15]*x[20]-0.0086*x[16]*x[16]+0.9128*x[16]*x[19]-0.4122*x[16]*x[20]-0.646*x[17]*x[17]+0.2933*x[17]*x[19]-0.2271*x[17]*x[20]-0.5639*x[18]*x[18]+0.5472*x[19]*x[20]+0.4298*x[20]*x[20]-0.7718*x[1]-0.4099*x[2]+0.3039*x[3]+0.973*x[4]-0.4335*x[5]-0.7831*x[6]-0.8783*x[7]+0.0931*x[8]-0.1678*x[9]+0.2904*x[10]-0.6145*x[11]-0.7762*x[12]+0.6637*x[13]+0.3243*x[14]-0.9179*x[15]-0.2024*x[16]-0.3614*x[17]+0.6923*x[18]-0.6987*x[19]-0.3324*x[20] <= 64.791)
@NLconstraint(m, e3, 0.3325*x[1]*x[1]-0.6366*x[1]*x[3]+0.1381*x[1]*x[4]-0.0549*x[1]*x[6]+0.065*x[1]*x[7]-0.9747*x[1]*x[8]+0.3759*x[1]*x[9]-0.3773*x[1]*x[10]-0.3505*x[1]*x[11]-0.1923*x[1]*x[13]+0.3752*x[1]*x[15]-0.0967*x[1]*x[16]+0.8282*x[1]*x[17]-0.4846*x[1]*x[18]+0.0018*x[1]*x[20]-0.6977*x[2]*x[7]+0.2478*x[2]*x[9]-0.1357*x[2]*x[13]+0.4816*x[2]*x[14]+0.8381*x[2]*x[18]-0.6253*x[2]*x[20]+0.5723*x[3]*x[3]-0.1555*x[3]*x[6]+0.3243*x[3]*x[7]+0.0614*x[3]*x[9]+0.6028*x[3]*x[10]+0.44*x[3]*x[17]-0.6618*x[3]*x[19]+0.4818*x[4]*x[4]+0.8458*x[4]*x[5]+0.9232*x[4]*x[8]+0.0437*x[4]*x[11]+0.2984*x[4]*x[13]-0.613*x[4]*x[15]+0.3039*x[4]*x[18]+0.1466*x[4]*x[19]-0.6311*x[4]*x[20]-0.909*x[5]*x[5]+0.4336*x[5]*x[11]-0.3321*x[5]*x[12]+0.9798*x[5]*x[16]-0.0629*x[5]*x[18]+0.3694*x[5]*x[20]-0.4493*x[6]*x[6]+0.923*x[6]*x[7]-0.0733*x[6]*x[10]-0.1531*x[6]*x[12]+0.1802*x[6]*x[14]+0.1944*x[6]*x[17]+0.894*x[6]*x[19]-0.8613*x[6]*x[20]-0.4835*x[7]*x[8]+0.7671*x[7]*x[12]+0.0583*x[7]*x[13]+0.8813*x[7]*x[17]-0.0146*x[7]*x[19]+0.1434*x[7]*x[20]-0.1487*x[8]*x[8]+0.9763*x[8]*x[9]-0.5704*x[8]*x[12]+0.7438*x[8]*x[16]+0.4536*x[9]*x[9]-0.5108*x[9]*x[10]+0.9601*x[9]*x[11]+0.5533*x[9]*x[13]+0.7182*x[9]*x[15]+0.235*x[9]*x[17]-0.9393*x[9]*x[19]-0.3468*x[10]*x[13]+0.0937*x[10]*x[16]-0.6601*x[10]*x[19]+0.1715*x[10]*x[20]+0.3667*x[11]*x[13]+0.6411*x[11]*x[14]+0.3253*x[11]*x[16]+0.5387*x[11]*x[19]-0.9094*x[11]*x[20]-0.1406*x[12]*x[12]-0.8511*x[12]*x[13]+0.0185*x[12]*x[15]+0.8827*x[12]*x[16]-0.2548*x[12]*x[17]+0.4361*x[12]*x[19]+0.9304*x[13]*x[13]+0.8033*x[13]*x[15]+0.2807*x[13]*x[16]+0.7634*x[13]*x[17]-0.9826*x[13]*x[18]-0.3666*x[13]*x[19]+0.4857*x[13]*x[20]-0.4248*x[14]*x[14]-0.6236*x[14]*x[16]+0.5256*x[14]*x[17]-0.9891*x[14]*x[18]-0.5941*x[15]*x[15]+0.2342*x[15]*x[17]-0.8701*x[15]*x[18]-0.5265*x[15]*x[19]+0.3819*x[15]*x[20]-0.6136*x[16]*x[16]+0.3384*x[16]*x[18]+0.0468*x[16]*x[19]-0.6842*x[17]*x[17]-0.5436*x[17]*x[19]+0.1188*x[17]*x[20]-0.9886*x[18]*x[18]-0.9313*x[18]*x[20]+0.1185*x[19]*x[19]+0.6724*x[19]*x[20]-0.0356*x[20]*x[20]-0.1857*x[1]+0.2757*x[2]-0.8058*x[3]+0.4015*x[4]+0.5596*x[5]-0.0106*x[6]+0.536*x[7]+0.5357*x[8]+0.8335*x[9]-0.4088*x[10]+0.1983*x[11]-0.9789*x[12]-0.8035*x[13]-0.2847*x[14]+0.3765*x[15]-0.4816*x[16]-0.0022*x[17]+0.8677*x[18]+0.9182*x[19]+0.5269*x[20] <= 5.504)
@NLconstraint(m, e4, 0.1676*x[1]*x[2]+0.343*x[1]*x[3]-0.3814*x[1]*x[4]-0.5666*x[1]*x[5]-0.4479*x[1]*x[7]-0.4534*x[1]*x[9]-0.4299*x[1]*x[12]-0.3536*x[1]*x[13]-0.027*x[1]*x[14]-0.617*x[1]*x[15]-0.1404*x[1]*x[17]-0.6837*x[1]*x[19]-0.6283*x[1]*x[20]-0.0052*x[2]*x[2]-0.6866*x[2]*x[6]-0.0587*x[2]*x[10]-0.2268*x[2]*x[11]+0.3763*x[2]*x[13]-0.9163*x[2]*x[15]+0.1718*x[2]*x[16]-0.4213*x[2]*x[19]-0.1506*x[3]*x[3]-0.7394*x[3]*x[5]-0.847*x[3]*x[6]+0.233*x[3]*x[8]-0.6011*x[3]*x[9]-0.0542*x[3]*x[10]-0.5228*x[3]*x[14]+0.2948*x[3]*x[15]+0.1721*x[3]*x[18]-0.9292*x[3]*x[20]+0.0286*x[4]*x[4]+0.8565*x[4]*x[7]-0.2486*x[4]*x[8]-0.735*x[4]*x[10]-0.9361*x[4]*x[11]+0.349*x[4]*x[15]+0.6213*x[4]*x[16]-0.687*x[4]*x[17]-0.1701*x[4]*x[19]-0.2069*x[4]*x[20]+0.3074*x[5]*x[5]+0.4355*x[5]*x[6]-0.5565*x[5]*x[12]-0.4757*x[5]*x[13]-0.6595*x[5]*x[16]+0.8551*x[6]*x[8]+0.2598*x[6]*x[9]+0.2991*x[6]*x[10]+0.7713*x[6]*x[11]+0.6393*x[6]*x[12]+0.4431*x[6]*x[13]+0.2587*x[6]*x[14]+0.9124*x[6]*x[15]+0.4403*x[6]*x[16]-0.1176*x[6]*x[17]-0.5188*x[6]*x[18]+0.2199*x[6]*x[19]+0.1739*x[6]*x[20]-0.7619*x[7]*x[7]+0.9214*x[7]*x[9]-0.5654*x[7]*x[12]-0.5123*x[7]*x[13]+0.3028*x[7]*x[14]-0.4821*x[7]*x[16]+0.0992*x[7]*x[19]-0.5495*x[7]*x[20]-0.1516*x[8]*x[8]+0.0552*x[8]*x[11]+0.1698*x[8]*x[13]+0.0587*x[8]*x[14]+0.0251*x[8]*x[19]+0.5065*x[9]*x[10]+0.4927*x[9]*x[18]+0.7646*x[9]*x[20]-0.033*x[10]*x[10]+0.2539*x[10]*x[17]+0.8036*x[10]*x[20]+0.2007*x[11]*x[11]-0.2712*x[11]*x[17]-0.54*x[11]*x[18]+0.2736*x[11]*x[19]-0.2302*x[11]*x[20]+0.6089*x[12]*x[12]-0.4403*x[12]*x[15]+0.3156*x[12]*x[17]-0.5526*x[12]*x[18]+0.3085*x[12]*x[19]-0.4298*x[12]*x[20]-0.88*x[13]*x[14]+0.6517*x[13]*x[15]+0.1074*x[13]*x[19]+0.3319*x[13]*x[20]+0.5873*x[14]*x[16]-0.6974*x[14]*x[20]-0.409*x[15]*x[15]+0.7691*x[15]*x[16]+0.1721*x[15]*x[18]+0.4355*x[15]*x[20]-0.6468*x[16]*x[16]-0.803*x[16]*x[17]-0.2987*x[16]*x[19]-0.0141*x[16]*x[20]-0.9192*x[17]*x[19]+0.0179*x[17]*x[20]-0.6329*x[18]*x[18]+0.7607*x[18]*x[19]-0.5257*x[18]*x[20]-0.4387*x[19]*x[19]+0.5897*x[20]*x[20]+0.125*x[1]-0.9142*x[2]+0.17*x[3]+0.1844*x[4]-0.5919*x[5]+0.7415*x[6]+0.926*x[7]+0.655*x[8]+0.2011*x[9]-0.0345*x[10]+0.6536*x[11]-0.5373*x[12]+0.4171*x[13]+0.644*x[14]-0.0094*x[15]+0.7144*x[16]+0.8568*x[17]-0.5651*x[18]+0.5814*x[19]-0.387*x[20] <= 10.635)
@NLconstraint(m, e5, 0.671*x[1]*x[1]-0.0435*x[1]*x[2]+0.4999*x[1]*x[4]-0.0688*x[1]*x[5]-0.3579*x[1]*x[6]-0.4954*x[1]*x[7]-0.9291*x[1]*x[8]+0.1546*x[1]*x[11]-0.8417*x[1]*x[12]+0.3846*x[1]*x[13]+0.2792*x[1]*x[15]-0.1058*x[1]*x[16]-0.7461*x[1]*x[17]-0.3714*x[1]*x[18]-0.5924*x[1]*x[19]-0.2712*x[1]*x[20]-0.1241*x[2]*x[2]+0.3123*x[2]*x[3]-0.0587*x[2]*x[5]-0.2293*x[2]*x[8]-0.1847*x[2]*x[10]-0.7207*x[2]*x[11]+0.6359*x[2]*x[13]+0.964*x[2]*x[16]+0.928*x[2]*x[18]-0.9325*x[3]*x[4]+0.6713*x[3]*x[5]+0.8713*x[3]*x[7]+0.4856*x[3]*x[11]-0.9489*x[3]*x[12]-0.0583*x[3]*x[13]+0.1442*x[3]*x[14]-0.5342*x[3]*x[15]-0.3132*x[3]*x[17]-0.4966*x[3]*x[19]-0.1946*x[3]*x[20]-0.6207*x[4]*x[4]-0.5412*x[4]*x[11]+0.6441*x[4]*x[16]-0.0462*x[4]*x[20]-0.424*x[5]*x[5]-0.9773*x[5]*x[6]-0.8865*x[5]*x[8]+0.5102*x[5]*x[17]+0.0961*x[5]*x[20]-0.2184*x[6]*x[9]-0.5697*x[6]*x[12]+0.0175*x[6]*x[13]+0.4446*x[6]*x[15]-0.9493*x[6]*x[16]-0.7251*x[6]*x[17]-0.8729*x[6]*x[19]-0.6702*x[7]*x[9]-0.5429*x[7]*x[13]-0.9193*x[7]*x[15]+0.1649*x[7]*x[16]+0.1377*x[7]*x[19]+0.8199*x[8]*x[8]+0.2067*x[8]*x[9]+0.918*x[8]*x[10]+0.6874*x[8]*x[11]-0.092*x[8]*x[13]-0.1863*x[8]*x[15]-0.5565*x[8]*x[17]+0.5314*x[8]*x[18]+0.5603*x[8]*x[20]-0.1977*x[9]*x[9]-0.2593*x[9]*x[10]+0.3129*x[9]*x[11]+0.7877*x[9]*x[13]-0.5759*x[9]*x[17]+0.338*x[9]*x[18]+0.9498*x[9]*x[19]+0.9131*x[10]*x[10]-0.4122*x[10]*x[14]-0.6756*x[10]*x[16]+0.5592*x[10]*x[18]+0.6726*x[10]*x[20]+0.2734*x[11]*x[11]-0.9295*x[11]*x[12]-0.0408*x[11]*x[13]+0.8711*x[11]*x[16]+0.5425*x[12]*x[12]-0.2959*x[12]*x[13]-0.9707*x[12]*x[14]-0.7603*x[12]*x[15]-0.5559*x[12]*x[16]+0.2124*x[12]*x[18]-0.3462*x[12]*x[20]-0.808*x[13]*x[13]-0.0685*x[13]*x[14]-0.589*x[13]*x[17]-0.6512*x[13]*x[18]-0.7248*x[13]*x[19]+0.6353*x[14]*x[14]+0.8798*x[14]*x[16]+0.1759*x[14]*x[17]-0.3625*x[14]*x[20]+0.6028*x[15]*x[15]+0.0264*x[15]*x[17]-0.1963*x[16]*x[16]+0.8895*x[16]*x[17]-0.3716*x[16]*x[18]+0.5279*x[17]*x[17]-0.627*x[17]*x[20]-0.7688*x[18]*x[19]-0.2478*x[18]*x[20]+0.6481*x[19]*x[19]-0.7281*x[19]*x[20]+0.7784*x[20]*x[20]+0.6568*x[1]-0.0852*x[2]-0.9074*x[3]+0.017*x[4]+0.6225*x[5]-0.2671*x[6]-0.9025*x[7]+0.6517*x[8]+0.2239*x[9]+0.4653*x[10]+0.7463*x[11]-0.1575*x[12]+0.7461*x[13]-0.2568*x[14]+0.9907*x[15]+0.6303*x[16]+0.4959*x[17]-0.757*x[18]+0.5648*x[19]+0.5012*x[20] <= 11.626)
@NLconstraint(m, e6, 0.1279*x[1]*x[2]-0.7815*x[1]*x[3]+0.9914*x[1]*x[4]-0.43*x[1]*x[5]-0.602*x[1]*x[6]-0.2612*x[1]*x[9]+0.1423*x[1]*x[12]-0.2114*x[1]*x[14]+0.6802*x[1]*x[15]-0.6589*x[1]*x[16]+0.2821*x[1]*x[18]-0.0737*x[1]*x[19]+0.4088*x[1]*x[20]+0.6858*x[2]*x[4]-0.4254*x[2]*x[6]-0.1135*x[2]*x[10]+0.7303*x[2]*x[12]-0.2438*x[2]*x[14]+0.0052*x[2]*x[17]+0.5337*x[2]*x[20]-0.6491*x[3]*x[7]-0.694*x[3]*x[8]-0.1406*x[3]*x[9]-0.8379*x[3]*x[10]+0.9137*x[3]*x[13]-0.8981*x[3]*x[14]-0.8366*x[3]*x[16]-0.0852*x[3]*x[18]+0.5758*x[3]*x[20]-0.621*x[4]*x[4]-0.0664*x[4]*x[5]-0.2715*x[4]*x[6]-0.9802*x[4]*x[7]+0.7142*x[4]*x[9]+0.8276*x[4]*x[15]+0.057*x[4]*x[16]-0.2878*x[4]*x[17]+0.9925*x[4]*x[18]+0.1538*x[4]*x[19]-0.3299*x[4]*x[20]+0.7869*x[5]*x[6]-0.9398*x[5]*x[7]+0.3024*x[5]*x[8]-0.2245*x[5]*x[10]-0.0779*x[5]*x[13]+0.3588*x[5]*x[16]+0.2337*x[5]*x[17]-0.9262*x[5]*x[18]+0.8368*x[5]*x[19]+0.084*x[5]*x[20]+0.2579*x[6]*x[6]+0.1681*x[6]*x[7]-0.171*x[6]*x[8]-0.6542*x[6]*x[10]+0.1059*x[6]*x[11]+0.4198*x[6]*x[13]+0.1295*x[6]*x[14]-0.3733*x[6]*x[15]+0.3796*x[6]*x[18]+0.3431*x[7]*x[10]+0.541*x[7]*x[12]+0.4449*x[7]*x[14]-0.4325*x[7]*x[15]-0.0121*x[7]*x[19]-0.2128*x[7]*x[20]+0.8078*x[8]*x[8]-0.9011*x[8]*x[9]+0.5815*x[8]*x[10]-0.129*x[8]*x[11]+0.7265*x[8]*x[12]+0.7037*x[8]*x[17]+0.1714*x[8]*x[18]-0.6007*x[8]*x[19]-0.8466*x[8]*x[20]+0.581*x[9]*x[10]+0.381*x[9]*x[11]+0.0226*x[9]*x[12]+0.3187*x[9]*x[13]+0.8204*x[9]*x[16]+0.5193*x[9]*x[18]-0.3507*x[9]*x[19]+0.5451*x[10]*x[13]-0.3124*x[10]*x[14]-0.6344*x[10]*x[18]-0.6948*x[10]*x[19]-0.2571*x[10]*x[20]-0.7933*x[11]*x[19]+0.2214*x[12]*x[13]+0.2059*x[12]*x[19]+0.5293*x[12]*x[20]+0.6829*x[13]*x[13]-0.9753*x[13]*x[20]-0.9239*x[14]*x[14]+0.7561*x[14]*x[15]-0.2344*x[14]*x[16]-0.6971*x[14]*x[17]-0.7653*x[14]*x[19]+0.1838*x[15]*x[15]-0.2208*x[15]*x[17]-0.8171*x[15]*x[20]+0.0138*x[16]*x[16]-0.3677*x[16]*x[19]+0.1122*x[16]*x[20]+0.7689*x[17]*x[17]+0.112*x[17]*x[18]-0.8003*x[17]*x[19]+0.0306*x[17]*x[20]-0.7488*x[18]*x[19]+0.1779*x[19]*x[19]+0.232*x[20]*x[20]-0.944*x[1]+0.4277*x[2]+0.018*x[3]-0.5569*x[4]+0.9767*x[5]-0.9575*x[6]+0.6433*x[7]-0.9945*x[8]+0.0862*x[9]+0.3517*x[10]+0.0765*x[11]-0.9034*x[12]-0.1131*x[13]+0.3747*x[14]-0.0152*x[15]+0.5453*x[16]+0.1923*x[17]+0.9583*x[18]-0.7245*x[19]+0.7426*x[20] <= 98.173)
@NLconstraint(m, e7, 0.2792*x[1]*x[1]-0.6821*x[1]*x[2]-0.3791*x[1]*x[3]-0.4062*x[1]*x[6]-0.6487*x[1]*x[7]-0.9836*x[1]*x[8]-0.1921*x[1]*x[9]+0.968*x[1]*x[12]-0.1585*x[1]*x[14]-0.8286*x[1]*x[15]+0.5816*x[1]*x[17]-0.1829*x[1]*x[18]+0.6463*x[1]*x[20]+0.3055*x[2]*x[3]-0.6676*x[2]*x[4]-0.1825*x[2]*x[6]+0.7282*x[2]*x[9]-0.5633*x[2]*x[11]-0.5932*x[2]*x[12]+0.6161*x[2]*x[13]-0.6343*x[2]*x[14]-0.2291*x[2]*x[16]-0.8374*x[2]*x[17]+0.6608*x[2]*x[19]-0.9097*x[3]*x[4]-0.1062*x[3]*x[8]-0.0531*x[3]*x[11]+0.9966*x[3]*x[12]+0.7738*x[3]*x[13]+0.5904*x[3]*x[14]-0.4976*x[3]*x[15]+0.5721*x[3]*x[17]-0.5966*x[3]*x[18]+0.0351*x[3]*x[19]-0.8165*x[4]*x[4]-0.0222*x[4]*x[10]+0.6176*x[4]*x[11]+0.9438*x[4]*x[15]-0.6294*x[4]*x[17]-0.4625*x[4]*x[19]+0.0536*x[4]*x[20]-0.6703*x[5]*x[5]+0.062*x[5]*x[6]-0.1433*x[5]*x[7]+0.858*x[5]*x[9]-0.804*x[5]*x[12]-0.5498*x[5]*x[13]+0.2771*x[5]*x[18]+0.6919*x[5]*x[19]-0.3703*x[5]*x[20]-0.6204*x[6]*x[6]-0.6157*x[6]*x[9]+0.6548*x[6]*x[14]+0.7881*x[6]*x[19]-0.7012*x[6]*x[20]-0.453*x[7]*x[9]-0.1232*x[7]*x[10]+0.3443*x[7]*x[14]-0.926*x[7]*x[16]+0.4969*x[7]*x[18]+0.1144*x[7]*x[19]+0.303*x[7]*x[20]+0.8679*x[8]*x[8]+0.6769*x[8]*x[9]-0.6493*x[8]*x[14]+0.7552*x[8]*x[15]-0.5867*x[8]*x[16]-0.4035*x[8]*x[17]+0.5792*x[8]*x[20]+0.9074*x[9]*x[9]+0.3403*x[9]*x[10]-0.9333*x[9]*x[11]-0.8465*x[9]*x[16]+0.5218*x[9]*x[18]+0.6738*x[9]*x[20]+0.2035*x[10]*x[10]+0.8305*x[10]*x[14]-0.9381*x[10]*x[20]+0.6407*x[11]*x[11]-0.826*x[11]*x[12]-0.6822*x[11]*x[16]-0.7783*x[11]*x[18]+0.6483*x[12]*x[12]+0.9052*x[12]*x[17]+0.1071*x[12]*x[18]+0.1744*x[12]*x[19]+0.6007*x[12]*x[20]-0.0371*x[13]*x[13]+0.209*x[13]*x[15]-0.0702*x[13]*x[18]-0.5565*x[13]*x[19]+0.0438*x[13]*x[20]+0.698*x[14]*x[14]-0.1691*x[14]*x[16]-0.6621*x[14]*x[19]+0.8857*x[14]*x[20]-0.8967*x[15]*x[15]-0.3226*x[15]*x[16]+0.4817*x[15]*x[17]-0.4088*x[15]*x[18]-0.4914*x[15]*x[19]+0.5242*x[15]*x[20]+0.9042*x[16]*x[16]+0.4449*x[16]*x[18]-0.3207*x[16]*x[20]-0.2096*x[17]*x[18]+0.1785*x[17]*x[20]+0.1262*x[18]*x[18]+0.2976*x[19]*x[20]+0.8131*x[20]*x[20]+0.4093*x[1]-0.5595*x[2]-0.0208*x[3]-0.2354*x[4]-0.6075*x[5]-0.7696*x[6]-0.0033*x[7]+0.1446*x[8]+0.5616*x[9]+0.3809*x[10]-0.5911*x[11]+0.9723*x[12]+0.2234*x[13]-0.551*x[14]-0.201*x[15]+0.6861*x[16]-0.6097*x[17]-0.8716*x[18]-0.2965*x[19]+0.3045*x[20] <= 81.6)
@NLconstraint(m, e8, 0.8619*x[1]*x[3]-0.8902*x[1]*x[1]+0.6498*x[1]*x[4]+0.5816*x[1]*x[5]+0.711*x[1]*x[6]-0.6322*x[1]*x[7]+0.3937*x[1]*x[9]+0.8228*x[1]*x[12]-0.0838*x[1]*x[15]-0.8125*x[1]*x[16]-0.9501*x[1]*x[17]+0.7378*x[1]*x[18]+0.5783*x[1]*x[19]+0.3982*x[1]*x[20]-0.6811*x[2]*x[4]+0.0376*x[2]*x[5]-0.2456*x[2]*x[9]+0.1885*x[2]*x[10]+0.1359*x[2]*x[11]-0.145*x[2]*x[12]+0.2971*x[2]*x[13]-0.171*x[2]*x[15]-0.6142*x[2]*x[17]-0.1917*x[2]*x[19]-0.0574*x[3]*x[3]-0.5612*x[3]*x[9]+0.2798*x[3]*x[12]+0.1076*x[3]*x[13]-0.5029*x[3]*x[14]+0.9334*x[3]*x[16]-0.5519*x[3]*x[17]-0.9951*x[3]*x[18]-0.5917*x[3]*x[19]-0.6068*x[4]*x[6]+0.4183*x[4]*x[10]-0.387*x[4]*x[11]+0.2808*x[4]*x[12]+0.5215*x[4]*x[15]-0.796*x[4]*x[18]-0.3086*x[4]*x[19]-0.5819*x[4]*x[20]+0.6178*x[5]*x[6]+0.9675*x[5]*x[7]+0.176*x[5]*x[9]-0.0583*x[5]*x[10]+0.0569*x[5]*x[11]+0.046*x[5]*x[14]+0.3788*x[5]*x[16]+0.5133*x[5]*x[17]-0.1642*x[5]*x[20]+0.6648*x[6]*x[7]-0.5462*x[6]*x[11]+0.8232*x[6]*x[12]+0.3831*x[6]*x[13]-0.5801*x[6]*x[15]-0.5245*x[6]*x[17]+0.5327*x[6]*x[18]-0.0758*x[6]*x[19]+0.489*x[6]*x[20]+0.5657*x[7]*x[8]+0.3351*x[7]*x[9]+0.5785*x[7]*x[12]+0.7114*x[7]*x[15]+0.726*x[7]*x[16]+0.2613*x[7]*x[17]+0.4506*x[7]*x[19]-0.9902*x[8]*x[8]-0.4549*x[8]*x[10]-0.7411*x[8]*x[11]+0.7788*x[8]*x[12]-0.8225*x[8]*x[14]+0.9595*x[8]*x[16]+0.5667*x[8]*x[19]+0.6791*x[8]*x[20]-0.8347*x[9]*x[9]+0.1116*x[9]*x[11]-0.5739*x[9]*x[12]-0.2878*x[9]*x[14]+0.5227*x[9]*x[16]+0.6126*x[10]*x[10]+0.5132*x[10]*x[11]-0.6572*x[10]*x[12]-0.8722*x[10]*x[15]+0.163*x[10]*x[16]-0.7406*x[11]*x[11]+0.7148*x[11]*x[14]+0.4011*x[12]*x[12]-0.4188*x[12]*x[14]+0.6867*x[12]*x[16]-0.5501*x[13]*x[13]+0.6996*x[13]*x[15]+0.1761*x[13]*x[16]+0.5343*x[13]*x[18]-0.2586*x[13]*x[20]-0.0031*x[14]*x[14]-0.8198*x[14]*x[16]+0.7473*x[14]*x[19]-0.6334*x[15]*x[15]+0.0599*x[15]*x[16]+0.1353*x[15]*x[19]+0.6012*x[15]*x[20]-0.2047*x[16]*x[16]+0.3023*x[16]*x[17]+0.6585*x[16]*x[20]-0.8275*x[17]*x[19]-0.3674*x[17]*x[20]+0.5291*x[18]*x[18]-0.1535*x[18]*x[19]+0.5204*x[19]*x[20]+0.6624*x[20]*x[20]-0.7653*x[1]-0.7255*x[2]-0.4073*x[3]+0.4606*x[4]+0.2692*x[5]-0.6273*x[6]-0.4621*x[7]-0.7462*x[8]+0.9907*x[9]-0.4224*x[10]+0.8578*x[11]+0.4171*x[12]-0.8859*x[13]-0.3851*x[14]+0.3242*x[15]-0.3469*x[16]-0.2711*x[17]-0.2801*x[18]+0.8665*x[19]-0.2488*x[20] <= 94.332)
@NLconstraint(m, e9, 0.4685*x[1]*x[1]+0.2405*x[1]*x[3]+0.0127*x[1]*x[4]+0.0694*x[1]*x[5]+0.5182*x[1]*x[6]-0.3606*x[1]*x[7]+0.9468*x[1]*x[8]+0.2377*x[1]*x[9]+0.5885*x[1]*x[11]+0.4903*x[1]*x[13]+0.7551*x[1]*x[16]-0.7769*x[1]*x[17]-0.0142*x[1]*x[19]+0.279*x[1]*x[20]+0.9225*x[2]*x[2]+0.4072*x[2]*x[3]+0.2467*x[2]*x[4]-0.5806*x[2]*x[10]-0.6181*x[2]*x[13]-0.9622*x[2]*x[14]-0.9429*x[2]*x[20]-0.1114*x[3]*x[3]+0.962*x[3]*x[4]+0.7218*x[3]*x[7]-0.0212*x[3]*x[8]-0.2319*x[3]*x[12]-0.2535*x[3]*x[15]+0.8032*x[3]*x[16]-0.7033*x[3]*x[17]-0.0389*x[3]*x[18]+0.3013*x[3]*x[20]-0.584*x[4]*x[4]+0.7894*x[4]*x[6]-0.6639*x[4]*x[10]+0.6767*x[4]*x[13]-0.4846*x[4]*x[16]+0.559*x[4]*x[17]+0.7687*x[4]*x[18]+0.2254*x[4]*x[20]+0.0569*x[5]*x[6]+0.6504*x[5]*x[11]+0.8787*x[5]*x[16]-0.8287*x[6]*x[8]-0.8521*x[6]*x[9]-0.5959*x[6]*x[10]-0.0468*x[6]*x[13]+0.9325*x[6]*x[15]-0.4888*x[6]*x[19]+0.6094*x[6]*x[20]-0.625*x[7]*x[7]-0.8095*x[7]*x[8]-0.0119*x[7]*x[9]-0.5285*x[7]*x[11]-0.764*x[7]*x[13]+0.6188*x[7]*x[15]+0.9698*x[7]*x[17]-0.9031*x[7]*x[18]-0.3205*x[7]*x[19]+0.127*x[7]*x[20]-0.6228*x[8]*x[11]-0.3363*x[8]*x[12]-0.5564*x[8]*x[13]-0.5353*x[8]*x[17]+0.8441*x[8]*x[19]+0.2414*x[8]*x[20]+0.8775*x[9]*x[9]-0.1012*x[9]*x[11]-0.4528*x[9]*x[12]-0.7122*x[9]*x[13]+0.4884*x[9]*x[15]-0.6339*x[9]*x[17]+0.9491*x[9]*x[19]+0.2211*x[9]*x[20]-0.98*x[10]*x[11]-0.6299*x[10]*x[12]+0.888*x[10]*x[16]+0.0874*x[10]*x[18]+0.9376*x[10]*x[19]-0.8828*x[11]*x[11]-0.7807*x[11]*x[12]-0.3649*x[11]*x[16]-0.1947*x[11]*x[18]-0.4531*x[11]*x[19]+0.0667*x[11]*x[20]-0.5012*x[12]*x[12]-0.4531*x[12]*x[14]-0.3996*x[12]*x[18]-0.067*x[12]*x[19]-0.1621*x[12]*x[20]+0.0186*x[13]*x[16]+0.3314*x[13]*x[18]+0.7237*x[13]*x[19]-0.6029*x[13]*x[20]+0.1621*x[14]*x[14]+0.9426*x[14]*x[16]-0.4716*x[14]*x[17]+0.5809*x[14]*x[18]-0.0686*x[14]*x[20]-0.9085*x[15]*x[16]-0.8065*x[15]*x[20]+0.8531*x[16]*x[16]-0.4899*x[16]*x[17]-0.4813*x[16]*x[18]-0.5799*x[16]*x[19]+0.0057*x[16]*x[20]+0.8253*x[17]*x[17]+0.9848*x[17]*x[19]+0.598*x[17]*x[20]+0.8123*x[18]*x[18]-0.0994*x[20]*x[20]+0.2805*x[1]-0.8577*x[2]+0.7175*x[3]-0.7583*x[4]-0.8219*x[5]+0.4888*x[6]-0.5442*x[7]-0.0462*x[8]+0.6217*x[9]-0.3095*x[10]+0.4173*x[11]+0.9858*x[12]-0.2577*x[13]-0.0065*x[14]+0.8367*x[15]-0.5319*x[16]-0.2873*x[17]-0.3109*x[18]-0.2352*x[19]+0.7581*x[20] <= 26.588)
@NLconstraint(m, e10, 0.8474*x[1]*x[3]+0.9931*x[1]*x[4]+0.5255*x[1]*x[6]+0.6954*x[1]*x[7]-0.7097*x[1]*x[9]+0.0745*x[1]*x[10]+0.1756*x[1]*x[14]-0.6472*x[1]*x[15]+0.1752*x[1]*x[18]-0.8324*x[1]*x[20]-0.9902*x[2]*x[2]-0.2037*x[2]*x[3]-0.0466*x[2]*x[4]+0.1012*x[2]*x[8]-0.6664*x[2]*x[10]+0.3679*x[2]*x[11]+0.5635*x[2]*x[13]+0.1984*x[2]*x[15]+0.652*x[2]*x[17]+0.2001*x[3]*x[3]+0.038*x[3]*x[4]-0.8777*x[3]*x[6]-0.8456*x[3]*x[11]-0.9137*x[3]*x[12]+0.8772*x[3]*x[14]+0.2955*x[3]*x[16]-0.5776*x[3]*x[17]+0.4651*x[3]*x[20]+0.3849*x[4]*x[4]-0.8932*x[4]*x[7]+0.1636*x[4]*x[8]-0.4001*x[4]*x[9]-0.6389*x[4]*x[11]-0.9526*x[4]*x[12]-0.6668*x[4]*x[15]+0.3519*x[4]*x[17]+0.3606*x[4]*x[19]+0.1172*x[5]*x[5]+0.6537*x[5]*x[7]-0.8395*x[5]*x[9]-0.581*x[5]*x[14]-0.7533*x[5]*x[15]-0.4962*x[5]*x[16]-0.2533*x[5]*x[19]-0.7145*x[5]*x[20]-0.2676*x[6]*x[6]+0.8321*x[6]*x[9]+0.0568*x[6]*x[10]+0.0269*x[6]*x[12]+0.0668*x[6]*x[13]+0.604*x[6]*x[16]+0.8662*x[7]*x[7]-0.2327*x[7]*x[8]+0.8204*x[7]*x[9]-0.1905*x[7]*x[10]-0.5827*x[7]*x[13]+0.7134*x[7]*x[16]-0.7418*x[7]*x[17]+0.8618*x[7]*x[18]+0.381*x[7]*x[19]-0.3193*x[7]*x[20]-0.9565*x[8]*x[8]+0.4327*x[8]*x[11]+0.8001*x[8]*x[13]-0.8098*x[8]*x[14]-0.3555*x[8]*x[17]-0.378*x[8]*x[20]-0.8138*x[9]*x[9]-0.3008*x[9]*x[13]+0.902*x[9]*x[15]-0.0632*x[9]*x[16]+0.5725*x[9]*x[19]+0.4201*x[9]*x[20]-0.0379*x[10]*x[10]+0.4929*x[10]*x[11]+0.318*x[10]*x[12]+0.646*x[10]*x[18]-0.7018*x[10]*x[19]+0.0783*x[11]*x[11]+0.9686*x[11]*x[13]-0.136*x[11]*x[14]-0.7899*x[11]*x[15]-0.2357*x[11]*x[16]-0.6588*x[11]*x[20]+0.417*x[12]*x[12]+0.3708*x[12]*x[17]+0.6727*x[12]*x[19]+0.7308*x[12]*x[20]+0.6912*x[13]*x[13]+0.1582*x[13]*x[15]-0.9766*x[13]*x[17]-0.5442*x[13]*x[20]-0.2856*x[14]*x[14]+0.1864*x[14]*x[16]-0.0077*x[14]*x[17]+0.0168*x[14]*x[19]+0.6262*x[14]*x[20]+0.3191*x[15]*x[15]+0.424*x[15]*x[17]-0.3938*x[15]*x[18]-0.9496*x[15]*x[19]-0.8915*x[15]*x[20]+0.5728*x[16]*x[16]-0.4504*x[16]*x[20]-0.3503*x[17]*x[19]+0.5504*x[17]*x[20]-0.3762*x[18]*x[18]-0.9714*x[18]*x[19]+0.9841*x[18]*x[20]-0.608*x[20]*x[20]-0.9618*x[1]-0.5626*x[2]+0.4466*x[3]-0.3998*x[4]+0.0077*x[5]-0.9013*x[6]+0.7786*x[7]+0.5871*x[8]-0.2781*x[9]-0.0724*x[10]+0.3171*x[11]-0.1124*x[12]-0.2977*x[13]-0.8404*x[14]-0.3749*x[15]-0.0079*x[16]-0.4263*x[17]-0.995*x[18]+0.6386*x[19]+0.2272*x[20] <= 87.899)
@NLconstraint(m, e11, 0.0379*x[1]*x[1]-0.6729*x[1]*x[3]-0.1595*x[1]*x[5]+0.7796*x[1]*x[7]+0.4294*x[1]*x[9]-0.5968*x[1]*x[11]-0.5516*x[1]*x[12]-0.9332*x[1]*x[14]-0.4043*x[1]*x[16]+0.3682*x[1]*x[19]-0.7411*x[1]*x[20]+0.7925*x[2]*x[2]-0.2739*x[2]*x[5]-0.1356*x[2]*x[8]+0.4127*x[2]*x[10]-0.7509*x[2]*x[11]+0.8678*x[2]*x[13]+0.4029*x[2]*x[16]+0.958*x[2]*x[19]-0.6582*x[2]*x[20]+0.4114*x[3]*x[3]+0.3873*x[3]*x[4]+0.6397*x[3]*x[7]+0.7209*x[3]*x[9]+0.2211*x[3]*x[12]+0.0448*x[3]*x[14]-0.5731*x[3]*x[18]-0.1834*x[3]*x[19]-0.7252*x[3]*x[20]+0.1769*x[4]*x[6]-0.9388*x[4]*x[7]+0.0122*x[4]*x[8]+0.2718*x[4]*x[9]-0.2942*x[4]*x[11]-0.3668*x[4]*x[12]-0.0244*x[4]*x[13]-0.6048*x[4]*x[15]-0.0212*x[4]*x[17]+0.6836*x[4]*x[20]-0.6986*x[5]*x[9]+0.2319*x[5]*x[10]-0.9808*x[5]*x[12]+0.3688*x[5]*x[13]-0.4049*x[5]*x[14]+0.4364*x[5]*x[16]+0.5808*x[5]*x[17]-0.8313*x[5]*x[20]+0.7748*x[6]*x[6]-0.051*x[6]*x[7]-0.7671*x[6]*x[10]+0.5745*x[6]*x[11]+0.7671*x[6]*x[12]+0.1903*x[6]*x[16]+0.0523*x[6]*x[20]+0.5563*x[7]*x[7]-0.4994*x[7]*x[8]-0.9771*x[7]*x[9]+0.401*x[7]*x[11]+0.8948*x[7]*x[12]-0.7129*x[7]*x[13]-0.1205*x[7]*x[17]+0.3225*x[7]*x[19]-0.3702*x[7]*x[20]-0.0413*x[8]*x[8]+0.2142*x[8]*x[9]+0.4548*x[8]*x[11]-0.4979*x[8]*x[12]+0.0771*x[8]*x[13]+0.7498*x[8]*x[15]+0.9152*x[8]*x[17]-0.3816*x[8]*x[18]+0.6083*x[8]*x[20]+0.1597*x[9]*x[11]-0.739*x[9]*x[15]-0.9108*x[9]*x[16]-0.2963*x[9]*x[17]-0.368*x[9]*x[19]+0.6385*x[10]*x[16]+0.8161*x[10]*x[17]-0.1306*x[10]*x[18]-0.5962*x[10]*x[19]+0.403*x[10]*x[20]+0.5569*x[11]*x[11]-0.8159*x[11]*x[12]-0.9207*x[11]*x[14]-0.511*x[11]*x[16]-0.7287*x[12]*x[14]+0.435*x[12]*x[16]-0.3416*x[12]*x[19]-0.8097*x[12]*x[20]-0.5248*x[13]*x[14]+0.9172*x[13]*x[20]-0.7*x[14]*x[14]+0.1126*x[14]*x[15]+0.615*x[14]*x[16]+0.8477*x[14]*x[17]-0.8466*x[14]*x[18]-0.024*x[14]*x[20]-0.4275*x[15]*x[15]-0.2468*x[15]*x[19]-0.0286*x[15]*x[20]-0.0778*x[16]*x[16]+0.7297*x[16]*x[17]+0.8192*x[16]*x[20]-0.7318*x[17]*x[17]-0.5355*x[17]*x[19]-0.4811*x[17]*x[20]-0.3717*x[18]*x[19]-0.5328*x[19]*x[19]-0.3058*x[19]*x[20]-0.6722*x[1]+0.054*x[2]-0.0638*x[3]-0.6815*x[4]-0.2622*x[5]+0.9468*x[6]-0.1015*x[7]+0.9874*x[8]-0.939*x[9]-0.1565*x[10]-0.441*x[11]+0.091*x[12]+0.2806*x[13]-0.4961*x[14]+0.901*x[15]-0.8429*x[16]-0.0354*x[17]-0.528*x[18]+0.883*x[19]+0.2832*x[20] <= 7.368)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
