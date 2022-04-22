using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 40.30707)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 40.30707)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 40.30707)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 5.14979)
set_lower_bound(x[6], 1.0e-7)
set_upper_bound(x[6], 5.14979)
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 5.14979)
set_lower_bound(x[8], 1.0e-7)
set_upper_bound(x[8], 54.54314)
set_lower_bound(x[9], 1.0e-7)
set_upper_bound(x[9], 54.54314)
set_lower_bound(x[10], 1.0e-7)
set_upper_bound(x[10], 54.54314)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[4]*(0.156969560191053+log(x[4]/(x[4]+x[7]+x[10])))+x[7]*(0.156969560191053+log(x[7]/(x[4]+x[7]+x[10])))+x[10]*(0.156969560191053+log(x[10]/(x[4]+x[7]+x[10])))+(26.9071667605344*x[2]+41.7710875549227*x[5]+6.30931398488382*x[8])*log(3.9235*x[2]+6.0909*x[5]+0.92*x[8])+0.113370955614741*x[2]-2.43897680885457*x[5]+2.8555953099828*x[8]+9.58716676053442*x[2]*log(x[2])+16.9310875549227*x[5]*log(x[5])+0.309313984883821*x[8]*log(x[8])-9.58716676053442*x[2]*log(3.9235*x[2]+6.0909*x[5]+0.92*x[8])-16.9310875549227*x[5]*log(3.9235*x[2]+6.0909*x[5]+0.92*x[8])-0.309313984883821*x[8]*log(3.9235*x[2]+6.0909*x[5]+0.92*x[8])+18.32*x[2]*log(x[2])+25.84*x[5]*log(x[5])+7*x[8]*log(x[8])-18.32*x[2]*log(3.664*x[2]+5.168*x[5]+1.4*x[8])-25.84*x[5]*log(3.664*x[2]+5.168*x[5]+1.4*x[8])-7*x[8]*log(3.664*x[2]+5.168*x[5]+1.4*x[8])+(4.0643*x[2]+5.7409*x[5]+1.6741*x[8])*log(4.0643*x[2]+5.7409*x[5]+1.6741*x[8])+4.0643*x[2]*log(x[2])+5.7409*x[5]*log(x[5])+1.6741*x[8]*log(x[8])-4.0643*x[2]*log(4.0643*x[2]+3.22644664511275*x[5]+1.44980651607875*x[8])-5.7409*x[5]*log(5.31147575751424*x[2]+5.7409*x[5]+0.00729924451284409*x[8])-1.6741*x[8]*log(2.25846661774355*x[2]+3.70876916588753*x[5]+1.6741*x[8])+(26.9071667605344*x[3]+41.7710875549227*x[6]+6.30931398488382*x[9])*log(3.9235*x[3]+6.0909*x[6]+0.92*x[9])+0.113370955614741*x[3]-2.43897680885457*x[6]+2.8555953099828*x[9]+9.58716676053442*x[3]*log(x[3])+16.9310875549227*x[6]*log(x[6])+0.309313984883821*x[9]*log(x[9])-9.58716676053442*x[3]*log(3.9235*x[3]+6.0909*x[6]+0.92*x[9])-16.9310875549227*x[6]*log(3.9235*x[3]+6.0909*x[6]+0.92*x[9])-0.309313984883821*x[9]*log(3.9235*x[3]+6.0909*x[6]+0.92*x[9])+18.32*x[3]*log(x[3])+25.84*x[6]*log(x[6])+7*x[9]*log(x[9])-18.32*x[3]*log(3.664*x[3]+5.168*x[6]+1.4*x[9])-25.84*x[6]*log(3.664*x[3]+5.168*x[6]+1.4*x[9])-7*x[9]*log(3.664*x[3]+5.168*x[6]+1.4*x[9])+(4.0643*x[3]+5.7409*x[6]+1.6741*x[9])*log(4.0643*x[3]+5.7409*x[6]+1.6741*x[9])+4.0643*x[3]*log(x[3])+5.7409*x[6]*log(x[6])+1.6741*x[9]*log(x[9])-4.0643*x[3]*log(4.0643*x[3]+3.22644664511275*x[6]+1.44980651607875*x[9])-5.7409*x[6]*log(5.31147575751424*x[3]+5.7409*x[6]+0.00729924451284409*x[9])-1.6741*x[9]*log(2.25846661774355*x[3]+3.70876916588753*x[6]+1.6741*x[9])-0.3658348*x[2]-0.3658348*x[3]-0.9825555*x[5]-0.9825555*x[6]-0.3663657*x[8]-0.3663657*x[9]-30.9714667605344*x[2]*log(x[2])-47.5119875549227*x[5]*log(x[5])-7.98341398488382*x[8]*log(x[8])-30.9714667605344*x[3]*log(x[3])-47.5119875549227*x[6]*log(x[6])-7.98341398488382*x[9]*log(x[9]))+objvar == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4] == 40.30707)
@constraint(m, e3, x[5]+x[6]+x[7] == 5.14979)
@constraint(m, e4, x[8]+x[9]+x[10] == 54.54314)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
