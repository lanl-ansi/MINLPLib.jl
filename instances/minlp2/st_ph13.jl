using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1] <= 4.0)
@constraint(m, e2, x[2] <= 4.0)
@constraint(m, e3, x[3] <= 4.0)
@constraint(m, e4, 2*x[1]+3*x[2]+4*x[3] <= 35.0)
@constraint(m, e5, 2*x[1]+3*x[2]-4*x[3] <= 19.0)
@constraint(m, e6, 2*x[1]-3*x[2]+4*x[3] <= 23.0)
@constraint(m, e7, -2*x[1]+3*x[2]+4*x[3] <= 27.0)
@constraint(m, e8, 2*x[1]-3*x[2]-4*x[3] <= 7.0)
@constraint(m, e9, -2*x[1]-3*x[2]+4*x[3] <= 15.0)
@constraint(m, e10, -2*x[1]+3*x[2]-4*x[3] <= 11.0)
@NLconstraint(m, e11, -(x[1]-0.5* (x[1])^2-0.5* (x[2])^2+x[2]-0.5* (x[3])^2+x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
