# minlp

## Description
Mixed-integer nonlinear optimization problems. There are `249` instances included
here. `9` instances return error when loading.

## Source
These instances are recorded in [MINLP World](http://www.gamsworld.org/minlp/)

## Instance Stats
LT is the JuMP model loading time.


| NAME | LT | NLOPERATOR | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |
|------|----|------------|-------|-----|--------|--------|-----|--------|--------|-----------|
| 4stufen | 1.69 |  powerfrac log div mul | Min | 150 | 48 | 0 | 99 | 65 | 34 | 0 |
| alan | 1.3 |  mul | Min | 9 | 4 | 0 | 8 | 7 | 1 | 0 |
| batch | 1.59 |  exp | Min | 47 | 24 | 0 | 74 | 72 | 2 | 0 |
| batchdes | 1.55 |  exp | Min | 20 | 9 | 0 | 20 | 18 | 2 | 0 |
| beuster | 1.74 |  powerfrac log div mul | Min | 158 | 52 | 0 | 115 | 68 | 47 | 0 |
| cecil_13 | 2.77 |  powerfrac | Min | 841 | 180 | 0 | 899 | 719 | 180 | 0 |
| chp_partload | 5.94 |  powerfrac log div mul | Min | 2249 | 45 | 0 | 2517 | 2027 | 490 | 0 |
| contvar | 2.34 |  powerfrac exp log | Min | 297 | 88 | 0 | 285 | 165 | 120 | 0 |
| csched1 | 1.53 |  exp div | Min | 77 | 63 | 0 | 23 | 22 | 1 | 0 |
| csched1a | 1.49 |  exp div | Min | 29 | 15 | 0 | 23 | 22 | 1 | 0 |
| csched2 | 1.92 |  exp div | Min | 401 | 308 | 0 | 138 | 137 | 1 | 0 |
| csched2a | 1.86 |  exp div | Min | 233 | 140 | 0 | 138 | 137 | 1 | 0 |
| du-opt | 4.02 |  mul | Min | 21 | 0 | 13 | 10 | 9 | 1 | 0 |
| du-opt5 | 4.07 |  mul | Min | 21 | 0 | 13 | 10 | 9 | 1 | 0 |
| eg_all_s | 103.55 |  exp mul | Min | 8 | 0 | 7 | 28 | 0 | 28 | 0 |
| eg_disc2_s | 99.77 |  exp mul | Min | 8 | 0 | 3 | 28 | 0 | 28 | 0 |
| eg_disc_s | 104.91 |  exp mul | Min | 8 | 0 | 4 | 28 | 0 | 28 | 0 |
| eg_int_s | 87.48 |  exp mul | Min | 8 | 0 | 3 | 28 | 0 | 28 | 0 |
| elf | 1.44 |  mul | Min | 55 | 24 | 0 | 39 | 12 | 27 | 0 |
| eniplac | 1.75 |  mul | Min | 142 | 24 | 0 | 190 | 166 | 24 | 0 |
| enpro48 | 1.75 |  exp | Min | 154 | 92 | 0 | 215 | 213 | 2 | 0 |
| enpro48pb | 1.71 |  exp | Min | 154 | 92 | 0 | 215 | 213 | 2 | 0 |
| enpro56 | 1.83 |  exp | Min | 128 | 73 | 0 | 192 | 190 | 2 | 0 |
| enpro56pb | 1.83 |  exp | Min | 128 | 73 | 0 | 192 | 190 | 2 | 0 |
| ex1221 | 1.48 |  powerfrac mul | Min | 6 | 3 | 0 | 6 | 4 | 2 | 0 |
| ex1222 | 1.59 |  exp mul | Min | 4 | 1 | 0 | 4 | 2 | 2 | 0 |
| ex1223 | 1.36 |  log mul | Min | 12 | 4 | 0 | 14 | 9 | 5 | 0 |
| ex1223a | 1.49 |  mul | Min | 8 | 4 | 0 | 10 | 5 | 5 | 0 |
| ex1223b | 1.34 |  log mul | Min | 8 | 4 | 0 | 10 | 5 | 5 | 0 |
| ex1224 | 1.34 |  log | Min | 12 | 8 | 0 | 8 | 4 | 4 | 0 |
| ex1225 | 1.57 |  powerfrac | Min | 9 | 6 | 0 | 11 | 10 | 1 | 0 |
| ex1226 | 1.43 |  powerfrac mul | Min | 6 | 3 | 0 | 6 | 5 | 1 | 0 |
| ex1233 | 1.7 |  powerfrac div | Min | 53 | 12 | 0 | 65 | 64 | 1 | 0 |
| ex1243 | 1.72 |  div | Min | 69 | 16 | 0 | 97 | 96 | 1 | 0 |
| ex1244 | 1.69 |  div | Min | 96 | 23 | 0 | 130 | 129 | 1 | 0 |
| ex1252 | 1.54 |  mul | Min | 40 | 15 | 0 | 44 | 31 | 13 | 0 |
| ex1252a | 1.56 |  mul | Min | 25 | 3 | 6 | 35 | 22 | 13 | 0 |
| ex1263 | 1.55 |  mul | Min | 93 | 72 | 0 | 56 | 52 | 4 | 0 |
| ex1263a | 1.48 |  mul | Min | 25 | 4 | 20 | 36 | 32 | 4 | 0 |
| ex1264 | 1.57 |  mul | Min | 89 | 68 | 0 | 56 | 52 | 4 | 0 |
| ex1264a | 1.53 |  mul | Min | 25 | 4 | 20 | 36 | 32 | 4 | 0 |
| ex1265 | 1.61 |  mul | Min | 131 | 100 | 0 | 75 | 70 | 5 | 0 |
| ex1265a | 1.5 |  mul | Min | 36 | 5 | 30 | 45 | 40 | 5 | 0 |
| ex1266 | 1.67 |  mul | Min | 181 | 138 | 0 | 96 | 90 | 6 | 0 |
| ex1266a | 1.54 |  mul | Min | 49 | 6 | 42 | 54 | 48 | 6 | 0 |
| ex3 | 1.52 |  exp | Min | 33 | 8 | 0 | 32 | 27 | 5 | 0 |
| ex3pb | 1.47 |  exp | Min | 33 | 8 | 0 | 32 | 27 | 5 | 0 |
| ex4 | 1.74 |  mul | Min | 37 | 25 | 0 | 31 | 5 | 26 | 0 |
| fac1 | 1.5 |  powerfrac | Min | 23 | 6 | 0 | 19 | 18 | 1 | 0 |
| fac2 | 1.62 |  powerfrac | Min | 67 | 12 | 0 | 34 | 33 | 1 | 0 |
| fac3 | 1.52 |  mul | Min | 67 | 12 | 0 | 34 | 33 | 1 | 0 |
| feedtray | 2.1 |  powerfrac exp div mul | Min | 98 | 7 | 0 | 92 | 30 | 62 | 0 |
| feedtray2 | 2.34 |  mul | Min | 88 | 36 | 0 | 284 | 137 | 147 | 0 |
| fo7 | 1.75 |  div | Min | 115 | 42 | 0 | 212 | 198 | 14 | 0 |
| fo7_2 | 1.81 |  div | Min | 115 | 42 | 0 | 212 | 198 | 14 | 0 |
| fo7_ar25_1 | 1.86 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| fo7_ar2_1 | 1.84 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| fo7_ar3_1 | 1.86 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| fo7_ar4_1 | 1.85 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| fo7_ar5_1 | 1.89 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| fo8 | 1.86 |  div | Min | 147 | 56 | 0 | 274 | 258 | 16 | 0 |
| fo8_ar25_1 | 2.0 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| fo8_ar2_1 | 1.94 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| fo8_ar3_1 | 1.95 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| fo8_ar4_1 | 1.92 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| fo8_ar5_1 | 2.0 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| fo9 | 1.91 |  div | Min | 183 | 72 | 0 | 344 | 326 | 18 | 0 |
| fo9_ar25_1 | 2.04 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| fo9_ar2_1 | 2.1 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| fo9_ar3_1 | 2.09 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| fo9_ar4_1 | 2.09 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| fo9_ar5_1 | 2.2 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| fuel | 1.34 |  mul | Min | 16 | 3 | 0 | 16 | 12 | 4 | 0 |
| gasnet | 1.59 |  powerfrac div mul | Min | 91 | 10 | 0 | 70 | 26 | 44 | 0 |
| gastrans | 1.8 |  mul | Min | 107 | 21 | 0 | 150 | 126 | 24 | 0 |
| gbd | 1.41 |  mul | Min | 5 | 3 | 0 | 5 | 4 | 1 | 0 |
| gear | 1.07 |  div mul | Min | 5 | 0 | 4 | 1 | 0 | 1 | 0 |
| gear2 | 1.43 |  div mul | Min | 29 | 24 | 0 | 5 | 4 | 1 | 0 |
| gear3 | 1.33 |  div mul | Min | 9 | 0 | 4 | 5 | 4 | 1 | 0 |
| gear4 | 1.33 |  div | Min | 7 | 0 | 4 | 2 | 1 | 1 | 0 |
| ghg_1veh | 1.63 |  exp div mul | Min | 30 | 12 | 0 | 38 | 10 | 28 | 0 |
| ghg_2veh | 1.74 |  exp div mul | Min | 58 | 18 | 0 | 63 | 15 | 48 | 0 |
| ghg_3veh | 2.07 |  exp div mul | Min | 97 | 36 | 0 | 120 | 32 | 88 | 0 |
| gkocis | 1.48 |  log | Min | 12 | 3 | 0 | 9 | 7 | 2 | 0 |
| hda | 2.79 |  powerfrac exp log sqrt mul div | Min | 723 | 13 | 0 | 719 | 568 | 151 | 0 |
| hmittelman | 1.13 |  mul | Min | 17 | 16 | 0 | 8 | 0 | 8 | 0 |
| johnall | 15.49 |  mul | Min | 195 | 190 | 0 | 193 | 2 | 191 | 0 |
| lop97ic | 10.28 |  mul | Min | 1754 | 0 | 1662 | 92 | 52 | 40 | 0 |
| lop97icx | 19.45 |  mul | Min | 987 | 0 | 899 | 88 | 48 | 40 | 0 |
| m3 | 1.65 |  div | Min | 27 | 6 | 0 | 44 | 38 | 6 | 0 |
| m6 | 1.65 |  div | Min | 87 | 30 | 0 | 158 | 146 | 12 | 0 |
| m7 | 1.74 |  div | Min | 115 | 42 | 0 | 212 | 198 | 14 | 0 |
| m7_ar25_1 | 1.88 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| m7_ar2_1 | 1.86 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| m7_ar3_1 | 1.82 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| m7_ar4_1 | 1.82 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| m7_ar5_1 | 1.93 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| mbtd | - | - | - | - | - | - | - | - | - |
| meanvarx | 1.59 |  mul | Min | 36 | 14 | 0 | 45 | 44 | 1 | 0 |
| minlphix | 1.77 |  sqrt div | Min | 85 | 20 | 0 | 93 | 88 | 5 | 0 |
| netmod_dol1 | 5.47 |  mul | Min | 1999 | 462 | 0 | 3138 | 3137 | 1 | 0 |
| netmod_dol2 | 7.88 |  mul | Min | 1999 | 462 | 0 | 3081 | 3080 | 1 | 0 |
| netmod_kar1 | 2.4 |  mul | Min | 457 | 136 | 0 | 667 | 666 | 1 | 0 |
| netmod_kar2 | 2.27 |  mul | Min | 457 | 136 | 0 | 667 | 666 | 1 | 0 |
| no7_ar25_1 | 1.84 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| no7_ar2_1 | 1.87 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| no7_ar3_1 | 1.9 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| no7_ar4_1 | 1.85 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| no7_ar5_1 | 1.83 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| nous1 | 1.55 |  mul | Min | 51 | 2 | 0 | 44 | 15 | 29 | 0 |
| nous2 | 1.57 |  mul | Min | 51 | 2 | 0 | 44 | 15 | 29 | 0 |
| nuclear104 | 36.43 |  mul | Min | 23814 | 10816 | 0 | 14246 | 11025 | 3221 | 0 |
| nuclear10a | 19.91 |  mul | Min | 13011 | 10920 | 0 | 3340 | 210 | 3130 | 0 |
| nuclear10b | 41.34 |  mul | Min | 23827 | 10920 | 0 | 24972 | 21946 | 3026 | 0 |
| nuclear14 | 4.32 |  mul | Min | 1563 | 576 | 0 | 1227 | 625 | 602 | 0 |
| nuclear14a | 3.44 |  mul | Min | 993 | 600 | 0 | 634 | 50 | 584 | 0 |
| nuclear14b | 4.49 |  mul | Min | 1569 | 600 | 0 | 1786 | 1226 | 560 | 0 |
| nuclear25 | 4.37 |  mul | Min | 1679 | 625 | 0 | 1304 | 676 | 628 | 0 |
| nuclear25a | 3.55 |  mul | Min | 1059 | 650 | 0 | 660 | 52 | 608 | 0 |
| nuclear25b | 4.74 |  mul | Min | 1684 | 650 | 0 | 1910 | 1327 | 583 | 0 |
| nuclear49 | 10.82 |  mul | Min | 5736 | 2401 | 0 | 3874 | 2500 | 1374 | 0 |
| nuclear49a | 7.14 |  mul | Min | 3342 | 2450 | 0 | 1432 | 100 | 1332 | 0 |
| nuclear49b | 12.31 |  mul | Min | 5743 | 2450 | 0 | 6234 | 4951 | 1283 | 0 |
| nuclearva | 2.33 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nuclearvb | 2.44 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nuclearvc | 2.34 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nuclearvd | 2.59 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nuclearve | 2.48 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nuclearvf | 2.56 |  mul | Min | 352 | 168 | 0 | 318 | 51 | 267 | 0 |
| nvs01 | 1.32 |  sqrt div mul | Min | 4 | 0 | 2 | 4 | 1 | 3 | 0 |
| nvs02 | 1.1 |  mul | Min | 9 | 0 | 5 | 4 | 0 | 4 | 0 |
| nvs03 | 1.36 |  mul | Min | 3 | 0 | 2 | 3 | 1 | 2 | 0 |
| nvs04 | 1.06 |  mul | Min | 3 | 0 | 2 | 1 | 0 | 1 | 0 |
| nvs05 | 1.4 |  sqrt div mul | Min | 9 | 0 | 2 | 10 | 1 | 9 | 0 |
| nvs06 | 1.06 |  div mul | Min | 3 | 0 | 2 | 1 | 0 | 1 | 0 |
| nvs07 | 1.3 |  mul | Min | 4 | 0 | 3 | 3 | 1 | 2 | 0 |
| nvs08 | 1.07 |  sqrt div mul | Min | 4 | 0 | 2 | 4 | 0 | 4 | 0 |
| nvs09 | 1.1 |  powerfrac log mul | Min | 11 | 0 | 10 | 1 | 0 | 1 | 0 |
| nvs10 | 1.16 |  mul | Min | 3 | 0 | 2 | 3 | 0 | 3 | 0 |
| nvs11 | 1.21 |  mul | Min | 4 | 0 | 3 | 4 | 0 | 4 | 0 |
| nvs12 | 1.1 |  mul | Min | 5 | 0 | 4 | 5 | 0 | 5 | 0 |
| nvs13 | 1.14 |  mul | Min | 6 | 0 | 5 | 6 | 0 | 6 | 0 |
| nvs14 | 1.2 |  mul | Min | 9 | 0 | 5 | 4 | 0 | 4 | 0 |
| nvs15 | 1.56 |  mul | Min | 4 | 0 | 3 | 2 | 1 | 1 | 0 |
| nvs16 | 1.17 |  mul | Min | 3 | 0 | 2 | 1 | 0 | 1 | 0 |
| nvs17 | 1.25 |  mul | Min | 8 | 0 | 7 | 8 | 0 | 8 | 0 |
| nvs18 | 1.17 |  mul | Min | 7 | 0 | 6 | 7 | 0 | 7 | 0 |
| nvs19 | 1.41 |  mul | Min | 9 | 0 | 8 | 9 | 0 | 9 | 0 |
| nvs20 | 1.5 |  mul | Min | 17 | 0 | 5 | 9 | 8 | 1 | 0 |
| nvs21 | 1.08 |  mul | Min | 4 | 0 | 2 | 3 | 0 | 3 | 0 |
| nvs22 | 1.41 |  sqrt div mul | Min | 9 | 0 | 4 | 10 | 1 | 9 | 0 |
| nvs23 | 1.49 |  mul | Min | 10 | 0 | 9 | 10 | 0 | 10 | 0 |
| nvs24 | 1.63 |  mul | Min | 11 | 0 | 10 | 11 | 0 | 11 | 0 |
| o7 | 1.73 |  div | Min | 115 | 42 | 0 | 212 | 198 | 14 | 0 |
| o7_2 | 1.82 |  div | Min | 115 | 42 | 0 | 212 | 198 | 14 | 0 |
| o7_ar25_1 | 1.88 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| o7_ar2_1 | 1.86 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| o7_ar3_1 | 1.89 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| o7_ar4_1 | 1.97 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| o7_ar5_1 | 1.89 |  div | Min | 113 | 0 | 42 | 270 | 256 | 14 | 0 |
| o8_ar4_1 | 2.07 |  div | Min | 145 | 0 | 56 | 348 | 332 | 16 | 0 |
| o9_ar4_1 | 2.06 |  div | Min | 181 | 0 | 72 | 436 | 418 | 18 | 0 |
| oaer | 1.48 |  log | Min | 10 | 3 | 0 | 8 | 6 | 2 | 0 |
| oil | 4.4 |  powerfrac log div mul log10 | Min | 1536 | 19 | 0 | 1547 | 1129 | 418 | 0 |
| oil2 | 3.28 |  powerfrac log div mul log10 abs | Min | 937 | 2 | 0 | 927 | 643 | 284 | 0 |
| ortez | 1.57 |  powerfrac | Min | 88 | 18 | 0 | 75 | 48 | 27 | 0 |
| parallel | 2.01 |  div | Min | 206 | 25 | 0 | 116 | 111 | 5 | 0 |
| pb302035 | - | - | - | - | - | - | - | - | - |
| pb302055 | - | - | - | - | - | - | - | - | - |
| pb302075 | - | - | - | - | - | - | - | - | - |
| pb302095 | - | - | - | - | - | - | - | - | - |
| pb351535 | - | - | - | - | - | - | - | - | - |
| pb351555 | - | - | - | - | - | - | - | - | - |
| pb351575 | - | - | - | - | - | - | - | - | - |
| pb351595 | - | - | - | - | - | - | - | - | - |
| prob02 | 1.38 |  mul | Min | 7 | 0 | 6 | 9 | 4 | 5 | 0 |
| prob03 | 1.43 |  mul | Min | 3 | 0 | 2 | 2 | 1 | 1 | 0 |
| procsel | 1.57 |  exp | Min | 11 | 3 | 0 | 8 | 6 | 2 | 0 |
| product | 3.85 |  mul | Min | 1554 | 107 | 0 | 1926 | 1794 | 132 | 0 |
| product2 | 5.77 |  mul | Min | 2843 | 128 | 0 | 3126 | 2598 | 528 | 0 |
| pump | 1.55 |  mul | Min | 25 | 3 | 6 | 35 | 22 | 13 | 0 |
| qap | 166.21 |  mul | Min | 226 | 225 | 0 | 31 | 30 | 1 | 0 |
| qapw | 23.85 |  mul | Min | 451 | 225 | 0 | 256 | 255 | 1 | 0 |
| ravem | 1.72 |  exp | Min | 113 | 54 | 0 | 187 | 185 | 2 | 0 |
| ravempb | 1.7 |  exp | Min | 113 | 54 | 0 | 187 | 185 | 2 | 0 |
| risk2b | 2.26 |  powerfrac | Min | 464 | 14 | 0 | 581 | 580 | 1 | 0 |
| risk2bpb | 2.29 |  powerfrac | Min | 464 | 14 | 0 | 581 | 580 | 1 | 0 |
| saa_2 | 77.1 |  mul | Min | 4408 | 400 | 0 | 6206 | 2406 | 3800 | 0 |
| sep1 | 1.62 |  mul | Min | 30 | 2 | 0 | 32 | 26 | 6 | 0 |
| space25 | 2.04 |  mul | Min | 894 | 750 | 0 | 236 | 211 | 25 | 0 |
| space25a | 1.87 |  mul | Min | 384 | 240 | 0 | 202 | 177 | 25 | 0 |
| space960 | 13.6 |  mul | Min | 5538 | 0 | 960 | 6498 | 5538 | 960 | 0 |
| spectra2 | 1.84 |  mul | Min | 70 | 30 | 0 | 73 | 65 | 8 | 0 |
| spring | 1.49 |  div mul | Min | 18 | 11 | 1 | 9 | 3 | 6 | 0 |
| st_e13 | 1.46 |  mul | Min | 3 | 1 | 0 | 3 | 2 | 1 | 0 |
| st_e14 | 1.33 |  log mul | Min | 12 | 4 | 0 | 14 | 9 | 5 | 0 |
| st_e15 | 1.44 |  powerfrac mul | Min | 6 | 3 | 0 | 6 | 4 | 2 | 0 |
| st_e27 | 1.47 |  mul | Min | 5 | 2 | 0 | 7 | 6 | 1 | 0 |
| st_e29 | 1.43 |  log | Min | 12 | 8 | 0 | 8 | 4 | 4 | 0 |
| st_e31 | 1.64 |  mul | Min | 113 | 24 | 0 | 136 | 131 | 5 | 0 |
| st_e32 | 1.6 |  powerfrac exp log div mul | Min | 36 | 0 | 19 | 19 | 6 | 13 | 0 |
| st_e35 | 1.57 |  powerfrac div mul | Min | 33 | 7 | 0 | 40 | 39 | 1 | 0 |
| st_e36 | 1.12 |  exp mul | Min | 3 | 0 | 1 | 3 | 0 | 3 | 0 |
| st_e38 | 1.32 |  mul | Min | 5 | 0 | 2 | 4 | 2 | 2 | 0 |
| st_e40 | 1.59 |  mul | Min | 5 | 0 | 3 | 9 | 5 | 4 | 0 |
| st_miqp1 | 1.36 |  mul | Min | 6 | 0 | 5 | 2 | 1 | 1 | 0 |
| st_miqp2 | 1.36 |  mul | Min | 5 | 0 | 4 | 4 | 3 | 1 | 0 |
| st_miqp3 | 1.32 |  mul | Min | 3 | 0 | 2 | 2 | 1 | 1 | 0 |
| st_miqp4 | 1.33 |  mul | Min | 7 | 0 | 3 | 5 | 4 | 1 | 0 |
| st_miqp5 | 1.43 |  mul | Min | 8 | 0 | 2 | 14 | 13 | 1 | 0 |
| st_test1 | 1.29 |  mul | Min | 6 | 0 | 5 | 2 | 1 | 1 | 0 |
| st_test2 | 1.32 |  mul | Min | 7 | 0 | 6 | 3 | 2 | 1 | 0 |
| st_test3 | 1.34 |  mul | Min | 14 | 0 | 13 | 11 | 10 | 1 | 0 |
| st_test4 | 1.45 |  mul | Min | 7 | 0 | 6 | 6 | 5 | 1 | 0 |
| st_test5 | 1.59 |  mul | Min | 11 | 0 | 10 | 12 | 11 | 1 | 0 |
| st_test6 | 1.47 |  mul | Min | 11 | 0 | 10 | 6 | 5 | 1 | 0 |
| st_test8 | 1.5 |  mul | Min | 25 | 0 | 24 | 21 | 20 | 1 | 0 |
| st_testgr1 | 1.35 |  mul | Min | 11 | 0 | 10 | 6 | 5 | 1 | 0 |
| st_testgr3 | 1.35 |  mul | Min | 21 | 0 | 20 | 21 | 20 | 1 | 0 |
| st_testph4 | 1.57 |  mul | Min | 4 | 0 | 3 | 11 | 10 | 1 | 0 |
| stockcycle | 1.63 |  div | Min | 481 | 432 | 0 | 98 | 97 | 1 | 0 |
| super1 | 4.56 |  powerfrac exp log div mul | Min | 1308 | 44 | 0 | 1659 | 1285 | 374 | 0 |
| super2 | 4.49 |  powerfrac exp log div mul | Min | 1308 | 44 | 0 | 1659 | 1285 | 374 | 0 |
| super3 | 4.65 |  powerfrac exp log div mul | Min | 1308 | 44 | 0 | 1659 | 1285 | 374 | 0 |
| super3t | 3.94 |  log div mul | Min | 1056 | 44 | 0 | 1343 | 1103 | 240 | 0 |
| synheat | 1.59 |  powerfrac div | Min | 57 | 12 | 0 | 65 | 64 | 1 | 0 |
| synthes1 | 1.46 |  log | Min | 7 | 3 | 0 | 7 | 4 | 3 | 0 |
| synthes2 | 1.45 |  exp log | Min | 12 | 5 | 0 | 15 | 11 | 4 | 0 |
| synthes3 | 1.51 |  exp log | Min | 18 | 8 | 0 | 24 | 19 | 5 | 0 |
| tln12 | 1.8 |  mul | Min | 169 | 12 | 156 | 73 | 61 | 12 | 0 |
| tln2 | 1.44 |  mul | Min | 9 | 2 | 6 | 13 | 11 | 2 | 0 |
| tln4 | 1.5 |  mul | Min | 25 | 4 | 20 | 25 | 21 | 4 | 0 |
| tln5 | 1.52 |  mul | Min | 36 | 5 | 30 | 31 | 26 | 5 | 0 |
| tln6 | 1.54 |  mul | Min | 49 | 6 | 42 | 37 | 31 | 6 | 0 |
| tln7 | 1.55 |  mul | Min | 64 | 7 | 56 | 43 | 36 | 7 | 0 |
| tloss | 1.54 |  mul | Min | 49 | 6 | 42 | 54 | 48 | 6 | 0 |
| tls12 | 3.6 |  sqrt | Min | 813 | 656 | 12 | 385 | 373 | 12 | 0 |
| tls2 | 1.56 |  sqrt | Min | 38 | 31 | 2 | 25 | 23 | 2 | 0 |
| tls4 | 1.77 |  sqrt | Min | 106 | 85 | 4 | 65 | 61 | 4 | 0 |
| tls5 | 1.74 |  sqrt | Min | 162 | 131 | 5 | 91 | 86 | 5 | 0 |
| tls6 | 1.92 |  sqrt | Min | 216 | 173 | 6 | 121 | 115 | 6 | 0 |
| tls7 | 2.1 |  sqrt | Min | 346 | 289 | 7 | 155 | 148 | 7 | 0 |
| tltr | 1.68 |  mul | Min | 49 | 12 | 36 | 55 | 52 | 3 | 0 |
| uselinear | 16.86 |  powerfrac exp log mul | Min | 6793 | 58 | 0 | 7031 | 1266 | 5765 | 0 |
| util | 1.66 |  mul | Min | 146 | 28 | 0 | 168 | 164 | 4 | 0 |
| waste | 5.96 |  mul | Min | 2485 | 400 | 0 | 1992 | 624 | 1368 | 0 |
| water4 | 1.78 |  mul | Min | 196 | 126 | 0 | 138 | 123 | 15 | 0 |
| waterx | 1.71 |  powerfrac div | Min | 71 | 14 | 0 | 55 | 39 | 16 | 0 |
| waterz | 1.83 |  mul | Min | 196 | 126 | 0 | 138 | 123 | 15 | 0 |
