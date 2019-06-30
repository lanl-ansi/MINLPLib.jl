using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, 0 <= x[x_Idx] <= 10)
b_Idx = Any[4, 5, 6, 7]
@variable(m, b[b_Idx], Bin)

# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+b[4]+b[5]+b[6] <= 5.0)
@NLconstraint(m, e2,  (b[6])^2+ (x[1])^2+ (x[2])^2+ (x[3])^2 <= 5.5)
@constraint(m, e3, x[1]+b[4] <= 1.2)
@constraint(m, e4, x[2]+b[5] <= 1.8)
@constraint(m, e5, x[3]+b[6] <= 2.5)
@constraint(m, e6, x[1]+b[7] <= 1.2)
@NLconstraint(m, e7,  (b[5])^2+ (x[2])^2 <= 1.64)
@NLconstraint(m, e8,  (b[6])^2+ (x[3])^2 <= 4.25)
@NLconstraint(m, e9,  (b[5])^2+ (x[3])^2 <= 4.64)
@NLconstraint(m, e10, -( (b[4]-1)^2+ (b[5]-2)^2+ (b[6]-1)^2-log(1+b[7])+ (x[1]-1)^2+ (x[2]-2)^2+ (x[3]-3)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
