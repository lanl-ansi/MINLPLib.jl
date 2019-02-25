using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[11], 0.0)
set_upper_bound(x[11], 0.0)
set_lower_bound(x[21], 2.0)
set_upper_bound(x[21], 2.0)
set_lower_bound(x[22], 0.0)
set_upper_bound(x[22], 0.0)
set_lower_bound(x[32], -1.0)
set_upper_bound(x[32], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt( (x[12]-x[11])^2+ (x[23]-x[22])^2)-x[1] <= 0.447213595499958)
@NLconstraint(m, e2, sqrt( (x[13]-x[12])^2+ (x[24]-x[23])^2)-x[2] <= 0.447213595499958)
@NLconstraint(m, e3, sqrt( (x[14]-x[13])^2+ (x[25]-x[24])^2)-x[3] <= 0.447213595499958)
@NLconstraint(m, e4, sqrt( (x[15]-x[14])^2+ (x[26]-x[25])^2)-x[4] <= 0.447213595499958)
@NLconstraint(m, e5, sqrt( (x[16]-x[15])^2+ (x[27]-x[26])^2)-x[5] <= 0.447213595499958)
@NLconstraint(m, e6, sqrt( (x[17]-x[16])^2+ (x[28]-x[27])^2)-x[6] <= 0.447213595499958)
@NLconstraint(m, e7, sqrt( (x[18]-x[17])^2+ (x[29]-x[28])^2)-x[7] <= 0.447213595499958)
@NLconstraint(m, e8, sqrt( (x[19]-x[18])^2+ (x[30]-x[29])^2)-x[8] <= 0.447213595499958)
@NLconstraint(m, e9, sqrt( (x[20]-x[19])^2+ (x[31]-x[30])^2)-x[9] <= 0.447213595499958)
@NLconstraint(m, e10, sqrt( (x[21]-x[20])^2+ (x[32]-x[31])^2)-x[10] <= 0.447213595499958)
@NLconstraint(m, e11, -50*( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2)-9.8*x[23]-9.8*x[24]-9.8*x[25]-9.8*x[26]-9.8*x[27]-9.8*x[28]-9.8*x[29]-9.8*x[30]-9.8*x[31]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.