# morg

## Description
Mixed-integer nonlinear optimization problems.
There are `67` instances listed here.
`3` instances return error when loading.

## Source
These instances are recorded in [MINLP Cyber-Infrastructure](http://www.minlp.org/).

## Instance Stats
LT is the JuMP model loading time.


| NAME | LT | NLOPERATOR | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |
|------|----|------------|-------|-----|--------|--------|-----|--------|--------|-----------|
| 10proc_basecase_bm | 1.69 |  exp | Min | 50 | 10 | 0 | 56 | 49 | 7 | 0 |
| 10proc_basecase_hr | 1.65 |  exp | Min | 50 | 10 | 0 | 56 | 49 | 7 | 0 |
| 12proc_basecase_bm | 1.49 |  exp | Min | 57 | 12 | 0 | 64 | 55 | 9 | 0 |
| 12proc_basecase_hr | 1.52 |  exp | Min | 57 | 12 | 0 | 64 | 55 | 9 | 0 |
| 8proc_basecase_bm | 1.49 |  exp | Min | 42 | 8 | 0 | 60 | 55 | 5 | 0 |
| 8proc_basecase_hr | 1.49 |  exp | Min | 42 | 8 | 0 | 60 | 55 | 5 | 0 |
| Conventional | 3.69 |  div mul | Min | 642 | 20 | 0 | 1129 | 908 | 221 | 0 |
| DICOPTnonconvexUC_ZondervanE | 20.45 |  mul | Min | 961 | 720 | 0 | 5330 | 5329 | 1 | 0 |
| EPA_pooling_TC1_R1 | 2.13 |  powerfrac exp mul | Min | 215 | 30 | 0 | 341 | 291 | 50 | 0 |
| EPA_pooling_TC1_R2 | 2.21 |  powerfrac exp mul | Min | 215 | 30 | 0 | 341 | 291 | 50 | 0 |
| EPA_pooling_TC2_R1 | 2.49 |  powerfrac exp mul | Min | 332 | 45 | 0 | 525 | 439 | 86 | 0 |
| EPA_pooling_TC2_R2 | 2.61 |  powerfrac exp mul | Min | 332 | 45 | 0 | 525 | 439 | 86 | 0 |
| EPA_pooling_TC3_R1 | 5.11 |  powerfrac exp mul | Min | 1105 | 150 | 0 | 1718 | 1444 | 274 | 0 |
| EPA_pooling_TC3_R2 | 5.18 |  powerfrac exp mul | Min | 1105 | 150 | 0 | 1718 | 1444 | 274 | 0 |
| Ex_1a_WaterNet-B-Eps | 1.49 |  powerfrac | Min | 75 | 20 | 0 | 84 | 67 | 17 | 0 |
| Ex_1b_WaterNet-B-WOEps | 1.61 |  powerfrac | Min | 75 | 20 | 0 | 84 | 67 | 17 | 0 |
| Ex_1c_WaterNet-LG-Eps | 1.5 |  powerfrac | Min | 75 | 20 | 0 | 84 | 67 | 17 | 0 |
| Ex_1d_WaterNet-LG-WOEps | 1.64 |  powerfrac | Min | 75 | 20 | 0 | 84 | 67 | 17 | 0 |
| Ex_2_WaterNet-B-Eps | 2.22 |  powerfrac | Min | 233 | 72 | 0 | 250 | 204 | 46 | 0 |
| GMA_ethanol_model_BigM | - | - | - | - | - | - | - | - | - |
| GMA_ethanol_model_CH | - | - | - | - | - | - | - | - | - |
| General_Model_Case1 | 1.62 |  log div | Min | 113 | 12 | 0 | 121 | 73 | 48 | 0 |
| General_Model_Case2 | 1.8 |  powerfrac log div | Min | 149 | 16 | 0 | 167 | 102 | 65 | 0 |
| General_Model_Case3 | 2.93 |  powerfrac log div | Min | 581 | 60 | 0 | 511 | 270 | 241 | 0 |
| LeeCrudeOil1_scheduler | 3.15 |  mul | Max | 536 | 40 | 0 | 1241 | 1081 | 160 | 0 |
| LeeCrudeOil2_scheduler | 4.96 |  mul | Max | 1156 | 70 | 0 | 2582 | 2162 | 420 | 0 |
| LeeCrudeOil3_scheduler | 5.2 |  mul | Max | 1281 | 70 | 0 | 2787 | 2297 | 490 | 0 |
| LeeCrudeOil4_scheduler | 7.72 |  mul | Max | 1956 | 95 | 0 | 4242 | 3482 | 760 | 0 |
| M1withinc | - | - | - | - | - | - | - | - | - |
| MINLP-7-orders | 2.6 |  mul | Min | 329 | 200 | 56 | 688 | 624 | 64 | 0 |
| MINLP-9-orders | 2.87 |  mul | Min | 361 | 216 | 72 | 894 | 826 | 68 | 0 |
| MINLP | 808.34 |  div | Max | 1001 | 500 | 0 | 502 | 501 | 1 | 0 |
| Model_P1 | 1.58 |  sqrt div | Min | 28 | 21 | 0 | 28 | 27 | 1 | 0 |
| Model_P2 | 1.52 |  mul | Min | 28 | 3 | 0 | 31 | 25 | 6 | 0 |
| PROC8_EMP | 1.51 |  exp | Min | 42 | 8 | 0 | 68 | 63 | 5 | 0 |
| PROC8_MINLP | 1.49 |  exp | Min | 42 | 8 | 0 | 55 | 50 | 5 | 0 |
| STG_EX1 | 2.07 |  div | Max | 415 | 198 | 0 | 262 | 228 | 34 | 0 |
| STG_EX1a | 2.02 |  div | Max | 424 | 216 | 0 | 250 | 225 | 25 | 0 |
| STG_EX1b | 2.13 |  div | Max | 476 | 243 | 0 | 280 | 252 | 28 | 0 |
| STG_EX1c | 2.13 |  div | Max | 477 | 252 | 0 | 270 | 248 | 22 | 0 |
| STG_EX2 | 2.12 |  div | Max | 451 | 216 | 0 | 299 | 274 | 25 | 0 |
| STG_EX5 | 2.11 |  div | Max | 451 | 216 | 0 | 299 | 274 | 25 | 0 |
| STG_EX6 | 2.42 |  div | Max | 694 | 384 | 0 | 388 | 355 | 33 | 0 |
| Specilized_Model_Case1 | 1.58 |  powerfrac div mul | Min | 57 | 12 | 0 | 65 | 64 | 1 | 0 |
| TCD1_MINLPorg | 3.62 |  div mul | Min | 483 | 35 | 0 | 1296 | 1165 | 131 | 0 |
| TCD2_MINLPorg | 3.59 |  div mul | Min | 498 | 50 | 0 | 1311 | 1180 | 131 | 0 |
| UC_ZondervanE | 24.92 |  mul | Min | 961 | 720 | 0 | 5330 | 5329 | 1 | 0 |
| bcp5 | 1.59 |  div mul | Max | 91 | 6 | 0 | 104 | 74 | 30 | 0 |
| bcp6 | 1.67 |  div mul | Max | 119 | 7 | 0 | 135 | 88 | 47 | 0 |
| bcp7 | 1.91 |  div mul | Max | 135 | 8 | 0 | 154 | 98 | 56 | 0 |
| bcp8 | 2.18 |  div mul | Max | 169 | 9 | 0 | 191 | 112 | 79 | 0 |
| caso-1-sc-v2 | 5.41 |  div mul | Max | 1557 | 50 | 0 | 1266 | 565 | 701 | 0 |
| clay0203_BM | 1.41 |  mul | Min | 13 | 0 | 0 | 49 | 25 | 24 | 0 |
| clay0203_HR | 1.39 |  mul | Min | 13 | 0 | 0 | 49 | 25 | 24 | 0 |
| concbased | 1.96 |  powerfrac | Min | 361 | 5 | 0 | 320 | 291 | 29 | 0 |
| convex1 | 1.52 |  exp | Min | 47 | 24 | 0 | 74 | 72 | 2 | 0 |
| convex2 | 1.68 |  exp | Min | 101 | 60 | 0 | 218 | 216 | 2 | 0 |
| del_asl_minlp | 1.68 |  mul | Min | 82 | 10 | 0 | 101 | 80 | 21 | 0 |
| del_asl_miqp | 1.51 |  mul | Min | 72 | 10 | 0 | 80 | 79 | 1 | 0 |
| flowbased | 2.12 |  powerfrac | Min | 421 | 5 | 0 | 380 | 225 | 155 | 0 |
| generalizedpooling_lee1 | 1.62 |  mul | Min | 50 | 9 | 0 | 83 | 63 | 20 | 0 |
| generalizedpooling_lee2 | 1.78 |  mul | Min | 54 | 9 | 0 | 93 | 63 | 30 | 0 |
| generalizedpooling_meyer10 | 2.75 |  mul | Min | 395 | 187 | 0 | 424 | 391 | 33 | 0 |
| generalizedpooling_meyer15 | 3.98 |  mul | Min | 735 | 352 | 0 | 769 | 721 | 48 | 0 |
| generalizedpooling_meyer4 | 1.77 |  mul | Min | 119 | 55 | 0 | 142 | 127 | 15 | 0 |
| nonconvex1 | 1.54 |  powerfrac div | Min | 35 | 12 | 0 | 68 | 36 | 32 | 0 |
| nonconvex2 | 1.68 |  powerfrac div | Min | 77 | 36 | 0 | 206 | 108 | 98 | 0 |
