using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.92896825396825*x[1] >= 2.92896825396825)
@constraint(m, e2, 2.01987734487735*x[2] >= 2.01987734487735)
@constraint(m, e3, 1.60321067821068*x[3] >= 1.60321067821068)
@constraint(m, e4, 1.34680042180042*x[4] >= 1.34680042180042)
@constraint(m, e5, 1.16822899322899*x[5] >= 1.16822899322899)
@constraint(m, e6, 1.03489565989566*x[6] >= 1.03489565989566)
@constraint(m, e7, 0.930728993228993*x[7] >= 0.930728993228993)
@constraint(m, e8, 0.846695379783615*x[8] >= 0.846695379783615)
@constraint(m, e9, 0.777250935339171*x[9] >= 0.777250935339171)
@constraint(m, e10, 0.718771403175428*x[10] >= 0.718771403175428)
@constraint(m, e11, -2.92896825396825*x[1]-2.01987734487735*x[2]-1.60321067821068*x[3]-1.34680042180042*x[4]-1.16822899322899*x[5]-1.03489565989566*x[6]-0.930728993228993*x[7]-0.846695379783615*x[8]-0.777250935339171*x[9]-0.718771403175428*x[10]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
