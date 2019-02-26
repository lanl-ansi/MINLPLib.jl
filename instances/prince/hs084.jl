using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 1000.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 2.4)
set_lower_bound(x[3], 20.0)
set_upper_bound(x[3], 60.0)
set_lower_bound(x[4], 9.0)
set_upper_bound(x[4], 9.3)
set_lower_bound(x[5], 6.5)
set_upper_bound(x[5], 7.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2931.1506*x[1]*x[2]-145421.402*x[1]-40.427932*x[1]*x[3]+5106.192*x[1]*x[4]+15711.36*x[1]*x[5]) <= 0.0)
@NLconstraint(m, e2, -(4360.53352*x[1]*x[2]-155011.1084*x[1]+12.9492344*x[1]*x[3]+10236.884*x[1]*x[4]+13176.786*x[1]*x[5]) <= 0.0)
@NLconstraint(m, e3, -(7390.68412*x[1]*x[2]-326669.5104*x[1]-27.8986976*x[1]*x[3]+16643.076*x[1]*x[4]+30988.146*x[1]*x[5]) <= 0.0)
@NLconstraint(m, e4, 2931.1506*x[1]*x[2]-145421.402*x[1]-40.427932*x[1]*x[3]+5106.192*x[1]*x[4]+15711.36*x[1]*x[5] <= 294000.0)
@NLconstraint(m, e5, 4360.53352*x[1]*x[2]-155011.1084*x[1]+12.9492344*x[1]*x[3]+10236.884*x[1]*x[4]+13176.786*x[1]*x[5] <= 294000.0)
@NLconstraint(m, e6, 7390.68412*x[1]*x[2]-326669.5104*x[1]-27.8986976*x[1]*x[3]+16643.076*x[1]*x[4]+30988.146*x[1]*x[5] <= 277200.0)
@NLconstraint(m, e7, -(8720288.849*x[1]-150512.5253*x[1]*x[2]+156.6950325*x[1]*x[3]-476470.3222*x[1]*x[4]-729482.8271*x[1]*x[5])+objvar == 24345.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.