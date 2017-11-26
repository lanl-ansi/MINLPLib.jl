using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3]
@variable(m, i[i_Idx])
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 100.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.333333333333333*(0.545*(exp(0.25*i[2])+i[2])+0.55*(exp(0.25*i[3])+i[3])+7*exp(0.25*i[2])*i[2]+12*exp(0.25*i[3])*i[3])-(0.5*(1-0.1^i[2])*(1-0.05^i[3])+0.8*(1-0.55^i[2])*(1-0.5^i[3])+(1-0.8^i[2])*(1-0.8^i[3])))+x[1] == 0.0)
@NLconstraint(m, e2, -(0.333333333333333*(0.875*(exp(0.25*i[2])+i[2])+0.25*(exp(0.25*i[3])+i[3])+17*exp(0.25*i[2])*i[2]+10*exp(0.25*i[3])*i[3])-(0.5*(1-0.038^i[2])*(1-0.145^i[3])+0.8*(1-0.273^i[2])*(1-0.77^i[3])+(1-0.513^i[2])*(1-0.9^i[3])))+x[1] == 0.0)
@NLconstraint(m, e3, 0.545*(exp(0.25*i[2])+i[2])+0.55*(exp(0.25*i[3])+i[3]) <= 15.0)
@NLconstraint(m, e4, 0.875*(exp(0.25*i[2])+i[2])+0.25*(exp(0.25*i[3])+i[3]) <= 15.0)
@NLconstraint(m, e5, 7*exp(0.25*i[2])*i[2]+12*exp(0.25*i[3])*i[3] <= 500.0)
@NLconstraint(m, e6, 17*exp(0.25*i[2])*i[2]+10*exp(0.25*i[3])*i[3] <= 500.0)
@NLconstraint(m, e7, 0.5*(1-0.1^i[2])*(1-0.05^i[3])+0.8*(1-0.55^i[2])*(1-0.5^i[3])+(1-0.8^i[2])*(1-0.8^i[3]) >= 0.0)
@NLconstraint(m, e8, 0.5*(1-0.038^i[2])*(1-0.145^i[3])+0.8*(1-0.273^i[2])*(1-0.77^i[3])+(1-0.513^i[2])*(1-0.9^i[3]) >= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
