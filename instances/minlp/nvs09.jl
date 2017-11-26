using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setlowerbound(i[8], 0.0)
setupperbound(i[8], 100.0)
setcategory(i[5], :Int)
setlowerbound(i[5], 0.0)
setupperbound(i[5], 100.0)
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setcategory(i[7], :Int)
setlowerbound(i[7], 0.0)
setupperbound(i[7], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[9], :Int)
setlowerbound(i[9], 0.0)
setupperbound(i[9], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[10], :Int)
setlowerbound(i[10], 0.0)
setupperbound(i[10], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setcategory(i[6], :Int)
setlowerbound(i[6], 0.0)
setupperbound(i[6], 100.0)
setlowerbound(i[1], 3.0)
setupperbound(i[1], 9.0)
setlowerbound(i[2], 3.0)
setupperbound(i[2], 9.0)
setlowerbound(i[3], 3.0)
setupperbound(i[3], 9.0)
setlowerbound(i[4], 3.0)
setupperbound(i[4], 9.0)
setlowerbound(i[5], 3.0)
setupperbound(i[5], 9.0)
setlowerbound(i[6], 3.0)
setupperbound(i[6], 9.0)
setlowerbound(i[7], 3.0)
setupperbound(i[7], 9.0)
setlowerbound(i[8], 3.0)
setupperbound(i[8], 9.0)
setlowerbound(i[9], 3.0)
setupperbound(i[9], 9.0)
setlowerbound(i[10], 3.0)
setupperbound(i[10], 9.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (log(i[1]-2))^2+ (log(10-i[1]))^2+ (log(i[2]-2))^2+ (log(10-i[2]))^2+ (log(i[3]-2))^2+ (log(10-i[3]))^2+ (log(i[4]-2))^2+ (log(10-i[4]))^2+ (log(i[5]-2))^2+ (log(10-i[5]))^2+ (log(i[6]-2))^2+ (log(10-i[6]))^2+ (log(i[7]-2))^2+ (log(10-i[7]))^2+ (log(i[8]-2))^2+ (log(10-i[8]))^2+ (log(i[9]-2))^2+ (log(10-i[9]))^2+ (log(i[10]-2))^2+ (log(10-i[10]))^2-(i[1]*i[2]*i[3]*i[4]*i[5]*i[6]*i[7]*i[8]*i[9]*i[10])^0.2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
