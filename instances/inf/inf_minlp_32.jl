using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
b_Idx = Any[10, 11, 12, 13]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[2], 81.09)
set_upper_bound(x[2], 81.09)
set_lower_bound(x[3], 23.92)
set_upper_bound(x[3], 23.92)
set_lower_bound(x[4], 6.29)
set_upper_bound(x[4], 6.29)
set_lower_bound(x[5], 38.7)
set_upper_bound(x[5], 38.7)
set_lower_bound(x[6], 134.74)
set_upper_bound(x[6], 134.74)
set_lower_bound(x[7], 48.2)
set_upper_bound(x[7], 48.2)
set_lower_bound(x[8], 16.23)
set_upper_bound(x[8], 16.23)
set_lower_bound(x[9], 100.85)
set_upper_bound(x[9], 100.85)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.00172* (x[6])^2+7.6997*x[6]+0.000115* (x[6])^2*x[6]+0.0435* (x[7])^2+36*x[7]+0.027* (x[2])^2+0.6*x[2]+0.011*x[7]*x[2]+0.1035* (x[8])^2+34.5*x[8]+0.025* (x[3])^2+2.203*x[3]+0.051*x[8]*x[3]+0.072* (x[9])^2+20*x[9]+0.02* (x[4])^2+2.3*x[4]+0.04*x[9]*x[4]+0.038* (x[5])^2+2.0109*x[5])+x[1] == 6669.8863)
@constraint(m, e2, x[6]+x[7]+x[8]+x[9] == 300.0)
@constraint(m, e3, x[2]+x[3]+x[4]+x[5] == 150.0)
@constraint(m, e4, 0.272727272727273*x[3]+x[8] <= 60.0)
@constraint(m, e5, -2.33333333333333*x[3]+x[8] >= -83.333)
@constraint(m, e6, 0.25*x[3]+x[8] >= 20.0)
@NLconstraint(m, e7, b[10]*x[7]-125.8*b[10] <= 0.0)
@constraint(m, e8, b[10]+b[11] == 1.0)
@NLconstraint(m, e9, b[10]*x[2]-15.9*b[10] <= 0.0)
@NLconstraint(m, e10, b[10]*x[7]-44*b[10] >= 0.0)
@NLconstraint(m, e11, b[11]*x[7]-125.8*b[11] <= 0.0)
@NLconstraint(m, e12, b[11]*x[7]+0.151162790697674*b[11]*x[2]-130.698*b[11] <= 0.0)
@NLconstraint(m, e13, b[11]*x[7]-1.16611295681063*b[11]*x[2]+46.881*b[11] >= 0.0)
@NLconstraint(m, e14, b[11]*x[7]+0.0676818950930626*b[11]*x[2]-45.076*b[11] >= 0.0)
@NLconstraint(m, e15, b[11]*x[2]-15.9*b[11] >= 0.0)
@constraint(m, e16, b[12]+b[13] == 1.0)
@NLconstraint(m, e17, b[12]*x[9]-90*b[12] >= 0.0)
@NLconstraint(m, e18, b[12]*x[9]+0.6*b[12]*x[4]-105*b[12] <= 0.0)
@NLconstraint(m, e19, b[13]*x[9]-90*b[13] <= 0.0)
@NLconstraint(m, e20, b[13]*x[9]-35*b[13] >= 0.0)
@NLconstraint(m, e21, b[13]*x[9]-2.2*b[13]*x[4]+9*b[13] >= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
