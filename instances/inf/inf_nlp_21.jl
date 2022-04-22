using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], -1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], -1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], 1.0)
set_lower_bound(x[7], -1.0)
set_upper_bound(x[7], 1.0)
set_lower_bound(x[8], -1.0)
set_upper_bound(x[8], 1.0)
set_lower_bound(x[9], -1.0)
set_upper_bound(x[9], 1.0)
set_lower_bound(x[10], -1.0)
set_upper_bound(x[10], 1.0)
set_lower_bound(x[11], -1.0)
set_upper_bound(x[11], 1.0)
set_lower_bound(x[12], -1.0)
set_upper_bound(x[12], 1.0)
set_lower_bound(x[13], -1.0)
set_upper_bound(x[13], 1.0)
set_lower_bound(x[14], -1.0)
set_upper_bound(x[14], 1.0)
set_lower_bound(x[15], -1.0)
set_upper_bound(x[15], 1.0)
set_lower_bound(x[16], -1.0)
set_upper_bound(x[16], 1.0)
set_lower_bound(x[17], -1.0)
set_upper_bound(x[17], 1.0)
set_lower_bound(x[18], -1.0)
set_upper_bound(x[18], 1.0)
set_lower_bound(x[19], -1.0)
set_upper_bound(x[19], 1.0)
set_lower_bound(x[20], -1.0)
set_upper_bound(x[20], 1.0)
set_lower_bound(x[21], -1.0)
set_upper_bound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*x[2]-x[12]*x[12]+2*x[2]*x[4]+2*x[12]*x[14]+2*x[3]*x[5]+2*x[13]*x[15]+2*x[4]*x[6]+2*x[14]*x[16]+2*x[5]*x[7]+2*x[15]*x[17]+2*x[8]*x[6]+2*x[18]*x[16]+2*x[9]*x[7]+2*x[19]*x[17]+2*x[10]*x[8]+2*x[20]*x[18]+2*x[11]*x[9]+2*x[21]*x[19]+2*x[10]+x[11]*x[11]-x[21]*x[21]-2*x[1]*x[3] == 0.0)
@NLconstraint(m, e2, 2*x[2]*x[4]-2*x[12]*x[14]+x[3]*x[3]-x[13]*x[13]+2*x[2]*x[6]+2*x[12]*x[16]+2*x[3]*x[7]+2*x[13]*x[17]+2*x[4]*x[8]+2*x[14]*x[18]+2*x[9]*x[5]+2*x[19]*x[15]+2*x[10]*x[6]+2*x[20]*x[16]+2*x[11]*x[7]+2*x[21]*x[17]+2*x[8]+2*x[11]*x[9]-2*x[21]*x[19]+x[10]*x[10]-x[20]*x[20]-2*x[1]*x[5] == 0.0)
@NLconstraint(m, e3, 2*x[2]*x[6]-2*x[12]*x[16]+2*x[3]*x[5]-2*x[13]*x[15]+x[4]*x[4]-x[14]*x[14]+2*x[2]*x[8]+2*x[12]*x[18]+2*x[3]*x[9]+2*x[13]*x[19]+2*x[10]*x[4]+2*x[20]*x[14]+2*x[11]*x[5]+2*x[21]*x[15]+2*x[6]+2*x[11]*x[7]-2*x[21]*x[17]+2*x[10]*x[8]-2*x[20]*x[18]+x[9]*x[9]-x[19]*x[19]-2*x[1]*x[7] == 0.0)
@NLconstraint(m, e4, 2*x[2]*x[8]-2*x[12]*x[18]+2*x[3]*x[7]-2*x[13]*x[17]+2*x[4]*x[6]-2*x[14]*x[16]+x[5]*x[5]-x[15]*x[15]+2*x[2]*x[10]+2*x[12]*x[20]+2*x[11]*x[3]+2*x[21]*x[13]+2*x[4]+2*x[11]*x[5]-2*x[21]*x[15]+2*x[10]*x[6]-2*x[20]*x[16]+2*x[9]*x[7]-2*x[19]*x[17]+x[8]*x[8]-x[18]*x[18]-2*x[1]*x[9] == 0.0)
@NLconstraint(m, e5, 2*x[2]*x[10]-2*x[12]*x[20]+2*x[3]*x[9]-2*x[13]*x[19]+2*x[4]*x[8]-2*x[14]*x[18]+2*x[5]*x[7]-2*x[15]*x[17]+x[6]*x[6]-x[16]*x[16]+2*x[2]+2*x[11]*x[3]-2*x[21]*x[13]+2*x[10]*x[4]-2*x[20]*x[14]+2*x[9]*x[5]-2*x[19]*x[15]+2*x[8]*x[6]-2*x[18]*x[16]+x[7]*x[7]-x[17]*x[17]-2*x[1]*x[11] == 0.0)
@NLconstraint(m, e6, 2*x[2]*x[12]-2*x[12]*x[4]+2*x[2]*x[14]-2*x[13]*x[5]+2*x[3]*x[15]-2*x[14]*x[6]+2*x[4]*x[16]-2*x[15]*x[7]+2*x[5]*x[17]-2*x[8]*x[16]+2*x[18]*x[6]-2*x[9]*x[17]+2*x[19]*x[7]-2*x[10]*x[18]+2*x[20]*x[8]-2*x[11]*x[19]+2*x[21]*x[9]-2*x[20]-2*x[11]*x[21]-2*x[1]*x[13] == 0.0)
@NLconstraint(m, e7, 2*x[2]*x[14]+2*x[12]*x[4]+2*x[3]*x[13]-2*x[12]*x[6]+2*x[2]*x[16]-2*x[13]*x[7]+2*x[3]*x[17]-2*x[14]*x[8]+2*x[4]*x[18]-2*x[9]*x[15]+2*x[19]*x[5]-2*x[10]*x[16]+2*x[20]*x[6]-2*x[11]*x[17]+2*x[21]*x[7]-2*x[18]-2*x[11]*x[19]-2*x[21]*x[9]-2*x[10]*x[20]-2*x[1]*x[15] == 0.0)
@NLconstraint(m, e8, 2*x[2]*x[16]+2*x[12]*x[6]+2*x[3]*x[15]+2*x[13]*x[5]+2*x[4]*x[14]-2*x[12]*x[8]+2*x[2]*x[18]-2*x[13]*x[9]+2*x[3]*x[19]-2*x[10]*x[14]+2*x[20]*x[4]-2*x[11]*x[15]+2*x[21]*x[5]-2*x[16]-2*x[11]*x[17]-2*x[21]*x[7]-2*x[10]*x[18]-2*x[20]*x[8]-2*x[9]*x[19]-2*x[1]*x[17] == 0.0)
@NLconstraint(m, e9, 2*x[2]*x[18]+2*x[12]*x[8]+2*x[3]*x[17]+2*x[13]*x[7]+2*x[4]*x[16]+2*x[14]*x[6]+2*x[5]*x[15]-2*x[12]*x[10]+2*x[2]*x[20]-2*x[11]*x[13]+2*x[21]*x[3]-2*x[14]-2*x[11]*x[15]-2*x[21]*x[5]-2*x[10]*x[16]-2*x[20]*x[6]-2*x[9]*x[17]-2*x[19]*x[7]-2*x[8]*x[18]-2*x[1]*x[19] == 0.0)
@NLconstraint(m, e10, 2*x[2]*x[20]+2*x[12]*x[10]+2*x[3]*x[19]+2*x[13]*x[9]+2*x[4]*x[18]+2*x[14]*x[8]+2*x[5]*x[17]+2*x[15]*x[7]+2*x[6]*x[16]-2*x[12]-2*x[11]*x[13]-2*x[21]*x[3]-2*x[10]*x[14]-2*x[20]*x[4]-2*x[9]*x[15]-2*x[19]*x[5]-2*x[8]*x[16]-2*x[18]*x[6]-2*x[7]*x[17]-2*x[1]*x[21] == 0.0)
@NLconstraint(m, e11, x[2]*x[2]+x[12]*x[12] == 1.0)
@NLconstraint(m, e12, x[3]*x[3]+x[13]*x[13] == 1.0)
@NLconstraint(m, e13, x[4]*x[4]+x[14]*x[14] == 1.0)
@NLconstraint(m, e14, x[5]*x[5]+x[15]*x[15] == 1.0)
@NLconstraint(m, e15, x[6]*x[6]+x[16]*x[16] == 1.0)
@NLconstraint(m, e16, x[7]*x[7]+x[17]*x[17] == 1.0)
@NLconstraint(m, e17, x[8]*x[8]+x[18]*x[18] == 1.0)
@NLconstraint(m, e18, x[9]*x[9]+x[19]*x[19] == 1.0)
@NLconstraint(m, e19, x[10]*x[10]+x[20]*x[20] == 1.0)
@NLconstraint(m, e20, x[11]*x[11]+x[21]*x[21] == 1.0)
@NLconstraint(m, e21, x[2]*x[11]+x[12]*x[21]+0.839071529076452*x[3]-0.54402111088937*x[13] == 0.0)
@NLconstraint(m, e22, x[3]*x[10]+x[13]*x[20]-0.408082061813392*x[5]+0.912945250727628*x[15] == 0.0)
@NLconstraint(m, e23, x[4]*x[9]+x[14]*x[19]-0.154251449887584*x[7]-0.988031624092862*x[17] == 0.0)
@NLconstraint(m, e24, x[5]*x[8]+x[15]*x[18]+0.666938061652262*x[9]+0.745113160479349*x[19] == 0.0)
@NLconstraint(m, e25, x[6]*x[7]+x[16]*x[17]-0.964966028492113*x[11]-0.262374853703929*x[21] == 0.0)
@NLconstraint(m, e26, x[6]*x[7]+x[16]*x[17]+0.952412980415156*x[11]+0.304810621102217*x[21] == 0.0)
@NLconstraint(m, e27, x[5]*x[8]+x[15]*x[18]-0.6333192030863*x[9]-0.773890681557889*x[19] == 0.0)
@NLconstraint(m, e28, x[4]*x[9]+x[14]*x[19]+0.110387243839048*x[7]+0.993888653923375*x[17] == 0.0)
@NLconstraint(m, e29, x[3]*x[10]+x[13]*x[20]+0.44807361612917*x[5]-0.893996663600558*x[15] == 0.0)
@NLconstraint(m, e30, x[2]*x[11]+x[12]*x[21]-0.862318872287684*x[3]+0.506365641109759*x[13] == 0.0)
@NLconstraint(m, e31, x[11]*x[12]-x[2]*x[21]+0.54402111088937*x[3]+8.39071529076452*x[13] == 0.0)
@NLconstraint(m, e32, x[10]*x[13]-x[3]*x[20]-4.08082061813392*x[13]-0.912945250727628*x[5] == 0.0)
@NLconstraint(m, e33, x[9]*x[14]-x[4]*x[19]+0.988031624092862*x[7]-1.54251449887584*x[13] == 0.0)
@NLconstraint(m, e34, x[8]*x[15]-x[5]*x[18]-0.745113160479349*x[9]+6.66938061652262*x[13] == 0.0)
@NLconstraint(m, e35, x[7]*x[16]-x[6]*x[17]+0.262374853703929*x[11]-9.64966028492113*x[13] == 0.0)
@NLconstraint(m, e36, x[6]*x[17]-x[7]*x[16]+0.304810621102217*x[11]+9.52412980415156*x[13] == 0.0)
@NLconstraint(m, e37, x[5]*x[18]-x[8]*x[15]-0.773890681557889*x[9]-6.333192030863*x[13] == 0.0)
@NLconstraint(m, e38, x[4]*x[19]-x[9]*x[14]+0.993888653923375*x[7]+1.10387243839048*x[13] == 0.0)
@NLconstraint(m, e39, x[3]*x[20]-x[10]*x[13]+4.4807361612917*x[13]-0.893996663600558*x[5] == 0.0)
@NLconstraint(m, e40, x[2]*x[21]-x[11]*x[12]+0.506365641109759*x[3]-8.62318872287684*x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
