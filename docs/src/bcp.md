# bcp

## Description
Bound-constrained Programs. There are total `325` instance listed here. `4` instances returns
error during testing in Julia Environment.

## Source
These instances are recorded in a paper: Puranik, Y. and N. V. Sahinidis,
Bounds tightening on optimality conditions for nonconvex box-constrained optimization,
Journal of Global Optimization, 67, 59-77, 2017. Here is the
[Paper Link](https://link.springer.com/article/10.1007/s10898-016-0491-8)

## Instance Stats
LT is the JuMP model loading time.

| NAME | LT | NLOPERATOR | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |
|------|----|------------|-------|-----|--------|--------|-----|--------|--------|-----------|
| 3pk | 1.14 |  mul | Min | 31 | 0 | 0 | 1 | 0 | 1 | 0 |
| AluffiPentini | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| BeckerLago | 0.99 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| Camel3 | 1.0 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| DekkersAarts | 1.0 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| Expo | 1.02 |  exp | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| GoldPrice | 1.03 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| Hartman3 | 1.02 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| Hosaki | 1.02 |  exp | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| MeyerRoth | 1.13 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| ModRosenbrock | 1.0 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| MultiGauss | 1.01 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| Neumaier2 | 0.99 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| Neumaier3 | 1.0 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| Paviani | 1.03 |  exp log mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| PowellQ | 1.0 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| PriceTransistor | 1.05 |  exp mul | Min | 10 | 0 | 0 | 1 | 0 | 1 | 0 |
| Shekel10 | 1.01 |  div mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| Shekel7 | 1.03 |  div mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| Shekelfox10 | 1.24 |  div mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| Shekelfox5 | 1.1 |  div mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| Wood | 0.97 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| aircrftb | 1.09 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| arglina | 221.09 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| arglinb | 1.03 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| arglinc | 1.01 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| arwhead | - | - | - | - | - | - | - | - | - |
| bard | 1.07 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| bdexp | 64.08 |  exp | Min | 5001 | 0 | 0 | 1 | 0 | 1 | 0 |
| bdqrtic | 17.72 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| beale | 0.97 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| biggs3 | 1.0 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| biggs5 | 1.03 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| biggs6 | 1.03 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| biggsb1 | 2.19 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| box2 | 1.11 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| box3 | 0.97 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| bqp1var | 0.96 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| bratu1d | 257.93 |  exp div mul | Min | 1004 | 0 | 0 | 1 | 0 | 1 | 0 |
| brownal | 1.04 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| brownbs | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| brownden | 1.02 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| brybnd | 699.03 |  mul | Min | 5001 | 0 | 0 | 1 | 0 | 1 | 0 |
| camel1 | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| camel6 | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| chainwoo | 5.18 |  mul | Min | 1000 | 0 | 0 | 1 | 0 | 1 | 0 |
| chenhark | 4.8 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| chnrosnb | 1.14 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| cliff | 0.97 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| clplateb | 563.91 |  mul | Min | 5041 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha1 | 1.0 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha10 | 1.02 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha11 | 1.0 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha12 | 1.11 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha2 | 1.07 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha3 | 1.02 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha4 | 0.98 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha5 | 1.02 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha5a | 1.03 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha8 | 0.99 |  powerfrac mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| concha9 | 1.02 |  powerfrac mul powervar | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| cube | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| cvxbqp1 | 73.27 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschna | 0.97 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschnb | 0.93 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschnc | 1.05 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschnd | 0.96 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschne | 1.1 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| denschnf | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaana | 11.2 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanb | 46.85 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanc | 47.5 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaand | 47.02 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaane | 16.2 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanf | 61.81 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaang | 61.73 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanh | 60.28 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaani | 16.0 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanj | 61.53 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaank | 61.49 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixmaanl | 62.15 |  mul | Min | 3001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dixon3dq | 0.96 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| dqdrtic | 51.16 |  mul | Min | 5001 | 0 | 0 | 1 | 0 | 1 | 0 |
| dqrtic | 20.01 |  mul | Min | 5001 | 0 | 0 | 1 | 0 | 1 | 0 |
| draper1 | 1.16 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| draperg | 1.01 |  log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| draperj | 1.04 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| drapero | 0.97 |  mul powervar | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| eigena | 1.75 |  mul | Min | 111 | 0 | 0 | 1 | 0 | 1 | 0 |
| eigenals | 2.51 |  mul | Min | 111 | 0 | 0 | 1 | 0 | 1 | 0 |
| eigenb | 1.62 |  mul | Min | 111 | 0 | 0 | 1 | 0 | 1 | 0 |
| eigenbls | 2.65 |  mul | Min | 111 | 0 | 0 | 1 | 0 | 1 | 0 |
| emfl_eps | 5.71 |  sqrt mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| emfl_vareps | 6.56 |  sqrt mul | Min | 52 | 0 | 0 | 1 | 0 | 1 | 0 |
| engval1 | - | - | - | - | - | - | - | - | - |
| engval2 | 1.1 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| errinros | 1.16 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| esfl | 5.81 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex005 | 1.03 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_1 | 0.94 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_2 | 0.99 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_3 | 0.94 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_4 | 1.0 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_5 | 1.08 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_6 | 0.95 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex4_1_7 | 0.97 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex8_1_3 | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex8_1_4 | 1.1 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex8_1_5 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ex8_1_6 | 0.96 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| explin | 1.05 |  exp | Min | 121 | 0 | 0 | 1 | 0 | 1 | 0 |
| explin2 | 1.04 |  exp | Min | 121 | 0 | 0 | 1 | 0 | 1 | 0 |
| expquad | 2.06 |  exp | Min | 121 | 0 | 0 | 1 | 0 | 1 | 0 |
| extrosnb | 0.97 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| fermat2_eps | 1.11 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| fermat2_vareps | 0.96 |  sqrt mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| fermat_eps | 1.09 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| fermat_vareps | 0.97 |  sqrt mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| fletchcr | 1.22 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| flosp2hm | 22.65 |  mul | Min | 692 | 0 | 0 | 1 | 0 | 1 | 0 |
| flosp2tl | 22.5 |  mul | Min | 692 | 0 | 0 | 1 | 0 | 1 | 0 |
| fminsrf2 | 8.16 |  sqrt mul | Min | 1025 | 0 | 0 | 1 | 0 | 1 | 0 |
| fminsurf | 8.17 |  sqrt mul | Min | 1025 | 0 | 0 | 1 | 0 | 1 | 0 |
| genrose | 2.52 |  mul | Min | 501 | 0 | 0 | 1 | 0 | 1 | 0 |
| gold | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| gridneta | 1.21 |  sqrt mul | Min | 73 | 0 | 0 | 1 | 0 | 1 | 0 |
| harkerp2 | 2.43 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| hart6 | 0.97 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| hatflda | 0.97 |  sqrt mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| hatfldb | 0.97 |  sqrt mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| hatfldc | 0.98 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| hatfldd | 1.07 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| hatflde | 1.02 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| heart8ls | 1.0 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| hilberta | 0.97 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| hilbertb | 1.7 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| himmelbb | 0.97 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| himmelbg | 1.07 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| himmelbh | 1.02 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| himmelp1 | 0.97 |  exp div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs001 | 1.04 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs002 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs003 | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs004 | 0.95 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs038 | 0.96 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs045 | 1.07 |  mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs110 | 0.99 |  exp log mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| hs3mod | 0.97 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| jbearing100 | - | - | - | - | - | - | - | - | - |
| jbearing25 | 1455.93 |  mul | Min | 1405 | 0 | 0 | 1 | 0 | 1 | 0 |
| jbearing75 | - | - | - | - | - | - | - | - | - |
| jensmp | 1.01 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| kowalik | 1.08 |  div mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| liarwhd | 245.0 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| lminsurf | 1164.21 |  sqrt mul | Min | 15626 | 0 | 0 | 1 | 0 | 1 | 0 |
| logros | 1.04 |  log mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| maratosb | 0.93 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| median | 1.05 |  abs | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| median_eps | 1.03 |  sqrt mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| median_vareps | 0.98 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| methanb8 | 1.3 |  exp div mul | Min | 32 | 0 | 0 | 1 | 0 | 1 | 0 |
| methanl8 | 1.29 |  exp div mul | Min | 32 | 0 | 0 | 1 | 0 | 1 | 0 |
| mexhat | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| minsurf | 31.43 |  sqrt mul | Min | 1090 | 0 | 0 | 1 | 0 | 1 | 0 |
| minsurf25 | 50.44 |  sqrt mul | Min | 1405 | 0 | 0 | 1 | 0 | 1 | 0 |
| model13 | 1.06 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| model14 | 1.03 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| model15 | 1.03 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| model16 | 0.97 |  div mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| model18 | 1.05 |  exp mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| model19 | 0.98 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| model2 | 0.96 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| model22 | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| model23 | 1.34 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model24 | 0.98 |  exp div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model3 | 1.65 |  exp div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model31 | 0.96 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model32 | 1.02 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model33 | 1.09 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model36 | 0.99 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| model39 | 0.99 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| model4 | 0.99 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model42 | 0.98 |  mul powervar | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model45 | 1.03 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| model5 | 1.0 |  exp div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| morebv | 109.18 |  mul | Min | 5003 | 0 | 0 | 1 | 0 | 1 | 0 |
| msqrtals | 95.07 |  mul | Min | 1025 | 0 | 0 | 1 | 0 | 1 | 0 |
| msqrtbls | 93.48 |  mul | Min | 1025 | 0 | 0 | 1 | 0 | 1 | 0 |
| nasty | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| nnls | 296.34 |  mul | Min | 301 | 0 | 0 | 1 | 0 | 1 | 0 |
| nondia | 114.66 |  mul | Min | 10000 | 0 | 0 | 1 | 0 | 1 | 0 |
| nondquar | 38.17 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| nonscomp | 114.13 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| obstclal | 2.97 |  mul | Min | 97 | 0 | 0 | 1 | 0 | 1 | 0 |
| obstclbl | 2.91 |  mul | Min | 97 | 0 | 0 | 1 | 0 | 1 | 0 |
| obstclbu | 3.01 |  mul | Min | 97 | 0 | 0 | 1 | 0 | 1 | 0 |
| osborne1 | 1.05 |  exp mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| osbornea | 1.04 |  exp mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| oslbqp | 0.96 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer1c | 1.14 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer1d | 1.1 |  mul | Min | 8 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer2c | 1.19 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer3c | 1.13 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer4c | 1.17 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer5c | 0.98 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer5d | 1.06 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer6c | 1.0 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer7c | 1.02 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| palmer8c | 0.99 |  mul | Min | 9 | 0 | 0 | 1 | 0 | 1 | 0 |
| penalty1 | 3.56 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| penalty2 | 1.63 |  exp mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| pentdi | 93.87 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit1 | 1.01 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit1ls | 0.98 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit2 | 1.0 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit2ls | 1.0 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit3 | 1.01 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit3ls | 1.0 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit4 | 0.99 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| pfit4ls | 1.03 |  exp log mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| powell | 0.96 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| power | 1.99 |  mul | Min | 1001 | 0 | 0 | 1 | 0 | 1 | 0 |
| price | 0.95 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| prob09 | 1.1 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| probpenl | 2.9 |  exp mul | Min | 501 | 0 | 0 | 1 | 0 | 1 | 0 |
| pspdoc | 0.94 |  sqrt mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| qr3d | 1.61 |  mul | Min | 156 | 0 | 0 | 1 | 0 | 1 | 0 |
| qr3dbd | 1.46 |  mul | Min | 128 | 0 | 0 | 1 | 0 | 1 | 0 |
| qrtquad | 2.74 |  mul | Min | 121 | 0 | 0 | 1 | 0 | 1 | 0 |
| quartc | 33.53 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| qudlin | 1.08 |  mul | Min | 13 | 0 | 0 | 1 | 0 | 1 | 0 |
| ratkasymptotic | 1.03 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| ratkbates | 1.09 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| rbrock | 0.97 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| rosenbr | 1.07 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s201 | 0.93 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s202 | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s204 | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s205 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s206 | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s207 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s208 | 1.06 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s209 | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s210 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s211 | 0.95 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s212 | 0.97 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s213 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s214 | 0.96 |  sqrt mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s229 | 0.98 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s240 | 0.95 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s242 | 1.0 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s244 | 0.97 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s245 | 1.07 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s246 | 0.96 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s255 | 1.1 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s256 | 0.96 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s257 | 1.07 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s258 | 0.95 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s259 | 0.97 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s260 | 0.94 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s266 | 1.21 |  mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| s271 | 0.94 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s272 | 1.11 |  exp mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s273 | 0.98 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s274 | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s275 | 1.05 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s276 | 1.02 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s281 | 0.97 |  exp log mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| s282 | 0.99 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| s283 | 0.95 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| s286 | 1.09 |  mul | Min | 21 | 0 | 0 | 1 | 0 | 1 | 0 |
| s287 | 0.99 |  mul | Min | 21 | 0 | 0 | 1 | 0 | 1 | 0 |
| s288 | 0.96 |  mul | Min | 21 | 0 | 0 | 1 | 0 | 1 | 0 |
| s289 | 1.03 |  exp mul | Min | 31 | 0 | 0 | 1 | 0 | 1 | 0 |
| s290 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s291 | 1.05 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| s292 | 0.96 |  mul | Min | 31 | 0 | 0 | 1 | 0 | 1 | 0 |
| s293 | 0.98 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| s294 | 0.94 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s295 | 1.08 |  mul | Min | 11 | 0 | 0 | 1 | 0 | 1 | 0 |
| s296 | 0.97 |  mul | Min | 17 | 0 | 0 | 1 | 0 | 1 | 0 |
| s297 | 1.0 |  mul | Min | 31 | 0 | 0 | 1 | 0 | 1 | 0 |
| s298 | 1.03 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| s299 | 1.26 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| s300 | 0.96 |  mul | Min | 21 | 0 | 0 | 1 | 0 | 1 | 0 |
| s301 | 1.03 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| s302 | 1.08 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| s303 | 0.98 |  mul | Min | 21 | 0 | 0 | 1 | 0 | 1 | 0 |
| s304 | 1.01 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| s305 | 1.11 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| s307 | 0.99 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s309 | 0.93 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s311 | 1.06 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s312 | 0.95 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s328 | 1.03 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s332 | 1.39 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| s333 | 0.95 |  exp mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s334 | 1.02 |  div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| s352 | 1.0 |  mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| s358 | 1.07 |  exp mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| s370 | 1.12 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| s371 | 1.2 |  mul | Min | 10 | 0 | 0 | 1 | 0 | 1 | 0 |
| s386 | 0.93 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| schwefel | 0.97 |  mul | Min | 6 | 0 | 0 | 1 | 0 | 1 | 0 |
| shekel | 1.05 |  div mul | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| sim2bqp | 0.94 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| simbqp | 1.06 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| sisser | 0.95 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| srosenbr | 68.5 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| st_bsj3 | 0.94 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| st_cqpjk2 | 0.95 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| st_e39 | 1.05 |  div mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| stattools | 1.11 |  exp mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| tame | 1.02 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| tointqor | 1.13 |  mul | Min | 51 | 0 | 0 | 1 | 0 | 1 | 0 |
| tranter | 1.07 |  mul | Min | 7 | 0 | 0 | 1 | 0 | 1 | 0 |
| tranter2 | 0.99 |  mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
| tre | 0.99 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| tridia | 111.64 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| vardim | 1.11 |  mul | Min | 101 | 0 | 0 | 1 | 0 | 1 | 0 |
| watson | 1.9 |  mul | Min | 32 | 0 | 0 | 1 | 0 | 1 | 0 |
| weibull3 | 0.99 |  exp mul powervar | Min | 5 | 0 | 0 | 1 | 0 | 1 | 0 |
| woods | 143.06 |  mul | Min | 10001 | 0 | 0 | 1 | 0 | 1 | 0 |
| zangwil2 | 0.96 |  mul | Min | 3 | 0 | 0 | 1 | 0 | 1 | 0 |
| zhenglog | 0.98 |  exp div mul | Min | 4 | 0 | 0 | 1 | 0 | 1 | 0 |
