using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
@variable(m, x[x_Idx])
set_lower_bound(x[18], 0.0)
set_lower_bound(x[16], -0.05)
set_upper_bound(x[16], -0.05)
set_lower_bound(x[17], 0.1)
set_upper_bound(x[17], 0.1)
set_lower_bound(x[18], 0.0)
set_upper_bound(x[18], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(8.39*x[13]*x[14]-0.727*x[12]*x[13]-684.4*x[14]*x[15]+63.5*x[14]*x[12])+x[1] == 0.0)
@NLconstraint(m, e2, -(0.949*x[11]*x[13]+0.173*x[11]*x[15])+x[2] == 0.0)
@NLconstraint(m, e3, -(-0.716*x[11]*x[12]-1.578*x[11]*x[14]+1.132*x[14]*x[12])+x[3] == 0.0)
@NLconstraint(m, e4, x[11]*x[15]+x[4] == 0.0)
@NLconstraint(m, e5, -x[11]*x[14]+x[5] == 0.0)
@constraint(m, e6, x[6]+3.933*x[11]-0.107*x[12]-0.126*x[13]+9.99*x[15]+45.83*x[17]+7.64*x[18] == 0.0)
@constraint(m, e7, x[7]+0.987*x[12]+22.95*x[14]+28.37*x[16] == 0.0)
@constraint(m, e8, x[8]-0.002*x[11]+0.235*x[13]-5.67*x[15]+0.921*x[17]+6.51*x[18] == 0.0)
@constraint(m, e9, x[9]-x[12]+x[14]+0.168*x[16] == 0.0)
@constraint(m, e10, x[10]+x[13]+0.196*x[15]+0.0071*x[17] == 0.0)
@NLconstraint(m, e11, -( (x[1]+x[6])^2+ (x[2]+x[7])^2+ (x[3]+x[8])^2+ (x[4]+x[9])^2+ (x[5]+x[10])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
