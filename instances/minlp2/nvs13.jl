using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5]
@variable(m, i[i_Idx])
setcategory(i[5], :Int)
setcategory(i[4], :Int)
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)
setupperbound(i[3], 200.0)
setupperbound(i[4], 200.0)
setupperbound(i[5], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-9* (i[1])^2)-10*i[1]*i[2]-8* (i[2])^2-5* (i[3])^2-6*i[3]*i[1]-10*i[3]*i[2]-7* (i[4])^2-10*i[4]*i[1]-6*i[4]*i[2]-2*i[4]*i[3]-2*i[5]*i[2]-7* (i[5])^2 >= -1430.0)
@NLconstraint(m, e2, (-6* (i[1])^2)-8*i[1]*i[2]-6* (i[2])^2-4* (i[3])^2-2*i[3]*i[1]-2*i[3]*i[2]-8* (i[4])^2+2*i[4]*i[1]+10*i[4]*i[2]-2*i[5]*i[1]-6*i[5]*i[2]+6*i[5]*i[4]+7* (i[5])^2 >= -1150.0)
@NLconstraint(m, e3, (-9* (i[1])^2)-6* (i[2])^2-8* (i[3])^2+2*i[2]*i[1]+2*i[3]*i[2]-6* (i[4])^2+4*i[4]*i[1]+4*i[4]*i[2]-2*i[4]*i[3]-6*i[5]*i[1]-2*i[5]*i[2]+4*i[5]*i[4]+6* (i[5])^2 >= -850.0)
@NLconstraint(m, e4, (-8* (i[1])^2)-4* (i[2])^2-9* (i[3])^2-7* (i[4])^2-2*i[2]*i[1]-2*i[3]*i[1]-4*i[3]*i[2]+6*i[4]*i[1]+2*i[4]*i[2]-2*i[4]*i[3]-6*i[5]*i[1]-4*i[5]*i[2]-2*i[5]*i[3]+6*i[5]*i[4]+6* (i[5])^2 >= -1125.0)
@NLconstraint(m, e5, 2*i[2]*i[1]-4* (i[1])^2-5* (i[2])^2-6*i[3]*i[1]-8* (i[3])^2-2*i[4]*i[1]+6*i[4]*i[2]-2*i[4]*i[3]-6* (i[4])^2-4*i[5]*i[1]+2*i[5]*i[2]-6*i[5]*i[3]-8*i[5]*i[4]-7* (i[5])^2 >= -1030.0)
@NLconstraint(m, e6, -(7* (i[1])^2+6* (i[2])^2+12*i[1]-77.2*i[2]+8* (i[3])^2-6*i[3]*i[1]+4*i[3]*i[2]-19.2*i[3]+6* (i[4])^2+2*i[4]*i[1]+2*i[4]*i[3]-36.6*i[4]+7* (i[5])^2-4*i[5]*i[1]-2*i[5]*i[2]-6*i[5]*i[3]-69.4*i[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
