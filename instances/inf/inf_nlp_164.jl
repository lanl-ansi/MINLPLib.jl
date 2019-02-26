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


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 0.0)
@NLconstraint(m, e2,  (x[11])^2+ (x[1])^2 == 1.0)
@NLconstraint(m, e3,  (x[12])^2+ (x[2])^2 == 4.0)
@NLconstraint(m, e4,  (x[13])^2+ (x[3])^2 == 9.0)
@NLconstraint(m, e5,  (x[14])^2+ (x[4])^2 == 16.0)
@NLconstraint(m, e6,  (x[15])^2+ (x[5])^2 == 25.0)
@NLconstraint(m, e7,  (x[16])^2+ (x[6])^2 == 36.0)
@NLconstraint(m, e8,  (x[17])^2+ (x[7])^2 == 49.0)
@NLconstraint(m, e9,  (x[18])^2+ (x[8])^2 == 64.0)
@NLconstraint(m, e10,  (x[19])^2+ (x[9])^2 == 81.0)
@NLconstraint(m, e11,  (x[20])^2+ (x[10])^2 == 100.0)
@constraint(m, e12, x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20] == 35.0)
@constraint(m, e13, -9.5*x[1]-8.5*x[2]-7.5*x[3]-6.5*x[4]-5.5*x[5]-4.5*x[6]-3.5*x[7]-2.5*x[8]-1.5*x[9]-0.5*x[10]+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.