using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setcategory(i[5], :Int)
setcategory(i[4], :Int)
setcategory(i[7], :Int)
setcategory(i[3], :Int)
setcategory(i[11], :Int)
setcategory(i[9], :Int)
setcategory(i[10], :Int)
setcategory(i[2], :Int)
setcategory(i[6], :Int)
setlowerbound(i[2], -1.0)
setupperbound(i[2], 2.0)
setlowerbound(i[3], -1.0)
setupperbound(i[3], 2.0)
setlowerbound(i[4], -1.0)
setupperbound(i[4], 2.0)
setlowerbound(i[5], -1.0)
setupperbound(i[5], 2.0)
setlowerbound(i[6], -1.0)
setupperbound(i[6], 2.0)
setlowerbound(i[7], -1.0)
setupperbound(i[7], 2.0)
setlowerbound(i[8], -1.0)
setupperbound(i[8], 2.0)
setlowerbound(i[9], -1.0)
setupperbound(i[9], 2.0)
setlowerbound(i[10], -1.0)
setupperbound(i[10], 2.0)
setlowerbound(i[11], -1.0)
setupperbound(i[11], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11] == 0.0)
@NLconstraint(m, e2, 0.116545517321418* (i[10])^2-0.116545517321418*i[10]+0.048698282657444* (i[9])^2-0.048698282657444*i[9]+0.167136633802493* (i[8])^2-0.167136633802493*i[8]+0.172842180379538* (i[7])^2-0.172842180379538*i[7]+0.0350835273588374* (i[6])^2-0.0350835273588374*i[6]+0.133517550184507* (i[5])^2-0.133517550184507*i[5]+0.107213563760389* (i[4])^2-0.107213563760389*i[4]+0.0605518448846168* (i[3])^2-0.0605518448846168*i[3]+0.0745422678604453* (i[2])^2-0.0745422678604453*i[2]+0.0838686317903121* (i[11])^2-0.0838686317903121*i[11] <= -9.9999999999989e-5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
