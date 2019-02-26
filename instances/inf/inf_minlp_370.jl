using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, b[b_Idx])
x_Idx = Any[7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_binary(b[3])
set_binary(b[4])
set_lower_bound(x[11], 0.0)
set_binary(b[2])
set_binary(b[6])
set_lower_bound(x[10], 0.0)
set_binary(b[5])
set_binary(b[1])
set_upper_bound(x[8], 2.0)
set_upper_bound(x[9], 2.0)
set_upper_bound(x[10], 2.0)
set_upper_bound(x[11], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(113.902929*b[1]*x[8]+110.73895875*b[2]*x[9]+8.56413*b[3]*x[10]*(13.3-(x[8]*b[1]+x[9]*b[2]))+8.3262375*b[4]*x[11]*(13.3-(x[8]*b[1]+x[9]*b[2]))+8.56413*b[5]*x[12]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4]))+8.3262375*b[6]*x[13]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])))+x[7] == 0.0)
@NLconstraint(m, e2, -(x[8]*b[1]+x[9]*b[2]) <= 4.7)
@NLconstraint(m, e3, -(x[8]*b[1]+x[9]*b[2]) >= -2.6)
@NLconstraint(m, e4, (-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4]) <= 4.7)
@NLconstraint(m, e5, (-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4]) >= -2.6)
@NLconstraint(m, e6, 113.902929*b[1]*x[8] <= 67.0)
@NLconstraint(m, e7, 113.902929*b[1]*x[8] >= 40.0)
@NLconstraint(m, e8, 110.73895875*b[2]*x[9] <= 67.0)
@NLconstraint(m, e9, 110.73895875*b[2]*x[9] >= 40.0)
@NLconstraint(m, e10, 8.56413*b[3]*x[10]*(13.3-(x[8]*b[1]+x[9]*b[2])) <= 67.0)
@NLconstraint(m, e11, 8.56413*b[3]*x[10]*(13.3-(x[8]*b[1]+x[9]*b[2])) >= 40.0)
@NLconstraint(m, e12, 8.3262375*b[4]*x[11]*(13.3-(x[8]*b[1]+x[9]*b[2])) <= 67.0)
@NLconstraint(m, e13, 8.3262375*b[4]*x[11]*(13.3-(x[8]*b[1]+x[9]*b[2])) >= 40.0)
@NLconstraint(m, e14, 8.56413*b[5]*x[12]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) <= 67.0)
@NLconstraint(m, e15, 8.56413*b[5]*x[12]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) >= 40.0)
@NLconstraint(m, e16, 8.3262375*b[6]*x[13]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) <= 67.0)
@NLconstraint(m, e17, 8.3262375*b[6]*x[13]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) >= 40.0)
@NLconstraint(m, e18, -16.4475829476*b[1]*x[8] >= -8.1748)
@NLconstraint(m, e19, -15.9907056435*b[2]*x[9] <= -8.1748)
@NLconstraint(m, e20, -15.9907056435*b[2]*x[9] >= -9.6748)
@NLconstraint(m, e21, (-(x[8]*b[1]+x[9]*b[2]))-1.236660372*b[3]*x[10]*(13.3-(x[8]*b[1]+x[9]*b[2])) >= -8.1748)
@NLconstraint(m, e22, (-(x[8]*b[1]+x[9]*b[2]))-1.202308695*b[4]*x[11]*(13.3-(x[8]*b[1]+x[9]*b[2])) <= -8.1748)
@NLconstraint(m, e23, (-(x[8]*b[1]+x[9]*b[2]))-1.202308695*b[4]*x[11]*(13.3-(x[8]*b[1]+x[9]*b[2])) >= -9.6748)
@NLconstraint(m, e24, (-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])-1.236660372*b[5]*x[12]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) >= -8.1748)
@NLconstraint(m, e25, (-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])-1.202308695*b[6]*x[13]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) <= -8.1748)
@NLconstraint(m, e26, (-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])-1.202308695*b[6]*x[13]*(13.3+(-(x[8]*b[1]+x[9]*b[2]))-(x[10]*b[3]+x[11]*b[4])) >= -9.6748)
@constraint(m, e27, b[1]+b[2] <= 1.0)
@constraint(m, e28, b[3]+b[4] <= 1.0)
@constraint(m, e29, b[5]+b[6] <= 1.0)


# ----- Objective ----- #
@objective(m, Max, x[7])

m = m 		 # model get returned when including this script.