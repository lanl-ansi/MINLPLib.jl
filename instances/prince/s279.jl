using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.71785714285714*x[1] >= 2.71785714285714)
@constraint(m, e2, 1.82896825396825*x[2] >= 1.82896825396825)
@constraint(m, e3, 1.42896825396825*x[3] >= 1.42896825396825)
@constraint(m, e4, 1.18654401154401*x[4] >= 1.18654401154401)
@constraint(m, e5, 1.01987734487734*x[5] >= 1.01987734487734)
@constraint(m, e6, 0.896800421800422*x[6] >= 0.896800421800422)
@constraint(m, e7, 0.801562326562327*x[7] >= 0.801562326562327)
@constraint(m, e8, 0.72537185037185*x[8] >= 0.72537185037185)
@constraint(m, e9, -2.71785714285714*x[1]-1.82896825396825*x[2]-1.42896825396825*x[3]-1.18654401154401*x[4]-1.01987734487734*x[5]-0.896800421800422*x[6]-0.801562326562327*x[7]-0.72537185037185*x[8]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
