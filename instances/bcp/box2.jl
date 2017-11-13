using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], -1000.0)
setlowerbound(x[3], 1.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (exp(-0.1*x[1])-exp(-0.1*x[2])-0.536957976864517*x[3])^2+ (exp(-0.2*x[1])-exp(-0.2*x[2])-0.683395469841369*x[3])^2+ (exp(-0.3*x[1])-exp(-0.3*x[2])-0.691031152313854*x[3])^2+ (exp(-0.4*x[1])-exp(-0.4*x[2])-0.652004407146905*x[3])^2+ (exp(-0.5*x[1])-exp(-0.5*x[2])-0.599792712713548*x[3])^2+ (exp(-0.6*x[1])-exp(-0.6*x[2])-0.54633288391736*x[3])^2+ (exp(-0.7*x[1])-exp(-0.7*x[2])-0.495673421825855*x[3])^2+ (exp(-0.8*x[1])-exp(-0.8*x[2])-0.448993501489319*x[3])^2+ (exp(-0.9*x[1])-exp(-0.9*x[2])-0.406446249936512*x[3])^2+ (exp(-x[1])-exp(-x[2])-0.36783404124168*x[3])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
