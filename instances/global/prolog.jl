using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[2], 0.2)
set_lower_bound(x[3], 0.2)
set_lower_bound(x[4], 0.2)


# ----- Constraints ----- #
@constraint(m, e1, x[5]+x[6]-0.94*x[11]-0.94*x[12]-0.94*x[13]+0.244*x[17]+0.244*x[18]+0.244*x[19] <= 0.0)
@constraint(m, e2, 0.064*x[11]+0.064*x[12]+0.064*x[13]-0.58*x[14]-0.58*x[15]-0.58*x[16]+0.172*x[17]+0.172*x[18]+0.172*x[19] <= 0.0)
@constraint(m, e3, x[7]+x[8]+0.048*x[11]+0.048*x[12]+0.048*x[13]+0.247*x[14]+0.247*x[15]+0.247*x[16]-0.916*x[17]-0.916*x[18]-0.916*x[19] <= 0.0)
@constraint(m, e4, x[11]+1.2*x[12]+0.8*x[13]+2*x[14]+1.8*x[15]+2.4*x[16]+3*x[17]+2.7*x[18]+3.2*x[19] <= 3712.0)
@constraint(m, e5, 2*x[11]+1.8*x[12]+2.2*x[13]+3*x[14]+3.5*x[15]+2.3*x[16]+3*x[17]+3.2*x[18]+2.7*x[19] <= 5000.0)
@constraint(m, e6, 356.474947137148*x[2]+53.7083537310174*x[4]+x[5]-0.564264890180399*x[20] <= 352.0)
@constraint(m, e7, 339.983422262764*x[2]+43.5418249774113*x[4]+x[6]-0.405939876920766*x[21] <= 430.0)
@constraint(m, e8, 106.946746119538*x[2]+145.018955433089*x[4]+x[7]-0.507117039797071*x[20] <= 222.0)
@constraint(m, e9, 173.929713444361*x[2]+203.031384299627*x[4]+x[8]-0.578889145413521*x[21] <= 292.0)
@NLconstraint(m, e10, x[5]*x[2]+x[7]*x[4]-x[20] <= 0.0)
@NLconstraint(m, e11, x[6]*x[2]+x[8]*x[4]-x[21] <= 0.0)
@constraint(m, e12, -3340.8*x[9]-500*x[10]+x[20] <= 0.0)
@constraint(m, e13, -371.2*x[9]-4500*x[10]+x[21] <= 0.0)
@constraint(m, e14, 0.94*x[2]-0.064*x[3]-0.048*x[4]-x[9]-2*x[10] <= 0.0)
@constraint(m, e15, 0.94*x[2]-0.064*x[3]-0.048*x[4]-1.2*x[9]-1.8*x[10] <= 0.0)
@constraint(m, e16, 0.94*x[2]-0.064*x[3]-0.048*x[4]-0.8*x[9]-2.2*x[10] <= 0.0)
@constraint(m, e17, 0.58*x[3]-0.247*x[4]-2*x[9]-3*x[10] <= 0.0)
@constraint(m, e18, 0.58*x[3]-0.247*x[4]-1.8*x[9]-3.5*x[10] <= 0.0)
@constraint(m, e19, 0.58*x[3]-0.247*x[4]-2.4*x[9]-2.3*x[10] <= 0.0)
@constraint(m, e20, -0.244*x[2]-0.172*x[3]+0.916*x[4]-3*x[9]-3*x[10] <= 0.0)
@constraint(m, e21, -0.244*x[2]-0.172*x[3]+0.916*x[4]-2.7*x[9]-3.2*x[10] <= 0.0)
@constraint(m, e22, -0.244*x[2]-0.172*x[3]+0.916*x[4]-3.2*x[9]-2.7*x[10] <= 0.0)
@NLconstraint(m, e23, -(x[5]*x[2]+x[6]*x[2]+x[7]*x[4]+x[8]*x[4])-objvar+3712*x[9]+5000*x[10] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.