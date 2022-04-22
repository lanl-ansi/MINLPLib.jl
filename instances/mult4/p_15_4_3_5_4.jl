using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.953*x[2]*x[3]-0.9836*x[7]*x[15]-0.9539*x[9]*x[13]-0.9889*x[13]*x[14]+0.0105*x[2]+0.5093*x[3]-0.4163*x[7]-0.6152*x[9]-0.1828*x[13]+0.8694*x[14]+0.4025*x[15]+(-0.5905*x[1]*x[2]*x[12])-0.6468*x[1]*x[2]*x[13]-0.6448*x[1]*x[4]*x[14]-0.6998*x[1]*x[7]*x[12]-0.8374*x[2]*x[7]*x[13]-0.7255*x[3]*x[4]*x[5]-0.6859*x[3]*x[7]*x[15]-0.8722*x[3]*x[9]*x[13]-0.5932*x[4]*x[6]*x[12]-0.8308*x[4]*x[9]*x[11]-0.804*x[4]*x[10]*x[13]-0.7012*x[5]*x[7]*x[10]-0.7807*x[5]*x[8]*x[15]-0.6068*x[5]*x[10]*x[11]-0.8103*x[6]*x[8]*x[9]-0.6023*x[6]*x[8]*x[11]-0.9066*x[6]*x[12]*x[13]-0.8141*x[7]*x[8]*x[10]-0.6703*x[7]*x[8]*x[14]-0.7696*x[8]*x[9]*x[12]-0.6053*x[8]*x[11]*x[15]-0.926*x[9]*x[10]*x[11]-0.8465*x[9]*x[12]*x[13]-0.7783*x[9]*x[13]*x[14]-0.4408*x[1]-0.1996*x[4]-0.5271*x[5]-0.7231*x[6]-0.5883*x[8]-0.4232*x[10]-0.3533*x[11]+0.8336*x[12]+0.8305*x[1]*x[2]*x[3]*x[12]-0.1083*x[1]*x[2]*x[3]*x[8]+0.2246*x[1]*x[2]*x[5]*x[7]-0.0502*x[1]*x[2]*x[6]*x[13]-0.0838*x[1]*x[2]*x[12]*x[13]-0.0908*x[1]*x[3]*x[8]*x[11]-0.3569*x[1]*x[5]*x[6]*x[11]-0.2017*x[1]*x[5]*x[6]*x[12]+0.5263*x[1]*x[5]*x[7]*x[12]+0.6668*x[1]*x[8]*x[10]*x[12]+0.6832*x[1]*x[8]*x[10]*x[13]+0.4826*x[1]*x[8]*x[10]*x[14]+0.7114*x[1]*x[10]*x[11]*x[13]-0.4035*x[1]*x[10]*x[12]*x[14]+0.054*x[2]*x[3]*x[4]*x[9]+0.4551*x[2]*x[3]*x[4]*x[11]+0.4526*x[2]*x[3]*x[4]*x[12]+0.2671*x[2]*x[3]*x[5]*x[10]+0.4353*x[2]*x[3]*x[7]*x[10]-0.4549*x[2]*x[3]*x[13]*x[15]-0.2405*x[2]*x[4]*x[5]*x[6]+0.8802*x[2]*x[4]*x[5]*x[14]-0.5852*x[2]*x[4]*x[6]*x[8]+0.5252*x[2]*x[4]*x[6]*x[10]+0.5215*x[2]*x[4]*x[6]*x[12]-0.201*x[2]*x[4]*x[6]*x[13]+0.5667*x[2]*x[4]*x[9]*x[13]+0.3214*x[2]*x[4]*x[14]*x[15]+0.8857*x[2]*x[5]*x[6]*x[11]-0.5811*x[2]*x[5]*x[6]*x[12]+0.1011*x[2]*x[5]*x[6]*x[13]+0.0824*x[2]*x[5]*x[6]*x[15]+0.088*x[2]*x[5]*x[8]*x[9]-0.2994*x[2]*x[5]*x[8]*x[13]-0.2047*x[2]*x[5]*x[10]*x[13]-0.0492*x[2]*x[5]*x[11]*x[13]+0.9907*x[2]*x[5]*x[11]*x[14]+0.1761*x[2]*x[6]*x[8]*x[12]+0.9962*x[2]*x[6]*x[9]*x[11]-0.3461*x[2]*x[6]*x[13]*x[14]+0.3845*x[2]*x[7]*x[8]*x[10]+0.789*x[2]*x[7]*x[8]*x[11]-0.1585*x[2]*x[7]*x[12]*x[13]+0.461*x[2]*x[7]*x[13]*x[15]+0.9931*x[2]*x[9]*x[11]*x[14]-0.2828*x[2]*x[10]*x[11]*x[12]-0.0873*x[3]*x[4]*x[5]*x[7]+0.9954*x[3]*x[4]*x[6]*x[7]+0.7537*x[3]*x[4]*x[6]*x[9]+0.0437*x[3]*x[4]*x[7]*x[9]+0.3055*x[3]*x[4]*x[7]*x[13]+0.2314*x[3]*x[4]*x[8]*x[11]+0.7081*x[3]*x[4]*x[10]*x[13]+0.968*x[3]*x[5]*x[9]*x[12]-0.0289*x[3]*x[5]*x[10]*x[15]+0.4142*x[3]*x[6]*x[7]*x[10]+0.6973*x[3]*x[6]*x[7]*x[11]-0.4542*x[3]*x[6]*x[7]*x[13]+0.3982*x[3]*x[6]*x[8]*x[9]+0.1986*x[3]*x[6]*x[10]*x[12]+0.4885*x[3]*x[6]*x[10]*x[13]-0.4002*x[3]*x[6]*x[10]*x[14]+0.1843*x[3]*x[6]*x[10]*x[15]-0.5565*x[3]*x[7]*x[8]*x[13]+0.547*x[3]*x[7]*x[10]*x[13]+0.5291*x[3]*x[7]*x[12]*x[13]-0.3368*x[3]*x[7]*x[13]*x[14]-0.0625*x[3]*x[8]*x[10]*x[13]+0.3045*x[3]*x[10]*x[12]*x[14]-0.1045*x[3]*x[11]*x[12]*x[13]+0.6176*x[4]*x[5]*x[8]*x[15]-0.4995*x[4]*x[6]*x[8]*x[15]+0.0218*x[4]*x[7]*x[9]*x[12]+0.8175*x[4]*x[7]*x[10]*x[13]+0.3651*x[4]*x[7]*x[10]*x[15]-0.0017*x[4]*x[7]*x[11]*x[12]+0.3788*x[4]*x[7]*x[12]*x[13]-0.1917*x[4]*x[8]*x[9]*x[10]+0.7473*x[4]*x[8]*x[9]*x[12]-0.1127*x[4]*x[8]*x[10]*x[12]+0.8519*x[4]*x[8]*x[10]*x[15]-0.4605*x[4]*x[9]*x[10]*x[12]+0.2938*x[4]*x[9]*x[10]*x[14]+0.1802*x[4]*x[9]*x[12]*x[14]+0.5816*x[4]*x[11]*x[13]*x[14]+0.2988*x[5]*x[6]*x[9]*x[10]+0.0734*x[5]*x[7]*x[10]*x[12]+0.5685*x[5]*x[7]*x[13]*x[14]-0.4347*x[5]*x[7]*x[14]*x[15]-0.2296*x[5]*x[8]*x[10]*x[11]+0.0005*x[5]*x[9]*x[10]*x[12]-0.5028*x[5]*x[10]*x[14]*x[15]+0.6674*x[5]*x[11]*x[13]*x[15]-0.0531*x[5]*x[12]*x[13]*x[15]-0.0038*x[6]*x[7]*x[8]*x[9]+0.8665*x[6]*x[7]*x[8]*x[14]-0.5361*x[6]*x[7]*x[9]*x[13]-0.3231*x[6]*x[8]*x[10]*x[13]-0.4914*x[6]*x[11]*x[12]*x[14]+0.7119*x[7]*x[8]*x[9]*x[14]-0.146*x[7]*x[11]*x[13]*x[15]+0.3423*x[8]*x[9]*x[10]*x[12]-0.3246*x[8]*x[9]*x[12]*x[13]+0.6726*x[9]*x[10]*x[11]*x[13]+0.9675*x[8]^3*x[9]-0.3851*x[6]^3*x[10]-0.2477*x[8]^3*x[11]-0.2878*x[12]^3*x[3]+0.5621*x[11]^2*x[14]^2-0.2918*x[2]^2*x[13]^2+(-0.8212*x[4]^2*x[2])-0.6821*x[5]^2*x[3]-0.783*x[5]^2*x[7]-0.866*x[10]^2*x[13]-0.7438*x[11]^2*x[13]-0.5979*x[13]^2*x[5]+0.1921*x[1]^2*x[2]*x[9]+0.7927*x[1]^2*x[7]*x[13]+0.5027*x[2]^2*x[3]*x[10]+0.524*x[2]^2*x[4]*x[14]-0.5233*x[2]^2*x[10]*x[11]-0.4791*x[3]^2*x[1]*x[5]-0.1269*x[3]^2*x[10]*x[15]-0.5029*x[4]^2*x[1]*x[15]+0.8272*x[4]^2*x[2]*x[11]+0.4093*x[4]^2*x[6]*x[8]+0.5406*x[4]^2*x[9]*x[15]+0.3809*x[4]^2*x[10]*x[15]+0.8232*x[4]^2*x[11]*x[12]+0.1242*x[4]^2*x[11]*x[13]-0.3703*x[4]^2*x[13]*x[14]+0.9734*x[5]^2*x[2]*x[14]-0.5684*x[5]^2*x[4]*x[11]+0.2443*x[5]^2*x[6]*x[7]+0.4833*x[6]^2*x[1]*x[7]+0.1359*x[7]^2*x[4]*x[10]+0.5721*x[8]^2*x[2]*x[4]+0.5282*x[8]^2*x[2]*x[14]+0.115*x[8]^2*x[4]*x[11]+0.401*x[8]^2*x[5]*x[7]-0.1664*x[8]^2*x[5]*x[15]+0.1744*x[8]^2*x[9]*x[12]+0.5235*x[8]^2*x[9]*x[14]+0.861*x[9]^2*x[1]*x[14]-0.1327*x[9]^2*x[3]*x[12]-0.2249*x[9]^2*x[4]*x[12]+0.8812*x[9]^2*x[10]*x[13]-0.2096*x[9]^2*x[10]*x[14]+0.1614*x[10]^2*x[3]*x[14]+0.808*x[10]^2*x[11]*x[13]+0.5981*x[11]^2*x[1]*x[4]-0.2232*x[11]^2*x[4]*x[7]+0.5383*x[11]^2*x[4]*x[8]-0.0629*x[11]^2*x[8]*x[10]+0.7277*x[12]^2*x[5]*x[7]+0.6724*x[12]^2*x[9]*x[10]-0.0758*x[12]^2*x[10]*x[11]+0.7547*x[13]^2*x[2]*x[14]+0.8679*x[13]^2*x[3]*x[4]+0.4011*x[13]^2*x[4]*x[5]-0.3968*x[14]^2*x[2]*x[7]-0.2009*x[14]^2*x[5]*x[11]+0.5158*x[14]^2*x[6]*x[7]-0.0154*x[14]^2*x[6]*x[10]+0.1056*x[14]^2*x[8]*x[11])+obj == 0.0)
@NLconstraint(m, e2, (-0.9801*x[1]*x[6])-0.9907*x[2]*x[4]-0.9735*x[2]*x[7]-0.9766*x[4]*x[6]-0.9618*x[4]*x[11]-0.9855*x[4]*x[13]-0.9714*x[4]*x[15]-0.9967*x[6]*x[9]-0.984*x[6]*x[14]-0.9522*x[8]*x[10]-0.9658*x[9]*x[11]-0.995*x[10]*x[12]-0.9492*x[11]*x[13]-0.5355*x[1]-0.4811*x[2]-0.5328*x[4]-0.6722*x[6]+0.054*x[7]-0.0638*x[8]-0.6815*x[9]-0.2622*x[10]+0.9468*x[11]-0.1015*x[12]+0.9874*x[13]-0.939*x[14]-0.1565*x[15]+(-0.8443*x[1]*x[3]*x[9])-0.6389*x[1]*x[3]*x[10]-0.7252*x[1]*x[8]*x[9]-0.6339*x[1]*x[10]*x[15]-0.8577*x[2]*x[3]*x[13]-0.8287*x[2]*x[4]*x[8]-0.6882*x[2]*x[4]*x[12]-0.6997*x[2]*x[10]*x[13]-0.7533*x[3]*x[5]*x[6]-0.8828*x[3]*x[5]*x[7]-0.6684*x[3]*x[6]*x[12]-0.7408*x[3]*x[8]*x[10]-0.8463*x[3]*x[11]*x[12]-0.9031*x[4]*x[6]*x[9]-0.8566*x[4]*x[8]*x[13]-0.9137*x[4]*x[10]*x[14]-0.619*x[4]*x[12]*x[13]-0.8466*x[5]*x[6]*x[8]-0.6029*x[5]*x[9]*x[15]-0.9123*x[6]*x[8]*x[12]-0.6265*x[7]*x[8]*x[10]-0.9153*x[7]*x[14]*x[15]-0.9202*x[8]*x[9]*x[12]-0.7628*x[9]*x[11]*x[13]-0.7*x[9]*x[12]*x[14]-0.6299*x[9]*x[14]*x[15]-0.3717*x[3]-0.3058*x[5]+(-0.1142*x[1]*x[2]*x[4]*x[14])-0.3918*x[1]*x[2]*x[5]*x[11]+0.5937*x[1]*x[2]*x[5]*x[12]+0.1752*x[1]*x[2]*x[7]*x[8]-0.3193*x[1]*x[2]*x[11]*x[14]-0.4046*x[1]*x[3]*x[4]*x[11]-0.1481*x[1]*x[3]*x[8]*x[13]-0.0212*x[1]*x[3]*x[10]*x[13]-0.2985*x[1]*x[4]*x[7]*x[13]-0.3068*x[1]*x[4]*x[10]*x[11]+0.7928*x[1]*x[4]*x[10]*x[13]+0.1903*x[1]*x[5]*x[8]*x[12]+0.7482*x[1]*x[6]*x[7]*x[12]+0.455*x[1]*x[7]*x[8]*x[10]+0.8352*x[1]*x[8]*x[10]*x[13]+0.1597*x[2]*x[3]*x[5]*x[6]+0.1701*x[2]*x[3]*x[5]*x[9]-0.0869*x[2]*x[3]*x[6]*x[7]-0.136*x[2]*x[3]*x[6]*x[11]-0.442*x[2]*x[3]*x[8]*x[11]+0.4206*x[2]*x[3]*x[9]*x[12]-0.3292*x[2]*x[3]*x[11]*x[12]-0.3293*x[2]*x[4]*x[5]*x[11]+0.9325*x[2]*x[4]*x[5]*x[12]+0.758*x[2]*x[4]*x[6]*x[12]+0.435*x[2]*x[4]*x[6]*x[14]+0.3382*x[2]*x[4]*x[8]*x[9]+0.3606*x[2]*x[4]*x[9]*x[13]+0.1465*x[2]*x[4]*x[11]*x[14]+0.5695*x[2]*x[5]*x[6]*x[12]-0.3555*x[2]*x[5]*x[6]*x[14]-0.0262*x[2]*x[5]*x[7]*x[11]+0.4651*x[2]*x[5]*x[9]*x[11]+0.3688*x[2]*x[5]*x[11]*x[12]-0.5451*x[2]*x[6]*x[7]*x[15]+0.4078*x[2]*x[6]*x[8]*x[10]-0.1877*x[2]*x[6]*x[12]*x[15]-0.4807*x[2]*x[7]*x[10]*x[13]+0.8364*x[2]*x[7]*x[14]*x[15]-0.3998*x[2]*x[8]*x[12]*x[13]+0.9767*x[2]*x[9]*x[12]*x[15]-0.1925*x[3]*x[4]*x[6]*x[11]+0.8032*x[3]*x[4]*x[8]*x[10]+0.7311*x[3]*x[4]*x[8]*x[14]-0.1091*x[3]*x[4]*x[11]*x[14]-0.0119*x[3]*x[4]*x[12]*x[15]+0.8775*x[3]*x[5]*x[7]*x[11]+0.7894*x[3]*x[5]*x[12]*x[13]-0.0631*x[3]*x[5]*x[12]*x[15]-0.2311*x[3]*x[6]*x[7]*x[8]+0.3682*x[3]*x[6]*x[7]*x[14]+0.1302*x[3]*x[7]*x[8]*x[13]-0.3109*x[3]*x[7]*x[8]*x[14]+0.401*x[3]*x[7]*x[10]*x[14]-0.0286*x[3]*x[7]*x[13]*x[14]-0.0656*x[3]*x[8]*x[9]*x[11]+0.7211*x[3]*x[8]*x[11]*x[13]+0.7748*x[3]*x[8]*x[12]*x[13]+0.7662*x[3]*x[9]*x[10]*x[12]+0.1012*x[3]*x[9]*x[11]*x[12]+0.318*x[3]*x[9]*x[13]*x[15]+0.1733*x[3]*x[11]*x[12]*x[14]-0.5827*x[3]*x[11]*x[13]*x[14]+0.4127*x[3]*x[11]*x[14]*x[15]+0.2718*x[4]*x[5]*x[6]*x[8]-0.2271*x[4]*x[5]*x[6]*x[10]-0.4169*x[4]*x[5]*x[8]*x[11]-0.4899*x[4]*x[5]*x[8]*x[14]+0.2615*x[4]*x[5]*x[12]*x[15]+0.7122*x[4]*x[5]*x[13]*x[14]-0.2*x[4]*x[6]*x[7]*x[14]+0.4888*x[4]*x[6]*x[8]*x[12]-0.5249*x[4]*x[6]*x[10]*x[15]+0.8109*x[4]*x[6]*x[11]*x[13]+0.3081*x[4]*x[6]*x[11]*x[14]+0.7209*x[4]*x[7]*x[8]*x[10]+0.6385*x[4]*x[7]*x[11]*x[14]+0.6411*x[4]*x[8]*x[9]*x[14]+0.9163*x[4]*x[8]*x[14]*x[15]-0.5106*x[4]*x[9]*x[11]*x[13]+0.9238*x[5]*x[7]*x[8]*x[14]+0.0231*x[5]*x[7]*x[9]*x[14]+0.646*x[5]*x[7]*x[11]*x[13]-0.3702*x[5]*x[8]*x[9]*x[11]+0.4517*x[5]*x[8]*x[11]*x[13]+0.0694*x[5]*x[10]*x[12]*x[15]+0.0771*x[5]*x[12]*x[13]*x[14]+0.6929*x[6]*x[7]*x[8]*x[9]+0.1721*x[6]*x[7]*x[9]*x[11]+0.4173*x[6]*x[8]*x[14]*x[15]+0.85*x[6]*x[9]*x[12]*x[13]-0.5621*x[6]*x[10]*x[11]*x[13]-0.5821*x[6]*x[10]*x[13]*x[14]+0.2583*x[7]*x[8]*x[9]*x[14]-0.067*x[7]*x[8]*x[10]*x[13]+0.9848*x[7]*x[10]*x[12]*x[14]-0.4759*x[8]*x[10]*x[11]*x[14]+0.7687*x[8]*x[10]*x[13]*x[14]+0.6599*x[9]*x[10]*x[12]*x[15]+0.6281*x[9]*x[10]*x[13]*x[15]+0.8192*x[4]^3*x[2]-0.5319*x[6]^3*x[13]-0.2676*x[8]^3*x[14]+0.8989*x[12]^3*x[6]+0.3708*x[13]^3*x[9]+0.6954*x[3]^2*x[9]^2+0.5418*x[9]^2*x[10]^2+(-0.6065*x[2]^2*x[6])-0.6839*x[4]^2*x[11]-0.8404*x[5]^2*x[8]-0.6582*x[11]^2*x[12]+0.2723*x[1]^2*x[5]*x[10]-0.5806*x[1]^2*x[4]*x[7]+0.5569*x[2]^2*x[3]*x[4]+0.5168*x[2]^2*x[5]*x[9]+0.4078*x[2]^2*x[6]*x[12]-0.4703*x[2]^2*x[6]*x[14]+0.652*x[2]^2*x[8]*x[9]+0.5809*x[2]^2*x[8]*x[14]+0.1785*x[2]^2*x[10]*x[13]+0.5019*x[3]^2*x[13]*x[14]+0.4294*x[4]^2*x[1]*x[5]+0.7871*x[4]^2*x[6]*x[10]-0.3363*x[4]^2*x[10]*x[14]-0.5038*x[5]^2*x[4]*x[7]-0.4531*x[5]^2*x[4]*x[8]+0.424*x[5]^2*x[6]*x[12]+0.5525*x[5]^2*x[10]*x[11]+0.962*x[6]^2*x[8]*x[13]+0.0751*x[7]^2*x[2]*x[4]-0.2781*x[7]^2*x[6]*x[10]-0.2795*x[7]^2*x[8]*x[12]+0.5371*x[8]^2*x[4]*x[13]+0.1864*x[8]^2*x[10]*x[12]-0.3993*x[8]^2*x[12]*x[13]-0.1003*x[9]^2*x[7]*x[11]+0.83*x[10]^2*x[3]*x[14]+0.9326*x[10]^2*x[5]*x[8]-0.377*x[10]^2*x[7]*x[9]+0.5885*x[10]^2*x[11]*x[14]-0.1434*x[10]^2*x[12]*x[14]-0.0145*x[11]^2*x[2]*x[8]+0.6625*x[11]^2*x[5]*x[12]+0.4965*x[11]^2*x[8]*x[10]-0.0632*x[11]^2*x[8]*x[12]+0.1712*x[12]^2*x[7]*x[14]+0.0179*x[13]^2*x[4]*x[11]-0.55*x[13]^2*x[4]*x[15]+0.9056*x[14]^2*x[1]*x[2]-0.4682*x[14]^2*x[3]*x[10]+0.2625*x[14]^2*x[5]*x[10]+0.604*x[14]^2*x[6]*x[7]+0.8946*x[15]^2*x[12]*x[14] <= 27.948)
@NLconstraint(m, e3, (-0.9718*x[1]*x[11])-0.9398*x[4]*x[5]-0.9603*x[5]*x[6]-0.939*x[7]*x[13]-0.9486*x[8]*x[12]-0.4411*x[1]-0.1368*x[4]-0.6212*x[5]-0.8586*x[6]+0.3089*x[7]+0.2545*x[8]-0.1886*x[11]-0.0838*x[12]-0.1947*x[13]+(-0.8947*x[1]*x[4]*x[8])-0.6205*x[1]*x[8]*x[14]-0.6037*x[2]*x[4]*x[5]-0.6896*x[2]*x[7]*x[12]-0.7479*x[2]*x[13]*x[14]-0.6042*x[3]*x[8]*x[9]-0.746*x[3]*x[12]*x[13]-0.9033*x[5]*x[6]*x[15]-0.9278*x[5]*x[9]*x[10]-0.7837*x[5]*x[9]*x[11]-0.8326*x[5]*x[12]*x[14]-0.8089*x[6]*x[8]*x[14]-0.7349*x[6]*x[9]*x[10]-0.743*x[6]*x[10]*x[14]-0.8526*x[8]*x[13]*x[14]-0.9152*x[9]*x[11]*x[12]+0.0385*x[2]-0.2012*x[3]+0.5597*x[9]+0.3822*x[10]-0.5408*x[14]-0.5064*x[15]+0.9183*x[1]*x[2]*x[4]*x[11]-0.1885*x[1]*x[2]*x[3]*x[5]-0.0721*x[1]*x[3]*x[6]*x[9]+0.1934*x[1]*x[3]*x[13]*x[14]-0.0917*x[1]*x[4]*x[5]*x[12]+0.892*x[1]*x[4]*x[7]*x[13]+0.5735*x[1]*x[5]*x[6]*x[10]+0.1432*x[1]*x[5]*x[7]*x[12]+0.2253*x[1]*x[5]*x[8]*x[13]+0.0228*x[1]*x[5]*x[9]*x[14]-0.3602*x[1]*x[5]*x[10]*x[13]+0.45*x[1]*x[6]*x[7]*x[14]+0.0604*x[1]*x[6]*x[10]*x[14]+0.4637*x[1]*x[7]*x[8]*x[9]-0.2203*x[1]*x[7]*x[8]*x[13]+0.5395*x[1]*x[8]*x[11]*x[14]+0.0848*x[2]*x[3]*x[6]*x[13]+0.8915*x[2]*x[3]*x[7]*x[15]-0.5345*x[2]*x[3]*x[8]*x[10]-0.5659*x[2]*x[3]*x[8]*x[12]-0.3427*x[2]*x[3]*x[9]*x[10]-0.0939*x[2]*x[4]*x[5]*x[10]+0.7638*x[2]*x[4]*x[7]*x[14]+0.9107*x[2]*x[4]*x[9]*x[10]+0.2122*x[2]*x[4]*x[10]*x[13]-0.0354*x[2]*x[4]*x[10]*x[14]+0.6615*x[2]*x[5]*x[8]*x[9]-0.2125*x[2]*x[5]*x[9]*x[13]+0.5733*x[2]*x[5]*x[9]*x[15]+0.091*x[2]*x[5]*x[10]*x[14]+0.6594*x[2]*x[5]*x[12]*x[13]+0.076*x[2]*x[6]*x[7]*x[11]-0.1448*x[2]*x[6]*x[7]*x[14]-0.5287*x[2]*x[6]*x[9]*x[13]+0.2457*x[2]*x[8]*x[9]*x[10]+0.3776*x[2]*x[8]*x[12]*x[13]-0.4177*x[2]*x[9]*x[10]*x[11]-0.1426*x[2]*x[10]*x[13]*x[15]+0.767*x[3]*x[4]*x[5]*x[7]+0.2469*x[3]*x[4]*x[6]*x[9]-0.0665*x[3]*x[4]*x[6]*x[12]+0.6215*x[3]*x[4]*x[8]*x[12]+0.2682*x[3]*x[4]*x[9]*x[13]+0.2211*x[3]*x[4]*x[9]*x[14]+0.7141*x[3]*x[4]*x[11]*x[12]-0.0992*x[3]*x[4]*x[11]*x[15]-0.0381*x[3]*x[4]*x[12]*x[13]+0.591*x[3]*x[5]*x[6]*x[11]+0.7519*x[3]*x[5]*x[6]*x[15]+0.2147*x[3]*x[5]*x[7]*x[14]-0.0762*x[3]*x[5]*x[8]*x[14]+0.5713*x[3]*x[5]*x[10]*x[11]-0.0015*x[3]*x[6]*x[7]*x[13]+0.5483*x[3]*x[6]*x[8]*x[9]+0.0217*x[3]*x[6]*x[9]*x[12]-0.126*x[3]*x[6]*x[12]*x[14]+0.4079*x[3]*x[7]*x[8]*x[11]-0.4384*x[3]*x[7]*x[8]*x[12]-0.5764*x[3]*x[7]*x[8]*x[15]-0.0215*x[3]*x[8]*x[10]*x[12]-0.5161*x[3]*x[8]*x[12]*x[13]-0.2824*x[3]*x[8]*x[13]*x[14]-0.4608*x[3]*x[9]*x[10]*x[14]+0.5321*x[4]*x[5]*x[6]*x[8]+0.5864*x[4]*x[5]*x[6]*x[12]+0.7052*x[4]*x[5]*x[10]*x[12]-0.3762*x[4]*x[6]*x[10]*x[12]-0.198*x[4]*x[6]*x[10]*x[14]-0.3417*x[4]*x[6]*x[10]*x[15]-0.436*x[4]*x[7]*x[8]*x[10]-0.3284*x[4]*x[7]*x[9]*x[12]+0.8637*x[4]*x[7]*x[9]*x[14]+0.2222*x[4]*x[7]*x[10]*x[13]+0.7686*x[4]*x[7]*x[12]*x[13]+0.2087*x[4]*x[8]*x[11]*x[13]+0.1426*x[4]*x[9]*x[11]*x[15]-0.4057*x[4]*x[10]*x[13]*x[14]-0.5055*x[5]*x[6]*x[10]*x[13]+0.3021*x[5]*x[6]*x[12]*x[13]+0.4254*x[5]*x[7]*x[11]*x[13]+0.4562*x[5]*x[7]*x[13]*x[14]+0.1145*x[5]*x[7]*x[14]*x[15]+0.7485*x[5]*x[8]*x[11]*x[13]-0.3341*x[5]*x[9]*x[13]*x[14]+0.7198*x[5]*x[10]*x[13]*x[14]-0.1821*x[5]*x[11]*x[12]*x[14]-0.2256*x[5]*x[12]*x[13]*x[14]+0.5261*x[6]*x[7]*x[9]*x[12]-0.0858*x[6]*x[8]*x[9]*x[11]+0.3284*x[6]*x[8]*x[10]*x[13]-0.5315*x[6]*x[8]*x[10]*x[15]-0.3508*x[6]*x[9]*x[10]*x[15]-0.415*x[6]*x[9]*x[12]*x[14]+0.8737*x[6]*x[11]*x[13]*x[14]+0.9226*x[6]*x[12]*x[13]*x[15]-0.0323*x[6]*x[13]*x[14]*x[15]+0.171*x[7]*x[8]*x[9]*x[14]+0.4467*x[7]*x[8]*x[10]*x[13]+0.4464*x[7]*x[8]*x[10]*x[14]+0.7098*x[7]*x[9]*x[10]*x[14]+0.9606*x[7]*x[10]*x[11]*x[12]+0.1309*x[7]*x[10]*x[12]*x[13]-0.1077*x[7]*x[11]*x[13]*x[14]+0.7535*x[7]*x[12]*x[13]*x[14]+0.789*x[8]*x[9]*x[11]*x[12]+0.5512*x[8]*x[9]*x[12]*x[13]+0.2687*x[8]*x[9]*x[12]*x[14]+0.9283*x[8]*x[11]*x[12]*x[13]+0.8085*x[9]*x[10]*x[12]*x[14]+0.5771*x[9]*x[10]*x[13]*x[14]-0.1556*x[10]*x[11]*x[12]*x[13]+0.7253*x[2]^3*x[7]-0.0938*x[6]^3*x[2]-0.0515*x[6]^3*x[14]+0.8395*x[12]^3*x[11]+0.8057*x[1]^2*x[11]^2+0.4153*x[3]^2*x[13]^2+0.6013*x[4]^2*x[6]^2+0.5727*x[6]^2*x[11]^2+(-0.8865*x[3]^2*x[1])-0.7281*x[6]^2*x[7]-0.866*x[9]^2*x[13]-0.6471*x[10]^2*x[15]-0.8186*x[11]^2*x[15]-0.6334*x[14]^2*x[5]-0.8675*x[14]^2*x[10]+0.1845*x[1]^2*x[5]*x[12]-0.4341*x[2]^2*x[7]*x[11]-0.3531*x[2]^2*x[7]*x[13]-0.1282*x[2]^2*x[9]*x[10]-0.1985*x[3]^2*x[2]*x[7]+0.4575*x[3]^2*x[6]*x[12]+0.6409*x[3]^2*x[9]*x[11]+0.0214*x[3]^2*x[9]*x[13]+0.4366*x[3]^2*x[11]*x[13]-0.0998*x[4]^2*x[3]*x[10]+0.2656*x[4]^2*x[5]*x[10]+0.4588*x[5]^2*x[2]*x[11]-0.3837*x[5]^2*x[7]*x[9]-0.3817*x[6]^2*x[12]*x[14]+0.3379*x[7]^2*x[5]*x[11]+0.9617*x[7]^2*x[12]*x[13]-0.373*x[8]^2*x[3]*x[4]-0.3493*x[8]^2*x[7]*x[11]+0.6162*x[8]^2*x[7]*x[14]+0.1121*x[8]^2*x[12]*x[13]+0.5038*x[9]^2*x[2]*x[11]-0.512*x[9]^2*x[8]*x[14]+0.1761*x[9]^2*x[11]*x[14]+0.3275*x[10]^2*x[3]*x[9]+0.3853*x[10]^2*x[7]*x[14]-0.0607*x[10]^2*x[8]*x[15]+0.133*x[11]^2*x[3]*x[6]+0.8786*x[11]^2*x[4]*x[8]+0.9107*x[11]^2*x[6]*x[12]+0.6365*x[11]^2*x[9]*x[14]-0.0278*x[12]^2*x[4]*x[13]+0.1218*x[12]^2*x[9]*x[15]+0.7262*x[13]^2*x[1]*x[6]-0.4191*x[13]^2*x[2]*x[9]-0.4565*x[13]^2*x[3]*x[6]+0.9231*x[13]^2*x[3]*x[8]+0.3574*x[13]^2*x[5]*x[8]+0.0167*x[13]^2*x[6]*x[12]+0.8763*x[13]^2*x[8]*x[10]+0.1825*x[13]^2*x[9]*x[10]+0.6236*x[14]^2*x[2]*x[10]+0.1126*x[14]^2*x[10]*x[13]-0.5021*x[15]^2*x[3]*x[6]-0.1553*x[15]^2*x[3]*x[14]-0.3624*x[15]^2*x[4]*x[9]+0.4182*x[15]^2*x[9]*x[11] <= 52.635)
@NLconstraint(m, e4, (-0.9549*x[4]*x[5])-0.9888*x[4]*x[12]-0.987*x[5]*x[14]-0.7034*x[4]+0.6519*x[5]+0.322*x[12]+0.8261*x[14]+(-0.6437*x[1]*x[2]*x[4])-0.6236*x[1]*x[2]*x[13]-0.6866*x[1]*x[4]*x[6]-0.8351*x[1]*x[5]*x[15]-0.9135*x[1]*x[9]*x[15]-0.6116*x[1]*x[11]*x[13]-0.6921*x[2]*x[3]*x[6]-0.8703*x[2]*x[4]*x[11]-0.7712*x[2]*x[5]*x[13]-0.7767*x[2]*x[6]*x[12]-0.5859*x[2]*x[6]*x[14]-0.706*x[2]*x[8]*x[13]-0.602*x[3]*x[4]*x[6]-0.9193*x[4]*x[8]*x[13]-0.9263*x[4]*x[11]*x[13]-0.7645*x[4]*x[14]*x[15]-0.6879*x[5]*x[6]*x[8]-0.8145*x[5]*x[6]*x[9]-0.6728*x[5]*x[6]*x[13]-0.7095*x[5]*x[9]*x[10]-0.63*x[6]*x[10]*x[12]-0.8822*x[7]*x[8]*x[11]-0.6195*x[7]*x[9]*x[12]-0.7299*x[7]*x[9]*x[14]-0.7675*x[8]*x[13]*x[15]-0.6855*x[9]*x[13]*x[14]+0.8425*x[1]+0.8894*x[2]+0.3037*x[3]-0.5342*x[6]+0.8642*x[7]+0.2386*x[8]-0.6818*x[9]+0.8661*x[10]-0.4313*x[11]+0.7855*x[13]+0.0559*x[15]+(-0.5278*x[1]*x[2]*x[3]*x[7])-0.4404*x[1]*x[2]*x[5]*x[7]-0.5506*x[1]*x[2]*x[5]*x[12]-0.1337*x[1]*x[2]*x[5]*x[14]-0.1858*x[1]*x[2]*x[8]*x[14]+0.2858*x[1]*x[2]*x[12]*x[14]-0.1224*x[1]*x[3]*x[7]*x[10]-0.4322*x[1]*x[4]*x[6]*x[11]+0.4842*x[1]*x[5]*x[6]*x[8]+0.3356*x[1]*x[5]*x[8]*x[10]+0.9914*x[1]*x[5]*x[12]*x[13]-0.0773*x[1]*x[6]*x[8]*x[11]-0.2642*x[1]*x[6]*x[11]*x[13]-0.2168*x[1]*x[6]*x[11]*x[15]+0.1937*x[1]*x[6]*x[12]*x[14]-0.5291*x[1]*x[6]*x[12]*x[15]+0.0837*x[1]*x[11]*x[14]*x[15]+0.3238*x[2]*x[3]*x[6]*x[10]+0.9962*x[2]*x[3]*x[8]*x[12]-0.1762*x[2]*x[3]*x[14]*x[15]-0.3381*x[2]*x[4]*x[5]*x[9]+0.9352*x[2]*x[4]*x[11]*x[13]-0.2079*x[2]*x[5]*x[6]*x[13]+0.2944*x[2]*x[5]*x[7]*x[8]+0.3892*x[2]*x[5]*x[8]*x[12]+0.0843*x[2]*x[5]*x[11]*x[12]-0.2297*x[2]*x[6]*x[7]*x[10]-0.417*x[2]*x[6]*x[10]*x[14]+0.3784*x[2]*x[6]*x[11]*x[12]-0.4153*x[2]*x[6]*x[12]*x[13]+0.068*x[2]*x[7]*x[9]*x[10]+0.3882*x[2]*x[7]*x[9]*x[12]-0.4704*x[2]*x[7]*x[11]*x[13]+0.7044*x[2]*x[8]*x[11]*x[13]-0.533*x[2]*x[8]*x[12]*x[13]+0.8163*x[2]*x[12]*x[13]*x[15]+0.1265*x[3]*x[4]*x[6]*x[8]+0.2037*x[3]*x[4]*x[7]*x[12]+0.37*x[3]*x[4]*x[9]*x[13]-0.3839*x[3]*x[5]*x[6]*x[10]-0.3537*x[3]*x[5]*x[8]*x[13]+0.7529*x[3]*x[5]*x[9]*x[12]+0.3924*x[3]*x[6]*x[7]*x[13]+0.8056*x[3]*x[7]*x[8]*x[11]-0.5547*x[3]*x[7]*x[12]*x[14]+0.2717*x[3]*x[8]*x[9]*x[10]+0.7809*x[3]*x[8]*x[9]*x[14]+0.1913*x[3]*x[8]*x[10]*x[13]-0.1557*x[3]*x[8]*x[11]*x[13]+0.9654*x[3]*x[9]*x[10]*x[14]+0.3572*x[3]*x[9]*x[11]*x[14]-0.5373*x[3]*x[9]*x[13]*x[14]-0.1185*x[3]*x[10]*x[11]*x[12]+0.6478*x[3]*x[12]*x[13]*x[14]+0.5813*x[4]*x[5]*x[6]*x[13]-0.0831*x[4]*x[5]*x[9]*x[14]+0.1771*x[4]*x[6]*x[7]*x[11]+0.5345*x[4]*x[6]*x[10]*x[11]+0.3674*x[4]*x[7]*x[8]*x[10]+0.3825*x[4]*x[7]*x[9]*x[14]-0.0141*x[4]*x[7]*x[13]*x[14]+0.7135*x[4]*x[8]*x[9]*x[10]-0.058*x[4]*x[10]*x[11]*x[12]+0.4355*x[4]*x[10]*x[12]*x[14]+0.5613*x[5]*x[6]*x[8]*x[13]-0.0683*x[5]*x[6]*x[9]*x[10]-0.457*x[5]*x[6]*x[11]*x[13]+0.5338*x[5]*x[7]*x[8]*x[9]+0.8094*x[5]*x[7]*x[8]*x[12]-0.0671*x[5]*x[7]*x[8]*x[13]-0.3593*x[5]*x[8]*x[9]*x[13]-0.3978*x[5]*x[8]*x[10]*x[11]+0.3214*x[5]*x[10]*x[11]*x[14]-0.2886*x[5]*x[11]*x[12]*x[14]+0.5538*x[5]*x[12]*x[13]*x[14]+0.9544*x[5]*x[12]*x[13]*x[15]+0.8028*x[5]*x[12]*x[14]*x[15]+0.3612*x[6]*x[7]*x[8]*x[13]+0.2568*x[6]*x[7]*x[9]*x[13]-0.0485*x[6]*x[7]*x[10]*x[14]-0.5795*x[6]*x[7]*x[11]*x[13]-0.1607*x[6]*x[8]*x[9]*x[14]+0.6413*x[6]*x[8]*x[10]*x[14]+0.9598*x[6]*x[9]*x[10]*x[11]+0.9805*x[6]*x[10]*x[12]*x[13]+0.1667*x[7]*x[8]*x[9]*x[13]+0.9939*x[7]*x[8]*x[9]*x[14]+0.7751*x[7]*x[8]*x[10]*x[12]+0.5685*x[7]*x[8]*x[12]*x[15]+0.005*x[7]*x[9]*x[11]*x[14]+0.9019*x[7]*x[9]*x[12]*x[13]-0.5231*x[7]*x[10]*x[12]*x[13]+0.6182*x[8]*x[12]*x[13]*x[14]-0.3439*x[9]*x[10]*x[11]*x[12]+0.2779*x[9]*x[10]*x[13]*x[15]-0.3986*x[9]*x[11]*x[13]*x[15]+0.3134*x[11]*x[12]*x[13]*x[15]+0.1068*x[12]*x[13]*x[14]*x[15]+0.3095*x[12]^3*x[9]+0.1175*x[2]^2*x[12]^2+0.7078*x[8]^2*x[11]^2+0.5979*x[9]^2*x[11]^2-0.5488*x[12]^2*x[15]^2+(-0.7963*x[2]^2*x[13])-0.7003*x[2]^2*x[15]-0.7251*x[5]^2*x[2]-0.8016*x[7]^2*x[4]-0.8927*x[9]^2*x[11]-0.8681*x[10]^2*x[8]-0.7682*x[10]^2*x[14]-0.6712*x[11]^2*x[13]-0.7058*x[12]^2*x[4]-0.8654*x[13]^2*x[7]+0.5988*x[1]^2*x[2]*x[6]-0.3429*x[2]^2*x[1]*x[6]-0.1293*x[2]^2*x[3]*x[12]+0.7997*x[2]^2*x[4]*x[6]+0.0793*x[2]^2*x[4]*x[7]+0.9131*x[2]^2*x[4]*x[10]+0.5632*x[2]^2*x[8]*x[12]+0.1412*x[2]^2*x[11]*x[14]+0.6491*x[2]^2*x[12]*x[13]-0.28*x[3]^2*x[1]*x[2]-0.4826*x[3]^2*x[2]*x[12]-0.2634*x[3]^2*x[5]*x[14]+0.7722*x[3]^2*x[7]*x[10]-0.2628*x[4]^2*x[2]*x[5]+0.8489*x[4]^2*x[3]*x[9]-0.2475*x[5]^2*x[2]*x[4]-0.2062*x[5]^2*x[3]*x[9]-0.4181*x[5]^2*x[7]*x[14]+0.8287*x[6]^2*x[2]*x[8]-0.3978*x[6]^2*x[7]*x[10]+0.213*x[6]^2*x[8]*x[13]+0.7844*x[7]^2*x[1]*x[9]+0.6022*x[7]^2*x[3]*x[11]+0.2047*x[7]^2*x[3]*x[14]+0.5714*x[7]^2*x[4]*x[8]+0.8694*x[7]^2*x[4]*x[14]+0.6974*x[7]^2*x[5]*x[13]-0.3014*x[7]^2*x[6]*x[14]-0.5577*x[8]^2*x[2]*x[12]-0.0082*x[8]^2*x[4]*x[5]+0.3277*x[8]^2*x[5]*x[9]-0.0736*x[8]^2*x[13]*x[14]-0.2797*x[9]^2*x[5]*x[11]+0.132*x[9]^2*x[6]*x[12]+0.5741*x[9]^2*x[8]*x[11]+0.1227*x[9]^2*x[10]*x[13]-0.1265*x[10]^2*x[2]*x[3]+0.7824*x[10]^2*x[2]*x[6]-0.0491*x[10]^2*x[2]*x[7]+0.3183*x[10]^2*x[2]*x[14]+0.276*x[10]^2*x[7]*x[13]-0.0239*x[11]^2*x[7]*x[15]-0.4813*x[12]^2*x[2]*x[4]+0.0822*x[12]^2*x[8]*x[9]+0.7473*x[12]^2*x[11]*x[14]-0.4624*x[13]^2*x[1]*x[12]-0.2999*x[13]^2*x[4]*x[6]-0.0629*x[13]^2*x[4]*x[10]+0.4003*x[13]^2*x[6]*x[14]+0.1335*x[14]^2*x[6]*x[9]-0.4622*x[14]^2*x[8]*x[9] <= 77.269)

 
