using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_upper_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 2.4)
set_lower_bound(x[3], 20.0)
set_upper_bound(x[3], 60.0)
set_lower_bound(x[4], 9.0)
set_upper_bound(x[4], 9.3)
set_upper_bound(x[5], 7.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*(-145421.402+2931.1506*x[2]-40.427932*x[3]+5106.192*x[4]+15711.36*x[5]) >= 0.0)
@NLconstraint(m, e2, x[1]*(-155011.1084+4360.53352*x[2]+12.9492344*x[3]+10236.884*x[4]+13176.786*x[5]) >= 0.0)
@NLconstraint(m, e3, x[1]*(-326669.5104+7390.68412*x[2]-27.8986976*x[3]+16643.076*x[4]+30988.146*x[5]) >= 0.0)
@NLconstraint(m, e4, -x[1]*(-145421.402+2931.1506*x[2]-40.427932*x[3]+5106.192*x[4]+15711.36*x[5]) >= -294000.0)
@NLconstraint(m, e5, -x[1]*(-155011.1084+4360.53352*x[2]+12.9492344*x[3]+10236.884*x[4]+13176.786*x[5]) >= -294000.0)
@NLconstraint(m, e6, -x[1]*(-326669.5104+7390.68412*x[2]-27.8986976*x[3]+16643.076*x[4]+30988.146*x[5]) >= -2.772e6)
@NLconstraint(m, e7, -(8720288.849*x[1]-x[1]*(150512.5253*x[2]-8720288.849*x[1]-156.6950325*x[3]+476470.3222*x[4]+729482.8271*x[5]))+objvar == 24345.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.