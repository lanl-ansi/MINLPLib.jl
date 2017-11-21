using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, i[i_Idx])
setcategory(i[5], :Int)
setcategory(i[4], :Int)
setcategory(i[7], :Int)
setcategory(i[3], :Int)
setcategory(i[2], :Int)
setcategory(i[6], :Int)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 600.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 600.0)
setlowerbound(i[4], 1.0)
setupperbound(i[4], 50.0)
setlowerbound(i[5], 1.0)
setupperbound(i[5], 50.0)
setlowerbound(i[6], 1.0)
setupperbound(i[6], 30.0)
setlowerbound(i[7], 1.0)
setupperbound(i[7], 30.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2*i[2]*i[4]*i[6]+200*i[4]*i[6]+5*i[6]+0.22*i[3]*i[5]*i[7]+220*i[5]*i[7]+5.5*i[7])+x[1] == 0.0)
@NLconstraint(m, e2, 450*(1/(i[2]*i[4]*i[6])+1/(i[3]*i[5]*i[7]))+200*(1/(i[4]*i[6])+1/(i[5]*i[7]))+250*(1/i[6]+1/i[7]) <= 3.18517584662293)
@NLconstraint(m, e3, -i[4]*i[6] <= -1.0)
@NLconstraint(m, e4, i[4]*i[6] <= 300.0)
@NLconstraint(m, e5, -i[5]*i[7] <= -1.0)
@NLconstraint(m, e6, i[5]*i[7] <= 300.0)
@NLconstraint(m, e7, i[6]/i[7] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
