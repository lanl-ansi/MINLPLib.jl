using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (72.676767-x[1]/(3.046173318241+x[2])-x[3]-3.046173318241*x[4]-9.27917188476338*x[5]-28.2659658107383*x[6])^2+ (40.149455-x[1]/(2.467400073616+x[2])-x[3]-2.467400073616*x[4]-6.08806312328024*x[5]-15.0216873985605*x[6])^2+ (18.8548-x[1]/(1.949550365169+x[2])-x[3]-1.949550365169*x[4]-3.80074662633058*x[5]-7.40974697327763*x[6])^2+ (6.4762-x[1]/(1.4926241929+x[2])-x[3]-1.4926241929*x[4]-2.22792698123038*x[5]-3.32545771219912*x[6])^2+ (0.8596-x[1]/(1.096623651204+x[2])-x[3]-1.096623651204*x[4]-1.20258343237999*x[5]-1.31878143449399*x[6])^2+ ((-x[1]/(0.878319472969+x[2]))-x[3]-0.878319472969*x[4]-0.771445096596542*x[5]-0.677575250667194*x[6])^2+ (0.273-x[1]/(0.761544202225+x[2])-x[3]-0.761544202225*x[4]-0.579949571942512*x[5]-0.44165723409569*x[6])^2+ (3.2043-x[1]/(0.487388289424+x[2])-x[3]-0.487388289424*x[4]-0.237547344667653*x[5]-0.115777793974781*x[6])^2+ (8.108-x[1]/(0.274155912801+x[2])-x[3]-0.274155912801*x[4]-0.0751614645237495*x[5]-0.0206059599139685*x[6])^2+ (13.4291-x[1]/(0.121847072356+x[2])-x[3]-0.121847072356*x[4]-0.0148467090417283*x[5]-0.00180902803085595*x[6])^2+ (17.714-x[1]/(0.030461768089+x[2])-x[3]-0.030461768089*x[4]-0.000927919315108019*x[5]-2.82660629821242e-5*x[6])^2+ (19.4529-x[1]/x[2]-x[3])^2+ (17.7149-x[1]/(0.030461768089+x[2])-x[3]-0.030461768089*x[4]-0.000927919315108019*x[5]-2.82660629821242e-5*x[6])^2+ (13.4291-x[1]/(0.121847072356+x[2])-x[3]-0.121847072356*x[4]-0.0148467090417283*x[5]-0.00180902803085595*x[6])^2+ (8.108-x[1]/(0.274155912801+x[2])-x[3]-0.274155912801*x[4]-0.0751614645237495*x[5]-0.0206059599139685*x[6])^2+ (3.2053-x[1]/(0.487388289424+x[2])-x[3]-0.487388289424*x[4]-0.237547344667653*x[5]-0.115777793974781*x[6])^2+ (0.273-x[1]/(0.761544202225+x[2])-x[3]-0.761544202225*x[4]-0.579949571942512*x[5]-0.44165723409569*x[6])^2+ ((-x[1]/(0.878319472969+x[2]))-x[3]-0.878319472969*x[4]-0.771445096596542*x[5]-0.677575250667194*x[6])^2+ (0.8596-x[1]/(1.096623651204+x[2])-x[3]-1.096623651204*x[4]-1.20258343237999*x[5]-1.31878143449399*x[6])^2+ (6.4762-x[1]/(1.4926241929+x[2])-x[3]-1.4926241929*x[4]-2.22792698123038*x[5]-3.32545771219912*x[6])^2+ (18.8548-x[1]/(1.949550365169+x[2])-x[3]-1.949550365169*x[4]-3.80074662633058*x[5]-7.40974697327763*x[6])^2+ (40.149455-x[1]/(2.467400073616+x[2])-x[3]-2.467400073616*x[4]-6.08806312328024*x[5]-15.0216873985605*x[6])^2+ (72.676767-x[1]/(3.046173318241+x[2])-x[3]-3.046173318241*x[4]-9.27917188476338*x[5]-28.2659658107383*x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 