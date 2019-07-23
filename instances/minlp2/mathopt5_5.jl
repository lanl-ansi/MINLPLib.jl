using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, -10 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sin(1+2*x[1])+2*sin(2+3*x[1])+3*sin(3+4*x[1])+4*sin(4+5*x[1])+5*sin(5+6*x[1]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
