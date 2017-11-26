using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setupperbound(x[1], 0.0)
setupperbound(x[1], -0.6)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[2]- (x[1])^2)^2+ (1-x[1])^2+100* (x[3]- (x[2])^2)^2+ (1-x[2])^2+100* (x[4]- (x[3])^2)^2+ (1-x[3])^2+100* (x[5]- (x[4])^2)^2+ (1-x[4])^2+100* (x[6]- (x[5])^2)^2+ (1-x[5])^2+100* (x[7]- (x[6])^2)^2+ (1-x[6])^2+100* (x[8]- (x[7])^2)^2+ (1-x[7])^2+100* (x[9]- (x[8])^2)^2+ (1-x[8])^2+100* (x[10]- (x[9])^2)^2+ (1-x[9])^2)+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
