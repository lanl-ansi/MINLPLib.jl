using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5]
@variable(m, i[i_Idx])
setcategory(i[5], :Int)
setlowerbound(i[5], 0.0)
setupperbound(i[5], 100.0)
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[12], 0.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 10.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 10.0)
setlowerbound(i[4], 1.0)
setupperbound(i[4], 10.0)
setlowerbound(i[5], 1.0)
setupperbound(i[5], 10.0)
setlowerbound(x[6], 0.5)
setupperbound(x[6], 0.99999)
setlowerbound(x[7], 0.5)
setupperbound(x[7], 0.99999)
setlowerbound(x[8], 0.5)
setupperbound(x[8], 0.99999)
setlowerbound(x[9], 0.5)
setupperbound(x[9], 0.99999)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*x[10]^5+0.25*x[11]^5+0.25*x[12]^5)^0.2+x[1] == 0.0)
@NLconstraint(m, e2, 8000000000*(6*exp(0.25*i[2])*i[2]+6*exp(0.25*i[3])*i[3]+8*exp(0.25*i[4])*i[4]+7*exp(0.25*i[5])*i[5])-x[10] <= 500.0)
@NLconstraint(m, e3, 100000*(-1000/log(x[6]))^1.5*(exp(0.25*i[2])+i[2])+230000*(-1000/log(x[7]))^1.5*(exp(0.25*i[3])+i[3])+30000*(-1000/log(x[8]))^1.5*(exp(0.25*i[4])+i[4])+230000*(-1000/log(x[9]))^1.5*(exp(0.25*i[5])+i[5])-x[11] <= 4.0e12)
@NLconstraint(m, e4, 5333333333333.33*(1-(1-x[6])^i[2])*(1-(1-x[7])^i[3])*(1-(1-x[8])^i[4])*(1-(1-x[9])^i[5])-x[12] >= 0.75)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
