using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[5]-x[9]-x[13]-x[17]-x[21] <= -29.0)
@constraint(m, e2, x[1]+x[5]+x[9]+x[13]+x[17]+x[21] <= 29.0)
@constraint(m, e3, -x[2]-x[6]-x[10]-x[14]-x[18]-x[22] <= -41.0)
@constraint(m, e4, x[2]+x[6]+x[10]+x[14]+x[18]+x[22] <= 41.0)
@constraint(m, e5, -x[3]-x[7]-x[11]-x[15]-x[19]-x[23] <= -13.0)
@constraint(m, e6, x[3]+x[7]+x[11]+x[15]+x[19]+x[23] <= 13.0)
@constraint(m, e7, -x[4]-x[8]-x[12]-x[16]-x[20]-x[24] <= -21.0)
@constraint(m, e8, x[4]+x[8]+x[12]+x[16]+x[20]+x[24] <= 21.0)
@constraint(m, e9, -x[1]-x[2]-x[3]-x[4] <= -8.0)
@constraint(m, e10, x[1]+x[2]+x[3]+x[4] <= 8.0)
@constraint(m, e11, -x[5]-x[6]-x[7]-x[8] <= -24.0)
@constraint(m, e12, x[5]+x[6]+x[7]+x[8] <= 24.0)
@constraint(m, e13, -x[9]-x[10]-x[11]-x[12] <= -20.0)
@constraint(m, e14, x[9]+x[10]+x[11]+x[12] <= 20.0)
@constraint(m, e15, -x[13]-x[14]-x[15]-x[16] <= -24.0)
@constraint(m, e16, x[13]+x[14]+x[15]+x[16] <= 24.0)
@constraint(m, e17, -x[17]-x[18]-x[19]-x[20] <= -16.0)
@constraint(m, e18, x[17]+x[18]+x[19]+x[20] <= 16.0)
@constraint(m, e19, -x[21]-x[22]-x[23]-x[24] <= -12.0)
@constraint(m, e20, x[21]+x[22]+x[23]+x[24] <= 12.0)
@NLconstraint(m, e21, -(300*x[1]-7* (x[1])^2-4* (x[2])^2+270*x[2]-6* (x[3])^2+460*x[3]-8* (x[4])^2+800*x[4]-12* (x[5])^2+740*x[5]-9* (x[6])^2+600*x[6]-14* (x[7])^2+540*x[7]-7* (x[8])^2+380*x[8]-13* (x[9])^2+300*x[9]-12* (x[10])^2+490*x[10]-8* (x[11])^2+380*x[11]-4* (x[12])^2+760*x[12]-7* (x[13])^2+430*x[13]-9* (x[14])^2+250*x[14]-16* (x[15])^2+390*x[15]-8* (x[16])^2+600*x[16]-4* (x[17])^2+210*x[17]-10* (x[18])^2+830*x[18]-21* (x[19])^2+470*x[19]-13* (x[20])^2+680*x[20]-17* (x[21])^2+360*x[21]-9* (x[22])^2+290*x[22]-8* (x[23])^2+400*x[23]-4* (x[24])^2+310*x[24])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.