using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.392*x[1]*x[8]-0.1915*x[1]*x[11]-0.7027*x[2]*x[5]+0.9493*x[2]*x[9]+0.0681*x[2]*x[15]+1.2729*x[3]*x[6]+0.3698*x[3]*x[14]+1.4515*x[3]*x[15]+0.2078*x[3]*x[16]-0.6297*x[4]*x[7]+1.4895*x[4]*x[14]+1.8882*x[4]*x[17]-1.1723*x[5]*x[5]+1.7946*x[5]*x[7]-0.2195*x[5]*x[10]-0.1889*x[5]*x[18]-0.2684*x[6]*x[7]+1.9947*x[6]*x[8]+1.5941*x[6]*x[14]+1.881*x[6]*x[16]+0.7055*x[7]*x[7]-1.0687*x[7]*x[11]+0.5675*x[7]*x[14]-1.367*x[7]*x[15]+1.3733*x[7]*x[18]+0.8169*x[7]*x[19]+1.6889*x[8]*x[9]-1.4524*x[8]*x[13]+0.4882*x[8]*x[15]+1.4711*x[8]*x[17]-1.6109*x[8]*x[19]+0.4532*x[9]*x[10]-0.1908*x[9]*x[14]-1.1303*x[9]*x[15]-0.1751*x[9]*x[16]+1.46*x[9]*x[17]+0.669*x[9]*x[19]-1.1536*x[11]*x[13]-1.1369*x[11]*x[16]+1.1057*x[11]*x[17]-0.3348*x[11]*x[20]-1.8948*x[12]*x[15]+0.2378*x[12]*x[17]-0.4675*x[12]*x[18]-0.4439*x[14]*x[18]+0.9158*x[15]*x[16]+0.5493*x[15]*x[17]-1.209*x[16]*x[16]+1.778*x[16]*x[18]-0.0355*x[16]*x[20]-0.6363*x[19]*x[20]+1.8811*x[20]*x[20]-0.5614*x[1]+0.5238*x[2]+0.8146*x[3]+0.1793*x[4]+0.7412*x[5]-0.9228*x[6]+0.8761*x[7]-0.9062*x[8]+0.7942*x[9]-0.9605*x[10]+0.9985*x[11]+0.9604*x[12]+0.2233*x[13]+0.1751*x[14]+0.9245*x[15]+0.7868*x[16]-0.5956*x[17]-0.9745*x[18]-0.49*x[19]+0.7809*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.