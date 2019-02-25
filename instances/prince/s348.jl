using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_upper_bound(x[15], 0.0)
set_upper_bound(x[1], 0.0)
set_upper_bound(x[3], 0.0)
set_upper_bound(x[1], 0.044)
set_lower_bound(x[2], 13.13)
set_upper_bound(x[2], 24.0)
set_upper_bound(x[3], 600.0)
set_lower_bound(x[4], 1.0e-5)
set_lower_bound(x[5], 1.0e-5)
set_lower_bound(x[6], 1.0e-5)
set_lower_bound(x[8], 1.0e-5)
set_lower_bound(x[9], 1.0e-7)
set_lower_bound(x[10], 1.0e-7)
set_upper_bound(x[15], 0.9999)
set_lower_bound(x[16], 6000.0)
set_upper_bound(x[16], 6000.0)
set_lower_bound(x[17], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.487157283637153*x[2]/x[1]+x[4] == 0.0)
@constraint(m, e2, -0.34361140625*x[2]+x[5] == 0.0)
@NLconstraint(m, e3, -0.00694444444444444*(7.88*x[2]-0.07878*x[2]/x[1])+x[6] == 0.0)
@NLconstraint(m, e4, 144*x[7]*x[6]-58.84866*x[3]*x[2] == 0.0)
@constraint(m, e5, -2.0372460496614*x[7]+x[8] == 0.0)
@NLconstraint(m, e6, -0.0589268024397802*x[7]/exp(0.35*log(x[8]))+x[9] == 0.0)
@NLconstraint(m, e7, -0.40867125*x[3]*x[2]+x[10] == 0.0)
@NLconstraint(m, e8, -7.36144578313253e-5* (x[7])^2*(x[4]/x[6]*sqrt(1/x[8])+0.1*x[5]/x[6])+x[11] == 0.0)
@NLconstraint(m, e9, -0.0732*sqrt(x[9])+x[12] == 0.0)
@constraint(m, e10, x[13] == 0.99)
@NLconstraint(m, e11, x[4]*(1-x[13])/(x[4]+x[5])+x[14] == 1.0)
@NLconstraint(m, e12, log(1-x[15])+4.16666666666667*x[14]*x[9]*(x[4]+x[5])/x[10] == 0.0)
@NLconstraint(m, e13, -7.2*x[15]*x[10]+x[16] == 0.0)
@NLconstraint(m, e14, -6.76105093775776e-6*x[11]*x[10]+x[17] == 0.0)
@NLconstraint(m, e15, -13.9275766016713*sqrt(x[17])+x[18] == 4.0)
@NLconstraint(m, e16, -0.0114648324284722*x[2]/x[1]+x[19] == 0.0)
@constraint(m, e17, -0.281022225355218*x[2]+x[20] == 0.0)
@constraint(m, e18, -x[18]-x[19]-x[20]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.