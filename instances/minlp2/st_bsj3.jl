using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, 0 <= x[x_Idx] <= 99)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]+x[6] <= 1.0e10)
@NLconstraint(m, e2, -(10.5*x[1]-1.5* (x[1])^2- (x[2])^2-3.95*x[2]- (x[3])^2+3*x[3]-2* (x[4])^2+5*x[4]- (x[5])^2+1.5*x[5]-2.5* (x[6])^2-1.5*x[6])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
