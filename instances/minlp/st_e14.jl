using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
UB = [10, 10, 10, 1, 1, 1, 1]
@variable(m, 0 <= x[i in x_Idx] <= UB[i])
b_Idx = Any[8, 9, 10, 11]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+b[8]+b[9]+b[10] <= 5.0)
@NLconstraint(m, e2,  (x[6])^2+ (x[1])^2+ (x[2])^2+ (x[3])^2 <= 5.5)
@constraint(m, e3, x[1]+b[8] <= 1.2)
@constraint(m, e4, x[2]+b[9] <= 1.8)
@constraint(m, e5, x[3]+b[10] <= 2.5)
@constraint(m, e6, x[1]+b[11] <= 1.2)
@NLconstraint(m, e7,  (x[5])^2+ (x[2])^2 <= 1.64)
@NLconstraint(m, e8,  (x[6])^2+ (x[3])^2 <= 4.25)
@NLconstraint(m, e9,  (x[5])^2+ (x[3])^2 <= 4.64)
@constraint(m, e10, x[4]-b[8] == 0.0)
@constraint(m, e11, x[5]-b[9] == 0.0)
@constraint(m, e12, x[6]-b[10] == 0.0)
@constraint(m, e13, x[7]-b[11] == 0.0)
@NLconstraint(m, e14, -( (x[4]-1)^2+ (x[5]-2)^2+ (x[6]-1)^2-log(1+x[7])+ (x[1]-1)^2+ (x[2]-2)^2+ (x[3]-3)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
