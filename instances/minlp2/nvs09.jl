using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(i[1], 3.0)
set_upper_bound(i[1], 9.0)
set_lower_bound(i[2], 3.0)
set_upper_bound(i[2], 9.0)
set_lower_bound(i[3], 3.0)
set_upper_bound(i[3], 9.0)
set_lower_bound(i[4], 3.0)
set_upper_bound(i[4], 9.0)
set_lower_bound(i[5], 3.0)
set_upper_bound(i[5], 9.0)
set_lower_bound(i[6], 3.0)
set_upper_bound(i[6], 9.0)
set_lower_bound(i[7], 3.0)
set_upper_bound(i[7], 9.0)
set_lower_bound(i[8], 3.0)
set_upper_bound(i[8], 9.0)
set_lower_bound(i[9], 3.0)
set_upper_bound(i[9], 9.0)
set_lower_bound(i[10], 3.0)
set_upper_bound(i[10], 9.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (log(i[1]-2))^2+ (log(10-i[1]))^2+ (log(i[2]-2))^2+ (log(10-i[2]))^2+ (log(i[3]-2))^2+ (log(10-i[3]))^2+ (log(i[4]-2))^2+ (log(10-i[4]))^2+ (log(i[5]-2))^2+ (log(10-i[5]))^2+ (log(i[6]-2))^2+ (log(10-i[6]))^2+ (log(i[7]-2))^2+ (log(10-i[7]))^2+ (log(i[8]-2))^2+ (log(10-i[8]))^2+ (log(i[9]-2))^2+ (log(10-i[9]))^2+ (log(i[10]-2))^2+ (log(10-i[10]))^2-(i[1]*i[2]*i[3]*i[4]*i[5]*i[6]*i[7]*i[8]*i[9]*i[10])^0.2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.