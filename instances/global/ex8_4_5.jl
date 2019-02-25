using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1757)
set_upper_bound(x[1], 0.2157)
set_lower_bound(x[2], 0.1747)
set_upper_bound(x[2], 0.2147)
set_lower_bound(x[3], 0.1535)
set_upper_bound(x[3], 0.1935)
set_lower_bound(x[4], 0.14)
set_upper_bound(x[4], 0.18)
set_lower_bound(x[5], 0.0644)
set_upper_bound(x[5], 0.1044)
set_lower_bound(x[6], 0.0427)
set_upper_bound(x[6], 0.0827)
set_lower_bound(x[7], 0.0256)
set_upper_bound(x[7], 0.0656)
set_lower_bound(x[8], 0.0142)
set_upper_bound(x[8], 0.0542)
set_lower_bound(x[9], 0.0123)
set_upper_bound(x[9], 0.0523)
set_lower_bound(x[10], 0.0035)
set_upper_bound(x[10], 0.0435)
set_lower_bound(x[11], 0.0046)
set_upper_bound(x[11], 0.0446)
set_lower_bound(x[12], -0.2892)
set_upper_bound(x[12], 0.2893)
set_lower_bound(x[13], -0.2892)
set_upper_bound(x[13], 0.2893)
set_lower_bound(x[14], -0.2892)
set_upper_bound(x[14], 0.2893)
set_lower_bound(x[15], -0.2892)
set_upper_bound(x[15], 0.2893)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]-0.1957)^2+ (x[2]-0.1947)^2+ (x[3]-0.1735)^2+ (x[4]-0.16)^2+ (x[5]-0.0844)^2+ (x[6]-0.0627)^2+ (x[7]-0.0456)^2+ (x[8]-0.0342)^2+ (x[9]-0.0323)^2+ (x[10]-0.0235)^2+ (x[11]-0.0246)^2)+objvar == 0.0)
@NLconstraint(m, e2, x[12]*(16+4*x[13])/(16+4*x[14]+x[15])-x[1] == 0.0)
@NLconstraint(m, e3, x[12]*(4+2*x[13])/(4+2*x[14]+x[15])-x[2] == 0.0)
@NLconstraint(m, e4, x[12]*(1+x[13])/(1+x[14]+x[15])-x[3] == 0.0)
@NLconstraint(m, e5, x[12]*(0.25+0.5*x[13])/(0.25+0.5*x[14]+x[15])-x[4] == 0.0)
@NLconstraint(m, e6, x[12]*(0.0625+0.25*x[13])/(0.0625+0.25*x[14]+x[15])-x[5] == 0.0)
@NLconstraint(m, e7, x[12]*(0.0277777777777778+0.166666666666667*x[13])/(0.0277777777777778+0.166666666666667*x[14]+x[15])-x[6] == 0.0)
@NLconstraint(m, e8, x[12]*(0.015625+0.125*x[13])/(0.015625+0.125*x[14]+x[15])-x[7] == 0.0)
@NLconstraint(m, e9, x[12]*(0.01+0.1*x[13])/(0.01+0.1*x[14]+x[15])-x[8] == 0.0)
@NLconstraint(m, e10, x[12]*(0.00694444444444444+0.0833333333333333*x[13])/(0.00694444444444444+0.0833333333333333*x[14]+x[15])-x[9] == 0.0)
@NLconstraint(m, e11, x[12]*(0.00510204081632653+0.0714285714285714*x[13])/(0.00510204081632653+0.0714285714285714*x[14]+x[15])-x[10] == 0.0)
@NLconstraint(m, e12, x[12]*(0.00390625+0.0625*x[13])/(0.00390625+0.0625*x[14]+x[15])-x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.