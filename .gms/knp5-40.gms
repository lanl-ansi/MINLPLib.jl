$offlisting
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        820       40      780        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        201      201        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       8780      780     8000        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203,e204,e205,e206,e207
          ,e208,e209,e210,e211,e212,e213,e214,e215,e216,e217,e218,e219,e220
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229,e230,e231,e232,e233
          ,e234,e235,e236,e237,e238,e239,e240,e241,e242,e243,e244,e245,e246
          ,e247,e248,e249,e250,e251,e252,e253,e254,e255,e256,e257,e258,e259
          ,e260,e261,e262,e263,e264,e265,e266,e267,e268,e269,e270,e271,e272
          ,e273,e274,e275,e276,e277,e278,e279,e280,e281,e282,e283,e284,e285
          ,e286,e287,e288,e289,e290,e291,e292,e293,e294,e295,e296,e297,e298
          ,e299,e300,e301,e302,e303,e304,e305,e306,e307,e308,e309,e310,e311
          ,e312,e313,e314,e315,e316,e317,e318,e319,e320,e321,e322,e323,e324
          ,e325,e326,e327,e328,e329,e330,e331,e332,e333,e334,e335,e336,e337
          ,e338,e339,e340,e341,e342,e343,e344,e345,e346,e347,e348,e349,e350
          ,e351,e352,e353,e354,e355,e356,e357,e358,e359,e360,e361,e362,e363
          ,e364,e365,e366,e367,e368,e369,e370,e371,e372,e373,e374,e375,e376
          ,e377,e378,e379,e380,e381,e382,e383,e384,e385,e386,e387,e388,e389
          ,e390,e391,e392,e393,e394,e395,e396,e397,e398,e399,e400,e401,e402
          ,e403,e404,e405,e406,e407,e408,e409,e410,e411,e412,e413,e414,e415
          ,e416,e417,e418,e419,e420,e421,e422,e423,e424,e425,e426,e427,e428
          ,e429,e430,e431,e432,e433,e434,e435,e436,e437,e438,e439,e440,e441
          ,e442,e443,e444,e445,e446,e447,e448,e449,e450,e451,e452,e453,e454
          ,e455,e456,e457,e458,e459,e460,e461,e462,e463,e464,e465,e466,e467
          ,e468,e469,e470,e471,e472,e473,e474,e475,e476,e477,e478,e479,e480
          ,e481,e482,e483,e484,e485,e486,e487,e488,e489,e490,e491,e492,e493
          ,e494,e495,e496,e497,e498,e499,e500,e501,e502,e503,e504,e505,e506
          ,e507,e508,e509,e510,e511,e512,e513,e514,e515,e516,e517,e518,e519
          ,e520,e521,e522,e523,e524,e525,e526,e527,e528,e529,e530,e531,e532
          ,e533,e534,e535,e536,e537,e538,e539,e540,e541,e542,e543,e544,e545
          ,e546,e547,e548,e549,e550,e551,e552,e553,e554,e555,e556,e557,e558
          ,e559,e560,e561,e562,e563,e564,e565,e566,e567,e568,e569,e570,e571
          ,e572,e573,e574,e575,e576,e577,e578,e579,e580,e581,e582,e583,e584
          ,e585,e586,e587,e588,e589,e590,e591,e592,e593,e594,e595,e596,e597
          ,e598,e599,e600,e601,e602,e603,e604,e605,e606,e607,e608,e609,e610
          ,e611,e612,e613,e614,e615,e616,e617,e618,e619,e620,e621,e622,e623
          ,e624,e625,e626,e627,e628,e629,e630,e631,e632,e633,e634,e635,e636
          ,e637,e638,e639,e640,e641,e642,e643,e644,e645,e646,e647,e648,e649
          ,e650,e651,e652,e653,e654,e655,e656,e657,e658,e659,e660,e661,e662
          ,e663,e664,e665,e666,e667,e668,e669,e670,e671,e672,e673,e674,e675
          ,e676,e677,e678,e679,e680,e681,e682,e683,e684,e685,e686,e687,e688
          ,e689,e690,e691,e692,e693,e694,e695,e696,e697,e698,e699,e700,e701
          ,e702,e703,e704,e705,e706,e707,e708,e709,e710,e711,e712,e713,e714
          ,e715,e716,e717,e718,e719,e720,e721,e722,e723,e724,e725,e726,e727
          ,e728,e729,e730,e731,e732,e733,e734,e735,e736,e737,e738,e739,e740
          ,e741,e742,e743,e744,e745,e746,e747,e748,e749,e750,e751,e752,e753
          ,e754,e755,e756,e757,e758,e759,e760,e761,e762,e763,e764,e765,e766
          ,e767,e768,e769,e770,e771,e772,e773,e774,e775,e776,e777,e778,e779
          ,e780,e781,e782,e783,e784,e785,e786,e787,e788,e789,e790,e791,e792
          ,e793,e794,e795,e796,e797,e798,e799,e800,e801,e802,e803,e804,e805
          ,e806,e807,e808,e809,e810,e811,e812,e813,e814,e815,e816,e817,e818
          ,e819,e820;


e1.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) =E= 4;

e2.. sqr(x6) + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10) =E= 4;

e3.. sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14) + sqr(x15) =E= 4;

e4.. sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) =E= 4;

e5.. sqr(x21) + sqr(x22) + sqr(x23) + sqr(x24) + sqr(x25) =E= 4;

e6.. sqr(x26) + sqr(x27) + sqr(x28) + sqr(x29) + sqr(x30) =E= 4;

e7.. sqr(x31) + sqr(x32) + sqr(x33) + sqr(x34) + sqr(x35) =E= 4;

e8.. sqr(x36) + sqr(x37) + sqr(x38) + sqr(x39) + sqr(x40) =E= 4;

e9.. sqr(x41) + sqr(x42) + sqr(x43) + sqr(x44) + sqr(x45) =E= 4;

e10.. sqr(x46) + sqr(x47) + sqr(x48) + sqr(x49) + sqr(x50) =E= 4;

e11.. sqr(x51) + sqr(x52) + sqr(x53) + sqr(x54) + sqr(x55) =E= 4;

e12.. sqr(x56) + sqr(x57) + sqr(x58) + sqr(x59) + sqr(x60) =E= 4;

e13.. sqr(x61) + sqr(x62) + sqr(x63) + sqr(x64) + sqr(x65) =E= 4;

e14.. sqr(x66) + sqr(x67) + sqr(x68) + sqr(x69) + sqr(x70) =E= 4;

e15.. sqr(x71) + sqr(x72) + sqr(x73) + sqr(x74) + sqr(x75) =E= 4;

e16.. sqr(x76) + sqr(x77) + sqr(x78) + sqr(x79) + sqr(x80) =E= 4;

e17.. sqr(x81) + sqr(x82) + sqr(x83) + sqr(x84) + sqr(x85) =E= 4;

e18.. sqr(x86) + sqr(x87) + sqr(x88) + sqr(x89) + sqr(x90) =E= 4;

e19.. sqr(x91) + sqr(x92) + sqr(x93) + sqr(x94) + sqr(x95) =E= 4;

e20.. sqr(x96) + sqr(x97) + sqr(x98) + sqr(x99) + sqr(x100) =E= 4;

e21.. sqr(x101) + sqr(x102) + sqr(x103) + sqr(x104) + sqr(x105) =E= 4;

e22.. sqr(x106) + sqr(x107) + sqr(x108) + sqr(x109) + sqr(x110) =E= 4;

e23.. sqr(x111) + sqr(x112) + sqr(x113) + sqr(x114) + sqr(x115) =E= 4;

e24.. sqr(x116) + sqr(x117) + sqr(x118) + sqr(x119) + sqr(x120) =E= 4;

e25.. sqr(x121) + sqr(x122) + sqr(x123) + sqr(x124) + sqr(x125) =E= 4;

e26.. sqr(x126) + sqr(x127) + sqr(x128) + sqr(x129) + sqr(x130) =E= 4;

e27.. sqr(x131) + sqr(x132) + sqr(x133) + sqr(x134) + sqr(x135) =E= 4;

e28.. sqr(x136) + sqr(x137) + sqr(x138) + sqr(x139) + sqr(x140) =E= 4;

e29.. sqr(x141) + sqr(x142) + sqr(x143) + sqr(x144) + sqr(x145) =E= 4;

e30.. sqr(x146) + sqr(x147) + sqr(x148) + sqr(x149) + sqr(x150) =E= 4;

e31.. sqr(x151) + sqr(x152) + sqr(x153) + sqr(x154) + sqr(x155) =E= 4;

e32.. sqr(x156) + sqr(x157) + sqr(x158) + sqr(x159) + sqr(x160) =E= 4;

e33.. sqr(x161) + sqr(x162) + sqr(x163) + sqr(x164) + sqr(x165) =E= 4;

e34.. sqr(x166) + sqr(x167) + sqr(x168) + sqr(x169) + sqr(x170) =E= 4;

e35.. sqr(x171) + sqr(x172) + sqr(x173) + sqr(x174) + sqr(x175) =E= 4;

e36.. sqr(x176) + sqr(x177) + sqr(x178) + sqr(x179) + sqr(x180) =E= 4;

e37.. sqr(x181) + sqr(x182) + sqr(x183) + sqr(x184) + sqr(x185) =E= 4;

e38.. sqr(x186) + sqr(x187) + sqr(x188) + sqr(x189) + sqr(x190) =E= 4;

e39.. sqr(x191) + sqr(x192) + sqr(x193) + sqr(x194) + sqr(x195) =E= 4;

e40.. sqr(x196) + sqr(x197) + sqr(x198) + sqr(x199) + sqr(x200) =E= 4;

e41.. sqr(x1 - x6) + sqr(x2 - x7) + sqr(x3 - x8) + sqr(x4 - x9) + sqr(x5 - x10)
       - 4*objvar =G= 0;

e42.. sqr(x1 - x11) + sqr(x2 - x12) + sqr(x3 - x13) + sqr(x4 - x14) + sqr(x5 - 
      x15) - 4*objvar =G= 0;

e43.. sqr(x1 - x16) + sqr(x2 - x17) + sqr(x3 - x18) + sqr(x4 - x19) + sqr(x5 - 
      x20) - 4*objvar =G= 0;

e44.. sqr(x1 - x21) + sqr(x2 - x22) + sqr(x3 - x23) + sqr(x4 - x24) + sqr(x5 - 
      x25) - 4*objvar =G= 0;

e45.. sqr(x1 - x26) + sqr(x2 - x27) + sqr(x3 - x28) + sqr(x4 - x29) + sqr(x5 - 
      x30) - 4*objvar =G= 0;

e46.. sqr(x1 - x31) + sqr(x2 - x32) + sqr(x3 - x33) + sqr(x4 - x34) + sqr(x5 - 
      x35) - 4*objvar =G= 0;

e47.. sqr(x1 - x36) + sqr(x2 - x37) + sqr(x3 - x38) + sqr(x4 - x39) + sqr(x5 - 
      x40) - 4*objvar =G= 0;

e48.. sqr(x1 - x41) + sqr(x2 - x42) + sqr(x3 - x43) + sqr(x4 - x44) + sqr(x5 - 
      x45) - 4*objvar =G= 0;

e49.. sqr(x1 - x46) + sqr(x2 - x47) + sqr(x3 - x48) + sqr(x4 - x49) + sqr(x5 - 
      x50) - 4*objvar =G= 0;

e50.. sqr(x1 - x51) + sqr(x2 - x52) + sqr(x3 - x53) + sqr(x4 - x54) + sqr(x5 - 
      x55) - 4*objvar =G= 0;

e51.. sqr(x1 - x56) + sqr(x2 - x57) + sqr(x3 - x58) + sqr(x4 - x59) + sqr(x5 - 
      x60) - 4*objvar =G= 0;

e52.. sqr(x1 - x61) + sqr(x2 - x62) + sqr(x3 - x63) + sqr(x4 - x64) + sqr(x5 - 
      x65) - 4*objvar =G= 0;

e53.. sqr(x1 - x66) + sqr(x2 - x67) + sqr(x3 - x68) + sqr(x4 - x69) + sqr(x5 - 
      x70) - 4*objvar =G= 0;

e54.. sqr(x1 - x71) + sqr(x2 - x72) + sqr(x3 - x73) + sqr(x4 - x74) + sqr(x5 - 
      x75) - 4*objvar =G= 0;

e55.. sqr(x1 - x76) + sqr(x2 - x77) + sqr(x3 - x78) + sqr(x4 - x79) + sqr(x5 - 
      x80) - 4*objvar =G= 0;

e56.. sqr(x1 - x81) + sqr(x2 - x82) + sqr(x3 - x83) + sqr(x4 - x84) + sqr(x5 - 
      x85) - 4*objvar =G= 0;

e57.. sqr(x1 - x86) + sqr(x2 - x87) + sqr(x3 - x88) + sqr(x4 - x89) + sqr(x5 - 
      x90) - 4*objvar =G= 0;

e58.. sqr(x1 - x91) + sqr(x2 - x92) + sqr(x3 - x93) + sqr(x4 - x94) + sqr(x5 - 
      x95) - 4*objvar =G= 0;

e59.. sqr(x1 - x96) + sqr(x2 - x97) + sqr(x3 - x98) + sqr(x4 - x99) + sqr(x5 - 
      x100) - 4*objvar =G= 0;

e60.. sqr(x1 - x101) + sqr(x2 - x102) + sqr(x3 - x103) + sqr(x4 - x104) + sqr(
      x5 - x105) - 4*objvar =G= 0;

e61.. sqr(x1 - x106) + sqr(x2 - x107) + sqr(x3 - x108) + sqr(x4 - x109) + sqr(
      x5 - x110) - 4*objvar =G= 0;

e62.. sqr(x1 - x111) + sqr(x2 - x112) + sqr(x3 - x113) + sqr(x4 - x114) + sqr(
      x5 - x115) - 4*objvar =G= 0;

e63.. sqr(x1 - x116) + sqr(x2 - x117) + sqr(x3 - x118) + sqr(x4 - x119) + sqr(
      x5 - x120) - 4*objvar =G= 0;

e64.. sqr(x1 - x121) + sqr(x2 - x122) + sqr(x3 - x123) + sqr(x4 - x124) + sqr(
      x5 - x125) - 4*objvar =G= 0;

e65.. sqr(x1 - x126) + sqr(x2 - x127) + sqr(x3 - x128) + sqr(x4 - x129) + sqr(
      x5 - x130) - 4*objvar =G= 0;

e66.. sqr(x1 - x131) + sqr(x2 - x132) + sqr(x3 - x133) + sqr(x4 - x134) + sqr(
      x5 - x135) - 4*objvar =G= 0;

e67.. sqr(x1 - x136) + sqr(x2 - x137) + sqr(x3 - x138) + sqr(x4 - x139) + sqr(
      x5 - x140) - 4*objvar =G= 0;

e68.. sqr(x1 - x141) + sqr(x2 - x142) + sqr(x3 - x143) + sqr(x4 - x144) + sqr(
      x5 - x145) - 4*objvar =G= 0;

e69.. sqr(x1 - x146) + sqr(x2 - x147) + sqr(x3 - x148) + sqr(x4 - x149) + sqr(
      x5 - x150) - 4*objvar =G= 0;

e70.. sqr(x1 - x151) + sqr(x2 - x152) + sqr(x3 - x153) + sqr(x4 - x154) + sqr(
      x5 - x155) - 4*objvar =G= 0;

e71.. sqr(x1 - x156) + sqr(x2 - x157) + sqr(x3 - x158) + sqr(x4 - x159) + sqr(
      x5 - x160) - 4*objvar =G= 0;

e72.. sqr(x1 - x161) + sqr(x2 - x162) + sqr(x3 - x163) + sqr(x4 - x164) + sqr(
      x5 - x165) - 4*objvar =G= 0;

e73.. sqr(x1 - x166) + sqr(x2 - x167) + sqr(x3 - x168) + sqr(x4 - x169) + sqr(
      x5 - x170) - 4*objvar =G= 0;

e74.. sqr(x1 - x171) + sqr(x2 - x172) + sqr(x3 - x173) + sqr(x4 - x174) + sqr(
      x5 - x175) - 4*objvar =G= 0;

e75.. sqr(x1 - x176) + sqr(x2 - x177) + sqr(x3 - x178) + sqr(x4 - x179) + sqr(
      x5 - x180) - 4*objvar =G= 0;

e76.. sqr(x1 - x181) + sqr(x2 - x182) + sqr(x3 - x183) + sqr(x4 - x184) + sqr(
      x5 - x185) - 4*objvar =G= 0;

e77.. sqr(x1 - x186) + sqr(x2 - x187) + sqr(x3 - x188) + sqr(x4 - x189) + sqr(
      x5 - x190) - 4*objvar =G= 0;

e78.. sqr(x1 - x191) + sqr(x2 - x192) + sqr(x3 - x193) + sqr(x4 - x194) + sqr(
      x5 - x195) - 4*objvar =G= 0;

e79.. sqr(x1 - x196) + sqr(x2 - x197) + sqr(x3 - x198) + sqr(x4 - x199) + sqr(
      x5 - x200) - 4*objvar =G= 0;

e80.. sqr(x6 - x11) + sqr(x7 - x12) + sqr(x8 - x13) + sqr(x9 - x14) + sqr(x10
       - x15) - 4*objvar =G= 0;

e81.. sqr(x6 - x16) + sqr(x7 - x17) + sqr(x8 - x18) + sqr(x9 - x19) + sqr(x10
       - x20) - 4*objvar =G= 0;

e82.. sqr(x6 - x21) + sqr(x7 - x22) + sqr(x8 - x23) + sqr(x9 - x24) + sqr(x10
       - x25) - 4*objvar =G= 0;

e83.. sqr(x6 - x26) + sqr(x7 - x27) + sqr(x8 - x28) + sqr(x9 - x29) + sqr(x10
       - x30) - 4*objvar =G= 0;

e84.. sqr(x6 - x31) + sqr(x7 - x32) + sqr(x8 - x33) + sqr(x9 - x34) + sqr(x10
       - x35) - 4*objvar =G= 0;

e85.. sqr(x6 - x36) + sqr(x7 - x37) + sqr(x8 - x38) + sqr(x9 - x39) + sqr(x10
       - x40) - 4*objvar =G= 0;

e86.. sqr(x6 - x41) + sqr(x7 - x42) + sqr(x8 - x43) + sqr(x9 - x44) + sqr(x10
       - x45) - 4*objvar =G= 0;

e87.. sqr(x6 - x46) + sqr(x7 - x47) + sqr(x8 - x48) + sqr(x9 - x49) + sqr(x10
       - x50) - 4*objvar =G= 0;

e88.. sqr(x6 - x51) + sqr(x7 - x52) + sqr(x8 - x53) + sqr(x9 - x54) + sqr(x10
       - x55) - 4*objvar =G= 0;

e89.. sqr(x6 - x56) + sqr(x7 - x57) + sqr(x8 - x58) + sqr(x9 - x59) + sqr(x10
       - x60) - 4*objvar =G= 0;

e90.. sqr(x6 - x61) + sqr(x7 - x62) + sqr(x8 - x63) + sqr(x9 - x64) + sqr(x10
       - x65) - 4*objvar =G= 0;

e91.. sqr(x6 - x66) + sqr(x7 - x67) + sqr(x8 - x68) + sqr(x9 - x69) + sqr(x10
       - x70) - 4*objvar =G= 0;

e92.. sqr(x6 - x71) + sqr(x7 - x72) + sqr(x8 - x73) + sqr(x9 - x74) + sqr(x10
       - x75) - 4*objvar =G= 0;

e93.. sqr(x6 - x76) + sqr(x7 - x77) + sqr(x8 - x78) + sqr(x9 - x79) + sqr(x10
       - x80) - 4*objvar =G= 0;

e94.. sqr(x6 - x81) + sqr(x7 - x82) + sqr(x8 - x83) + sqr(x9 - x84) + sqr(x10
       - x85) - 4*objvar =G= 0;

e95.. sqr(x6 - x86) + sqr(x7 - x87) + sqr(x8 - x88) + sqr(x9 - x89) + sqr(x10
       - x90) - 4*objvar =G= 0;

e96.. sqr(x6 - x91) + sqr(x7 - x92) + sqr(x8 - x93) + sqr(x9 - x94) + sqr(x10
       - x95) - 4*objvar =G= 0;

e97.. sqr(x6 - x96) + sqr(x7 - x97) + sqr(x8 - x98) + sqr(x9 - x99) + sqr(x10
       - x100) - 4*objvar =G= 0;

e98.. sqr(x6 - x101) + sqr(x7 - x102) + sqr(x8 - x103) + sqr(x9 - x104) + sqr(
      x10 - x105) - 4*objvar =G= 0;

e99.. sqr(x6 - x106) + sqr(x7 - x107) + sqr(x8 - x108) + sqr(x9 - x109) + sqr(
      x10 - x110) - 4*objvar =G= 0;

e100.. sqr(x6 - x111) + sqr(x7 - x112) + sqr(x8 - x113) + sqr(x9 - x114) + sqr(
       x10 - x115) - 4*objvar =G= 0;

e101.. sqr(x6 - x116) + sqr(x7 - x117) + sqr(x8 - x118) + sqr(x9 - x119) + sqr(
       x10 - x120) - 4*objvar =G= 0;

e102.. sqr(x6 - x121) + sqr(x7 - x122) + sqr(x8 - x123) + sqr(x9 - x124) + sqr(
       x10 - x125) - 4*objvar =G= 0;

e103.. sqr(x6 - x126) + sqr(x7 - x127) + sqr(x8 - x128) + sqr(x9 - x129) + sqr(
       x10 - x130) - 4*objvar =G= 0;

e104.. sqr(x6 - x131) + sqr(x7 - x132) + sqr(x8 - x133) + sqr(x9 - x134) + sqr(
       x10 - x135) - 4*objvar =G= 0;

e105.. sqr(x6 - x136) + sqr(x7 - x137) + sqr(x8 - x138) + sqr(x9 - x139) + sqr(
       x10 - x140) - 4*objvar =G= 0;

e106.. sqr(x6 - x141) + sqr(x7 - x142) + sqr(x8 - x143) + sqr(x9 - x144) + sqr(
       x10 - x145) - 4*objvar =G= 0;

e107.. sqr(x6 - x146) + sqr(x7 - x147) + sqr(x8 - x148) + sqr(x9 - x149) + sqr(
       x10 - x150) - 4*objvar =G= 0;

e108.. sqr(x6 - x151) + sqr(x7 - x152) + sqr(x8 - x153) + sqr(x9 - x154) + sqr(
       x10 - x155) - 4*objvar =G= 0;

e109.. sqr(x6 - x156) + sqr(x7 - x157) + sqr(x8 - x158) + sqr(x9 - x159) + sqr(
       x10 - x160) - 4*objvar =G= 0;

e110.. sqr(x6 - x161) + sqr(x7 - x162) + sqr(x8 - x163) + sqr(x9 - x164) + sqr(
       x10 - x165) - 4*objvar =G= 0;

e111.. sqr(x6 - x166) + sqr(x7 - x167) + sqr(x8 - x168) + sqr(x9 - x169) + sqr(
       x10 - x170) - 4*objvar =G= 0;

e112.. sqr(x6 - x171) + sqr(x7 - x172) + sqr(x8 - x173) + sqr(x9 - x174) + sqr(
       x10 - x175) - 4*objvar =G= 0;

e113.. sqr(x6 - x176) + sqr(x7 - x177) + sqr(x8 - x178) + sqr(x9 - x179) + sqr(
       x10 - x180) - 4*objvar =G= 0;

e114.. sqr(x6 - x181) + sqr(x7 - x182) + sqr(x8 - x183) + sqr(x9 - x184) + sqr(
       x10 - x185) - 4*objvar =G= 0;

e115.. sqr(x6 - x186) + sqr(x7 - x187) + sqr(x8 - x188) + sqr(x9 - x189) + sqr(
       x10 - x190) - 4*objvar =G= 0;

e116.. sqr(x6 - x191) + sqr(x7 - x192) + sqr(x8 - x193) + sqr(x9 - x194) + sqr(
       x10 - x195) - 4*objvar =G= 0;

e117.. sqr(x6 - x196) + sqr(x7 - x197) + sqr(x8 - x198) + sqr(x9 - x199) + sqr(
       x10 - x200) - 4*objvar =G= 0;

e118.. sqr(x11 - x16) + sqr(x12 - x17) + sqr(x13 - x18) + sqr(x14 - x19) + sqr(
       x15 - x20) - 4*objvar =G= 0;

e119.. sqr(x11 - x21) + sqr(x12 - x22) + sqr(x13 - x23) + sqr(x14 - x24) + sqr(
       x15 - x25) - 4*objvar =G= 0;

e120.. sqr(x11 - x26) + sqr(x12 - x27) + sqr(x13 - x28) + sqr(x14 - x29) + sqr(
       x15 - x30) - 4*objvar =G= 0;

e121.. sqr(x11 - x31) + sqr(x12 - x32) + sqr(x13 - x33) + sqr(x14 - x34) + sqr(
       x15 - x35) - 4*objvar =G= 0;

e122.. sqr(x11 - x36) + sqr(x12 - x37) + sqr(x13 - x38) + sqr(x14 - x39) + sqr(
       x15 - x40) - 4*objvar =G= 0;

e123.. sqr(x11 - x41) + sqr(x12 - x42) + sqr(x13 - x43) + sqr(x14 - x44) + sqr(
       x15 - x45) - 4*objvar =G= 0;

e124.. sqr(x11 - x46) + sqr(x12 - x47) + sqr(x13 - x48) + sqr(x14 - x49) + sqr(
       x15 - x50) - 4*objvar =G= 0;

e125.. sqr(x11 - x51) + sqr(x12 - x52) + sqr(x13 - x53) + sqr(x14 - x54) + sqr(
       x15 - x55) - 4*objvar =G= 0;

e126.. sqr(x11 - x56) + sqr(x12 - x57) + sqr(x13 - x58) + sqr(x14 - x59) + sqr(
       x15 - x60) - 4*objvar =G= 0;

e127.. sqr(x11 - x61) + sqr(x12 - x62) + sqr(x13 - x63) + sqr(x14 - x64) + sqr(
       x15 - x65) - 4*objvar =G= 0;

e128.. sqr(x11 - x66) + sqr(x12 - x67) + sqr(x13 - x68) + sqr(x14 - x69) + sqr(
       x15 - x70) - 4*objvar =G= 0;

e129.. sqr(x11 - x71) + sqr(x12 - x72) + sqr(x13 - x73) + sqr(x14 - x74) + sqr(
       x15 - x75) - 4*objvar =G= 0;

e130.. sqr(x11 - x76) + sqr(x12 - x77) + sqr(x13 - x78) + sqr(x14 - x79) + sqr(
       x15 - x80) - 4*objvar =G= 0;

e131.. sqr(x11 - x81) + sqr(x12 - x82) + sqr(x13 - x83) + sqr(x14 - x84) + sqr(
       x15 - x85) - 4*objvar =G= 0;

e132.. sqr(x11 - x86) + sqr(x12 - x87) + sqr(x13 - x88) + sqr(x14 - x89) + sqr(
       x15 - x90) - 4*objvar =G= 0;

e133.. sqr(x11 - x91) + sqr(x12 - x92) + sqr(x13 - x93) + sqr(x14 - x94) + sqr(
       x15 - x95) - 4*objvar =G= 0;

e134.. sqr(x11 - x96) + sqr(x12 - x97) + sqr(x13 - x98) + sqr(x14 - x99) + sqr(
       x15 - x100) - 4*objvar =G= 0;

e135.. sqr(x11 - x101) + sqr(x12 - x102) + sqr(x13 - x103) + sqr(x14 - x104) + 
       sqr(x15 - x105) - 4*objvar =G= 0;

e136.. sqr(x11 - x106) + sqr(x12 - x107) + sqr(x13 - x108) + sqr(x14 - x109) + 
       sqr(x15 - x110) - 4*objvar =G= 0;

e137.. sqr(x11 - x111) + sqr(x12 - x112) + sqr(x13 - x113) + sqr(x14 - x114) + 
       sqr(x15 - x115) - 4*objvar =G= 0;

e138.. sqr(x11 - x116) + sqr(x12 - x117) + sqr(x13 - x118) + sqr(x14 - x119) + 
       sqr(x15 - x120) - 4*objvar =G= 0;

e139.. sqr(x11 - x121) + sqr(x12 - x122) + sqr(x13 - x123) + sqr(x14 - x124) + 
       sqr(x15 - x125) - 4*objvar =G= 0;

e140.. sqr(x11 - x126) + sqr(x12 - x127) + sqr(x13 - x128) + sqr(x14 - x129) + 
       sqr(x15 - x130) - 4*objvar =G= 0;

e141.. sqr(x11 - x131) + sqr(x12 - x132) + sqr(x13 - x133) + sqr(x14 - x134) + 
       sqr(x15 - x135) - 4*objvar =G= 0;

e142.. sqr(x11 - x136) + sqr(x12 - x137) + sqr(x13 - x138) + sqr(x14 - x139) + 
       sqr(x15 - x140) - 4*objvar =G= 0;

e143.. sqr(x11 - x141) + sqr(x12 - x142) + sqr(x13 - x143) + sqr(x14 - x144) + 
       sqr(x15 - x145) - 4*objvar =G= 0;

e144.. sqr(x11 - x146) + sqr(x12 - x147) + sqr(x13 - x148) + sqr(x14 - x149) + 
       sqr(x15 - x150) - 4*objvar =G= 0;

e145.. sqr(x11 - x151) + sqr(x12 - x152) + sqr(x13 - x153) + sqr(x14 - x154) + 
       sqr(x15 - x155) - 4*objvar =G= 0;

e146.. sqr(x11 - x156) + sqr(x12 - x157) + sqr(x13 - x158) + sqr(x14 - x159) + 
       sqr(x15 - x160) - 4*objvar =G= 0;

e147.. sqr(x11 - x161) + sqr(x12 - x162) + sqr(x13 - x163) + sqr(x14 - x164) + 
       sqr(x15 - x165) - 4*objvar =G= 0;

e148.. sqr(x11 - x166) + sqr(x12 - x167) + sqr(x13 - x168) + sqr(x14 - x169) + 
       sqr(x15 - x170) - 4*objvar =G= 0;

e149.. sqr(x11 - x171) + sqr(x12 - x172) + sqr(x13 - x173) + sqr(x14 - x174) + 
       sqr(x15 - x175) - 4*objvar =G= 0;

e150.. sqr(x11 - x176) + sqr(x12 - x177) + sqr(x13 - x178) + sqr(x14 - x179) + 
       sqr(x15 - x180) - 4*objvar =G= 0;

e151.. sqr(x11 - x181) + sqr(x12 - x182) + sqr(x13 - x183) + sqr(x14 - x184) + 
       sqr(x15 - x185) - 4*objvar =G= 0;

e152.. sqr(x11 - x186) + sqr(x12 - x187) + sqr(x13 - x188) + sqr(x14 - x189) + 
       sqr(x15 - x190) - 4*objvar =G= 0;

e153.. sqr(x11 - x191) + sqr(x12 - x192) + sqr(x13 - x193) + sqr(x14 - x194) + 
       sqr(x15 - x195) - 4*objvar =G= 0;

e154.. sqr(x11 - x196) + sqr(x12 - x197) + sqr(x13 - x198) + sqr(x14 - x199) + 
       sqr(x15 - x200) - 4*objvar =G= 0;

e155.. sqr(x16 - x21) + sqr(x17 - x22) + sqr(x18 - x23) + sqr(x19 - x24) + sqr(
       x20 - x25) - 4*objvar =G= 0;

e156.. sqr(x16 - x26) + sqr(x17 - x27) + sqr(x18 - x28) + sqr(x19 - x29) + sqr(
       x20 - x30) - 4*objvar =G= 0;

e157.. sqr(x16 - x31) + sqr(x17 - x32) + sqr(x18 - x33) + sqr(x19 - x34) + sqr(
       x20 - x35) - 4*objvar =G= 0;

e158.. sqr(x16 - x36) + sqr(x17 - x37) + sqr(x18 - x38) + sqr(x19 - x39) + sqr(
       x20 - x40) - 4*objvar =G= 0;

e159.. sqr(x16 - x41) + sqr(x17 - x42) + sqr(x18 - x43) + sqr(x19 - x44) + sqr(
       x20 - x45) - 4*objvar =G= 0;

e160.. sqr(x16 - x46) + sqr(x17 - x47) + sqr(x18 - x48) + sqr(x19 - x49) + sqr(
       x20 - x50) - 4*objvar =G= 0;

e161.. sqr(x16 - x51) + sqr(x17 - x52) + sqr(x18 - x53) + sqr(x19 - x54) + sqr(
       x20 - x55) - 4*objvar =G= 0;

e162.. sqr(x16 - x56) + sqr(x17 - x57) + sqr(x18 - x58) + sqr(x19 - x59) + sqr(
       x20 - x60) - 4*objvar =G= 0;

e163.. sqr(x16 - x61) + sqr(x17 - x62) + sqr(x18 - x63) + sqr(x19 - x64) + sqr(
       x20 - x65) - 4*objvar =G= 0;

e164.. sqr(x16 - x66) + sqr(x17 - x67) + sqr(x18 - x68) + sqr(x19 - x69) + sqr(
       x20 - x70) - 4*objvar =G= 0;

e165.. sqr(x16 - x71) + sqr(x17 - x72) + sqr(x18 - x73) + sqr(x19 - x74) + sqr(
       x20 - x75) - 4*objvar =G= 0;

e166.. sqr(x16 - x76) + sqr(x17 - x77) + sqr(x18 - x78) + sqr(x19 - x79) + sqr(
       x20 - x80) - 4*objvar =G= 0;

e167.. sqr(x16 - x81) + sqr(x17 - x82) + sqr(x18 - x83) + sqr(x19 - x84) + sqr(
       x20 - x85) - 4*objvar =G= 0;

e168.. sqr(x16 - x86) + sqr(x17 - x87) + sqr(x18 - x88) + sqr(x19 - x89) + sqr(
       x20 - x90) - 4*objvar =G= 0;

e169.. sqr(x16 - x91) + sqr(x17 - x92) + sqr(x18 - x93) + sqr(x19 - x94) + sqr(
       x20 - x95) - 4*objvar =G= 0;

e170.. sqr(x16 - x96) + sqr(x17 - x97) + sqr(x18 - x98) + sqr(x19 - x99) + sqr(
       x20 - x100) - 4*objvar =G= 0;

e171.. sqr(x16 - x101) + sqr(x17 - x102) + sqr(x18 - x103) + sqr(x19 - x104) + 
       sqr(x20 - x105) - 4*objvar =G= 0;

e172.. sqr(x16 - x106) + sqr(x17 - x107) + sqr(x18 - x108) + sqr(x19 - x109) + 
       sqr(x20 - x110) - 4*objvar =G= 0;

e173.. sqr(x16 - x111) + sqr(x17 - x112) + sqr(x18 - x113) + sqr(x19 - x114) + 
       sqr(x20 - x115) - 4*objvar =G= 0;

e174.. sqr(x16 - x116) + sqr(x17 - x117) + sqr(x18 - x118) + sqr(x19 - x119) + 
       sqr(x20 - x120) - 4*objvar =G= 0;

e175.. sqr(x16 - x121) + sqr(x17 - x122) + sqr(x18 - x123) + sqr(x19 - x124) + 
       sqr(x20 - x125) - 4*objvar =G= 0;

e176.. sqr(x16 - x126) + sqr(x17 - x127) + sqr(x18 - x128) + sqr(x19 - x129) + 
       sqr(x20 - x130) - 4*objvar =G= 0;

e177.. sqr(x16 - x131) + sqr(x17 - x132) + sqr(x18 - x133) + sqr(x19 - x134) + 
       sqr(x20 - x135) - 4*objvar =G= 0;

e178.. sqr(x16 - x136) + sqr(x17 - x137) + sqr(x18 - x138) + sqr(x19 - x139) + 
       sqr(x20 - x140) - 4*objvar =G= 0;

e179.. sqr(x16 - x141) + sqr(x17 - x142) + sqr(x18 - x143) + sqr(x19 - x144) + 
       sqr(x20 - x145) - 4*objvar =G= 0;

e180.. sqr(x16 - x146) + sqr(x17 - x147) + sqr(x18 - x148) + sqr(x19 - x149) + 
       sqr(x20 - x150) - 4*objvar =G= 0;

e181.. sqr(x16 - x151) + sqr(x17 - x152) + sqr(x18 - x153) + sqr(x19 - x154) + 
       sqr(x20 - x155) - 4*objvar =G= 0;

e182.. sqr(x16 - x156) + sqr(x17 - x157) + sqr(x18 - x158) + sqr(x19 - x159) + 
       sqr(x20 - x160) - 4*objvar =G= 0;

e183.. sqr(x16 - x161) + sqr(x17 - x162) + sqr(x18 - x163) + sqr(x19 - x164) + 
       sqr(x20 - x165) - 4*objvar =G= 0;

e184.. sqr(x16 - x166) + sqr(x17 - x167) + sqr(x18 - x168) + sqr(x19 - x169) + 
       sqr(x20 - x170) - 4*objvar =G= 0;

e185.. sqr(x16 - x171) + sqr(x17 - x172) + sqr(x18 - x173) + sqr(x19 - x174) + 
       sqr(x20 - x175) - 4*objvar =G= 0;

e186.. sqr(x16 - x176) + sqr(x17 - x177) + sqr(x18 - x178) + sqr(x19 - x179) + 
       sqr(x20 - x180) - 4*objvar =G= 0;

e187.. sqr(x16 - x181) + sqr(x17 - x182) + sqr(x18 - x183) + sqr(x19 - x184) + 
       sqr(x20 - x185) - 4*objvar =G= 0;

e188.. sqr(x16 - x186) + sqr(x17 - x187) + sqr(x18 - x188) + sqr(x19 - x189) + 
       sqr(x20 - x190) - 4*objvar =G= 0;

e189.. sqr(x16 - x191) + sqr(x17 - x192) + sqr(x18 - x193) + sqr(x19 - x194) + 
       sqr(x20 - x195) - 4*objvar =G= 0;

e190.. sqr(x16 - x196) + sqr(x17 - x197) + sqr(x18 - x198) + sqr(x19 - x199) + 
       sqr(x20 - x200) - 4*objvar =G= 0;

e191.. sqr(x21 - x26) + sqr(x22 - x27) + sqr(x23 - x28) + sqr(x24 - x29) + sqr(
       x25 - x30) - 4*objvar =G= 0;

e192.. sqr(x21 - x31) + sqr(x22 - x32) + sqr(x23 - x33) + sqr(x24 - x34) + sqr(
       x25 - x35) - 4*objvar =G= 0;

e193.. sqr(x21 - x36) + sqr(x22 - x37) + sqr(x23 - x38) + sqr(x24 - x39) + sqr(
       x25 - x40) - 4*objvar =G= 0;

e194.. sqr(x21 - x41) + sqr(x22 - x42) + sqr(x23 - x43) + sqr(x24 - x44) + sqr(
       x25 - x45) - 4*objvar =G= 0;

e195.. sqr(x21 - x46) + sqr(x22 - x47) + sqr(x23 - x48) + sqr(x24 - x49) + sqr(
       x25 - x50) - 4*objvar =G= 0;

e196.. sqr(x21 - x51) + sqr(x22 - x52) + sqr(x23 - x53) + sqr(x24 - x54) + sqr(
       x25 - x55) - 4*objvar =G= 0;

e197.. sqr(x21 - x56) + sqr(x22 - x57) + sqr(x23 - x58) + sqr(x24 - x59) + sqr(
       x25 - x60) - 4*objvar =G= 0;

e198.. sqr(x21 - x61) + sqr(x22 - x62) + sqr(x23 - x63) + sqr(x24 - x64) + sqr(
       x25 - x65) - 4*objvar =G= 0;

e199.. sqr(x21 - x66) + sqr(x22 - x67) + sqr(x23 - x68) + sqr(x24 - x69) + sqr(
       x25 - x70) - 4*objvar =G= 0;

e200.. sqr(x21 - x71) + sqr(x22 - x72) + sqr(x23 - x73) + sqr(x24 - x74) + sqr(
       x25 - x75) - 4*objvar =G= 0;

e201.. sqr(x21 - x76) + sqr(x22 - x77) + sqr(x23 - x78) + sqr(x24 - x79) + sqr(
       x25 - x80) - 4*objvar =G= 0;

e202.. sqr(x21 - x81) + sqr(x22 - x82) + sqr(x23 - x83) + sqr(x24 - x84) + sqr(
       x25 - x85) - 4*objvar =G= 0;

e203.. sqr(x21 - x86) + sqr(x22 - x87) + sqr(x23 - x88) + sqr(x24 - x89) + sqr(
       x25 - x90) - 4*objvar =G= 0;

e204.. sqr(x21 - x91) + sqr(x22 - x92) + sqr(x23 - x93) + sqr(x24 - x94) + sqr(
       x25 - x95) - 4*objvar =G= 0;

e205.. sqr(x21 - x96) + sqr(x22 - x97) + sqr(x23 - x98) + sqr(x24 - x99) + sqr(
       x25 - x100) - 4*objvar =G= 0;

e206.. sqr(x21 - x101) + sqr(x22 - x102) + sqr(x23 - x103) + sqr(x24 - x104) + 
       sqr(x25 - x105) - 4*objvar =G= 0;

e207.. sqr(x21 - x106) + sqr(x22 - x107) + sqr(x23 - x108) + sqr(x24 - x109) + 
       sqr(x25 - x110) - 4*objvar =G= 0;

e208.. sqr(x21 - x111) + sqr(x22 - x112) + sqr(x23 - x113) + sqr(x24 - x114) + 
       sqr(x25 - x115) - 4*objvar =G= 0;

e209.. sqr(x21 - x116) + sqr(x22 - x117) + sqr(x23 - x118) + sqr(x24 - x119) + 
       sqr(x25 - x120) - 4*objvar =G= 0;

e210.. sqr(x21 - x121) + sqr(x22 - x122) + sqr(x23 - x123) + sqr(x24 - x124) + 
       sqr(x25 - x125) - 4*objvar =G= 0;

e211.. sqr(x21 - x126) + sqr(x22 - x127) + sqr(x23 - x128) + sqr(x24 - x129) + 
       sqr(x25 - x130) - 4*objvar =G= 0;

e212.. sqr(x21 - x131) + sqr(x22 - x132) + sqr(x23 - x133) + sqr(x24 - x134) + 
       sqr(x25 - x135) - 4*objvar =G= 0;

e213.. sqr(x21 - x136) + sqr(x22 - x137) + sqr(x23 - x138) + sqr(x24 - x139) + 
       sqr(x25 - x140) - 4*objvar =G= 0;

e214.. sqr(x21 - x141) + sqr(x22 - x142) + sqr(x23 - x143) + sqr(x24 - x144) + 
       sqr(x25 - x145) - 4*objvar =G= 0;

e215.. sqr(x21 - x146) + sqr(x22 - x147) + sqr(x23 - x148) + sqr(x24 - x149) + 
       sqr(x25 - x150) - 4*objvar =G= 0;

e216.. sqr(x21 - x151) + sqr(x22 - x152) + sqr(x23 - x153) + sqr(x24 - x154) + 
       sqr(x25 - x155) - 4*objvar =G= 0;

e217.. sqr(x21 - x156) + sqr(x22 - x157) + sqr(x23 - x158) + sqr(x24 - x159) + 
       sqr(x25 - x160) - 4*objvar =G= 0;

e218.. sqr(x21 - x161) + sqr(x22 - x162) + sqr(x23 - x163) + sqr(x24 - x164) + 
       sqr(x25 - x165) - 4*objvar =G= 0;

e219.. sqr(x21 - x166) + sqr(x22 - x167) + sqr(x23 - x168) + sqr(x24 - x169) + 
       sqr(x25 - x170) - 4*objvar =G= 0;

e220.. sqr(x21 - x171) + sqr(x22 - x172) + sqr(x23 - x173) + sqr(x24 - x174) + 
       sqr(x25 - x175) - 4*objvar =G= 0;

e221.. sqr(x21 - x176) + sqr(x22 - x177) + sqr(x23 - x178) + sqr(x24 - x179) + 
       sqr(x25 - x180) - 4*objvar =G= 0;

e222.. sqr(x21 - x181) + sqr(x22 - x182) + sqr(x23 - x183) + sqr(x24 - x184) + 
       sqr(x25 - x185) - 4*objvar =G= 0;

e223.. sqr(x21 - x186) + sqr(x22 - x187) + sqr(x23 - x188) + sqr(x24 - x189) + 
       sqr(x25 - x190) - 4*objvar =G= 0;

e224.. sqr(x21 - x191) + sqr(x22 - x192) + sqr(x23 - x193) + sqr(x24 - x194) + 
       sqr(x25 - x195) - 4*objvar =G= 0;

e225.. sqr(x21 - x196) + sqr(x22 - x197) + sqr(x23 - x198) + sqr(x24 - x199) + 
       sqr(x25 - x200) - 4*objvar =G= 0;

e226.. sqr(x26 - x31) + sqr(x27 - x32) + sqr(x28 - x33) + sqr(x29 - x34) + sqr(
       x30 - x35) - 4*objvar =G= 0;

e227.. sqr(x26 - x36) + sqr(x27 - x37) + sqr(x28 - x38) + sqr(x29 - x39) + sqr(
       x30 - x40) - 4*objvar =G= 0;

e228.. sqr(x26 - x41) + sqr(x27 - x42) + sqr(x28 - x43) + sqr(x29 - x44) + sqr(
       x30 - x45) - 4*objvar =G= 0;

e229.. sqr(x26 - x46) + sqr(x27 - x47) + sqr(x28 - x48) + sqr(x29 - x49) + sqr(
       x30 - x50) - 4*objvar =G= 0;

e230.. sqr(x26 - x51) + sqr(x27 - x52) + sqr(x28 - x53) + sqr(x29 - x54) + sqr(
       x30 - x55) - 4*objvar =G= 0;

e231.. sqr(x26 - x56) + sqr(x27 - x57) + sqr(x28 - x58) + sqr(x29 - x59) + sqr(
       x30 - x60) - 4*objvar =G= 0;

e232.. sqr(x26 - x61) + sqr(x27 - x62) + sqr(x28 - x63) + sqr(x29 - x64) + sqr(
       x30 - x65) - 4*objvar =G= 0;

e233.. sqr(x26 - x66) + sqr(x27 - x67) + sqr(x28 - x68) + sqr(x29 - x69) + sqr(
       x30 - x70) - 4*objvar =G= 0;

e234.. sqr(x26 - x71) + sqr(x27 - x72) + sqr(x28 - x73) + sqr(x29 - x74) + sqr(
       x30 - x75) - 4*objvar =G= 0;

e235.. sqr(x26 - x76) + sqr(x27 - x77) + sqr(x28 - x78) + sqr(x29 - x79) + sqr(
       x30 - x80) - 4*objvar =G= 0;

e236.. sqr(x26 - x81) + sqr(x27 - x82) + sqr(x28 - x83) + sqr(x29 - x84) + sqr(
       x30 - x85) - 4*objvar =G= 0;

e237.. sqr(x26 - x86) + sqr(x27 - x87) + sqr(x28 - x88) + sqr(x29 - x89) + sqr(
       x30 - x90) - 4*objvar =G= 0;

e238.. sqr(x26 - x91) + sqr(x27 - x92) + sqr(x28 - x93) + sqr(x29 - x94) + sqr(
       x30 - x95) - 4*objvar =G= 0;

e239.. sqr(x26 - x96) + sqr(x27 - x97) + sqr(x28 - x98) + sqr(x29 - x99) + sqr(
       x30 - x100) - 4*objvar =G= 0;

e240.. sqr(x26 - x101) + sqr(x27 - x102) + sqr(x28 - x103) + sqr(x29 - x104) + 
       sqr(x30 - x105) - 4*objvar =G= 0;

e241.. sqr(x26 - x106) + sqr(x27 - x107) + sqr(x28 - x108) + sqr(x29 - x109) + 
       sqr(x30 - x110) - 4*objvar =G= 0;

e242.. sqr(x26 - x111) + sqr(x27 - x112) + sqr(x28 - x113) + sqr(x29 - x114) + 
       sqr(x30 - x115) - 4*objvar =G= 0;

e243.. sqr(x26 - x116) + sqr(x27 - x117) + sqr(x28 - x118) + sqr(x29 - x119) + 
       sqr(x30 - x120) - 4*objvar =G= 0;

e244.. sqr(x26 - x121) + sqr(x27 - x122) + sqr(x28 - x123) + sqr(x29 - x124) + 
       sqr(x30 - x125) - 4*objvar =G= 0;

e245.. sqr(x26 - x126) + sqr(x27 - x127) + sqr(x28 - x128) + sqr(x29 - x129) + 
       sqr(x30 - x130) - 4*objvar =G= 0;

e246.. sqr(x26 - x131) + sqr(x27 - x132) + sqr(x28 - x133) + sqr(x29 - x134) + 
       sqr(x30 - x135) - 4*objvar =G= 0;

e247.. sqr(x26 - x136) + sqr(x27 - x137) + sqr(x28 - x138) + sqr(x29 - x139) + 
       sqr(x30 - x140) - 4*objvar =G= 0;

e248.. sqr(x26 - x141) + sqr(x27 - x142) + sqr(x28 - x143) + sqr(x29 - x144) + 
       sqr(x30 - x145) - 4*objvar =G= 0;

e249.. sqr(x26 - x146) + sqr(x27 - x147) + sqr(x28 - x148) + sqr(x29 - x149) + 
       sqr(x30 - x150) - 4*objvar =G= 0;

e250.. sqr(x26 - x151) + sqr(x27 - x152) + sqr(x28 - x153) + sqr(x29 - x154) + 
       sqr(x30 - x155) - 4*objvar =G= 0;

e251.. sqr(x26 - x156) + sqr(x27 - x157) + sqr(x28 - x158) + sqr(x29 - x159) + 
       sqr(x30 - x160) - 4*objvar =G= 0;

e252.. sqr(x26 - x161) + sqr(x27 - x162) + sqr(x28 - x163) + sqr(x29 - x164) + 
       sqr(x30 - x165) - 4*objvar =G= 0;

e253.. sqr(x26 - x166) + sqr(x27 - x167) + sqr(x28 - x168) + sqr(x29 - x169) + 
       sqr(x30 - x170) - 4*objvar =G= 0;

e254.. sqr(x26 - x171) + sqr(x27 - x172) + sqr(x28 - x173) + sqr(x29 - x174) + 
       sqr(x30 - x175) - 4*objvar =G= 0;

e255.. sqr(x26 - x176) + sqr(x27 - x177) + sqr(x28 - x178) + sqr(x29 - x179) + 
       sqr(x30 - x180) - 4*objvar =G= 0;

e256.. sqr(x26 - x181) + sqr(x27 - x182) + sqr(x28 - x183) + sqr(x29 - x184) + 
       sqr(x30 - x185) - 4*objvar =G= 0;

e257.. sqr(x26 - x186) + sqr(x27 - x187) + sqr(x28 - x188) + sqr(x29 - x189) + 
       sqr(x30 - x190) - 4*objvar =G= 0;

e258.. sqr(x26 - x191) + sqr(x27 - x192) + sqr(x28 - x193) + sqr(x29 - x194) + 
       sqr(x30 - x195) - 4*objvar =G= 0;

e259.. sqr(x26 - x196) + sqr(x27 - x197) + sqr(x28 - x198) + sqr(x29 - x199) + 
       sqr(x30 - x200) - 4*objvar =G= 0;

e260.. sqr(x31 - x36) + sqr(x32 - x37) + sqr(x33 - x38) + sqr(x34 - x39) + sqr(
       x35 - x40) - 4*objvar =G= 0;

e261.. sqr(x31 - x41) + sqr(x32 - x42) + sqr(x33 - x43) + sqr(x34 - x44) + sqr(
       x35 - x45) - 4*objvar =G= 0;

e262.. sqr(x31 - x46) + sqr(x32 - x47) + sqr(x33 - x48) + sqr(x34 - x49) + sqr(
       x35 - x50) - 4*objvar =G= 0;

e263.. sqr(x31 - x51) + sqr(x32 - x52) + sqr(x33 - x53) + sqr(x34 - x54) + sqr(
       x35 - x55) - 4*objvar =G= 0;

e264.. sqr(x31 - x56) + sqr(x32 - x57) + sqr(x33 - x58) + sqr(x34 - x59) + sqr(
       x35 - x60) - 4*objvar =G= 0;

e265.. sqr(x31 - x61) + sqr(x32 - x62) + sqr(x33 - x63) + sqr(x34 - x64) + sqr(
       x35 - x65) - 4*objvar =G= 0;

e266.. sqr(x31 - x66) + sqr(x32 - x67) + sqr(x33 - x68) + sqr(x34 - x69) + sqr(
       x35 - x70) - 4*objvar =G= 0;

e267.. sqr(x31 - x71) + sqr(x32 - x72) + sqr(x33 - x73) + sqr(x34 - x74) + sqr(
       x35 - x75) - 4*objvar =G= 0;

e268.. sqr(x31 - x76) + sqr(x32 - x77) + sqr(x33 - x78) + sqr(x34 - x79) + sqr(
       x35 - x80) - 4*objvar =G= 0;

e269.. sqr(x31 - x81) + sqr(x32 - x82) + sqr(x33 - x83) + sqr(x34 - x84) + sqr(
       x35 - x85) - 4*objvar =G= 0;

e270.. sqr(x31 - x86) + sqr(x32 - x87) + sqr(x33 - x88) + sqr(x34 - x89) + sqr(
       x35 - x90) - 4*objvar =G= 0;

e271.. sqr(x31 - x91) + sqr(x32 - x92) + sqr(x33 - x93) + sqr(x34 - x94) + sqr(
       x35 - x95) - 4*objvar =G= 0;

e272.. sqr(x31 - x96) + sqr(x32 - x97) + sqr(x33 - x98) + sqr(x34 - x99) + sqr(
       x35 - x100) - 4*objvar =G= 0;

e273.. sqr(x31 - x101) + sqr(x32 - x102) + sqr(x33 - x103) + sqr(x34 - x104) + 
       sqr(x35 - x105) - 4*objvar =G= 0;

e274.. sqr(x31 - x106) + sqr(x32 - x107) + sqr(x33 - x108) + sqr(x34 - x109) + 
       sqr(x35 - x110) - 4*objvar =G= 0;

e275.. sqr(x31 - x111) + sqr(x32 - x112) + sqr(x33 - x113) + sqr(x34 - x114) + 
       sqr(x35 - x115) - 4*objvar =G= 0;

e276.. sqr(x31 - x116) + sqr(x32 - x117) + sqr(x33 - x118) + sqr(x34 - x119) + 
       sqr(x35 - x120) - 4*objvar =G= 0;

e277.. sqr(x31 - x121) + sqr(x32 - x122) + sqr(x33 - x123) + sqr(x34 - x124) + 
       sqr(x35 - x125) - 4*objvar =G= 0;

e278.. sqr(x31 - x126) + sqr(x32 - x127) + sqr(x33 - x128) + sqr(x34 - x129) + 
       sqr(x35 - x130) - 4*objvar =G= 0;

e279.. sqr(x31 - x131) + sqr(x32 - x132) + sqr(x33 - x133) + sqr(x34 - x134) + 
       sqr(x35 - x135) - 4*objvar =G= 0;

e280.. sqr(x31 - x136) + sqr(x32 - x137) + sqr(x33 - x138) + sqr(x34 - x139) + 
       sqr(x35 - x140) - 4*objvar =G= 0;

e281.. sqr(x31 - x141) + sqr(x32 - x142) + sqr(x33 - x143) + sqr(x34 - x144) + 
       sqr(x35 - x145) - 4*objvar =G= 0;

e282.. sqr(x31 - x146) + sqr(x32 - x147) + sqr(x33 - x148) + sqr(x34 - x149) + 
       sqr(x35 - x150) - 4*objvar =G= 0;

e283.. sqr(x31 - x151) + sqr(x32 - x152) + sqr(x33 - x153) + sqr(x34 - x154) + 
       sqr(x35 - x155) - 4*objvar =G= 0;

e284.. sqr(x31 - x156) + sqr(x32 - x157) + sqr(x33 - x158) + sqr(x34 - x159) + 
       sqr(x35 - x160) - 4*objvar =G= 0;

e285.. sqr(x31 - x161) + sqr(x32 - x162) + sqr(x33 - x163) + sqr(x34 - x164) + 
       sqr(x35 - x165) - 4*objvar =G= 0;

e286.. sqr(x31 - x166) + sqr(x32 - x167) + sqr(x33 - x168) + sqr(x34 - x169) + 
       sqr(x35 - x170) - 4*objvar =G= 0;

e287.. sqr(x31 - x171) + sqr(x32 - x172) + sqr(x33 - x173) + sqr(x34 - x174) + 
       sqr(x35 - x175) - 4*objvar =G= 0;

e288.. sqr(x31 - x176) + sqr(x32 - x177) + sqr(x33 - x178) + sqr(x34 - x179) + 
       sqr(x35 - x180) - 4*objvar =G= 0;

e289.. sqr(x31 - x181) + sqr(x32 - x182) + sqr(x33 - x183) + sqr(x34 - x184) + 
       sqr(x35 - x185) - 4*objvar =G= 0;

e290.. sqr(x31 - x186) + sqr(x32 - x187) + sqr(x33 - x188) + sqr(x34 - x189) + 
       sqr(x35 - x190) - 4*objvar =G= 0;

e291.. sqr(x31 - x191) + sqr(x32 - x192) + sqr(x33 - x193) + sqr(x34 - x194) + 
       sqr(x35 - x195) - 4*objvar =G= 0;

e292.. sqr(x31 - x196) + sqr(x32 - x197) + sqr(x33 - x198) + sqr(x34 - x199) + 
       sqr(x35 - x200) - 4*objvar =G= 0;

e293.. sqr(x36 - x41) + sqr(x37 - x42) + sqr(x38 - x43) + sqr(x39 - x44) + sqr(
       x40 - x45) - 4*objvar =G= 0;

e294.. sqr(x36 - x46) + sqr(x37 - x47) + sqr(x38 - x48) + sqr(x39 - x49) + sqr(
       x40 - x50) - 4*objvar =G= 0;

e295.. sqr(x36 - x51) + sqr(x37 - x52) + sqr(x38 - x53) + sqr(x39 - x54) + sqr(
       x40 - x55) - 4*objvar =G= 0;

e296.. sqr(x36 - x56) + sqr(x37 - x57) + sqr(x38 - x58) + sqr(x39 - x59) + sqr(
       x40 - x60) - 4*objvar =G= 0;

e297.. sqr(x36 - x61) + sqr(x37 - x62) + sqr(x38 - x63) + sqr(x39 - x64) + sqr(
       x40 - x65) - 4*objvar =G= 0;

e298.. sqr(x36 - x66) + sqr(x37 - x67) + sqr(x38 - x68) + sqr(x39 - x69) + sqr(
       x40 - x70) - 4*objvar =G= 0;

e299.. sqr(x36 - x71) + sqr(x37 - x72) + sqr(x38 - x73) + sqr(x39 - x74) + sqr(
       x40 - x75) - 4*objvar =G= 0;

e300.. sqr(x36 - x76) + sqr(x37 - x77) + sqr(x38 - x78) + sqr(x39 - x79) + sqr(
       x40 - x80) - 4*objvar =G= 0;

e301.. sqr(x36 - x81) + sqr(x37 - x82) + sqr(x38 - x83) + sqr(x39 - x84) + sqr(
       x40 - x85) - 4*objvar =G= 0;

e302.. sqr(x36 - x86) + sqr(x37 - x87) + sqr(x38 - x88) + sqr(x39 - x89) + sqr(
       x40 - x90) - 4*objvar =G= 0;

e303.. sqr(x36 - x91) + sqr(x37 - x92) + sqr(x38 - x93) + sqr(x39 - x94) + sqr(
       x40 - x95) - 4*objvar =G= 0;

e304.. sqr(x36 - x96) + sqr(x37 - x97) + sqr(x38 - x98) + sqr(x39 - x99) + sqr(
       x40 - x100) - 4*objvar =G= 0;

e305.. sqr(x36 - x101) + sqr(x37 - x102) + sqr(x38 - x103) + sqr(x39 - x104) + 
       sqr(x40 - x105) - 4*objvar =G= 0;

e306.. sqr(x36 - x106) + sqr(x37 - x107) + sqr(x38 - x108) + sqr(x39 - x109) + 
       sqr(x40 - x110) - 4*objvar =G= 0;

e307.. sqr(x36 - x111) + sqr(x37 - x112) + sqr(x38 - x113) + sqr(x39 - x114) + 
       sqr(x40 - x115) - 4*objvar =G= 0;

e308.. sqr(x36 - x116) + sqr(x37 - x117) + sqr(x38 - x118) + sqr(x39 - x119) + 
       sqr(x40 - x120) - 4*objvar =G= 0;

e309.. sqr(x36 - x121) + sqr(x37 - x122) + sqr(x38 - x123) + sqr(x39 - x124) + 
       sqr(x40 - x125) - 4*objvar =G= 0;

e310.. sqr(x36 - x126) + sqr(x37 - x127) + sqr(x38 - x128) + sqr(x39 - x129) + 
       sqr(x40 - x130) - 4*objvar =G= 0;

e311.. sqr(x36 - x131) + sqr(x37 - x132) + sqr(x38 - x133) + sqr(x39 - x134) + 
       sqr(x40 - x135) - 4*objvar =G= 0;

e312.. sqr(x36 - x136) + sqr(x37 - x137) + sqr(x38 - x138) + sqr(x39 - x139) + 
       sqr(x40 - x140) - 4*objvar =G= 0;

e313.. sqr(x36 - x141) + sqr(x37 - x142) + sqr(x38 - x143) + sqr(x39 - x144) + 
       sqr(x40 - x145) - 4*objvar =G= 0;

e314.. sqr(x36 - x146) + sqr(x37 - x147) + sqr(x38 - x148) + sqr(x39 - x149) + 
       sqr(x40 - x150) - 4*objvar =G= 0;

e315.. sqr(x36 - x151) + sqr(x37 - x152) + sqr(x38 - x153) + sqr(x39 - x154) + 
       sqr(x40 - x155) - 4*objvar =G= 0;

e316.. sqr(x36 - x156) + sqr(x37 - x157) + sqr(x38 - x158) + sqr(x39 - x159) + 
       sqr(x40 - x160) - 4*objvar =G= 0;

e317.. sqr(x36 - x161) + sqr(x37 - x162) + sqr(x38 - x163) + sqr(x39 - x164) + 
       sqr(x40 - x165) - 4*objvar =G= 0;

e318.. sqr(x36 - x166) + sqr(x37 - x167) + sqr(x38 - x168) + sqr(x39 - x169) + 
       sqr(x40 - x170) - 4*objvar =G= 0;

e319.. sqr(x36 - x171) + sqr(x37 - x172) + sqr(x38 - x173) + sqr(x39 - x174) + 
       sqr(x40 - x175) - 4*objvar =G= 0;

e320.. sqr(x36 - x176) + sqr(x37 - x177) + sqr(x38 - x178) + sqr(x39 - x179) + 
       sqr(x40 - x180) - 4*objvar =G= 0;

e321.. sqr(x36 - x181) + sqr(x37 - x182) + sqr(x38 - x183) + sqr(x39 - x184) + 
       sqr(x40 - x185) - 4*objvar =G= 0;

e322.. sqr(x36 - x186) + sqr(x37 - x187) + sqr(x38 - x188) + sqr(x39 - x189) + 
       sqr(x40 - x190) - 4*objvar =G= 0;

e323.. sqr(x36 - x191) + sqr(x37 - x192) + sqr(x38 - x193) + sqr(x39 - x194) + 
       sqr(x40 - x195) - 4*objvar =G= 0;

e324.. sqr(x36 - x196) + sqr(x37 - x197) + sqr(x38 - x198) + sqr(x39 - x199) + 
       sqr(x40 - x200) - 4*objvar =G= 0;

e325.. sqr(x41 - x46) + sqr(x42 - x47) + sqr(x43 - x48) + sqr(x44 - x49) + sqr(
       x45 - x50) - 4*objvar =G= 0;

e326.. sqr(x41 - x51) + sqr(x42 - x52) + sqr(x43 - x53) + sqr(x44 - x54) + sqr(
       x45 - x55) - 4*objvar =G= 0;

e327.. sqr(x41 - x56) + sqr(x42 - x57) + sqr(x43 - x58) + sqr(x44 - x59) + sqr(
       x45 - x60) - 4*objvar =G= 0;

e328.. sqr(x41 - x61) + sqr(x42 - x62) + sqr(x43 - x63) + sqr(x44 - x64) + sqr(
       x45 - x65) - 4*objvar =G= 0;

e329.. sqr(x41 - x66) + sqr(x42 - x67) + sqr(x43 - x68) + sqr(x44 - x69) + sqr(
       x45 - x70) - 4*objvar =G= 0;

e330.. sqr(x41 - x71) + sqr(x42 - x72) + sqr(x43 - x73) + sqr(x44 - x74) + sqr(
       x45 - x75) - 4*objvar =G= 0;

e331.. sqr(x41 - x76) + sqr(x42 - x77) + sqr(x43 - x78) + sqr(x44 - x79) + sqr(
       x45 - x80) - 4*objvar =G= 0;

e332.. sqr(x41 - x81) + sqr(x42 - x82) + sqr(x43 - x83) + sqr(x44 - x84) + sqr(
       x45 - x85) - 4*objvar =G= 0;

e333.. sqr(x41 - x86) + sqr(x42 - x87) + sqr(x43 - x88) + sqr(x44 - x89) + sqr(
       x45 - x90) - 4*objvar =G= 0;

e334.. sqr(x41 - x91) + sqr(x42 - x92) + sqr(x43 - x93) + sqr(x44 - x94) + sqr(
       x45 - x95) - 4*objvar =G= 0;

e335.. sqr(x41 - x96) + sqr(x42 - x97) + sqr(x43 - x98) + sqr(x44 - x99) + sqr(
       x45 - x100) - 4*objvar =G= 0;

e336.. sqr(x41 - x101) + sqr(x42 - x102) + sqr(x43 - x103) + sqr(x44 - x104) + 
       sqr(x45 - x105) - 4*objvar =G= 0;

e337.. sqr(x41 - x106) + sqr(x42 - x107) + sqr(x43 - x108) + sqr(x44 - x109) + 
       sqr(x45 - x110) - 4*objvar =G= 0;

e338.. sqr(x41 - x111) + sqr(x42 - x112) + sqr(x43 - x113) + sqr(x44 - x114) + 
       sqr(x45 - x115) - 4*objvar =G= 0;

e339.. sqr(x41 - x116) + sqr(x42 - x117) + sqr(x43 - x118) + sqr(x44 - x119) + 
       sqr(x45 - x120) - 4*objvar =G= 0;

e340.. sqr(x41 - x121) + sqr(x42 - x122) + sqr(x43 - x123) + sqr(x44 - x124) + 
       sqr(x45 - x125) - 4*objvar =G= 0;

e341.. sqr(x41 - x126) + sqr(x42 - x127) + sqr(x43 - x128) + sqr(x44 - x129) + 
       sqr(x45 - x130) - 4*objvar =G= 0;

e342.. sqr(x41 - x131) + sqr(x42 - x132) + sqr(x43 - x133) + sqr(x44 - x134) + 
       sqr(x45 - x135) - 4*objvar =G= 0;

e343.. sqr(x41 - x136) + sqr(x42 - x137) + sqr(x43 - x138) + sqr(x44 - x139) + 
       sqr(x45 - x140) - 4*objvar =G= 0;

e344.. sqr(x41 - x141) + sqr(x42 - x142) + sqr(x43 - x143) + sqr(x44 - x144) + 
       sqr(x45 - x145) - 4*objvar =G= 0;

e345.. sqr(x41 - x146) + sqr(x42 - x147) + sqr(x43 - x148) + sqr(x44 - x149) + 
       sqr(x45 - x150) - 4*objvar =G= 0;

e346.. sqr(x41 - x151) + sqr(x42 - x152) + sqr(x43 - x153) + sqr(x44 - x154) + 
       sqr(x45 - x155) - 4*objvar =G= 0;

e347.. sqr(x41 - x156) + sqr(x42 - x157) + sqr(x43 - x158) + sqr(x44 - x159) + 
       sqr(x45 - x160) - 4*objvar =G= 0;

e348.. sqr(x41 - x161) + sqr(x42 - x162) + sqr(x43 - x163) + sqr(x44 - x164) + 
       sqr(x45 - x165) - 4*objvar =G= 0;

e349.. sqr(x41 - x166) + sqr(x42 - x167) + sqr(x43 - x168) + sqr(x44 - x169) + 
       sqr(x45 - x170) - 4*objvar =G= 0;

e350.. sqr(x41 - x171) + sqr(x42 - x172) + sqr(x43 - x173) + sqr(x44 - x174) + 
       sqr(x45 - x175) - 4*objvar =G= 0;

e351.. sqr(x41 - x176) + sqr(x42 - x177) + sqr(x43 - x178) + sqr(x44 - x179) + 
       sqr(x45 - x180) - 4*objvar =G= 0;

e352.. sqr(x41 - x181) + sqr(x42 - x182) + sqr(x43 - x183) + sqr(x44 - x184) + 
       sqr(x45 - x185) - 4*objvar =G= 0;

e353.. sqr(x41 - x186) + sqr(x42 - x187) + sqr(x43 - x188) + sqr(x44 - x189) + 
       sqr(x45 - x190) - 4*objvar =G= 0;

e354.. sqr(x41 - x191) + sqr(x42 - x192) + sqr(x43 - x193) + sqr(x44 - x194) + 
       sqr(x45 - x195) - 4*objvar =G= 0;

e355.. sqr(x41 - x196) + sqr(x42 - x197) + sqr(x43 - x198) + sqr(x44 - x199) + 
       sqr(x45 - x200) - 4*objvar =G= 0;

e356.. sqr(x46 - x51) + sqr(x47 - x52) + sqr(x48 - x53) + sqr(x49 - x54) + sqr(
       x50 - x55) - 4*objvar =G= 0;

e357.. sqr(x46 - x56) + sqr(x47 - x57) + sqr(x48 - x58) + sqr(x49 - x59) + sqr(
       x50 - x60) - 4*objvar =G= 0;

e358.. sqr(x46 - x61) + sqr(x47 - x62) + sqr(x48 - x63) + sqr(x49 - x64) + sqr(
       x50 - x65) - 4*objvar =G= 0;

e359.. sqr(x46 - x66) + sqr(x47 - x67) + sqr(x48 - x68) + sqr(x49 - x69) + sqr(
       x50 - x70) - 4*objvar =G= 0;

e360.. sqr(x46 - x71) + sqr(x47 - x72) + sqr(x48 - x73) + sqr(x49 - x74) + sqr(
       x50 - x75) - 4*objvar =G= 0;

e361.. sqr(x46 - x76) + sqr(x47 - x77) + sqr(x48 - x78) + sqr(x49 - x79) + sqr(
       x50 - x80) - 4*objvar =G= 0;

e362.. sqr(x46 - x81) + sqr(x47 - x82) + sqr(x48 - x83) + sqr(x49 - x84) + sqr(
       x50 - x85) - 4*objvar =G= 0;

e363.. sqr(x46 - x86) + sqr(x47 - x87) + sqr(x48 - x88) + sqr(x49 - x89) + sqr(
       x50 - x90) - 4*objvar =G= 0;

e364.. sqr(x46 - x91) + sqr(x47 - x92) + sqr(x48 - x93) + sqr(x49 - x94) + sqr(
       x50 - x95) - 4*objvar =G= 0;

e365.. sqr(x46 - x96) + sqr(x47 - x97) + sqr(x48 - x98) + sqr(x49 - x99) + sqr(
       x50 - x100) - 4*objvar =G= 0;

e366.. sqr(x46 - x101) + sqr(x47 - x102) + sqr(x48 - x103) + sqr(x49 - x104) + 
       sqr(x50 - x105) - 4*objvar =G= 0;

e367.. sqr(x46 - x106) + sqr(x47 - x107) + sqr(x48 - x108) + sqr(x49 - x109) + 
       sqr(x50 - x110) - 4*objvar =G= 0;

e368.. sqr(x46 - x111) + sqr(x47 - x112) + sqr(x48 - x113) + sqr(x49 - x114) + 
       sqr(x50 - x115) - 4*objvar =G= 0;

e369.. sqr(x46 - x116) + sqr(x47 - x117) + sqr(x48 - x118) + sqr(x49 - x119) + 
       sqr(x50 - x120) - 4*objvar =G= 0;

e370.. sqr(x46 - x121) + sqr(x47 - x122) + sqr(x48 - x123) + sqr(x49 - x124) + 
       sqr(x50 - x125) - 4*objvar =G= 0;

e371.. sqr(x46 - x126) + sqr(x47 - x127) + sqr(x48 - x128) + sqr(x49 - x129) + 
       sqr(x50 - x130) - 4*objvar =G= 0;

e372.. sqr(x46 - x131) + sqr(x47 - x132) + sqr(x48 - x133) + sqr(x49 - x134) + 
       sqr(x50 - x135) - 4*objvar =G= 0;

e373.. sqr(x46 - x136) + sqr(x47 - x137) + sqr(x48 - x138) + sqr(x49 - x139) + 
       sqr(x50 - x140) - 4*objvar =G= 0;

e374.. sqr(x46 - x141) + sqr(x47 - x142) + sqr(x48 - x143) + sqr(x49 - x144) + 
       sqr(x50 - x145) - 4*objvar =G= 0;

e375.. sqr(x46 - x146) + sqr(x47 - x147) + sqr(x48 - x148) + sqr(x49 - x149) + 
       sqr(x50 - x150) - 4*objvar =G= 0;

e376.. sqr(x46 - x151) + sqr(x47 - x152) + sqr(x48 - x153) + sqr(x49 - x154) + 
       sqr(x50 - x155) - 4*objvar =G= 0;

e377.. sqr(x46 - x156) + sqr(x47 - x157) + sqr(x48 - x158) + sqr(x49 - x159) + 
       sqr(x50 - x160) - 4*objvar =G= 0;

e378.. sqr(x46 - x161) + sqr(x47 - x162) + sqr(x48 - x163) + sqr(x49 - x164) + 
       sqr(x50 - x165) - 4*objvar =G= 0;

e379.. sqr(x46 - x166) + sqr(x47 - x167) + sqr(x48 - x168) + sqr(x49 - x169) + 
       sqr(x50 - x170) - 4*objvar =G= 0;

e380.. sqr(x46 - x171) + sqr(x47 - x172) + sqr(x48 - x173) + sqr(x49 - x174) + 
       sqr(x50 - x175) - 4*objvar =G= 0;

e381.. sqr(x46 - x176) + sqr(x47 - x177) + sqr(x48 - x178) + sqr(x49 - x179) + 
       sqr(x50 - x180) - 4*objvar =G= 0;

e382.. sqr(x46 - x181) + sqr(x47 - x182) + sqr(x48 - x183) + sqr(x49 - x184) + 
       sqr(x50 - x185) - 4*objvar =G= 0;

e383.. sqr(x46 - x186) + sqr(x47 - x187) + sqr(x48 - x188) + sqr(x49 - x189) + 
       sqr(x50 - x190) - 4*objvar =G= 0;

e384.. sqr(x46 - x191) + sqr(x47 - x192) + sqr(x48 - x193) + sqr(x49 - x194) + 
       sqr(x50 - x195) - 4*objvar =G= 0;

e385.. sqr(x46 - x196) + sqr(x47 - x197) + sqr(x48 - x198) + sqr(x49 - x199) + 
       sqr(x50 - x200) - 4*objvar =G= 0;

e386.. sqr(x51 - x56) + sqr(x52 - x57) + sqr(x53 - x58) + sqr(x54 - x59) + sqr(
       x55 - x60) - 4*objvar =G= 0;

e387.. sqr(x51 - x61) + sqr(x52 - x62) + sqr(x53 - x63) + sqr(x54 - x64) + sqr(
       x55 - x65) - 4*objvar =G= 0;

e388.. sqr(x51 - x66) + sqr(x52 - x67) + sqr(x53 - x68) + sqr(x54 - x69) + sqr(
       x55 - x70) - 4*objvar =G= 0;

e389.. sqr(x51 - x71) + sqr(x52 - x72) + sqr(x53 - x73) + sqr(x54 - x74) + sqr(
       x55 - x75) - 4*objvar =G= 0;

e390.. sqr(x51 - x76) + sqr(x52 - x77) + sqr(x53 - x78) + sqr(x54 - x79) + sqr(
       x55 - x80) - 4*objvar =G= 0;

e391.. sqr(x51 - x81) + sqr(x52 - x82) + sqr(x53 - x83) + sqr(x54 - x84) + sqr(
       x55 - x85) - 4*objvar =G= 0;

e392.. sqr(x51 - x86) + sqr(x52 - x87) + sqr(x53 - x88) + sqr(x54 - x89) + sqr(
       x55 - x90) - 4*objvar =G= 0;

e393.. sqr(x51 - x91) + sqr(x52 - x92) + sqr(x53 - x93) + sqr(x54 - x94) + sqr(
       x55 - x95) - 4*objvar =G= 0;

e394.. sqr(x51 - x96) + sqr(x52 - x97) + sqr(x53 - x98) + sqr(x54 - x99) + sqr(
       x55 - x100) - 4*objvar =G= 0;

e395.. sqr(x51 - x101) + sqr(x52 - x102) + sqr(x53 - x103) + sqr(x54 - x104) + 
       sqr(x55 - x105) - 4*objvar =G= 0;

e396.. sqr(x51 - x106) + sqr(x52 - x107) + sqr(x53 - x108) + sqr(x54 - x109) + 
       sqr(x55 - x110) - 4*objvar =G= 0;

e397.. sqr(x51 - x111) + sqr(x52 - x112) + sqr(x53 - x113) + sqr(x54 - x114) + 
       sqr(x55 - x115) - 4*objvar =G= 0;

e398.. sqr(x51 - x116) + sqr(x52 - x117) + sqr(x53 - x118) + sqr(x54 - x119) + 
       sqr(x55 - x120) - 4*objvar =G= 0;

e399.. sqr(x51 - x121) + sqr(x52 - x122) + sqr(x53 - x123) + sqr(x54 - x124) + 
       sqr(x55 - x125) - 4*objvar =G= 0;

e400.. sqr(x51 - x126) + sqr(x52 - x127) + sqr(x53 - x128) + sqr(x54 - x129) + 
       sqr(x55 - x130) - 4*objvar =G= 0;

e401.. sqr(x51 - x131) + sqr(x52 - x132) + sqr(x53 - x133) + sqr(x54 - x134) + 
       sqr(x55 - x135) - 4*objvar =G= 0;

e402.. sqr(x51 - x136) + sqr(x52 - x137) + sqr(x53 - x138) + sqr(x54 - x139) + 
       sqr(x55 - x140) - 4*objvar =G= 0;

e403.. sqr(x51 - x141) + sqr(x52 - x142) + sqr(x53 - x143) + sqr(x54 - x144) + 
       sqr(x55 - x145) - 4*objvar =G= 0;

e404.. sqr(x51 - x146) + sqr(x52 - x147) + sqr(x53 - x148) + sqr(x54 - x149) + 
       sqr(x55 - x150) - 4*objvar =G= 0;

e405.. sqr(x51 - x151) + sqr(x52 - x152) + sqr(x53 - x153) + sqr(x54 - x154) + 
       sqr(x55 - x155) - 4*objvar =G= 0;

e406.. sqr(x51 - x156) + sqr(x52 - x157) + sqr(x53 - x158) + sqr(x54 - x159) + 
       sqr(x55 - x160) - 4*objvar =G= 0;

e407.. sqr(x51 - x161) + sqr(x52 - x162) + sqr(x53 - x163) + sqr(x54 - x164) + 
       sqr(x55 - x165) - 4*objvar =G= 0;

e408.. sqr(x51 - x166) + sqr(x52 - x167) + sqr(x53 - x168) + sqr(x54 - x169) + 
       sqr(x55 - x170) - 4*objvar =G= 0;

e409.. sqr(x51 - x171) + sqr(x52 - x172) + sqr(x53 - x173) + sqr(x54 - x174) + 
       sqr(x55 - x175) - 4*objvar =G= 0;

e410.. sqr(x51 - x176) + sqr(x52 - x177) + sqr(x53 - x178) + sqr(x54 - x179) + 
       sqr(x55 - x180) - 4*objvar =G= 0;

e411.. sqr(x51 - x181) + sqr(x52 - x182) + sqr(x53 - x183) + sqr(x54 - x184) + 
       sqr(x55 - x185) - 4*objvar =G= 0;

e412.. sqr(x51 - x186) + sqr(x52 - x187) + sqr(x53 - x188) + sqr(x54 - x189) + 
       sqr(x55 - x190) - 4*objvar =G= 0;

e413.. sqr(x51 - x191) + sqr(x52 - x192) + sqr(x53 - x193) + sqr(x54 - x194) + 
       sqr(x55 - x195) - 4*objvar =G= 0;

e414.. sqr(x51 - x196) + sqr(x52 - x197) + sqr(x53 - x198) + sqr(x54 - x199) + 
       sqr(x55 - x200) - 4*objvar =G= 0;

e415.. sqr(x56 - x61) + sqr(x57 - x62) + sqr(x58 - x63) + sqr(x59 - x64) + sqr(
       x60 - x65) - 4*objvar =G= 0;

e416.. sqr(x56 - x66) + sqr(x57 - x67) + sqr(x58 - x68) + sqr(x59 - x69) + sqr(
       x60 - x70) - 4*objvar =G= 0;

e417.. sqr(x56 - x71) + sqr(x57 - x72) + sqr(x58 - x73) + sqr(x59 - x74) + sqr(
       x60 - x75) - 4*objvar =G= 0;

e418.. sqr(x56 - x76) + sqr(x57 - x77) + sqr(x58 - x78) + sqr(x59 - x79) + sqr(
       x60 - x80) - 4*objvar =G= 0;

e419.. sqr(x56 - x81) + sqr(x57 - x82) + sqr(x58 - x83) + sqr(x59 - x84) + sqr(
       x60 - x85) - 4*objvar =G= 0;

e420.. sqr(x56 - x86) + sqr(x57 - x87) + sqr(x58 - x88) + sqr(x59 - x89) + sqr(
       x60 - x90) - 4*objvar =G= 0;

e421.. sqr(x56 - x91) + sqr(x57 - x92) + sqr(x58 - x93) + sqr(x59 - x94) + sqr(
       x60 - x95) - 4*objvar =G= 0;

e422.. sqr(x56 - x96) + sqr(x57 - x97) + sqr(x58 - x98) + sqr(x59 - x99) + sqr(
       x60 - x100) - 4*objvar =G= 0;

e423.. sqr(x56 - x101) + sqr(x57 - x102) + sqr(x58 - x103) + sqr(x59 - x104) + 
       sqr(x60 - x105) - 4*objvar =G= 0;

e424.. sqr(x56 - x106) + sqr(x57 - x107) + sqr(x58 - x108) + sqr(x59 - x109) + 
       sqr(x60 - x110) - 4*objvar =G= 0;

e425.. sqr(x56 - x111) + sqr(x57 - x112) + sqr(x58 - x113) + sqr(x59 - x114) + 
       sqr(x60 - x115) - 4*objvar =G= 0;

e426.. sqr(x56 - x116) + sqr(x57 - x117) + sqr(x58 - x118) + sqr(x59 - x119) + 
       sqr(x60 - x120) - 4*objvar =G= 0;

e427.. sqr(x56 - x121) + sqr(x57 - x122) + sqr(x58 - x123) + sqr(x59 - x124) + 
       sqr(x60 - x125) - 4*objvar =G= 0;

e428.. sqr(x56 - x126) + sqr(x57 - x127) + sqr(x58 - x128) + sqr(x59 - x129) + 
       sqr(x60 - x130) - 4*objvar =G= 0;

e429.. sqr(x56 - x131) + sqr(x57 - x132) + sqr(x58 - x133) + sqr(x59 - x134) + 
       sqr(x60 - x135) - 4*objvar =G= 0;

e430.. sqr(x56 - x136) + sqr(x57 - x137) + sqr(x58 - x138) + sqr(x59 - x139) + 
       sqr(x60 - x140) - 4*objvar =G= 0;

e431.. sqr(x56 - x141) + sqr(x57 - x142) + sqr(x58 - x143) + sqr(x59 - x144) + 
       sqr(x60 - x145) - 4*objvar =G= 0;

e432.. sqr(x56 - x146) + sqr(x57 - x147) + sqr(x58 - x148) + sqr(x59 - x149) + 
       sqr(x60 - x150) - 4*objvar =G= 0;

e433.. sqr(x56 - x151) + sqr(x57 - x152) + sqr(x58 - x153) + sqr(x59 - x154) + 
       sqr(x60 - x155) - 4*objvar =G= 0;

e434.. sqr(x56 - x156) + sqr(x57 - x157) + sqr(x58 - x158) + sqr(x59 - x159) + 
       sqr(x60 - x160) - 4*objvar =G= 0;

e435.. sqr(x56 - x161) + sqr(x57 - x162) + sqr(x58 - x163) + sqr(x59 - x164) + 
       sqr(x60 - x165) - 4*objvar =G= 0;

e436.. sqr(x56 - x166) + sqr(x57 - x167) + sqr(x58 - x168) + sqr(x59 - x169) + 
       sqr(x60 - x170) - 4*objvar =G= 0;

e437.. sqr(x56 - x171) + sqr(x57 - x172) + sqr(x58 - x173) + sqr(x59 - x174) + 
       sqr(x60 - x175) - 4*objvar =G= 0;

e438.. sqr(x56 - x176) + sqr(x57 - x177) + sqr(x58 - x178) + sqr(x59 - x179) + 
       sqr(x60 - x180) - 4*objvar =G= 0;

e439.. sqr(x56 - x181) + sqr(x57 - x182) + sqr(x58 - x183) + sqr(x59 - x184) + 
       sqr(x60 - x185) - 4*objvar =G= 0;

e440.. sqr(x56 - x186) + sqr(x57 - x187) + sqr(x58 - x188) + sqr(x59 - x189) + 
       sqr(x60 - x190) - 4*objvar =G= 0;

e441.. sqr(x56 - x191) + sqr(x57 - x192) + sqr(x58 - x193) + sqr(x59 - x194) + 
       sqr(x60 - x195) - 4*objvar =G= 0;

e442.. sqr(x56 - x196) + sqr(x57 - x197) + sqr(x58 - x198) + sqr(x59 - x199) + 
       sqr(x60 - x200) - 4*objvar =G= 0;

e443.. sqr(x61 - x66) + sqr(x62 - x67) + sqr(x63 - x68) + sqr(x64 - x69) + sqr(
       x65 - x70) - 4*objvar =G= 0;

e444.. sqr(x61 - x71) + sqr(x62 - x72) + sqr(x63 - x73) + sqr(x64 - x74) + sqr(
       x65 - x75) - 4*objvar =G= 0;

e445.. sqr(x61 - x76) + sqr(x62 - x77) + sqr(x63 - x78) + sqr(x64 - x79) + sqr(
       x65 - x80) - 4*objvar =G= 0;

e446.. sqr(x61 - x81) + sqr(x62 - x82) + sqr(x63 - x83) + sqr(x64 - x84) + sqr(
       x65 - x85) - 4*objvar =G= 0;

e447.. sqr(x61 - x86) + sqr(x62 - x87) + sqr(x63 - x88) + sqr(x64 - x89) + sqr(
       x65 - x90) - 4*objvar =G= 0;

e448.. sqr(x61 - x91) + sqr(x62 - x92) + sqr(x63 - x93) + sqr(x64 - x94) + sqr(
       x65 - x95) - 4*objvar =G= 0;

e449.. sqr(x61 - x96) + sqr(x62 - x97) + sqr(x63 - x98) + sqr(x64 - x99) + sqr(
       x65 - x100) - 4*objvar =G= 0;

e450.. sqr(x61 - x101) + sqr(x62 - x102) + sqr(x63 - x103) + sqr(x64 - x104) + 
       sqr(x65 - x105) - 4*objvar =G= 0;

e451.. sqr(x61 - x106) + sqr(x62 - x107) + sqr(x63 - x108) + sqr(x64 - x109) + 
       sqr(x65 - x110) - 4*objvar =G= 0;

e452.. sqr(x61 - x111) + sqr(x62 - x112) + sqr(x63 - x113) + sqr(x64 - x114) + 
       sqr(x65 - x115) - 4*objvar =G= 0;

e453.. sqr(x61 - x116) + sqr(x62 - x117) + sqr(x63 - x118) + sqr(x64 - x119) + 
       sqr(x65 - x120) - 4*objvar =G= 0;

e454.. sqr(x61 - x121) + sqr(x62 - x122) + sqr(x63 - x123) + sqr(x64 - x124) + 
       sqr(x65 - x125) - 4*objvar =G= 0;

e455.. sqr(x61 - x126) + sqr(x62 - x127) + sqr(x63 - x128) + sqr(x64 - x129) + 
       sqr(x65 - x130) - 4*objvar =G= 0;

e456.. sqr(x61 - x131) + sqr(x62 - x132) + sqr(x63 - x133) + sqr(x64 - x134) + 
       sqr(x65 - x135) - 4*objvar =G= 0;

e457.. sqr(x61 - x136) + sqr(x62 - x137) + sqr(x63 - x138) + sqr(x64 - x139) + 
       sqr(x65 - x140) - 4*objvar =G= 0;

e458.. sqr(x61 - x141) + sqr(x62 - x142) + sqr(x63 - x143) + sqr(x64 - x144) + 
       sqr(x65 - x145) - 4*objvar =G= 0;

e459.. sqr(x61 - x146) + sqr(x62 - x147) + sqr(x63 - x148) + sqr(x64 - x149) + 
       sqr(x65 - x150) - 4*objvar =G= 0;

e460.. sqr(x61 - x151) + sqr(x62 - x152) + sqr(x63 - x153) + sqr(x64 - x154) + 
       sqr(x65 - x155) - 4*objvar =G= 0;

e461.. sqr(x61 - x156) + sqr(x62 - x157) + sqr(x63 - x158) + sqr(x64 - x159) + 
       sqr(x65 - x160) - 4*objvar =G= 0;

e462.. sqr(x61 - x161) + sqr(x62 - x162) + sqr(x63 - x163) + sqr(x64 - x164) + 
       sqr(x65 - x165) - 4*objvar =G= 0;

e463.. sqr(x61 - x166) + sqr(x62 - x167) + sqr(x63 - x168) + sqr(x64 - x169) + 
       sqr(x65 - x170) - 4*objvar =G= 0;

e464.. sqr(x61 - x171) + sqr(x62 - x172) + sqr(x63 - x173) + sqr(x64 - x174) + 
       sqr(x65 - x175) - 4*objvar =G= 0;

e465.. sqr(x61 - x176) + sqr(x62 - x177) + sqr(x63 - x178) + sqr(x64 - x179) + 
       sqr(x65 - x180) - 4*objvar =G= 0;

e466.. sqr(x61 - x181) + sqr(x62 - x182) + sqr(x63 - x183) + sqr(x64 - x184) + 
       sqr(x65 - x185) - 4*objvar =G= 0;

e467.. sqr(x61 - x186) + sqr(x62 - x187) + sqr(x63 - x188) + sqr(x64 - x189) + 
       sqr(x65 - x190) - 4*objvar =G= 0;

e468.. sqr(x61 - x191) + sqr(x62 - x192) + sqr(x63 - x193) + sqr(x64 - x194) + 
       sqr(x65 - x195) - 4*objvar =G= 0;

e469.. sqr(x61 - x196) + sqr(x62 - x197) + sqr(x63 - x198) + sqr(x64 - x199) + 
       sqr(x65 - x200) - 4*objvar =G= 0;

e470.. sqr(x66 - x71) + sqr(x67 - x72) + sqr(x68 - x73) + sqr(x69 - x74) + sqr(
       x70 - x75) - 4*objvar =G= 0;

e471.. sqr(x66 - x76) + sqr(x67 - x77) + sqr(x68 - x78) + sqr(x69 - x79) + sqr(
       x70 - x80) - 4*objvar =G= 0;

e472.. sqr(x66 - x81) + sqr(x67 - x82) + sqr(x68 - x83) + sqr(x69 - x84) + sqr(
       x70 - x85) - 4*objvar =G= 0;

e473.. sqr(x66 - x86) + sqr(x67 - x87) + sqr(x68 - x88) + sqr(x69 - x89) + sqr(
       x70 - x90) - 4*objvar =G= 0;

e474.. sqr(x66 - x91) + sqr(x67 - x92) + sqr(x68 - x93) + sqr(x69 - x94) + sqr(
       x70 - x95) - 4*objvar =G= 0;

e475.. sqr(x66 - x96) + sqr(x67 - x97) + sqr(x68 - x98) + sqr(x69 - x99) + sqr(
       x70 - x100) - 4*objvar =G= 0;

e476.. sqr(x66 - x101) + sqr(x67 - x102) + sqr(x68 - x103) + sqr(x69 - x104) + 
       sqr(x70 - x105) - 4*objvar =G= 0;

e477.. sqr(x66 - x106) + sqr(x67 - x107) + sqr(x68 - x108) + sqr(x69 - x109) + 
       sqr(x70 - x110) - 4*objvar =G= 0;

e478.. sqr(x66 - x111) + sqr(x67 - x112) + sqr(x68 - x113) + sqr(x69 - x114) + 
       sqr(x70 - x115) - 4*objvar =G= 0;

e479.. sqr(x66 - x116) + sqr(x67 - x117) + sqr(x68 - x118) + sqr(x69 - x119) + 
       sqr(x70 - x120) - 4*objvar =G= 0;

e480.. sqr(x66 - x121) + sqr(x67 - x122) + sqr(x68 - x123) + sqr(x69 - x124) + 
       sqr(x70 - x125) - 4*objvar =G= 0;

e481.. sqr(x66 - x126) + sqr(x67 - x127) + sqr(x68 - x128) + sqr(x69 - x129) + 
       sqr(x70 - x130) - 4*objvar =G= 0;

e482.. sqr(x66 - x131) + sqr(x67 - x132) + sqr(x68 - x133) + sqr(x69 - x134) + 
       sqr(x70 - x135) - 4*objvar =G= 0;

e483.. sqr(x66 - x136) + sqr(x67 - x137) + sqr(x68 - x138) + sqr(x69 - x139) + 
       sqr(x70 - x140) - 4*objvar =G= 0;

e484.. sqr(x66 - x141) + sqr(x67 - x142) + sqr(x68 - x143) + sqr(x69 - x144) + 
       sqr(x70 - x145) - 4*objvar =G= 0;

e485.. sqr(x66 - x146) + sqr(x67 - x147) + sqr(x68 - x148) + sqr(x69 - x149) + 
       sqr(x70 - x150) - 4*objvar =G= 0;

e486.. sqr(x66 - x151) + sqr(x67 - x152) + sqr(x68 - x153) + sqr(x69 - x154) + 
       sqr(x70 - x155) - 4*objvar =G= 0;

e487.. sqr(x66 - x156) + sqr(x67 - x157) + sqr(x68 - x158) + sqr(x69 - x159) + 
       sqr(x70 - x160) - 4*objvar =G= 0;

e488.. sqr(x66 - x161) + sqr(x67 - x162) + sqr(x68 - x163) + sqr(x69 - x164) + 
       sqr(x70 - x165) - 4*objvar =G= 0;

e489.. sqr(x66 - x166) + sqr(x67 - x167) + sqr(x68 - x168) + sqr(x69 - x169) + 
       sqr(x70 - x170) - 4*objvar =G= 0;

e490.. sqr(x66 - x171) + sqr(x67 - x172) + sqr(x68 - x173) + sqr(x69 - x174) + 
       sqr(x70 - x175) - 4*objvar =G= 0;

e491.. sqr(x66 - x176) + sqr(x67 - x177) + sqr(x68 - x178) + sqr(x69 - x179) + 
       sqr(x70 - x180) - 4*objvar =G= 0;

e492.. sqr(x66 - x181) + sqr(x67 - x182) + sqr(x68 - x183) + sqr(x69 - x184) + 
       sqr(x70 - x185) - 4*objvar =G= 0;

e493.. sqr(x66 - x186) + sqr(x67 - x187) + sqr(x68 - x188) + sqr(x69 - x189) + 
       sqr(x70 - x190) - 4*objvar =G= 0;

e494.. sqr(x66 - x191) + sqr(x67 - x192) + sqr(x68 - x193) + sqr(x69 - x194) + 
       sqr(x70 - x195) - 4*objvar =G= 0;

e495.. sqr(x66 - x196) + sqr(x67 - x197) + sqr(x68 - x198) + sqr(x69 - x199) + 
       sqr(x70 - x200) - 4*objvar =G= 0;

e496.. sqr(x71 - x76) + sqr(x72 - x77) + sqr(x73 - x78) + sqr(x74 - x79) + sqr(
       x75 - x80) - 4*objvar =G= 0;

e497.. sqr(x71 - x81) + sqr(x72 - x82) + sqr(x73 - x83) + sqr(x74 - x84) + sqr(
       x75 - x85) - 4*objvar =G= 0;

e498.. sqr(x71 - x86) + sqr(x72 - x87) + sqr(x73 - x88) + sqr(x74 - x89) + sqr(
       x75 - x90) - 4*objvar =G= 0;

e499.. sqr(x71 - x91) + sqr(x72 - x92) + sqr(x73 - x93) + sqr(x74 - x94) + sqr(
       x75 - x95) - 4*objvar =G= 0;

e500.. sqr(x71 - x96) + sqr(x72 - x97) + sqr(x73 - x98) + sqr(x74 - x99) + sqr(
       x75 - x100) - 4*objvar =G= 0;

e501.. sqr(x71 - x101) + sqr(x72 - x102) + sqr(x73 - x103) + sqr(x74 - x104) + 
       sqr(x75 - x105) - 4*objvar =G= 0;

e502.. sqr(x71 - x106) + sqr(x72 - x107) + sqr(x73 - x108) + sqr(x74 - x109) + 
       sqr(x75 - x110) - 4*objvar =G= 0;

e503.. sqr(x71 - x111) + sqr(x72 - x112) + sqr(x73 - x113) + sqr(x74 - x114) + 
       sqr(x75 - x115) - 4*objvar =G= 0;

e504.. sqr(x71 - x116) + sqr(x72 - x117) + sqr(x73 - x118) + sqr(x74 - x119) + 
       sqr(x75 - x120) - 4*objvar =G= 0;

e505.. sqr(x71 - x121) + sqr(x72 - x122) + sqr(x73 - x123) + sqr(x74 - x124) + 
       sqr(x75 - x125) - 4*objvar =G= 0;

e506.. sqr(x71 - x126) + sqr(x72 - x127) + sqr(x73 - x128) + sqr(x74 - x129) + 
       sqr(x75 - x130) - 4*objvar =G= 0;

e507.. sqr(x71 - x131) + sqr(x72 - x132) + sqr(x73 - x133) + sqr(x74 - x134) + 
       sqr(x75 - x135) - 4*objvar =G= 0;

e508.. sqr(x71 - x136) + sqr(x72 - x137) + sqr(x73 - x138) + sqr(x74 - x139) + 
       sqr(x75 - x140) - 4*objvar =G= 0;

e509.. sqr(x71 - x141) + sqr(x72 - x142) + sqr(x73 - x143) + sqr(x74 - x144) + 
       sqr(x75 - x145) - 4*objvar =G= 0;

e510.. sqr(x71 - x146) + sqr(x72 - x147) + sqr(x73 - x148) + sqr(x74 - x149) + 
       sqr(x75 - x150) - 4*objvar =G= 0;

e511.. sqr(x71 - x151) + sqr(x72 - x152) + sqr(x73 - x153) + sqr(x74 - x154) + 
       sqr(x75 - x155) - 4*objvar =G= 0;

e512.. sqr(x71 - x156) + sqr(x72 - x157) + sqr(x73 - x158) + sqr(x74 - x159) + 
       sqr(x75 - x160) - 4*objvar =G= 0;

e513.. sqr(x71 - x161) + sqr(x72 - x162) + sqr(x73 - x163) + sqr(x74 - x164) + 
       sqr(x75 - x165) - 4*objvar =G= 0;

e514.. sqr(x71 - x166) + sqr(x72 - x167) + sqr(x73 - x168) + sqr(x74 - x169) + 
       sqr(x75 - x170) - 4*objvar =G= 0;

e515.. sqr(x71 - x171) + sqr(x72 - x172) + sqr(x73 - x173) + sqr(x74 - x174) + 
       sqr(x75 - x175) - 4*objvar =G= 0;

e516.. sqr(x71 - x176) + sqr(x72 - x177) + sqr(x73 - x178) + sqr(x74 - x179) + 
       sqr(x75 - x180) - 4*objvar =G= 0;

e517.. sqr(x71 - x181) + sqr(x72 - x182) + sqr(x73 - x183) + sqr(x74 - x184) + 
       sqr(x75 - x185) - 4*objvar =G= 0;

e518.. sqr(x71 - x186) + sqr(x72 - x187) + sqr(x73 - x188) + sqr(x74 - x189) + 
       sqr(x75 - x190) - 4*objvar =G= 0;

e519.. sqr(x71 - x191) + sqr(x72 - x192) + sqr(x73 - x193) + sqr(x74 - x194) + 
       sqr(x75 - x195) - 4*objvar =G= 0;

e520.. sqr(x71 - x196) + sqr(x72 - x197) + sqr(x73 - x198) + sqr(x74 - x199) + 
       sqr(x75 - x200) - 4*objvar =G= 0;

e521.. sqr(x76 - x81) + sqr(x77 - x82) + sqr(x78 - x83) + sqr(x79 - x84) + sqr(
       x80 - x85) - 4*objvar =G= 0;

e522.. sqr(x76 - x86) + sqr(x77 - x87) + sqr(x78 - x88) + sqr(x79 - x89) + sqr(
       x80 - x90) - 4*objvar =G= 0;

e523.. sqr(x76 - x91) + sqr(x77 - x92) + sqr(x78 - x93) + sqr(x79 - x94) + sqr(
       x80 - x95) - 4*objvar =G= 0;

e524.. sqr(x76 - x96) + sqr(x77 - x97) + sqr(x78 - x98) + sqr(x79 - x99) + sqr(
       x80 - x100) - 4*objvar =G= 0;

e525.. sqr(x76 - x101) + sqr(x77 - x102) + sqr(x78 - x103) + sqr(x79 - x104) + 
       sqr(x80 - x105) - 4*objvar =G= 0;

e526.. sqr(x76 - x106) + sqr(x77 - x107) + sqr(x78 - x108) + sqr(x79 - x109) + 
       sqr(x80 - x110) - 4*objvar =G= 0;

e527.. sqr(x76 - x111) + sqr(x77 - x112) + sqr(x78 - x113) + sqr(x79 - x114) + 
       sqr(x80 - x115) - 4*objvar =G= 0;

e528.. sqr(x76 - x116) + sqr(x77 - x117) + sqr(x78 - x118) + sqr(x79 - x119) + 
       sqr(x80 - x120) - 4*objvar =G= 0;

e529.. sqr(x76 - x121) + sqr(x77 - x122) + sqr(x78 - x123) + sqr(x79 - x124) + 
       sqr(x80 - x125) - 4*objvar =G= 0;

e530.. sqr(x76 - x126) + sqr(x77 - x127) + sqr(x78 - x128) + sqr(x79 - x129) + 
       sqr(x80 - x130) - 4*objvar =G= 0;

e531.. sqr(x76 - x131) + sqr(x77 - x132) + sqr(x78 - x133) + sqr(x79 - x134) + 
       sqr(x80 - x135) - 4*objvar =G= 0;

e532.. sqr(x76 - x136) + sqr(x77 - x137) + sqr(x78 - x138) + sqr(x79 - x139) + 
       sqr(x80 - x140) - 4*objvar =G= 0;

e533.. sqr(x76 - x141) + sqr(x77 - x142) + sqr(x78 - x143) + sqr(x79 - x144) + 
       sqr(x80 - x145) - 4*objvar =G= 0;

e534.. sqr(x76 - x146) + sqr(x77 - x147) + sqr(x78 - x148) + sqr(x79 - x149) + 
       sqr(x80 - x150) - 4*objvar =G= 0;

e535.. sqr(x76 - x151) + sqr(x77 - x152) + sqr(x78 - x153) + sqr(x79 - x154) + 
       sqr(x80 - x155) - 4*objvar =G= 0;

e536.. sqr(x76 - x156) + sqr(x77 - x157) + sqr(x78 - x158) + sqr(x79 - x159) + 
       sqr(x80 - x160) - 4*objvar =G= 0;

e537.. sqr(x76 - x161) + sqr(x77 - x162) + sqr(x78 - x163) + sqr(x79 - x164) + 
       sqr(x80 - x165) - 4*objvar =G= 0;

e538.. sqr(x76 - x166) + sqr(x77 - x167) + sqr(x78 - x168) + sqr(x79 - x169) + 
       sqr(x80 - x170) - 4*objvar =G= 0;

e539.. sqr(x76 - x171) + sqr(x77 - x172) + sqr(x78 - x173) + sqr(x79 - x174) + 
       sqr(x80 - x175) - 4*objvar =G= 0;

e540.. sqr(x76 - x176) + sqr(x77 - x177) + sqr(x78 - x178) + sqr(x79 - x179) + 
       sqr(x80 - x180) - 4*objvar =G= 0;

e541.. sqr(x76 - x181) + sqr(x77 - x182) + sqr(x78 - x183) + sqr(x79 - x184) + 
       sqr(x80 - x185) - 4*objvar =G= 0;

e542.. sqr(x76 - x186) + sqr(x77 - x187) + sqr(x78 - x188) + sqr(x79 - x189) + 
       sqr(x80 - x190) - 4*objvar =G= 0;

e543.. sqr(x76 - x191) + sqr(x77 - x192) + sqr(x78 - x193) + sqr(x79 - x194) + 
       sqr(x80 - x195) - 4*objvar =G= 0;

e544.. sqr(x76 - x196) + sqr(x77 - x197) + sqr(x78 - x198) + sqr(x79 - x199) + 
       sqr(x80 - x200) - 4*objvar =G= 0;

e545.. sqr(x81 - x86) + sqr(x82 - x87) + sqr(x83 - x88) + sqr(x84 - x89) + sqr(
       x85 - x90) - 4*objvar =G= 0;

e546.. sqr(x81 - x91) + sqr(x82 - x92) + sqr(x83 - x93) + sqr(x84 - x94) + sqr(
       x85 - x95) - 4*objvar =G= 0;

e547.. sqr(x81 - x96) + sqr(x82 - x97) + sqr(x83 - x98) + sqr(x84 - x99) + sqr(
       x85 - x100) - 4*objvar =G= 0;

e548.. sqr(x81 - x101) + sqr(x82 - x102) + sqr(x83 - x103) + sqr(x84 - x104) + 
       sqr(x85 - x105) - 4*objvar =G= 0;

e549.. sqr(x81 - x106) + sqr(x82 - x107) + sqr(x83 - x108) + sqr(x84 - x109) + 
       sqr(x85 - x110) - 4*objvar =G= 0;

e550.. sqr(x81 - x111) + sqr(x82 - x112) + sqr(x83 - x113) + sqr(x84 - x114) + 
       sqr(x85 - x115) - 4*objvar =G= 0;

e551.. sqr(x81 - x116) + sqr(x82 - x117) + sqr(x83 - x118) + sqr(x84 - x119) + 
       sqr(x85 - x120) - 4*objvar =G= 0;

e552.. sqr(x81 - x121) + sqr(x82 - x122) + sqr(x83 - x123) + sqr(x84 - x124) + 
       sqr(x85 - x125) - 4*objvar =G= 0;

e553.. sqr(x81 - x126) + sqr(x82 - x127) + sqr(x83 - x128) + sqr(x84 - x129) + 
       sqr(x85 - x130) - 4*objvar =G= 0;

e554.. sqr(x81 - x131) + sqr(x82 - x132) + sqr(x83 - x133) + sqr(x84 - x134) + 
       sqr(x85 - x135) - 4*objvar =G= 0;

e555.. sqr(x81 - x136) + sqr(x82 - x137) + sqr(x83 - x138) + sqr(x84 - x139) + 
       sqr(x85 - x140) - 4*objvar =G= 0;

e556.. sqr(x81 - x141) + sqr(x82 - x142) + sqr(x83 - x143) + sqr(x84 - x144) + 
       sqr(x85 - x145) - 4*objvar =G= 0;

e557.. sqr(x81 - x146) + sqr(x82 - x147) + sqr(x83 - x148) + sqr(x84 - x149) + 
       sqr(x85 - x150) - 4*objvar =G= 0;

e558.. sqr(x81 - x151) + sqr(x82 - x152) + sqr(x83 - x153) + sqr(x84 - x154) + 
       sqr(x85 - x155) - 4*objvar =G= 0;

e559.. sqr(x81 - x156) + sqr(x82 - x157) + sqr(x83 - x158) + sqr(x84 - x159) + 
       sqr(x85 - x160) - 4*objvar =G= 0;

e560.. sqr(x81 - x161) + sqr(x82 - x162) + sqr(x83 - x163) + sqr(x84 - x164) + 
       sqr(x85 - x165) - 4*objvar =G= 0;

e561.. sqr(x81 - x166) + sqr(x82 - x167) + sqr(x83 - x168) + sqr(x84 - x169) + 
       sqr(x85 - x170) - 4*objvar =G= 0;

e562.. sqr(x81 - x171) + sqr(x82 - x172) + sqr(x83 - x173) + sqr(x84 - x174) + 
       sqr(x85 - x175) - 4*objvar =G= 0;

e563.. sqr(x81 - x176) + sqr(x82 - x177) + sqr(x83 - x178) + sqr(x84 - x179) + 
       sqr(x85 - x180) - 4*objvar =G= 0;

e564.. sqr(x81 - x181) + sqr(x82 - x182) + sqr(x83 - x183) + sqr(x84 - x184) + 
       sqr(x85 - x185) - 4*objvar =G= 0;

e565.. sqr(x81 - x186) + sqr(x82 - x187) + sqr(x83 - x188) + sqr(x84 - x189) + 
       sqr(x85 - x190) - 4*objvar =G= 0;

e566.. sqr(x81 - x191) + sqr(x82 - x192) + sqr(x83 - x193) + sqr(x84 - x194) + 
       sqr(x85 - x195) - 4*objvar =G= 0;

e567.. sqr(x81 - x196) + sqr(x82 - x197) + sqr(x83 - x198) + sqr(x84 - x199) + 
       sqr(x85 - x200) - 4*objvar =G= 0;

e568.. sqr(x86 - x91) + sqr(x87 - x92) + sqr(x88 - x93) + sqr(x89 - x94) + sqr(
       x90 - x95) - 4*objvar =G= 0;

e569.. sqr(x86 - x96) + sqr(x87 - x97) + sqr(x88 - x98) + sqr(x89 - x99) + sqr(
       x90 - x100) - 4*objvar =G= 0;

e570.. sqr(x86 - x101) + sqr(x87 - x102) + sqr(x88 - x103) + sqr(x89 - x104) + 
       sqr(x90 - x105) - 4*objvar =G= 0;

e571.. sqr(x86 - x106) + sqr(x87 - x107) + sqr(x88 - x108) + sqr(x89 - x109) + 
       sqr(x90 - x110) - 4*objvar =G= 0;

e572.. sqr(x86 - x111) + sqr(x87 - x112) + sqr(x88 - x113) + sqr(x89 - x114) + 
       sqr(x90 - x115) - 4*objvar =G= 0;

e573.. sqr(x86 - x116) + sqr(x87 - x117) + sqr(x88 - x118) + sqr(x89 - x119) + 
       sqr(x90 - x120) - 4*objvar =G= 0;

e574.. sqr(x86 - x121) + sqr(x87 - x122) + sqr(x88 - x123) + sqr(x89 - x124) + 
       sqr(x90 - x125) - 4*objvar =G= 0;

e575.. sqr(x86 - x126) + sqr(x87 - x127) + sqr(x88 - x128) + sqr(x89 - x129) + 
       sqr(x90 - x130) - 4*objvar =G= 0;

e576.. sqr(x86 - x131) + sqr(x87 - x132) + sqr(x88 - x133) + sqr(x89 - x134) + 
       sqr(x90 - x135) - 4*objvar =G= 0;

e577.. sqr(x86 - x136) + sqr(x87 - x137) + sqr(x88 - x138) + sqr(x89 - x139) + 
       sqr(x90 - x140) - 4*objvar =G= 0;

e578.. sqr(x86 - x141) + sqr(x87 - x142) + sqr(x88 - x143) + sqr(x89 - x144) + 
       sqr(x90 - x145) - 4*objvar =G= 0;

e579.. sqr(x86 - x146) + sqr(x87 - x147) + sqr(x88 - x148) + sqr(x89 - x149) + 
       sqr(x90 - x150) - 4*objvar =G= 0;

e580.. sqr(x86 - x151) + sqr(x87 - x152) + sqr(x88 - x153) + sqr(x89 - x154) + 
       sqr(x90 - x155) - 4*objvar =G= 0;

e581.. sqr(x86 - x156) + sqr(x87 - x157) + sqr(x88 - x158) + sqr(x89 - x159) + 
       sqr(x90 - x160) - 4*objvar =G= 0;

e582.. sqr(x86 - x161) + sqr(x87 - x162) + sqr(x88 - x163) + sqr(x89 - x164) + 
       sqr(x90 - x165) - 4*objvar =G= 0;

e583.. sqr(x86 - x166) + sqr(x87 - x167) + sqr(x88 - x168) + sqr(x89 - x169) + 
       sqr(x90 - x170) - 4*objvar =G= 0;

e584.. sqr(x86 - x171) + sqr(x87 - x172) + sqr(x88 - x173) + sqr(x89 - x174) + 
       sqr(x90 - x175) - 4*objvar =G= 0;

e585.. sqr(x86 - x176) + sqr(x87 - x177) + sqr(x88 - x178) + sqr(x89 - x179) + 
       sqr(x90 - x180) - 4*objvar =G= 0;

e586.. sqr(x86 - x181) + sqr(x87 - x182) + sqr(x88 - x183) + sqr(x89 - x184) + 
       sqr(x90 - x185) - 4*objvar =G= 0;

e587.. sqr(x86 - x186) + sqr(x87 - x187) + sqr(x88 - x188) + sqr(x89 - x189) + 
       sqr(x90 - x190) - 4*objvar =G= 0;

e588.. sqr(x86 - x191) + sqr(x87 - x192) + sqr(x88 - x193) + sqr(x89 - x194) + 
       sqr(x90 - x195) - 4*objvar =G= 0;

e589.. sqr(x86 - x196) + sqr(x87 - x197) + sqr(x88 - x198) + sqr(x89 - x199) + 
       sqr(x90 - x200) - 4*objvar =G= 0;

e590.. sqr(x91 - x96) + sqr(x92 - x97) + sqr(x93 - x98) + sqr(x94 - x99) + sqr(
       x95 - x100) - 4*objvar =G= 0;

e591.. sqr(x91 - x101) + sqr(x92 - x102) + sqr(x93 - x103) + sqr(x94 - x104) + 
       sqr(x95 - x105) - 4*objvar =G= 0;

e592.. sqr(x91 - x106) + sqr(x92 - x107) + sqr(x93 - x108) + sqr(x94 - x109) + 
       sqr(x95 - x110) - 4*objvar =G= 0;

e593.. sqr(x91 - x111) + sqr(x92 - x112) + sqr(x93 - x113) + sqr(x94 - x114) + 
       sqr(x95 - x115) - 4*objvar =G= 0;

e594.. sqr(x91 - x116) + sqr(x92 - x117) + sqr(x93 - x118) + sqr(x94 - x119) + 
       sqr(x95 - x120) - 4*objvar =G= 0;

e595.. sqr(x91 - x121) + sqr(x92 - x122) + sqr(x93 - x123) + sqr(x94 - x124) + 
       sqr(x95 - x125) - 4*objvar =G= 0;

e596.. sqr(x91 - x126) + sqr(x92 - x127) + sqr(x93 - x128) + sqr(x94 - x129) + 
       sqr(x95 - x130) - 4*objvar =G= 0;

e597.. sqr(x91 - x131) + sqr(x92 - x132) + sqr(x93 - x133) + sqr(x94 - x134) + 
       sqr(x95 - x135) - 4*objvar =G= 0;

e598.. sqr(x91 - x136) + sqr(x92 - x137) + sqr(x93 - x138) + sqr(x94 - x139) + 
       sqr(x95 - x140) - 4*objvar =G= 0;

e599.. sqr(x91 - x141) + sqr(x92 - x142) + sqr(x93 - x143) + sqr(x94 - x144) + 
       sqr(x95 - x145) - 4*objvar =G= 0;

e600.. sqr(x91 - x146) + sqr(x92 - x147) + sqr(x93 - x148) + sqr(x94 - x149) + 
       sqr(x95 - x150) - 4*objvar =G= 0;

e601.. sqr(x91 - x151) + sqr(x92 - x152) + sqr(x93 - x153) + sqr(x94 - x154) + 
       sqr(x95 - x155) - 4*objvar =G= 0;

e602.. sqr(x91 - x156) + sqr(x92 - x157) + sqr(x93 - x158) + sqr(x94 - x159) + 
       sqr(x95 - x160) - 4*objvar =G= 0;

e603.. sqr(x91 - x161) + sqr(x92 - x162) + sqr(x93 - x163) + sqr(x94 - x164) + 
       sqr(x95 - x165) - 4*objvar =G= 0;

e604.. sqr(x91 - x166) + sqr(x92 - x167) + sqr(x93 - x168) + sqr(x94 - x169) + 
       sqr(x95 - x170) - 4*objvar =G= 0;

e605.. sqr(x91 - x171) + sqr(x92 - x172) + sqr(x93 - x173) + sqr(x94 - x174) + 
       sqr(x95 - x175) - 4*objvar =G= 0;

e606.. sqr(x91 - x176) + sqr(x92 - x177) + sqr(x93 - x178) + sqr(x94 - x179) + 
       sqr(x95 - x180) - 4*objvar =G= 0;

e607.. sqr(x91 - x181) + sqr(x92 - x182) + sqr(x93 - x183) + sqr(x94 - x184) + 
       sqr(x95 - x185) - 4*objvar =G= 0;

e608.. sqr(x91 - x186) + sqr(x92 - x187) + sqr(x93 - x188) + sqr(x94 - x189) + 
       sqr(x95 - x190) - 4*objvar =G= 0;

e609.. sqr(x91 - x191) + sqr(x92 - x192) + sqr(x93 - x193) + sqr(x94 - x194) + 
       sqr(x95 - x195) - 4*objvar =G= 0;

e610.. sqr(x91 - x196) + sqr(x92 - x197) + sqr(x93 - x198) + sqr(x94 - x199) + 
       sqr(x95 - x200) - 4*objvar =G= 0;

e611.. sqr(x96 - x101) + sqr(x97 - x102) + sqr(x98 - x103) + sqr(x99 - x104) + 
       sqr(x100 - x105) - 4*objvar =G= 0;

e612.. sqr(x96 - x106) + sqr(x97 - x107) + sqr(x98 - x108) + sqr(x99 - x109) + 
       sqr(x100 - x110) - 4*objvar =G= 0;

e613.. sqr(x96 - x111) + sqr(x97 - x112) + sqr(x98 - x113) + sqr(x99 - x114) + 
       sqr(x100 - x115) - 4*objvar =G= 0;

e614.. sqr(x96 - x116) + sqr(x97 - x117) + sqr(x98 - x118) + sqr(x99 - x119) + 
       sqr(x100 - x120) - 4*objvar =G= 0;

e615.. sqr(x96 - x121) + sqr(x97 - x122) + sqr(x98 - x123) + sqr(x99 - x124) + 
       sqr(x100 - x125) - 4*objvar =G= 0;

e616.. sqr(x96 - x126) + sqr(x97 - x127) + sqr(x98 - x128) + sqr(x99 - x129) + 
       sqr(x100 - x130) - 4*objvar =G= 0;

e617.. sqr(x96 - x131) + sqr(x97 - x132) + sqr(x98 - x133) + sqr(x99 - x134) + 
       sqr(x100 - x135) - 4*objvar =G= 0;

e618.. sqr(x96 - x136) + sqr(x97 - x137) + sqr(x98 - x138) + sqr(x99 - x139) + 
       sqr(x100 - x140) - 4*objvar =G= 0;

e619.. sqr(x96 - x141) + sqr(x97 - x142) + sqr(x98 - x143) + sqr(x99 - x144) + 
       sqr(x100 - x145) - 4*objvar =G= 0;

e620.. sqr(x96 - x146) + sqr(x97 - x147) + sqr(x98 - x148) + sqr(x99 - x149) + 
       sqr(x100 - x150) - 4*objvar =G= 0;

e621.. sqr(x96 - x151) + sqr(x97 - x152) + sqr(x98 - x153) + sqr(x99 - x154) + 
       sqr(x100 - x155) - 4*objvar =G= 0;

e622.. sqr(x96 - x156) + sqr(x97 - x157) + sqr(x98 - x158) + sqr(x99 - x159) + 
       sqr(x100 - x160) - 4*objvar =G= 0;

e623.. sqr(x96 - x161) + sqr(x97 - x162) + sqr(x98 - x163) + sqr(x99 - x164) + 
       sqr(x100 - x165) - 4*objvar =G= 0;

e624.. sqr(x96 - x166) + sqr(x97 - x167) + sqr(x98 - x168) + sqr(x99 - x169) + 
       sqr(x100 - x170) - 4*objvar =G= 0;

e625.. sqr(x96 - x171) + sqr(x97 - x172) + sqr(x98 - x173) + sqr(x99 - x174) + 
       sqr(x100 - x175) - 4*objvar =G= 0;

e626.. sqr(x96 - x176) + sqr(x97 - x177) + sqr(x98 - x178) + sqr(x99 - x179) + 
       sqr(x100 - x180) - 4*objvar =G= 0;

e627.. sqr(x96 - x181) + sqr(x97 - x182) + sqr(x98 - x183) + sqr(x99 - x184) + 
       sqr(x100 - x185) - 4*objvar =G= 0;

e628.. sqr(x96 - x186) + sqr(x97 - x187) + sqr(x98 - x188) + sqr(x99 - x189) + 
       sqr(x100 - x190) - 4*objvar =G= 0;

e629.. sqr(x96 - x191) + sqr(x97 - x192) + sqr(x98 - x193) + sqr(x99 - x194) + 
       sqr(x100 - x195) - 4*objvar =G= 0;

e630.. sqr(x96 - x196) + sqr(x97 - x197) + sqr(x98 - x198) + sqr(x99 - x199) + 
       sqr(x100 - x200) - 4*objvar =G= 0;

e631.. sqr(x101 - x106) + sqr(x102 - x107) + sqr(x103 - x108) + sqr(x104 - x109
       ) + sqr(x105 - x110) - 4*objvar =G= 0;

e632.. sqr(x101 - x111) + sqr(x102 - x112) + sqr(x103 - x113) + sqr(x104 - x114
       ) + sqr(x105 - x115) - 4*objvar =G= 0;

e633.. sqr(x101 - x116) + sqr(x102 - x117) + sqr(x103 - x118) + sqr(x104 - x119
       ) + sqr(x105 - x120) - 4*objvar =G= 0;

e634.. sqr(x101 - x121) + sqr(x102 - x122) + sqr(x103 - x123) + sqr(x104 - x124
       ) + sqr(x105 - x125) - 4*objvar =G= 0;

e635.. sqr(x101 - x126) + sqr(x102 - x127) + sqr(x103 - x128) + sqr(x104 - x129
       ) + sqr(x105 - x130) - 4*objvar =G= 0;

e636.. sqr(x101 - x131) + sqr(x102 - x132) + sqr(x103 - x133) + sqr(x104 - x134
       ) + sqr(x105 - x135) - 4*objvar =G= 0;

e637.. sqr(x101 - x136) + sqr(x102 - x137) + sqr(x103 - x138) + sqr(x104 - x139
       ) + sqr(x105 - x140) - 4*objvar =G= 0;

e638.. sqr(x101 - x141) + sqr(x102 - x142) + sqr(x103 - x143) + sqr(x104 - x144
       ) + sqr(x105 - x145) - 4*objvar =G= 0;

e639.. sqr(x101 - x146) + sqr(x102 - x147) + sqr(x103 - x148) + sqr(x104 - x149
       ) + sqr(x105 - x150) - 4*objvar =G= 0;

e640.. sqr(x101 - x151) + sqr(x102 - x152) + sqr(x103 - x153) + sqr(x104 - x154
       ) + sqr(x105 - x155) - 4*objvar =G= 0;

e641.. sqr(x101 - x156) + sqr(x102 - x157) + sqr(x103 - x158) + sqr(x104 - x159
       ) + sqr(x105 - x160) - 4*objvar =G= 0;

e642.. sqr(x101 - x161) + sqr(x102 - x162) + sqr(x103 - x163) + sqr(x104 - x164
       ) + sqr(x105 - x165) - 4*objvar =G= 0;

e643.. sqr(x101 - x166) + sqr(x102 - x167) + sqr(x103 - x168) + sqr(x104 - x169
       ) + sqr(x105 - x170) - 4*objvar =G= 0;

e644.. sqr(x101 - x171) + sqr(x102 - x172) + sqr(x103 - x173) + sqr(x104 - x174
       ) + sqr(x105 - x175) - 4*objvar =G= 0;

e645.. sqr(x101 - x176) + sqr(x102 - x177) + sqr(x103 - x178) + sqr(x104 - x179
       ) + sqr(x105 - x180) - 4*objvar =G= 0;

e646.. sqr(x101 - x181) + sqr(x102 - x182) + sqr(x103 - x183) + sqr(x104 - x184
       ) + sqr(x105 - x185) - 4*objvar =G= 0;

e647.. sqr(x101 - x186) + sqr(x102 - x187) + sqr(x103 - x188) + sqr(x104 - x189
       ) + sqr(x105 - x190) - 4*objvar =G= 0;

e648.. sqr(x101 - x191) + sqr(x102 - x192) + sqr(x103 - x193) + sqr(x104 - x194
       ) + sqr(x105 - x195) - 4*objvar =G= 0;

e649.. sqr(x101 - x196) + sqr(x102 - x197) + sqr(x103 - x198) + sqr(x104 - x199
       ) + sqr(x105 - x200) - 4*objvar =G= 0;

e650.. sqr(x106 - x111) + sqr(x107 - x112) + sqr(x108 - x113) + sqr(x109 - x114
       ) + sqr(x110 - x115) - 4*objvar =G= 0;

e651.. sqr(x106 - x116) + sqr(x107 - x117) + sqr(x108 - x118) + sqr(x109 - x119
       ) + sqr(x110 - x120) - 4*objvar =G= 0;

e652.. sqr(x106 - x121) + sqr(x107 - x122) + sqr(x108 - x123) + sqr(x109 - x124
       ) + sqr(x110 - x125) - 4*objvar =G= 0;

e653.. sqr(x106 - x126) + sqr(x107 - x127) + sqr(x108 - x128) + sqr(x109 - x129
       ) + sqr(x110 - x130) - 4*objvar =G= 0;

e654.. sqr(x106 - x131) + sqr(x107 - x132) + sqr(x108 - x133) + sqr(x109 - x134
       ) + sqr(x110 - x135) - 4*objvar =G= 0;

e655.. sqr(x106 - x136) + sqr(x107 - x137) + sqr(x108 - x138) + sqr(x109 - x139
       ) + sqr(x110 - x140) - 4*objvar =G= 0;

e656.. sqr(x106 - x141) + sqr(x107 - x142) + sqr(x108 - x143) + sqr(x109 - x144
       ) + sqr(x110 - x145) - 4*objvar =G= 0;

e657.. sqr(x106 - x146) + sqr(x107 - x147) + sqr(x108 - x148) + sqr(x109 - x149
       ) + sqr(x110 - x150) - 4*objvar =G= 0;

e658.. sqr(x106 - x151) + sqr(x107 - x152) + sqr(x108 - x153) + sqr(x109 - x154
       ) + sqr(x110 - x155) - 4*objvar =G= 0;

e659.. sqr(x106 - x156) + sqr(x107 - x157) + sqr(x108 - x158) + sqr(x109 - x159
       ) + sqr(x110 - x160) - 4*objvar =G= 0;

e660.. sqr(x106 - x161) + sqr(x107 - x162) + sqr(x108 - x163) + sqr(x109 - x164
       ) + sqr(x110 - x165) - 4*objvar =G= 0;

e661.. sqr(x106 - x166) + sqr(x107 - x167) + sqr(x108 - x168) + sqr(x109 - x169
       ) + sqr(x110 - x170) - 4*objvar =G= 0;

e662.. sqr(x106 - x171) + sqr(x107 - x172) + sqr(x108 - x173) + sqr(x109 - x174
       ) + sqr(x110 - x175) - 4*objvar =G= 0;

e663.. sqr(x106 - x176) + sqr(x107 - x177) + sqr(x108 - x178) + sqr(x109 - x179
       ) + sqr(x110 - x180) - 4*objvar =G= 0;

e664.. sqr(x106 - x181) + sqr(x107 - x182) + sqr(x108 - x183) + sqr(x109 - x184
       ) + sqr(x110 - x185) - 4*objvar =G= 0;

e665.. sqr(x106 - x186) + sqr(x107 - x187) + sqr(x108 - x188) + sqr(x109 - x189
       ) + sqr(x110 - x190) - 4*objvar =G= 0;

e666.. sqr(x106 - x191) + sqr(x107 - x192) + sqr(x108 - x193) + sqr(x109 - x194
       ) + sqr(x110 - x195) - 4*objvar =G= 0;

e667.. sqr(x106 - x196) + sqr(x107 - x197) + sqr(x108 - x198) + sqr(x109 - x199
       ) + sqr(x110 - x200) - 4*objvar =G= 0;

e668.. sqr(x111 - x116) + sqr(x112 - x117) + sqr(x113 - x118) + sqr(x114 - x119
       ) + sqr(x115 - x120) - 4*objvar =G= 0;

e669.. sqr(x111 - x121) + sqr(x112 - x122) + sqr(x113 - x123) + sqr(x114 - x124
       ) + sqr(x115 - x125) - 4*objvar =G= 0;

e670.. sqr(x111 - x126) + sqr(x112 - x127) + sqr(x113 - x128) + sqr(x114 - x129
       ) + sqr(x115 - x130) - 4*objvar =G= 0;

e671.. sqr(x111 - x131) + sqr(x112 - x132) + sqr(x113 - x133) + sqr(x114 - x134
       ) + sqr(x115 - x135) - 4*objvar =G= 0;

e672.. sqr(x111 - x136) + sqr(x112 - x137) + sqr(x113 - x138) + sqr(x114 - x139
       ) + sqr(x115 - x140) - 4*objvar =G= 0;

e673.. sqr(x111 - x141) + sqr(x112 - x142) + sqr(x113 - x143) + sqr(x114 - x144
       ) + sqr(x115 - x145) - 4*objvar =G= 0;

e674.. sqr(x111 - x146) + sqr(x112 - x147) + sqr(x113 - x148) + sqr(x114 - x149
       ) + sqr(x115 - x150) - 4*objvar =G= 0;

e675.. sqr(x111 - x151) + sqr(x112 - x152) + sqr(x113 - x153) + sqr(x114 - x154
       ) + sqr(x115 - x155) - 4*objvar =G= 0;

e676.. sqr(x111 - x156) + sqr(x112 - x157) + sqr(x113 - x158) + sqr(x114 - x159
       ) + sqr(x115 - x160) - 4*objvar =G= 0;

e677.. sqr(x111 - x161) + sqr(x112 - x162) + sqr(x113 - x163) + sqr(x114 - x164
       ) + sqr(x115 - x165) - 4*objvar =G= 0;

e678.. sqr(x111 - x166) + sqr(x112 - x167) + sqr(x113 - x168) + sqr(x114 - x169
       ) + sqr(x115 - x170) - 4*objvar =G= 0;

e679.. sqr(x111 - x171) + sqr(x112 - x172) + sqr(x113 - x173) + sqr(x114 - x174
       ) + sqr(x115 - x175) - 4*objvar =G= 0;

e680.. sqr(x111 - x176) + sqr(x112 - x177) + sqr(x113 - x178) + sqr(x114 - x179
       ) + sqr(x115 - x180) - 4*objvar =G= 0;

e681.. sqr(x111 - x181) + sqr(x112 - x182) + sqr(x113 - x183) + sqr(x114 - x184
       ) + sqr(x115 - x185) - 4*objvar =G= 0;

e682.. sqr(x111 - x186) + sqr(x112 - x187) + sqr(x113 - x188) + sqr(x114 - x189
       ) + sqr(x115 - x190) - 4*objvar =G= 0;

e683.. sqr(x111 - x191) + sqr(x112 - x192) + sqr(x113 - x193) + sqr(x114 - x194
       ) + sqr(x115 - x195) - 4*objvar =G= 0;

e684.. sqr(x111 - x196) + sqr(x112 - x197) + sqr(x113 - x198) + sqr(x114 - x199
       ) + sqr(x115 - x200) - 4*objvar =G= 0;

e685.. sqr(x116 - x121) + sqr(x117 - x122) + sqr(x118 - x123) + sqr(x119 - x124
       ) + sqr(x120 - x125) - 4*objvar =G= 0;

e686.. sqr(x116 - x126) + sqr(x117 - x127) + sqr(x118 - x128) + sqr(x119 - x129
       ) + sqr(x120 - x130) - 4*objvar =G= 0;

e687.. sqr(x116 - x131) + sqr(x117 - x132) + sqr(x118 - x133) + sqr(x119 - x134
       ) + sqr(x120 - x135) - 4*objvar =G= 0;

e688.. sqr(x116 - x136) + sqr(x117 - x137) + sqr(x118 - x138) + sqr(x119 - x139
       ) + sqr(x120 - x140) - 4*objvar =G= 0;

e689.. sqr(x116 - x141) + sqr(x117 - x142) + sqr(x118 - x143) + sqr(x119 - x144
       ) + sqr(x120 - x145) - 4*objvar =G= 0;

e690.. sqr(x116 - x146) + sqr(x117 - x147) + sqr(x118 - x148) + sqr(x119 - x149
       ) + sqr(x120 - x150) - 4*objvar =G= 0;

e691.. sqr(x116 - x151) + sqr(x117 - x152) + sqr(x118 - x153) + sqr(x119 - x154
       ) + sqr(x120 - x155) - 4*objvar =G= 0;

e692.. sqr(x116 - x156) + sqr(x117 - x157) + sqr(x118 - x158) + sqr(x119 - x159
       ) + sqr(x120 - x160) - 4*objvar =G= 0;

e693.. sqr(x116 - x161) + sqr(x117 - x162) + sqr(x118 - x163) + sqr(x119 - x164
       ) + sqr(x120 - x165) - 4*objvar =G= 0;

e694.. sqr(x116 - x166) + sqr(x117 - x167) + sqr(x118 - x168) + sqr(x119 - x169
       ) + sqr(x120 - x170) - 4*objvar =G= 0;

e695.. sqr(x116 - x171) + sqr(x117 - x172) + sqr(x118 - x173) + sqr(x119 - x174
       ) + sqr(x120 - x175) - 4*objvar =G= 0;

e696.. sqr(x116 - x176) + sqr(x117 - x177) + sqr(x118 - x178) + sqr(x119 - x179
       ) + sqr(x120 - x180) - 4*objvar =G= 0;

e697.. sqr(x116 - x181) + sqr(x117 - x182) + sqr(x118 - x183) + sqr(x119 - x184
       ) + sqr(x120 - x185) - 4*objvar =G= 0;

e698.. sqr(x116 - x186) + sqr(x117 - x187) + sqr(x118 - x188) + sqr(x119 - x189
       ) + sqr(x120 - x190) - 4*objvar =G= 0;

e699.. sqr(x116 - x191) + sqr(x117 - x192) + sqr(x118 - x193) + sqr(x119 - x194
       ) + sqr(x120 - x195) - 4*objvar =G= 0;

e700.. sqr(x116 - x196) + sqr(x117 - x197) + sqr(x118 - x198) + sqr(x119 - x199
       ) + sqr(x120 - x200) - 4*objvar =G= 0;

e701.. sqr(x121 - x126) + sqr(x122 - x127) + sqr(x123 - x128) + sqr(x124 - x129
       ) + sqr(x125 - x130) - 4*objvar =G= 0;

e702.. sqr(x121 - x131) + sqr(x122 - x132) + sqr(x123 - x133) + sqr(x124 - x134
       ) + sqr(x125 - x135) - 4*objvar =G= 0;

e703.. sqr(x121 - x136) + sqr(x122 - x137) + sqr(x123 - x138) + sqr(x124 - x139
       ) + sqr(x125 - x140) - 4*objvar =G= 0;

e704.. sqr(x121 - x141) + sqr(x122 - x142) + sqr(x123 - x143) + sqr(x124 - x144
       ) + sqr(x125 - x145) - 4*objvar =G= 0;

e705.. sqr(x121 - x146) + sqr(x122 - x147) + sqr(x123 - x148) + sqr(x124 - x149
       ) + sqr(x125 - x150) - 4*objvar =G= 0;

e706.. sqr(x121 - x151) + sqr(x122 - x152) + sqr(x123 - x153) + sqr(x124 - x154
       ) + sqr(x125 - x155) - 4*objvar =G= 0;

e707.. sqr(x121 - x156) + sqr(x122 - x157) + sqr(x123 - x158) + sqr(x124 - x159
       ) + sqr(x125 - x160) - 4*objvar =G= 0;

e708.. sqr(x121 - x161) + sqr(x122 - x162) + sqr(x123 - x163) + sqr(x124 - x164
       ) + sqr(x125 - x165) - 4*objvar =G= 0;

e709.. sqr(x121 - x166) + sqr(x122 - x167) + sqr(x123 - x168) + sqr(x124 - x169
       ) + sqr(x125 - x170) - 4*objvar =G= 0;

e710.. sqr(x121 - x171) + sqr(x122 - x172) + sqr(x123 - x173) + sqr(x124 - x174
       ) + sqr(x125 - x175) - 4*objvar =G= 0;

e711.. sqr(x121 - x176) + sqr(x122 - x177) + sqr(x123 - x178) + sqr(x124 - x179
       ) + sqr(x125 - x180) - 4*objvar =G= 0;

e712.. sqr(x121 - x181) + sqr(x122 - x182) + sqr(x123 - x183) + sqr(x124 - x184
       ) + sqr(x125 - x185) - 4*objvar =G= 0;

e713.. sqr(x121 - x186) + sqr(x122 - x187) + sqr(x123 - x188) + sqr(x124 - x189
       ) + sqr(x125 - x190) - 4*objvar =G= 0;

e714.. sqr(x121 - x191) + sqr(x122 - x192) + sqr(x123 - x193) + sqr(x124 - x194
       ) + sqr(x125 - x195) - 4*objvar =G= 0;

e715.. sqr(x121 - x196) + sqr(x122 - x197) + sqr(x123 - x198) + sqr(x124 - x199
       ) + sqr(x125 - x200) - 4*objvar =G= 0;

e716.. sqr(x126 - x131) + sqr(x127 - x132) + sqr(x128 - x133) + sqr(x129 - x134
       ) + sqr(x130 - x135) - 4*objvar =G= 0;

e717.. sqr(x126 - x136) + sqr(x127 - x137) + sqr(x128 - x138) + sqr(x129 - x139
       ) + sqr(x130 - x140) - 4*objvar =G= 0;

e718.. sqr(x126 - x141) + sqr(x127 - x142) + sqr(x128 - x143) + sqr(x129 - x144
       ) + sqr(x130 - x145) - 4*objvar =G= 0;

e719.. sqr(x126 - x146) + sqr(x127 - x147) + sqr(x128 - x148) + sqr(x129 - x149
       ) + sqr(x130 - x150) - 4*objvar =G= 0;

e720.. sqr(x126 - x151) + sqr(x127 - x152) + sqr(x128 - x153) + sqr(x129 - x154
       ) + sqr(x130 - x155) - 4*objvar =G= 0;

e721.. sqr(x126 - x156) + sqr(x127 - x157) + sqr(x128 - x158) + sqr(x129 - x159
       ) + sqr(x130 - x160) - 4*objvar =G= 0;

e722.. sqr(x126 - x161) + sqr(x127 - x162) + sqr(x128 - x163) + sqr(x129 - x164
       ) + sqr(x130 - x165) - 4*objvar =G= 0;

e723.. sqr(x126 - x166) + sqr(x127 - x167) + sqr(x128 - x168) + sqr(x129 - x169
       ) + sqr(x130 - x170) - 4*objvar =G= 0;

e724.. sqr(x126 - x171) + sqr(x127 - x172) + sqr(x128 - x173) + sqr(x129 - x174
       ) + sqr(x130 - x175) - 4*objvar =G= 0;

e725.. sqr(x126 - x176) + sqr(x127 - x177) + sqr(x128 - x178) + sqr(x129 - x179
       ) + sqr(x130 - x180) - 4*objvar =G= 0;

e726.. sqr(x126 - x181) + sqr(x127 - x182) + sqr(x128 - x183) + sqr(x129 - x184
       ) + sqr(x130 - x185) - 4*objvar =G= 0;

e727.. sqr(x126 - x186) + sqr(x127 - x187) + sqr(x128 - x188) + sqr(x129 - x189
       ) + sqr(x130 - x190) - 4*objvar =G= 0;

e728.. sqr(x126 - x191) + sqr(x127 - x192) + sqr(x128 - x193) + sqr(x129 - x194
       ) + sqr(x130 - x195) - 4*objvar =G= 0;

e729.. sqr(x126 - x196) + sqr(x127 - x197) + sqr(x128 - x198) + sqr(x129 - x199
       ) + sqr(x130 - x200) - 4*objvar =G= 0;

e730.. sqr(x131 - x136) + sqr(x132 - x137) + sqr(x133 - x138) + sqr(x134 - x139
       ) + sqr(x135 - x140) - 4*objvar =G= 0;

e731.. sqr(x131 - x141) + sqr(x132 - x142) + sqr(x133 - x143) + sqr(x134 - x144
       ) + sqr(x135 - x145) - 4*objvar =G= 0;

e732.. sqr(x131 - x146) + sqr(x132 - x147) + sqr(x133 - x148) + sqr(x134 - x149
       ) + sqr(x135 - x150) - 4*objvar =G= 0;

e733.. sqr(x131 - x151) + sqr(x132 - x152) + sqr(x133 - x153) + sqr(x134 - x154
       ) + sqr(x135 - x155) - 4*objvar =G= 0;

e734.. sqr(x131 - x156) + sqr(x132 - x157) + sqr(x133 - x158) + sqr(x134 - x159
       ) + sqr(x135 - x160) - 4*objvar =G= 0;

e735.. sqr(x131 - x161) + sqr(x132 - x162) + sqr(x133 - x163) + sqr(x134 - x164
       ) + sqr(x135 - x165) - 4*objvar =G= 0;

e736.. sqr(x131 - x166) + sqr(x132 - x167) + sqr(x133 - x168) + sqr(x134 - x169
       ) + sqr(x135 - x170) - 4*objvar =G= 0;

e737.. sqr(x131 - x171) + sqr(x132 - x172) + sqr(x133 - x173) + sqr(x134 - x174
       ) + sqr(x135 - x175) - 4*objvar =G= 0;

e738.. sqr(x131 - x176) + sqr(x132 - x177) + sqr(x133 - x178) + sqr(x134 - x179
       ) + sqr(x135 - x180) - 4*objvar =G= 0;

e739.. sqr(x131 - x181) + sqr(x132 - x182) + sqr(x133 - x183) + sqr(x134 - x184
       ) + sqr(x135 - x185) - 4*objvar =G= 0;

e740.. sqr(x131 - x186) + sqr(x132 - x187) + sqr(x133 - x188) + sqr(x134 - x189
       ) + sqr(x135 - x190) - 4*objvar =G= 0;

e741.. sqr(x131 - x191) + sqr(x132 - x192) + sqr(x133 - x193) + sqr(x134 - x194
       ) + sqr(x135 - x195) - 4*objvar =G= 0;

e742.. sqr(x131 - x196) + sqr(x132 - x197) + sqr(x133 - x198) + sqr(x134 - x199
       ) + sqr(x135 - x200) - 4*objvar =G= 0;

e743.. sqr(x136 - x141) + sqr(x137 - x142) + sqr(x138 - x143) + sqr(x139 - x144
       ) + sqr(x140 - x145) - 4*objvar =G= 0;

e744.. sqr(x136 - x146) + sqr(x137 - x147) + sqr(x138 - x148) + sqr(x139 - x149
       ) + sqr(x140 - x150) - 4*objvar =G= 0;

e745.. sqr(x136 - x151) + sqr(x137 - x152) + sqr(x138 - x153) + sqr(x139 - x154
       ) + sqr(x140 - x155) - 4*objvar =G= 0;

e746.. sqr(x136 - x156) + sqr(x137 - x157) + sqr(x138 - x158) + sqr(x139 - x159
       ) + sqr(x140 - x160) - 4*objvar =G= 0;

e747.. sqr(x136 - x161) + sqr(x137 - x162) + sqr(x138 - x163) + sqr(x139 - x164
       ) + sqr(x140 - x165) - 4*objvar =G= 0;

e748.. sqr(x136 - x166) + sqr(x137 - x167) + sqr(x138 - x168) + sqr(x139 - x169
       ) + sqr(x140 - x170) - 4*objvar =G= 0;

e749.. sqr(x136 - x171) + sqr(x137 - x172) + sqr(x138 - x173) + sqr(x139 - x174
       ) + sqr(x140 - x175) - 4*objvar =G= 0;

e750.. sqr(x136 - x176) + sqr(x137 - x177) + sqr(x138 - x178) + sqr(x139 - x179
       ) + sqr(x140 - x180) - 4*objvar =G= 0;

e751.. sqr(x136 - x181) + sqr(x137 - x182) + sqr(x138 - x183) + sqr(x139 - x184
       ) + sqr(x140 - x185) - 4*objvar =G= 0;

e752.. sqr(x136 - x186) + sqr(x137 - x187) + sqr(x138 - x188) + sqr(x139 - x189
       ) + sqr(x140 - x190) - 4*objvar =G= 0;

e753.. sqr(x136 - x191) + sqr(x137 - x192) + sqr(x138 - x193) + sqr(x139 - x194
       ) + sqr(x140 - x195) - 4*objvar =G= 0;

e754.. sqr(x136 - x196) + sqr(x137 - x197) + sqr(x138 - x198) + sqr(x139 - x199
       ) + sqr(x140 - x200) - 4*objvar =G= 0;

e755.. sqr(x141 - x146) + sqr(x142 - x147) + sqr(x143 - x148) + sqr(x144 - x149
       ) + sqr(x145 - x150) - 4*objvar =G= 0;

e756.. sqr(x141 - x151) + sqr(x142 - x152) + sqr(x143 - x153) + sqr(x144 - x154
       ) + sqr(x145 - x155) - 4*objvar =G= 0;

e757.. sqr(x141 - x156) + sqr(x142 - x157) + sqr(x143 - x158) + sqr(x144 - x159
       ) + sqr(x145 - x160) - 4*objvar =G= 0;

e758.. sqr(x141 - x161) + sqr(x142 - x162) + sqr(x143 - x163) + sqr(x144 - x164
       ) + sqr(x145 - x165) - 4*objvar =G= 0;

e759.. sqr(x141 - x166) + sqr(x142 - x167) + sqr(x143 - x168) + sqr(x144 - x169
       ) + sqr(x145 - x170) - 4*objvar =G= 0;

e760.. sqr(x141 - x171) + sqr(x142 - x172) + sqr(x143 - x173) + sqr(x144 - x174
       ) + sqr(x145 - x175) - 4*objvar =G= 0;

e761.. sqr(x141 - x176) + sqr(x142 - x177) + sqr(x143 - x178) + sqr(x144 - x179
       ) + sqr(x145 - x180) - 4*objvar =G= 0;

e762.. sqr(x141 - x181) + sqr(x142 - x182) + sqr(x143 - x183) + sqr(x144 - x184
       ) + sqr(x145 - x185) - 4*objvar =G= 0;

e763.. sqr(x141 - x186) + sqr(x142 - x187) + sqr(x143 - x188) + sqr(x144 - x189
       ) + sqr(x145 - x190) - 4*objvar =G= 0;

e764.. sqr(x141 - x191) + sqr(x142 - x192) + sqr(x143 - x193) + sqr(x144 - x194
       ) + sqr(x145 - x195) - 4*objvar =G= 0;

e765.. sqr(x141 - x196) + sqr(x142 - x197) + sqr(x143 - x198) + sqr(x144 - x199
       ) + sqr(x145 - x200) - 4*objvar =G= 0;

e766.. sqr(x146 - x151) + sqr(x147 - x152) + sqr(x148 - x153) + sqr(x149 - x154
       ) + sqr(x150 - x155) - 4*objvar =G= 0;

e767.. sqr(x146 - x156) + sqr(x147 - x157) + sqr(x148 - x158) + sqr(x149 - x159
       ) + sqr(x150 - x160) - 4*objvar =G= 0;

e768.. sqr(x146 - x161) + sqr(x147 - x162) + sqr(x148 - x163) + sqr(x149 - x164
       ) + sqr(x150 - x165) - 4*objvar =G= 0;

e769.. sqr(x146 - x166) + sqr(x147 - x167) + sqr(x148 - x168) + sqr(x149 - x169
       ) + sqr(x150 - x170) - 4*objvar =G= 0;

e770.. sqr(x146 - x171) + sqr(x147 - x172) + sqr(x148 - x173) + sqr(x149 - x174
       ) + sqr(x150 - x175) - 4*objvar =G= 0;

e771.. sqr(x146 - x176) + sqr(x147 - x177) + sqr(x148 - x178) + sqr(x149 - x179
       ) + sqr(x150 - x180) - 4*objvar =G= 0;

e772.. sqr(x146 - x181) + sqr(x147 - x182) + sqr(x148 - x183) + sqr(x149 - x184
       ) + sqr(x150 - x185) - 4*objvar =G= 0;

e773.. sqr(x146 - x186) + sqr(x147 - x187) + sqr(x148 - x188) + sqr(x149 - x189
       ) + sqr(x150 - x190) - 4*objvar =G= 0;

e774.. sqr(x146 - x191) + sqr(x147 - x192) + sqr(x148 - x193) + sqr(x149 - x194
       ) + sqr(x150 - x195) - 4*objvar =G= 0;

e775.. sqr(x146 - x196) + sqr(x147 - x197) + sqr(x148 - x198) + sqr(x149 - x199
       ) + sqr(x150 - x200) - 4*objvar =G= 0;

e776.. sqr(x151 - x156) + sqr(x152 - x157) + sqr(x153 - x158) + sqr(x154 - x159
       ) + sqr(x155 - x160) - 4*objvar =G= 0;

e777.. sqr(x151 - x161) + sqr(x152 - x162) + sqr(x153 - x163) + sqr(x154 - x164
       ) + sqr(x155 - x165) - 4*objvar =G= 0;

e778.. sqr(x151 - x166) + sqr(x152 - x167) + sqr(x153 - x168) + sqr(x154 - x169
       ) + sqr(x155 - x170) - 4*objvar =G= 0;

e779.. sqr(x151 - x171) + sqr(x152 - x172) + sqr(x153 - x173) + sqr(x154 - x174
       ) + sqr(x155 - x175) - 4*objvar =G= 0;

e780.. sqr(x151 - x176) + sqr(x152 - x177) + sqr(x153 - x178) + sqr(x154 - x179
       ) + sqr(x155 - x180) - 4*objvar =G= 0;

e781.. sqr(x151 - x181) + sqr(x152 - x182) + sqr(x153 - x183) + sqr(x154 - x184
       ) + sqr(x155 - x185) - 4*objvar =G= 0;

e782.. sqr(x151 - x186) + sqr(x152 - x187) + sqr(x153 - x188) + sqr(x154 - x189
       ) + sqr(x155 - x190) - 4*objvar =G= 0;

e783.. sqr(x151 - x191) + sqr(x152 - x192) + sqr(x153 - x193) + sqr(x154 - x194
       ) + sqr(x155 - x195) - 4*objvar =G= 0;

e784.. sqr(x151 - x196) + sqr(x152 - x197) + sqr(x153 - x198) + sqr(x154 - x199
       ) + sqr(x155 - x200) - 4*objvar =G= 0;

e785.. sqr(x156 - x161) + sqr(x157 - x162) + sqr(x158 - x163) + sqr(x159 - x164
       ) + sqr(x160 - x165) - 4*objvar =G= 0;

e786.. sqr(x156 - x166) + sqr(x157 - x167) + sqr(x158 - x168) + sqr(x159 - x169
       ) + sqr(x160 - x170) - 4*objvar =G= 0;

e787.. sqr(x156 - x171) + sqr(x157 - x172) + sqr(x158 - x173) + sqr(x159 - x174
       ) + sqr(x160 - x175) - 4*objvar =G= 0;

e788.. sqr(x156 - x176) + sqr(x157 - x177) + sqr(x158 - x178) + sqr(x159 - x179
       ) + sqr(x160 - x180) - 4*objvar =G= 0;

e789.. sqr(x156 - x181) + sqr(x157 - x182) + sqr(x158 - x183) + sqr(x159 - x184
       ) + sqr(x160 - x185) - 4*objvar =G= 0;

e790.. sqr(x156 - x186) + sqr(x157 - x187) + sqr(x158 - x188) + sqr(x159 - x189
       ) + sqr(x160 - x190) - 4*objvar =G= 0;

e791.. sqr(x156 - x191) + sqr(x157 - x192) + sqr(x158 - x193) + sqr(x159 - x194
       ) + sqr(x160 - x195) - 4*objvar =G= 0;

e792.. sqr(x156 - x196) + sqr(x157 - x197) + sqr(x158 - x198) + sqr(x159 - x199
       ) + sqr(x160 - x200) - 4*objvar =G= 0;

e793.. sqr(x161 - x166) + sqr(x162 - x167) + sqr(x163 - x168) + sqr(x164 - x169
       ) + sqr(x165 - x170) - 4*objvar =G= 0;

e794.. sqr(x161 - x171) + sqr(x162 - x172) + sqr(x163 - x173) + sqr(x164 - x174
       ) + sqr(x165 - x175) - 4*objvar =G= 0;

e795.. sqr(x161 - x176) + sqr(x162 - x177) + sqr(x163 - x178) + sqr(x164 - x179
       ) + sqr(x165 - x180) - 4*objvar =G= 0;

e796.. sqr(x161 - x181) + sqr(x162 - x182) + sqr(x163 - x183) + sqr(x164 - x184
       ) + sqr(x165 - x185) - 4*objvar =G= 0;

e797.. sqr(x161 - x186) + sqr(x162 - x187) + sqr(x163 - x188) + sqr(x164 - x189
       ) + sqr(x165 - x190) - 4*objvar =G= 0;

e798.. sqr(x161 - x191) + sqr(x162 - x192) + sqr(x163 - x193) + sqr(x164 - x194
       ) + sqr(x165 - x195) - 4*objvar =G= 0;

e799.. sqr(x161 - x196) + sqr(x162 - x197) + sqr(x163 - x198) + sqr(x164 - x199
       ) + sqr(x165 - x200) - 4*objvar =G= 0;

e800.. sqr(x166 - x171) + sqr(x167 - x172) + sqr(x168 - x173) + sqr(x169 - x174
       ) + sqr(x170 - x175) - 4*objvar =G= 0;

e801.. sqr(x166 - x176) + sqr(x167 - x177) + sqr(x168 - x178) + sqr(x169 - x179
       ) + sqr(x170 - x180) - 4*objvar =G= 0;

e802.. sqr(x166 - x181) + sqr(x167 - x182) + sqr(x168 - x183) + sqr(x169 - x184
       ) + sqr(x170 - x185) - 4*objvar =G= 0;

e803.. sqr(x166 - x186) + sqr(x167 - x187) + sqr(x168 - x188) + sqr(x169 - x189
       ) + sqr(x170 - x190) - 4*objvar =G= 0;

e804.. sqr(x166 - x191) + sqr(x167 - x192) + sqr(x168 - x193) + sqr(x169 - x194
       ) + sqr(x170 - x195) - 4*objvar =G= 0;

e805.. sqr(x166 - x196) + sqr(x167 - x197) + sqr(x168 - x198) + sqr(x169 - x199
       ) + sqr(x170 - x200) - 4*objvar =G= 0;

e806.. sqr(x171 - x176) + sqr(x172 - x177) + sqr(x173 - x178) + sqr(x174 - x179
       ) + sqr(x175 - x180) - 4*objvar =G= 0;

e807.. sqr(x171 - x181) + sqr(x172 - x182) + sqr(x173 - x183) + sqr(x174 - x184
       ) + sqr(x175 - x185) - 4*objvar =G= 0;

e808.. sqr(x171 - x186) + sqr(x172 - x187) + sqr(x173 - x188) + sqr(x174 - x189
       ) + sqr(x175 - x190) - 4*objvar =G= 0;

e809.. sqr(x171 - x191) + sqr(x172 - x192) + sqr(x173 - x193) + sqr(x174 - x194
       ) + sqr(x175 - x195) - 4*objvar =G= 0;

e810.. sqr(x171 - x196) + sqr(x172 - x197) + sqr(x173 - x198) + sqr(x174 - x199
       ) + sqr(x175 - x200) - 4*objvar =G= 0;

e811.. sqr(x176 - x181) + sqr(x177 - x182) + sqr(x178 - x183) + sqr(x179 - x184
       ) + sqr(x180 - x185) - 4*objvar =G= 0;

e812.. sqr(x176 - x186) + sqr(x177 - x187) + sqr(x178 - x188) + sqr(x179 - x189
       ) + sqr(x180 - x190) - 4*objvar =G= 0;

e813.. sqr(x176 - x191) + sqr(x177 - x192) + sqr(x178 - x193) + sqr(x179 - x194
       ) + sqr(x180 - x195) - 4*objvar =G= 0;

e814.. sqr(x176 - x196) + sqr(x177 - x197) + sqr(x178 - x198) + sqr(x179 - x199
       ) + sqr(x180 - x200) - 4*objvar =G= 0;

e815.. sqr(x181 - x186) + sqr(x182 - x187) + sqr(x183 - x188) + sqr(x184 - x189
       ) + sqr(x185 - x190) - 4*objvar =G= 0;

e816.. sqr(x181 - x191) + sqr(x182 - x192) + sqr(x183 - x193) + sqr(x184 - x194
       ) + sqr(x185 - x195) - 4*objvar =G= 0;

e817.. sqr(x181 - x196) + sqr(x182 - x197) + sqr(x183 - x198) + sqr(x184 - x199
       ) + sqr(x185 - x200) - 4*objvar =G= 0;

e818.. sqr(x186 - x191) + sqr(x187 - x192) + sqr(x188 - x193) + sqr(x189 - x194
       ) + sqr(x190 - x195) - 4*objvar =G= 0;

e819.. sqr(x186 - x196) + sqr(x187 - x197) + sqr(x188 - x198) + sqr(x189 - x199
       ) + sqr(x190 - x200) - 4*objvar =G= 0;

e820.. sqr(x191 - x196) + sqr(x192 - x197) + sqr(x193 - x198) + sqr(x194 - x199
       ) + sqr(x195 - x200) - 4*objvar =G= 0;

* set non-default bounds
x1.lo = -2; x1.up = 2;
x2.lo = -2; x2.up = 2;
x3.lo = -2; x3.up = 2;
x4.lo = -2; x4.up = 2;
x5.lo = -2; x5.up = 2;
x6.lo = -2; x6.up = 2;
x7.lo = -2; x7.up = 2;
x8.lo = -2; x8.up = 2;
x9.lo = -2; x9.up = 2;
x10.lo = -2; x10.up = 2;
x11.lo = -2; x11.up = 2;
x12.lo = -2; x12.up = 2;
x13.lo = -2; x13.up = 2;
x14.lo = -2; x14.up = 2;
x15.lo = -2; x15.up = 2;
x16.lo = -2; x16.up = 2;
x17.lo = -2; x17.up = 2;
x18.lo = -2; x18.up = 2;
x19.lo = -2; x19.up = 2;
x20.lo = -2; x20.up = 2;
x21.lo = -2; x21.up = 2;
x22.lo = -2; x22.up = 2;
x23.lo = -2; x23.up = 2;
x24.lo = -2; x24.up = 2;
x25.lo = -2; x25.up = 2;
x26.lo = -2; x26.up = 2;
x27.lo = -2; x27.up = 2;
x28.lo = -2; x28.up = 2;
x29.lo = -2; x29.up = 2;
x30.lo = -2; x30.up = 2;
x31.lo = -2; x31.up = 2;
x32.lo = -2; x32.up = 2;
x33.lo = -2; x33.up = 2;
x34.lo = -2; x34.up = 2;
x35.lo = -2; x35.up = 2;
x36.lo = -2; x36.up = 2;
x37.lo = -2; x37.up = 2;
x38.lo = -2; x38.up = 2;
x39.lo = -2; x39.up = 2;
x40.lo = -2; x40.up = 2;
x41.lo = -2; x41.up = 2;
x42.lo = -2; x42.up = 2;
x43.lo = -2; x43.up = 2;
x44.lo = -2; x44.up = 2;
x45.lo = -2; x45.up = 2;
x46.lo = -2; x46.up = 2;
x47.lo = -2; x47.up = 2;
x48.lo = -2; x48.up = 2;
x49.lo = -2; x49.up = 2;
x50.lo = -2; x50.up = 2;
x51.lo = -2; x51.up = 2;
x52.lo = -2; x52.up = 2;
x53.lo = -2; x53.up = 2;
x54.lo = -2; x54.up = 2;
x55.lo = -2; x55.up = 2;
x56.lo = -2; x56.up = 2;
x57.lo = -2; x57.up = 2;
x58.lo = -2; x58.up = 2;
x59.lo = -2; x59.up = 2;
x60.lo = -2; x60.up = 2;
x61.lo = -2; x61.up = 2;
x62.lo = -2; x62.up = 2;
x63.lo = -2; x63.up = 2;
x64.lo = -2; x64.up = 2;
x65.lo = -2; x65.up = 2;
x66.lo = -2; x66.up = 2;
x67.lo = -2; x67.up = 2;
x68.lo = -2; x68.up = 2;
x69.lo = -2; x69.up = 2;
x70.lo = -2; x70.up = 2;
x71.lo = -2; x71.up = 2;
x72.lo = -2; x72.up = 2;
x73.lo = -2; x73.up = 2;
x74.lo = -2; x74.up = 2;
x75.lo = -2; x75.up = 2;
x76.lo = -2; x76.up = 2;
x77.lo = -2; x77.up = 2;
x78.lo = -2; x78.up = 2;
x79.lo = -2; x79.up = 2;
x80.lo = -2; x80.up = 2;
x81.lo = -2; x81.up = 2;
x82.lo = -2; x82.up = 2;
x83.lo = -2; x83.up = 2;
x84.lo = -2; x84.up = 2;
x85.lo = -2; x85.up = 2;
x86.lo = -2; x86.up = 2;
x87.lo = -2; x87.up = 2;
x88.lo = -2; x88.up = 2;
x89.lo = -2; x89.up = 2;
x90.lo = -2; x90.up = 2;
x91.lo = -2; x91.up = 2;
x92.lo = -2; x92.up = 2;
x93.lo = -2; x93.up = 2;
x94.lo = -2; x94.up = 2;
x95.lo = -2; x95.up = 2;
x96.lo = -2; x96.up = 2;
x97.lo = -2; x97.up = 2;
x98.lo = -2; x98.up = 2;
x99.lo = -2; x99.up = 2;
x100.lo = -2; x100.up = 2;
x101.lo = -2; x101.up = 2;
x102.lo = -2; x102.up = 2;
x103.lo = -2; x103.up = 2;
x104.lo = -2; x104.up = 2;
x105.lo = -2; x105.up = 2;
x106.lo = -2; x106.up = 2;
x107.lo = -2; x107.up = 2;
x108.lo = -2; x108.up = 2;
x109.lo = -2; x109.up = 2;
x110.lo = -2; x110.up = 2;
x111.lo = -2; x111.up = 2;
x112.lo = -2; x112.up = 2;
x113.lo = -2; x113.up = 2;
x114.lo = -2; x114.up = 2;
x115.lo = -2; x115.up = 2;
x116.lo = -2; x116.up = 2;
x117.lo = -2; x117.up = 2;
x118.lo = -2; x118.up = 2;
x119.lo = -2; x119.up = 2;
x120.lo = -2; x120.up = 2;
x121.lo = -2; x121.up = 2;
x122.lo = -2; x122.up = 2;
x123.lo = -2; x123.up = 2;
x124.lo = -2; x124.up = 2;
x125.lo = -2; x125.up = 2;
x126.lo = -2; x126.up = 2;
x127.lo = -2; x127.up = 2;
x128.lo = -2; x128.up = 2;
x129.lo = -2; x129.up = 2;
x130.lo = -2; x130.up = 2;
x131.lo = -2; x131.up = 2;
x132.lo = -2; x132.up = 2;
x133.lo = -2; x133.up = 2;
x134.lo = -2; x134.up = 2;
x135.lo = -2; x135.up = 2;
x136.lo = -2; x136.up = 2;
x137.lo = -2; x137.up = 2;
x138.lo = -2; x138.up = 2;
x139.lo = -2; x139.up = 2;
x140.lo = -2; x140.up = 2;
x141.lo = -2; x141.up = 2;
x142.lo = -2; x142.up = 2;
x143.lo = -2; x143.up = 2;
x144.lo = -2; x144.up = 2;
x145.lo = -2; x145.up = 2;
x146.lo = -2; x146.up = 2;
x147.lo = -2; x147.up = 2;
x148.lo = -2; x148.up = 2;
x149.lo = -2; x149.up = 2;
x150.lo = -2; x150.up = 2;
x151.lo = -2; x151.up = 2;
x152.lo = -2; x152.up = 2;
x153.lo = -2; x153.up = 2;
x154.lo = -2; x154.up = 2;
x155.lo = -2; x155.up = 2;
x156.lo = -2; x156.up = 2;
x157.lo = -2; x157.up = 2;
x158.lo = -2; x158.up = 2;
x159.lo = -2; x159.up = 2;
x160.lo = -2; x160.up = 2;
x161.lo = -2; x161.up = 2;
x162.lo = -2; x162.up = 2;
x163.lo = -2; x163.up = 2;
x164.lo = -2; x164.up = 2;
x165.lo = -2; x165.up = 2;
x166.lo = -2; x166.up = 2;
x167.lo = -2; x167.up = 2;
x168.lo = -2; x168.up = 2;
x169.lo = -2; x169.up = 2;
x170.lo = -2; x170.up = 2;
x171.lo = -2; x171.up = 2;
x172.lo = -2; x172.up = 2;
x173.lo = -2; x173.up = 2;
x174.lo = -2; x174.up = 2;
x175.lo = -2; x175.up = 2;
x176.lo = -2; x176.up = 2;
x177.lo = -2; x177.up = 2;
x178.lo = -2; x178.up = 2;
x179.lo = -2; x179.up = 2;
x180.lo = -2; x180.up = 2;
x181.lo = -2; x181.up = 2;
x182.lo = -2; x182.up = 2;
x183.lo = -2; x183.up = 2;
x184.lo = -2; x184.up = 2;
x185.lo = -2; x185.up = 2;
x186.lo = -2; x186.up = 2;
x187.lo = -2; x187.up = 2;
x188.lo = -2; x188.up = 2;
x189.lo = -2; x189.up = 2;
x190.lo = -2; x190.up = 2;
x191.lo = -2; x191.up = 2;
x192.lo = -2; x192.up = 2;
x193.lo = -2; x193.up = 2;
x194.lo = -2; x194.up = 2;
x195.lo = -2; x195.up = 2;
x196.lo = -2; x196.up = 2;
x197.lo = -2; x197.up = 2;
x198.lo = -2; x198.up = 2;
x199.lo = -2; x199.up = 2;
x200.lo = -2; x200.up = 2;

* set non-default levels
x1.l = -1.313011472;
x2.l = 1.373066832;
x3.l = 0.201501424;
x4.l = -0.795448384;
x5.l = -0.831151532;
x6.l = -1.103788532;
x7.l = -0.600677984;
x8.l = 1.425081388;
x9.l = -1.731545108;
x10.l = 0.000842675999999987;
x11.l = 1.992470508;
x12.l = 0.314933512;
x13.l = 1.964532156;
x14.l = 1.049001868;
x15.l = -1.477230068;
x16.l = 0.558875036;
x17.l = -1.361928544;
x18.l = -0.999677868;
x19.l = 0.675714436;
x20.l = -0.258574476;
x21.l = -0.561198936;
x22.l = -0.594234528;
x23.l = -1.47403364;
x24.l = -1.399592848;
x25.l = 0.3564546;
x26.l = 1.323571248;
x27.l = -1.076737048;
x28.l = 0.66293784;
x29.l = 1.103430424;
x30.l = -0.785366092;
x31.l = -1.558030836;
x32.l = 0.00953946399999994;
x33.l = -1.359308952;
x34.l = 1.489849244;
x35.l = -0.93954182;
x36.l = -0.856742712;
x37.l = 0.375823688;
x38.l = 0.890876284;
x39.l = 0.512994708;
x40.l = -0.14480854;
x41.l = -0.346772024;
x42.l = -1.529218572;
x43.l = -0.743150932;
x44.l = -1.813793944;
x45.l = -0.645798912;
x46.l = -1.271601628;
x47.l = 0.582908508;
x48.l = 0.242982188;
x49.l = 1.07984688;
x50.l = -0.808776544;
x51.l = 0.644425044;
x52.l = 1.023286696;
x53.l = 0.509789996;
x54.l = -0.864543208;
x55.l = -1.654301504;
x56.l = -1.589941324;
x57.l = 0.565004604;
x58.l = 0.181237992;
x59.l = -1.873900592;
x60.l = 1.169442568;
x61.l = -1.708932008;
x62.l = -1.297355804;
x63.l = 0.102530452;
x64.l = 1.000830676;
x65.l = -1.287505144;
x66.l = -1.863436056;
x67.l = 0.340524692;
x68.l = 0.484919936;
x69.l = -0.4425524;
x70.l = -0.565143388;
x71.l = -1.027861532;
x72.l = -1.014313844;
x73.l = -1.477988788;
x74.l = 1.73379888;
x75.l = -0.480248376;
x76.l = 1.133601844;
x77.l = -0.799862968;
x78.l = -1.498067112;
x79.l = 0.99549642;
x80.l = -1.723070148;
x81.l = -1.191937772;
x82.l = -1.979736568;
x83.l = -0.921547792;
x84.l = -0.00059409999999982;
x85.l = -1.394856524;
x86.l = -1.30332218;
x87.l = -0.677449064;
x88.l = -0.732375784;
x89.l = -0.71165218;
x90.l = 1.855906564;
x91.l = 1.97440882;
x92.l = -0.52038778;
x93.l = -0.508445732;
x94.l = 1.08791332;
x95.l = -0.413263432;
x96.l = 1.6523853;
x97.l = -1.52168908;
x98.l = 0.941915556;
x99.l = -1.7783261;
x100.l = 0.30519922;
x101.l = -1.79437156;
x102.l = -1.975966528;
x103.l = -0.395089268;
x104.l = 0.0795247480000003;
x105.l = 0.51550902;
x106.l = -1.09700048;
x107.l = -0.415514368;
x108.l = -0.895975476;
x109.l = -1.390509568;
x110.l = 1.745291344;
x111.l = -0.30935764;
x112.l = -1.461347484;
x113.l = -0.455777544;
x114.l = -0.501469012;
x115.l = -0.92607584;
x116.l = 1.79348206;
x117.l = -1.2442387;
x118.l = -0.809961808;
x119.l = -1.701788936;
x120.l = -0.394614972;
x121.l = -1.593243212;
x122.l = -0.46444156;
x123.l = -0.703624292;
x124.l = -1.231462472;
x125.l = -1.550526256;
x126.l = 0.386232576;
x127.l = 0.0457957120000003;
x128.l = -1.819735764;
x129.l = 1.132408016;
x130.l = 1.78299766;
x131.l = 0.385850224;
x132.l = 0.429365204;
x133.l = -0.549962116;
x134.l = 0.376271844;
x135.l = 0.719416316;
x136.l = 0.0263520880000003;
x137.l = -1.362984464;
x138.l = 0.62756842;
x139.l = 0.0955184080000002;
x140.l = -1.502414068;
x141.l = 1.946882896;
x142.l = -1.08750774;
x143.l = 0.702619612;
x144.l = 1.107109828;
x145.l = 1.729807156;
x146.l = -1.195033748;
x147.l = -0.811455772;
x148.l = -1.211089928;
x149.l = -1.014617132;
x150.l = 0.585905892;
x151.l = 0.939890444;
x152.l = -1.658253024;
x153.l = -1.398609136;
x154.l = -0.263246036;
x155.l = -1.25224838;
x156.l = 0.770771828;
x157.l = 1.051895004;
x158.l = -1.380775424;
x159.l = -0.442486464;
x160.l = 0.78171014;
x161.l = 1.383247896;
x162.l = 0.450883788;
x163.l = 1.903887492;
x164.l = -1.892442456;
x165.l = -1.250205076;
x166.l = -1.651524656;
x167.l = 0.161602552;
x168.l = -1.492542844;
x169.l = 0.935996132;
x170.l = -1.54707196;
x171.l = -0.046584212;
x172.l = 1.182401484;
x173.l = -0.0318117079999998;
x174.l = 0.134243968;
x175.l = -1.957502344;
x176.l = 0.17548062;
x177.l = -0.195483652;
x178.l = 1.90131354;
x179.l = -1.264611244;
x180.l = -1.345870932;
x181.l = -1.901462252;
x182.l = -1.288709704;
x183.l = -1.754725952;
x184.l = -1.933424408;
x185.l = 1.342619404;
x186.l = 0.406636132;
x187.l = -1.89193288;
x188.l = -1.215624544;
x189.l = 1.80284298;
x190.l = -0.657832984;
x191.l = 0.377049964;
x192.l = -0.9632347;
x193.l = 0.562534856;
x194.l = -1.37900388;
x195.l = -0.159933728;
x196.l = -0.426640184;
x197.l = 1.2218499;
x198.l = 0.163967096;
x199.l = -0.437112628;
x200.l = 0.231276168;

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set NLP $set NLP NLP
Solve m using %NLP% maximizing objvar;
