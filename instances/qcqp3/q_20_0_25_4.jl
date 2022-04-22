using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.8606*x[1]*x[7]-1.5214*x[1]*x[13]-0.857*x[1]*x[18]-0.0323*x[1]*x[19]+0.6069*x[2]*x[3]-1.8191*x[2]*x[5]-1.3141*x[2]*x[14]-1.9374*x[2]*x[15]-1.0349*x[3]*x[5]-1.1847*x[3]*x[14]-0.8833*x[3]*x[18]+1.9375*x[4]*x[10]-1.4687*x[4]*x[11]+0.6241*x[4]*x[16]+0.9252*x[4]*x[17]-1.0431*x[5]*x[9]+1.2732*x[5]*x[13]+1.453*x[5]*x[15]-1.2694*x[5]*x[20]+1.9347*x[6]*x[7]+1.8614*x[6]*x[8]-0.578*x[6]*x[10]+1.9722*x[6]*x[11]+0.8627*x[6]*x[13]-0.8735*x[6]*x[17]+0.0766*x[6]*x[18]-0.5563*x[7]*x[7]-0.0178*x[7]*x[13]-0.8027*x[7]*x[18]-1.2072*x[8]*x[14]+1.0573*x[8]*x[16]+1.5078*x[8]*x[20]-0.4703*x[9]*x[10]+1.3009*x[9]*x[13]-0.5384*x[9]*x[14]-1.2189*x[9]*x[15]+1.6277*x[10]*x[16]+0.8404*x[10]*x[17]-0.8749*x[10]*x[20]+0.1494*x[11]*x[17]+0.905*x[11]*x[20]-1.5572*x[12]*x[14]+0.7777*x[12]*x[15]-0.4113*x[12]*x[18]-1.5885*x[13]*x[13]+1.6402*x[13]*x[15]-0.5493*x[13]*x[20]-1.6398*x[14]*x[14]-0.5732*x[15]*x[15]+1.1426*x[16]*x[20]-1.6898*x[17]*x[18]-1.0276*x[19]*x[20]-0.6373*x[1]+0.6154*x[2]+0.1051*x[3]-0.0283*x[4]+0.0735*x[5]-0.9093*x[6]-0.7123*x[7]+0.5603*x[8]+0.5412*x[9]-0.6809*x[10]-0.0621*x[11]-0.674*x[12]+0.0977*x[13]-0.3899*x[14]-0.6912*x[15]+0.15*x[16]-0.7118*x[17]-0.6134*x[18]+0.3822*x[19]+0.9004*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
