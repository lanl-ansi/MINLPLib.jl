using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 3 <= i[i_Idx] <= 9, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (log(i[1]-2))^2+ (log(10-i[1]))^2+ (log(i[2]-2))^2+ (log(10-i[2]))^2+ (log(i[3]-2))^2+ (log(10-i[3]))^2+ (log(i[4]-2))^2+ (log(10-i[4]))^2+ (log(i[5]-2))^2+ (log(10-i[5]))^2+ (log(i[6]-2))^2+ (log(10-i[6]))^2+ (log(i[7]-2))^2+ (log(10-i[7]))^2+ (log(i[8]-2))^2+ (log(10-i[8]))^2+ (log(i[9]-2))^2+ (log(10-i[9]))^2+ (log(i[10]-2))^2+ (log(10-i[10]))^2-(i[1]*i[2]*i[3]*i[4]*i[5]*i[6]*i[7]*i[8]*i[9]*i[10])^0.2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
