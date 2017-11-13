using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 99.0)
setupperbound(x[2], 99.0)
setupperbound(x[3], 99.0)
setupperbound(x[4], 99.0)
setupperbound(x[5], 99.0)
setupperbound(x[6], 99.0)


# ----- Constraints ----- #
@constraint(m, e1, -(10.5*x[1]-1.5* (x[1])^2- (x[2])^2-3.95*x[2]- (x[3])^2+3*x[3]-2* (x[4])^2+5*x[4]- (x[5])^2+1.5*x[5]-2.5* (x[6])^2-1.5*x[6])+x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[7])
m = m 		 # model get returned when including this script. 
