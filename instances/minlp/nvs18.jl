using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, i[i_Idx])
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_upper_bound(i[1], 200.0)
set_upper_bound(i[2], 200.0)
set_upper_bound(i[3], 200.0)
set_upper_bound(i[4], 200.0)
set_upper_bound(i[5], 200.0)
set_upper_bound(i[6], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-9* (i[1])^2)-10*i[1]*i[2]-8* (i[2])^2-5* (i[3])^2-6*i[3]*i[1]-10*i[3]*i[2]-7* (i[4])^2-10*i[4]*i[1]-6*i[4]*i[2]-2*i[4]*i[3]-2*i[5]*i[2]-7* (i[5])^2-6*i[6]*i[1]-2*i[6]*i[2]-2*i[6]*i[4]-5* (i[6])^2 >= -1800.0)
@NLconstraint(m, e2, (-6* (i[1])^2)-8*i[1]*i[2]-6* (i[2])^2-4* (i[3])^2-2*i[3]*i[1]-2*i[3]*i[2]-8* (i[4])^2+2*i[4]*i[1]+10*i[4]*i[2]-2*i[5]*i[1]-6*i[5]*i[2]+6*i[5]*i[4]+7* (i[5])^2-2*i[6]*i[2]+8*i[6]*i[3]+2*i[6]*i[4]-4*i[6]*i[5]-8* (i[6])^2 >= -1520.0)
@NLconstraint(m, e3, (-9* (i[1])^2)-6* (i[2])^2-8* (i[3])^2+2*i[2]*i[1]+2*i[3]*i[2]-6* (i[4])^2+4*i[4]*i[1]+4*i[4]*i[2]-2*i[4]*i[3]-6*i[5]*i[1]-2*i[5]*i[2]+4*i[5]*i[4]+6* (i[5])^2+2*i[6]*i[1]+4*i[6]*i[2]-6*i[6]*i[4]-2*i[6]*i[5]-5* (i[6])^2 >= -1000.0)
@NLconstraint(m, e4, (-8* (i[1])^2)-4* (i[2])^2-9* (i[3])^2-7* (i[4])^2-2*i[2]*i[1]-2*i[3]*i[1]-4*i[3]*i[2]+6*i[4]*i[1]+2*i[4]*i[2]-2*i[4]*i[3]-6*i[5]*i[1]-4*i[5]*i[2]-2*i[5]*i[3]+6*i[5]*i[4]+6* (i[5])^2-10*i[6]*i[1]-10*i[6]*i[3]+4*i[6]*i[4]-2*i[6]*i[5]-7* (i[6])^2 >= -1745.0)
@NLconstraint(m, e5, 2*i[2]*i[1]-4* (i[1])^2-5* (i[2])^2-6*i[3]*i[1]-8* (i[3])^2-2*i[4]*i[1]+6*i[4]*i[2]-2*i[4]*i[3]-6* (i[4])^2-4*i[5]*i[1]+2*i[5]*i[2]-6*i[5]*i[3]-8*i[5]*i[4]-7* (i[5])^2+4*i[6]*i[1]-4*i[6]*i[2]+6*i[6]*i[3]+4*i[6]*i[5]-7* (i[6])^2 >= -1070.0)
@NLconstraint(m, e6, 2*i[2]*i[1]-7* (i[1])^2-7* (i[2])^2-6*i[3]*i[1]-2*i[3]*i[2]-6* (i[3])^2-2*i[4]*i[1]+2*i[4]*i[2]-2*i[4]*i[3]-5* (i[4])^2-2*i[5]*i[1]-4*i[5]*i[3]+2*i[5]*i[4]-5* (i[5])^2+2*i[6]*i[1]-4*i[6]*i[2]+4*i[6]*i[3]+2*i[6]*i[4]+6*i[6]*i[5]-9* (i[6])^2 >= -990.0)
@NLconstraint(m, e7, -(7* (i[1])^2+6* (i[2])^2+0.2*i[1]-53.6*i[2]+8* (i[3])^2-6*i[3]*i[1]+4*i[3]*i[2]+4.4*i[3]+6* (i[4])^2+2*i[4]*i[1]+2*i[4]*i[3]-24.8*i[4]+7* (i[5])^2-4*i[5]*i[1]-2*i[5]*i[2]-6*i[5]*i[3]-104.8*i[5]+4* (i[6])^2+2*i[6]*i[1]-4*i[6]*i[2]-4*i[6]*i[3]-2*i[6]*i[4]+6*i[6]*i[5]-56.4*i[6])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.