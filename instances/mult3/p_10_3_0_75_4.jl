using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1) 

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5873*x[3]^3+0.2729*x[3]^2+0.7687*x[3]+(-0.4368*x[4]^3)-0.2164*x[4]+0.4959*x[5]^3-0.1782*x[5]+0.0462*x[7]-0.4951*x[7]^2+0.4214*x[8]^3+0.2013*x[8]+(-0.1326*x[9]^3)-0.6747*x[9]^2-0.5357*x[9]+0.4182*x[1]*x[3]+0.102*x[1]*x[4]+0.2794*x[1]*x[7]-0.1334*x[1]*x[9]+0.1736*x[2]*x[3]+0.2108*x[2]*x[5]+0.2314*x[2]*x[7]-0.255*x[2]*x[8]-0.5774*x[3]*x[4]+0.9396*x[3]*x[5]+0.1098*x[3]*x[6]-0.8943*x[3]*x[7]+0.2405*x[3]*x[9]+0.0209*x[3]*x[10]-0.3065*x[4]*x[5]+0.5094*x[4]*x[6]-0.1297*x[4]*x[7]+0.8573*x[4]*x[8]+0.366*x[4]*x[9]+0.8817*x[4]*x[10]-0.8024*x[5]*x[6]-0.5057*x[5]*x[7]-0.019*x[5]*x[8]+0.9659*x[5]*x[9]-0.0698*x[6]*x[7]-0.2619*x[6]*x[8]+0.0554*x[6]*x[9]+0.8405*x[6]*x[10]-0.1569*x[7]*x[8]+0.138*x[7]*x[9]+0.7031*x[7]*x[10]-0.159*x[8]*x[9]+0.088*x[8]*x[10]+0.856*x[9]*x[10]-0.0368*x[1]+0.6875*x[2]+0.2589*x[6]-0.8029*x[10]+(-0.9054*x[1]^2*x[6])-0.8062*x[1]^2*x[7]+0.201*x[1]^2*x[8]-0.2194*x[1]^2*x[10]+0.5632*x[2]^2*x[1]+0.2768*x[2]^2*x[4]-0.3747*x[2]^2*x[5]-0.7768*x[2]^2*x[6]+0.5092*x[2]^2*x[7]+0.656*x[2]^2*x[8]+0.1163*x[2]^2*x[9]-0.0395*x[2]^2*x[10]-0.512*x[3]^2*x[2]-0.196*x[3]^2*x[4]+0.7908*x[3]^2*x[5]-0.7218*x[3]^2*x[6]-0.7236*x[3]^2*x[7]-0.7788*x[3]^2*x[8]-0.2883*x[4]^2*x[1]-0.0782*x[4]^2*x[2]-0.9314*x[4]^2*x[3]+0.1618*x[4]^2*x[7]-0.844*x[4]^2*x[8]-0.3722*x[4]^2*x[9]-0.9585*x[4]^2*x[10]+0.4648*x[5]^2*x[2]+0.5678*x[5]^2*x[3]+0.4911*x[5]^2*x[4]+0.5947*x[5]^2*x[6]-0.1962*x[5]^2*x[7]-0.12*x[5]^2*x[8]+0.4425*x[5]^2*x[9]+0.4815*x[6]^2*x[3]+0.653*x[6]^2*x[4]+0.4908*x[6]^2*x[5]-0.6731*x[6]^2*x[7]+0.1137*x[6]^2*x[8]-0.6285*x[6]^2*x[9]-0.0539*x[6]^2*x[10]-0.0656*x[7]^2*x[1]-0.9698*x[7]^2*x[2]+0.5567*x[7]^2*x[3]-0.2923*x[7]^2*x[4]+0.5089*x[7]^2*x[5]-0.7093*x[7]^2*x[8]-0.999*x[8]^2*x[1]+0.1999*x[8]^2*x[2]+0.2197*x[8]^2*x[3]+0.0393*x[8]^2*x[4]-0.7211*x[8]^2*x[5]-0.7207*x[8]^2*x[6]-0.2459*x[8]^2*x[9]+0.3736*x[9]^2*x[1]+0.0595*x[9]^2*x[2]-0.7218*x[9]^2*x[7]-0.7141*x[10]^2*x[1]+0.9015*x[10]^2*x[4]+0.3125*x[1]*x[2]*x[4]-0.7901*x[1]*x[2]*x[3]-0.5313*x[1]*x[2]*x[6]-0.5601*x[1]*x[2]*x[7]+0.7019*x[1]*x[2]*x[8]+0.9682*x[1]*x[2]*x[9]-0.1461*x[1]*x[2]*x[10]+0.3186*x[1]*x[3]*x[4]+0.5184*x[1]*x[3]*x[5]+0.4693*x[1]*x[3]*x[6]-0.1921*x[1]*x[3]*x[7]+0.3393*x[1]*x[3]*x[9]+0.4309*x[1]*x[3]*x[10]+0.4944*x[1]*x[4]*x[5]-0.2882*x[1]*x[4]*x[7]+0.2846*x[1]*x[4]*x[9]+0.8788*x[1]*x[4]*x[10]-0.6715*x[1]*x[5]*x[6]-0.5631*x[1]*x[5]*x[7]+0.0342*x[1]*x[5]*x[9]-0.953*x[1]*x[5]*x[10]-0.7257*x[1]*x[6]*x[8]+0.8171*x[1]*x[6]*x[9]+0.5504*x[1]*x[7]*x[8]-0.6767*x[1]*x[7]*x[9]+0.074*x[1]*x[7]*x[10]-0.6119*x[1]*x[8]*x[9]-0.1023*x[1]*x[8]*x[10]-0.2058*x[1]*x[9]*x[10]-0.9126*x[2]*x[3]*x[4]-0.5341*x[2]*x[3]*x[6]+0.6338*x[2]*x[3]*x[7]+0.4341*x[2]*x[3]*x[8]+0.3325*x[2]*x[3]*x[9]+0.8146*x[2]*x[3]*x[10]+0.9909*x[2]*x[4]*x[5]+0.666*x[2]*x[4]*x[6]-0.9957*x[2]*x[4]*x[7]-0.6671*x[2]*x[4]*x[8]+0.649*x[2]*x[4]*x[9]-0.771*x[2]*x[4]*x[10]-0.103*x[2]*x[5]*x[6]-0.9236*x[2]*x[5]*x[7]-0.6136*x[2]*x[5]*x[8]+0.1597*x[2]*x[5]*x[9]+0.6105*x[2]*x[5]*x[10]+0.8784*x[2]*x[6]*x[7]-0.1032*x[2]*x[6]*x[8]+0.0337*x[2]*x[6]*x[9]-0.3579*x[2]*x[6]*x[10]+0.5372*x[2]*x[7]*x[8]-0.8868*x[2]*x[7]*x[9]+0.9828*x[2]*x[7]*x[10]+0.7196*x[2]*x[8]*x[9]-0.2938*x[2]*x[8]*x[10]+0.4564*x[2]*x[9]*x[10]+0.9853*x[3]*x[4]*x[5]-0.387*x[3]*x[4]*x[6]-0.969*x[3]*x[4]*x[7]-0.6787*x[3]*x[4]*x[8]+0.4335*x[3]*x[4]*x[9]-0.0037*x[3]*x[4]*x[10]+0.4247*x[3]*x[5]*x[6]+0.1249*x[3]*x[5]*x[7]-0.0336*x[3]*x[5]*x[8]-0.4867*x[3]*x[5]*x[9]+0.4227*x[3]*x[5]*x[10]-0.1674*x[3]*x[6]*x[7]-0.0242*x[3]*x[6]*x[8]-0.6344*x[3]*x[6]*x[9]-0.3987*x[3]*x[7]*x[8]+0.3726*x[3]*x[7]*x[9]-0.7496*x[3]*x[7]*x[10]-0.387*x[3]*x[8]*x[9]+0.057*x[3]*x[9]*x[10]+0.6212*x[4]*x[5]*x[6]-0.8606*x[4]*x[5]*x[7]+0.3593*x[4]*x[5]*x[8]+0.7738*x[4]*x[5]*x[9]-0.3056*x[4]*x[5]*x[10]-0.396*x[4]*x[6]*x[7]+0.4707*x[4]*x[6]*x[8]-0.0989*x[4]*x[6]*x[9]+0.3974*x[4]*x[6]*x[10]+0.5776*x[4]*x[7]*x[8]+0.4437*x[4]*x[7]*x[9]-0.1462*x[4]*x[8]*x[9]+0.683*x[4]*x[8]*x[10]+0.5317*x[5]*x[6]*x[7]+0.147*x[5]*x[6]*x[8]-0.2673*x[5]*x[6]*x[9]-0.5873*x[5]*x[7]*x[8]+0.3826*x[5]*x[7]*x[9]-0.1637*x[5]*x[7]*x[10]+0.011*x[5]*x[8]*x[9]-0.0051*x[5]*x[8]*x[10]+0.3975*x[5]*x[9]*x[10]+0.5486*x[6]*x[7]*x[8]-0.176*x[6]*x[7]*x[9]+0.8208*x[6]*x[7]*x[10]-0.0251*x[6]*x[8]*x[10]-0.6268*x[7]*x[8]*x[9]+0.8894*x[7]*x[8]*x[10]+0.7507*x[7]*x[9]*x[10])+obj == 0.0)

m = m 		 # model get returned when including this script. 