# PODLib

## Description
This library is a special library with selected instances from a variety of libraries.
It also includes some customized instances with various formulations.
There are in total `82` instances listed here.
`7` instances return error when loading.

## Instance Stats
LT is the JuMP model loading time.


| NAME | LT | NLOPERATOR | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |
|------|----|------------|-------|-----|--------|--------|-----|--------|--------|-----------|
| alkyl | 1.85 |  mul | Min | 15 | 0 | 0 | 8 | 1 | 2 | 5 |
| bayes2_10 | 1.94 |  mul | Min | 87 | 0 | 0 | 78 | 22 | 1 | 55 |
| blend029 | 1.39 |  mul | Max | 102 | 36 | 0 | 213 | 201 | 12 | 0 |
| blend146 | 1.88 |  mul | Max | 222 | 87 | 0 | 624 | 600 | 24 | 0 |
| blend480 | 2.2 |  mul | Max | 312 | 124 | 0 | 884 | 852 | 32 | 0 |
| blend531 | 1.95 |  mul | Max | 272 | 104 | 0 | 736 | 704 | 32 | 0 |
| blend718 | 1.74 |  mul | Max | 222 | 87 | 0 | 519 | 495 | 24 | 0 |
| blend721 | 1.86 |  mul | Max | 223 | 87 | 0 | 628 | 604 | 24 | 0 |
| blend852 | 2.22 |  mul | Max | 305 | 120 | 0 | 861 | 829 | 32 | 0 |
| camshape100 | 1.96 |  mul | Min | 200 | 0 | 0 | 201 | 100 | 1 | 100 |
| carton7 | 2.63 |  mul | Min | 329 | 200 | 56 | 688 | 623 | 1 | 64 |
| castro10m2 | 1.22 |  mul | Min | 156 | 0 | 0 | 138 | 78 | 60 | 0 |
| castro11m2 | 1.47 |  mul | Min | 384 | 0 | 0 | 252 | 140 | 112 | 0 |
| castro12m2 | 1.8 |  mul | Min | 517 | 0 | 0 | 408 | 188 | 220 | 0 |
| castro13m2 | 2.68 |  mul | Min | 1040 | 0 | 0 | 783 | 303 | 480 | 0 |
| castro14m2 | 1.32 |  mul | Min | 209 | 0 | 0 | 205 | 115 | 90 | 0 |
| castro15m2 | 1.2 |  mul | Min | 174 | 0 | 0 | 152 | 104 | 48 | 0 |
| castro16m2 | 1.42 |  mul | Min | 244 | 0 | 0 | 234 | 108 | 126 | 0 |
| castro2m2 | 0.98 |  mul | Min | 42 | 0 | 0 | 45 | 33 | 12 | 0 |
| castro3m2 | 1.07 |  mul | Min | 51 | 0 | 0 | 54 | 42 | 12 | 0 |
| castro4m2 | 1.02 |  mul | Min | 76 | 0 | 0 | 66 | 48 | 18 | 0 |
| castro5m2 | 1.2 |  mul | Min | 182 | 0 | 0 | 152 | 104 | 48 | 0 |
| castro6m2 | 1.21 |  mul | Min | 174 | 0 | 0 | 152 | 104 | 48 | 0 |
| castro7m2 | 1.17 |  mul | Min | 174 | 0 | 0 | 152 | 104 | 48 | 0 |
| castro8m2 | 1.52 |  mul | Min | 359 | 0 | 0 | 335 | 251 | 84 | 0 |
| castro9m2 | 1.96 |  mul | Min | 517 | 0 | 0 | 573 | 363 | 210 | 0 |
| circleN | - | - | - | - | - | - | - | - | - |
| crudeoil_lee1_05 | 3.03 |  mul | Max | 536 | 40 | 0 | 1241 | 1081 | 0 | 160 |
| crudeoil_li01 | 2.45 |  mul | Max | 345 | 48 | 0 | 696 | 640 | 0 | 56 |
| dispatch | 1.57 |  mul | Min | 5 | 0 | 0 | 3 | 0 | 1 | 2 |
| du-opt | - | - | - | - | - | - | - | - | - |
| edgecross10-090 | 4.01 |  mul | Min | 91 | 90 | 0 | 481 | 480 | 0 | 1 |
| elf | 1.74 |  mul | Min | 55 | 24 | 0 | 39 | 11 | 1 | 27 |
| eniplac | - | - | - | - | - | - | - | - | - |
| ex1223a | 1.18 |  mul | Min | 7 | 4 | 0 | 15 | 11 | 4 | 0 |
| ex1264 | 1.24 |  mul | Min | 88 | 68 | 0 | 95 | 91 | 4 | 0 |
| ex1265 | 1.2 |  mul | Min | 130 | 100 | 0 | 134 | 129 | 5 | 0 |
| ex1266 | 1.2 |  mul | Min | 180 | 138 | 0 | 178 | 172 | 6 | 0 |
| fdesign10 | 2.23 |  mul | Min | 15 | 0 | 0 | 307 | 306 | 0 | 1 |
| forest | 2.18 |  mul | Max | 237 | 73 | 0 | 310 | 285 | 1 | 24 |
| fuel | 1.15 |  mul | Min | 15 | 3 | 0 | 30 | 27 | 3 | 0 |
| gasprod_sarawak01 | 1.83 |  mul | Min | 132 | 38 | 0 | 213 | 179 | 0 | 34 |
| gear4 | 1.33 |  div | Min | 7 | 0 | 4 | 2 | 1 | 1 | 0 |
| genpooling_lee1 | 1.29 |  mul | Min | 50 | 9 | 0 | 83 | 63 | 20 | 0 |
| genpooling_lee2 | 1.56 |  mul | Min | 54 | 9 | 0 | 93 | 63 | 30 | 0 |
| genpooling_meyer04 | 1.68 |  mul | Min | 119 | 55 | 0 | 142 | 127 | 15 | 0 |
| genpooling_meyer10 | 2.52 |  mul | Min | 395 | 187 | 0 | 424 | 391 | 33 | 0 |
| genpooling_meyer15 | 3.9 |  mul | Min | 735 | 352 | 0 | 769 | 721 | 48 | 0 |
| graphpart_clique-50 | 5.27 |  mul | Min | 151 | 150 | 0 | 51 | 50 | 1 | 0 |
| haverly | 1.49 |  mul | Min | 13 | 0 | 0 | 10 | 7 | 0 | 3 |
| house | 1.64 |  mul | Min | 9 | 0 | 0 | 9 | 6 | 1 | 2 |
| hybriddynamic_fixed | 1.85 |  mul | Min | 72 | 10 | 0 | 80 | 79 | 0 | 1 |
| hydro | 1.65 |  mul | Min | 32 | 0 | 0 | 25 | 18 | 0 | 7 |
| hydroenergy1 | 2.23 |  mul | Max | 289 | 96 | 0 | 429 | 381 | 0 | 48 |
| johnall | 15.78 |  mul | Min | 195 | 190 | 0 | 193 | 2 | 191 | 0 |
| kall_circles_c6a | 1.65 |  mul | Min | 18 | 0 | 0 | 54 | 32 | 0 | 22 |
| knp3-12 | 1.56 |  mul | Max | 37 | 0 | 0 | 78 | 0 | 0 | 78 |
| knp4-24 | 2.16 |  mul | Max | 97 | 0 | 0 | 300 | 0 | 0 | 300 |
| knp5-40 | 4.88 |  mul | Max | 201 | 0 | 0 | 820 | 0 | 820 | 0 |
| knp5-41 | 3.99 |  mul | Max | 206 | 0 | 0 | 861 | 0 | 0 | 861 |
| knp5-42 | 3.99 |  mul | Max | 211 | 0 | 0 | 903 | 0 | 0 | 903 |
| knp5-43 | 4.17 |  mul | Max | 216 | 0 | 0 | 946 | 0 | 0 | 946 |
| knp5-44 | 4.2 |  mul | Max | 221 | 0 | 0 | 990 | 0 | 0 | 990 |
| kport20 | 1.68 |  powerfrac | Min | 102 | 2 | 38 | 28 | 8 | 20 | 0 |
| kport40 | 1.72 |  powerfrac | Min | 268 | 3 | 111 | 49 | 11 | 38 | 0 |
| meanvarx | 1.07 |  mul | Min | 35 | 14 | 0 | 44 | 44 | 0 | 0 |
| multi3N | - | - | - | - | - | - | - | - | - |
| multi4N | - | - | - | - | - | - | - | - | - |
| multiKND | - | - | - | - | - | - | - | - | - |
| multiplants_mtg1a | 2.3 |  mul | Min | 194 | 93 | 0 | 257 | 229 | 1 | 27 |
| ndcc12 | 2.37 |  mul | Min | 645 | 46 | 0 | 238 | 190 | 2 | 46 |
| nlp1 | 0.56 |  mul | Min | 2 | 0 | 0 | 1 | 0 | 1 | 0 |
| nlp2 | 0.58 |  mul | Min | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| nlp3 | 1.1 |  mul | Min | 8 | 0 | 0 | 6 | 3 | 3 | 0 |
| o8_ar4_1 | 2.01 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| pooling_adhya1pq | 1.62 |  mul | Min | 34 | 0 | 0 | 50 | 30 | 0 | 20 |
| primary | 2.42 |  powerfrac exp log div mul | Min | 82 | 8 | 52 | 164 | 139 | 16 | 9 |
| saa_2 | 75.5 |  mul | Min | 4408 | 400 | 0 | 6206 | 2406 | 2000 | 1800 |
| simpleN | - | - | - | - | - | - | - | - | - |
| tln7 | 1.63 |  mul | Min | 64 | 7 | 56 | 43 | 36 | 0 | 7 |
| util | 1.32 |  mul | Min | 145 | 28 | 0 | 167 | 163 | 4 | 0 |
| wager | 2.0 |  div mul | Min | 157 | 30 | 54 | 143 | 100 | 34 | 9 |
