using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-2*x[2]-3*x[3]-4*x[4]-5*x[5]-6*x[6] <= 0.0)
@constraint(m, e2, -2*x[1]-3*x[2]-4*x[3]-5*x[4]-6*x[5]-x[6] <= 0.0)
@constraint(m, e3, -3*x[1]-4*x[2]-5*x[3]-6*x[4]-x[5]-2*x[6] <= 0.0)
@constraint(m, e4, -4*x[1]-5*x[2]-6*x[3]-x[4]-2*x[5]-3*x[6] <= 0.0)
@constraint(m, e5, -5*x[1]-6*x[2]-x[3]-2*x[4]-3*x[5]-4*x[6] <= 0.0)
@constraint(m, e6, -6*x[1]-x[2]-2*x[3]-3*x[4]-4*x[5]-5*x[6] <= 0.0)
@constraint(m, e7, x[1]+2*x[2]+3*x[3]+4*x[4]+5*x[5]+6*x[6] <= 21.0)
@constraint(m, e8, 2*x[1]+3*x[2]+4*x[3]+5*x[4]+6*x[5]+x[6] <= 21.0)
@constraint(m, e9, 3*x[1]+4*x[2]+5*x[3]+6*x[4]+x[5]+2*x[6] <= 21.0)
@constraint(m, e10, 4*x[1]+5*x[2]+6*x[3]+x[4]+2*x[5]+3*x[6] <= 21.0)
@constraint(m, e11, 5*x[1]+6*x[2]+x[3]+2*x[4]+3*x[5]+4*x[6] <= 21.0)
@constraint(m, e12, 6*x[1]+x[2]+2*x[3]+3*x[4]+4*x[5]+5*x[6] <= 21.0)
@NLconstraint(m, e13, -(0.5*x[1]*x[2]-x[1]*x[1]+0.5*x[2]*x[1]-x[2]*x[2]+0.5*x[2]*x[3]+0.5*x[3]*x[2]-x[3]*x[3]+0.5*x[3]*x[4]+0.5*x[4]*x[3]-x[4]*x[4]+0.5*x[4]*x[5]+0.5*x[5]*x[4]-x[5]*x[5]+0.5*x[5]*x[6]+0.5*x[6]*x[5]-x[6]*x[6])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
