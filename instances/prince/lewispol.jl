using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], -1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], -1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], 1.0)
set_lower_bound(x[7], -1.0)
set_upper_bound(x[7], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[2]+x[3]+x[4]+x[5]+x[6]+x[7] == -1.0)
@NLconstraint(m, e2,  (1+x[2]+x[3]+x[4]+x[5]+x[6]+x[7])^2 == 0.0)
@NLconstraint(m, e3,  (6+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7])^2 == 0.0)
@NLconstraint(m, e4,  (30+4*x[4]+9*x[5]+16*x[6]+25*x[7])^2 == 0.0)
@NLconstraint(m, e5, 0.001*( (x[2])^3-x[2])-x[1] <= 0.0)
@NLconstraint(m, e6, 0.001*( (x[3])^3-x[3])-x[1] <= 0.0)
@NLconstraint(m, e7, 0.001*( (x[4])^3-x[4])-x[1] <= 0.0)
@NLconstraint(m, e8, 0.001*( (x[5])^3-x[5])-x[1] <= 0.0)
@NLconstraint(m, e9, 0.001*( (x[6])^3-x[6])-x[1] <= 0.0)
@NLconstraint(m, e10, 0.001*( (x[7])^3-x[7])-x[1] <= 0.0)
@NLconstraint(m, e11, -( (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
