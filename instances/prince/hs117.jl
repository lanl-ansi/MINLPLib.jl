using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 12* (x[11])^2+60*x[11]+16*x[1]+3.5*x[3]-2*x[6]+x[7]+x[8]-x[9]-x[10]-40*x[12]-20*x[13]+64*x[14]-20*x[15] >= 15.0)
@NLconstraint(m, e2, 24* (x[12])^2+78*x[12]-2*x[1]+2*x[2]+2*x[4]+9*x[5]+x[7]+2*x[8]-2*x[9]-x[10]-40*x[11]-12*x[13]-62*x[14]+64*x[15] >= 27.0)
@NLconstraint(m, e3, 30* (x[13])^2+20*x[13]-2*x[3]+2*x[5]+4*x[6]+x[7]+3*x[8]-3*x[9]-x[10]-20*x[11]-12*x[12]-12*x[14]-20*x[15] >= 36.0)
@NLconstraint(m, e4, 18* (x[14])^2+78*x[14]-x[1]-4*x[2]+4*x[4]-x[5]+x[7]+2*x[8]-4*x[9]-x[10]+64*x[11]-62*x[12]-12*x[13]-40*x[15] >= 18.0)
@NLconstraint(m, e5, 6* (x[15])^2+60*x[15]-2*x[2]+x[4]+2.8*x[5]+x[7]+x[8]-5*x[9]-x[10]-20*x[11]+64*x[12]-20*x[13]-40*x[14] >= 12.0)
@NLconstraint(m, e6, -(30*x[11]*x[11]-20*x[12]*x[11]-10*x[13]*x[11]+32*x[14]*x[11]-10*x[15]*x[11]+39*x[12]*x[12]-20*x[11]*x[12]-6*x[13]*x[12]-31*x[14]*x[12]+32*x[15]*x[12]+(-10*x[11]*x[13])-6*x[12]*x[13]+10*x[13]*x[13]-6*x[14]*x[13]-10*x[15]*x[13]+32*x[11]*x[14]-31*x[12]*x[14]-6*x[13]*x[14]+39*x[14]*x[14]-20*x[15]*x[14]+32*x[12]*x[15]-10*x[11]*x[15]-10*x[13]*x[15]-20*x[14]*x[15]+30*x[15]*x[15]+8* (x[11])^3+16* (x[12])^3+20* (x[13])^3+12* (x[14])^3+4* (x[15])^3)-40*x[1]-2*x[2]-0.25*x[3]-4*x[4]-4*x[5]-x[6]-40*x[7]-60*x[8]+5*x[9]+x[10]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.