using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_upper_bound(x[4], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[5]+objvar == 0.0)
@NLconstraint(m, e2, 9.625*x[1]*x[4]-4*x[1]-78*x[4]+16*x[2]*x[4]-x[2]+16* (x[4])^2+x[3] == -12.0)
@NLconstraint(m, e3, 16*x[1]*x[4]-19*x[1]-24*x[4]-8*x[2]-x[3] == -44.0)
@constraint(m, e4, x[1]-0.25*x[5] <= 2.25)
@constraint(m, e5, -x[1]-0.25*x[5] <= -2.25)
@constraint(m, e6, -x[2]-0.5*x[5] <= -1.5)
@constraint(m, e7, x[2]-0.5*x[5] <= 1.5)
@constraint(m, e8, -x[3]-1.5*x[5] <= -1.5)
@constraint(m, e9, x[3]-1.5*x[5] <= 1.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
