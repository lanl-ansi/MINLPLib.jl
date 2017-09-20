$offlisting
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        300       24      276        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         97       97        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       2580      276     2304        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,objvar;

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
          ,e299,e300;


e1.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) =E= 4;

e2.. sqr(x5) + sqr(x6) + sqr(x7) + sqr(x8) =E= 4;

e3.. sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) =E= 4;

e4.. sqr(x13) + sqr(x14) + sqr(x15) + sqr(x16) =E= 4;

e5.. sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) =E= 4;

e6.. sqr(x21) + sqr(x22) + sqr(x23) + sqr(x24) =E= 4;

e7.. sqr(x25) + sqr(x26) + sqr(x27) + sqr(x28) =E= 4;

e8.. sqr(x29) + sqr(x30) + sqr(x31) + sqr(x32) =E= 4;

e9.. sqr(x33) + sqr(x34) + sqr(x35) + sqr(x36) =E= 4;

e10.. sqr(x37) + sqr(x38) + sqr(x39) + sqr(x40) =E= 4;

e11.. sqr(x41) + sqr(x42) + sqr(x43) + sqr(x44) =E= 4;

e12.. sqr(x45) + sqr(x46) + sqr(x47) + sqr(x48) =E= 4;

e13.. sqr(x49) + sqr(x50) + sqr(x51) + sqr(x52) =E= 4;

e14.. sqr(x53) + sqr(x54) + sqr(x55) + sqr(x56) =E= 4;

e15.. sqr(x57) + sqr(x58) + sqr(x59) + sqr(x60) =E= 4;

e16.. sqr(x61) + sqr(x62) + sqr(x63) + sqr(x64) =E= 4;

e17.. sqr(x65) + sqr(x66) + sqr(x67) + sqr(x68) =E= 4;

e18.. sqr(x69) + sqr(x70) + sqr(x71) + sqr(x72) =E= 4;

e19.. sqr(x73) + sqr(x74) + sqr(x75) + sqr(x76) =E= 4;

e20.. sqr(x77) + sqr(x78) + sqr(x79) + sqr(x80) =E= 4;

e21.. sqr(x81) + sqr(x82) + sqr(x83) + sqr(x84) =E= 4;

e22.. sqr(x85) + sqr(x86) + sqr(x87) + sqr(x88) =E= 4;

e23.. sqr(x89) + sqr(x90) + sqr(x91) + sqr(x92) =E= 4;

e24.. sqr(x93) + sqr(x94) + sqr(x95) + sqr(x96) =E= 4;

e25.. sqr(x1 - x5) + sqr(x2 - x6) + sqr(x3 - x7) + sqr(x4 - x8) - 4*objvar
       =G= 0;

e26.. sqr(x1 - x9) + sqr(x2 - x10) + sqr(x3 - x11) + sqr(x4 - x12) - 4*objvar
       =G= 0;

e27.. sqr(x1 - x13) + sqr(x2 - x14) + sqr(x3 - x15) + sqr(x4 - x16) - 4*objvar
       =G= 0;

e28.. sqr(x1 - x17) + sqr(x2 - x18) + sqr(x3 - x19) + sqr(x4 - x20) - 4*objvar
       =G= 0;

e29.. sqr(x1 - x21) + sqr(x2 - x22) + sqr(x3 - x23) + sqr(x4 - x24) - 4*objvar
       =G= 0;

e30.. sqr(x1 - x25) + sqr(x2 - x26) + sqr(x3 - x27) + sqr(x4 - x28) - 4*objvar
       =G= 0;

e31.. sqr(x1 - x29) + sqr(x2 - x30) + sqr(x3 - x31) + sqr(x4 - x32) - 4*objvar
       =G= 0;

e32.. sqr(x1 - x33) + sqr(x2 - x34) + sqr(x3 - x35) + sqr(x4 - x36) - 4*objvar
       =G= 0;

e33.. sqr(x1 - x37) + sqr(x2 - x38) + sqr(x3 - x39) + sqr(x4 - x40) - 4*objvar
       =G= 0;

e34.. sqr(x1 - x41) + sqr(x2 - x42) + sqr(x3 - x43) + sqr(x4 - x44) - 4*objvar
       =G= 0;

e35.. sqr(x1 - x45) + sqr(x2 - x46) + sqr(x3 - x47) + sqr(x4 - x48) - 4*objvar
       =G= 0;

e36.. sqr(x1 - x49) + sqr(x2 - x50) + sqr(x3 - x51) + sqr(x4 - x52) - 4*objvar
       =G= 0;

e37.. sqr(x1 - x53) + sqr(x2 - x54) + sqr(x3 - x55) + sqr(x4 - x56) - 4*objvar
       =G= 0;

e38.. sqr(x1 - x57) + sqr(x2 - x58) + sqr(x3 - x59) + sqr(x4 - x60) - 4*objvar
       =G= 0;

e39.. sqr(x1 - x61) + sqr(x2 - x62) + sqr(x3 - x63) + sqr(x4 - x64) - 4*objvar
       =G= 0;

e40.. sqr(x1 - x65) + sqr(x2 - x66) + sqr(x3 - x67) + sqr(x4 - x68) - 4*objvar
       =G= 0;

e41.. sqr(x1 - x69) + sqr(x2 - x70) + sqr(x3 - x71) + sqr(x4 - x72) - 4*objvar
       =G= 0;

e42.. sqr(x1 - x73) + sqr(x2 - x74) + sqr(x3 - x75) + sqr(x4 - x76) - 4*objvar
       =G= 0;

e43.. sqr(x1 - x77) + sqr(x2 - x78) + sqr(x3 - x79) + sqr(x4 - x80) - 4*objvar
       =G= 0;

e44.. sqr(x1 - x81) + sqr(x2 - x82) + sqr(x3 - x83) + sqr(x4 - x84) - 4*objvar
       =G= 0;

e45.. sqr(x1 - x85) + sqr(x2 - x86) + sqr(x3 - x87) + sqr(x4 - x88) - 4*objvar
       =G= 0;

e46.. sqr(x1 - x89) + sqr(x2 - x90) + sqr(x3 - x91) + sqr(x4 - x92) - 4*objvar
       =G= 0;

e47.. sqr(x1 - x93) + sqr(x2 - x94) + sqr(x3 - x95) + sqr(x4 - x96) - 4*objvar
       =G= 0;

e48.. sqr(x5 - x9) + sqr(x6 - x10) + sqr(x7 - x11) + sqr(x8 - x12) - 4*objvar
       =G= 0;

e49.. sqr(x5 - x13) + sqr(x6 - x14) + sqr(x7 - x15) + sqr(x8 - x16) - 4*objvar
       =G= 0;

e50.. sqr(x5 - x17) + sqr(x6 - x18) + sqr(x7 - x19) + sqr(x8 - x20) - 4*objvar
       =G= 0;

e51.. sqr(x5 - x21) + sqr(x6 - x22) + sqr(x7 - x23) + sqr(x8 - x24) - 4*objvar
       =G= 0;

e52.. sqr(x5 - x25) + sqr(x6 - x26) + sqr(x7 - x27) + sqr(x8 - x28) - 4*objvar
       =G= 0;

e53.. sqr(x5 - x29) + sqr(x6 - x30) + sqr(x7 - x31) + sqr(x8 - x32) - 4*objvar
       =G= 0;

e54.. sqr(x5 - x33) + sqr(x6 - x34) + sqr(x7 - x35) + sqr(x8 - x36) - 4*objvar
       =G= 0;

e55.. sqr(x5 - x37) + sqr(x6 - x38) + sqr(x7 - x39) + sqr(x8 - x40) - 4*objvar
       =G= 0;

e56.. sqr(x5 - x41) + sqr(x6 - x42) + sqr(x7 - x43) + sqr(x8 - x44) - 4*objvar
       =G= 0;

e57.. sqr(x5 - x45) + sqr(x6 - x46) + sqr(x7 - x47) + sqr(x8 - x48) - 4*objvar
       =G= 0;

e58.. sqr(x5 - x49) + sqr(x6 - x50) + sqr(x7 - x51) + sqr(x8 - x52) - 4*objvar
       =G= 0;

e59.. sqr(x5 - x53) + sqr(x6 - x54) + sqr(x7 - x55) + sqr(x8 - x56) - 4*objvar
       =G= 0;

e60.. sqr(x5 - x57) + sqr(x6 - x58) + sqr(x7 - x59) + sqr(x8 - x60) - 4*objvar
       =G= 0;

e61.. sqr(x5 - x61) + sqr(x6 - x62) + sqr(x7 - x63) + sqr(x8 - x64) - 4*objvar
       =G= 0;

e62.. sqr(x5 - x65) + sqr(x6 - x66) + sqr(x7 - x67) + sqr(x8 - x68) - 4*objvar
       =G= 0;

e63.. sqr(x5 - x69) + sqr(x6 - x70) + sqr(x7 - x71) + sqr(x8 - x72) - 4*objvar
       =G= 0;

e64.. sqr(x5 - x73) + sqr(x6 - x74) + sqr(x7 - x75) + sqr(x8 - x76) - 4*objvar
       =G= 0;

e65.. sqr(x5 - x77) + sqr(x6 - x78) + sqr(x7 - x79) + sqr(x8 - x80) - 4*objvar
       =G= 0;

e66.. sqr(x5 - x81) + sqr(x6 - x82) + sqr(x7 - x83) + sqr(x8 - x84) - 4*objvar
       =G= 0;

e67.. sqr(x5 - x85) + sqr(x6 - x86) + sqr(x7 - x87) + sqr(x8 - x88) - 4*objvar
       =G= 0;

e68.. sqr(x5 - x89) + sqr(x6 - x90) + sqr(x7 - x91) + sqr(x8 - x92) - 4*objvar
       =G= 0;

e69.. sqr(x5 - x93) + sqr(x6 - x94) + sqr(x7 - x95) + sqr(x8 - x96) - 4*objvar
       =G= 0;

e70.. sqr(x9 - x13) + sqr(x10 - x14) + sqr(x11 - x15) + sqr(x12 - x16)
       - 4*objvar =G= 0;

e71.. sqr(x9 - x17) + sqr(x10 - x18) + sqr(x11 - x19) + sqr(x12 - x20)
       - 4*objvar =G= 0;

e72.. sqr(x9 - x21) + sqr(x10 - x22) + sqr(x11 - x23) + sqr(x12 - x24)
       - 4*objvar =G= 0;

e73.. sqr(x9 - x25) + sqr(x10 - x26) + sqr(x11 - x27) + sqr(x12 - x28)
       - 4*objvar =G= 0;

e74.. sqr(x9 - x29) + sqr(x10 - x30) + sqr(x11 - x31) + sqr(x12 - x32)
       - 4*objvar =G= 0;

e75.. sqr(x9 - x33) + sqr(x10 - x34) + sqr(x11 - x35) + sqr(x12 - x36)
       - 4*objvar =G= 0;

e76.. sqr(x9 - x37) + sqr(x10 - x38) + sqr(x11 - x39) + sqr(x12 - x40)
       - 4*objvar =G= 0;

e77.. sqr(x9 - x41) + sqr(x10 - x42) + sqr(x11 - x43) + sqr(x12 - x44)
       - 4*objvar =G= 0;

e78.. sqr(x9 - x45) + sqr(x10 - x46) + sqr(x11 - x47) + sqr(x12 - x48)
       - 4*objvar =G= 0;

e79.. sqr(x9 - x49) + sqr(x10 - x50) + sqr(x11 - x51) + sqr(x12 - x52)
       - 4*objvar =G= 0;

e80.. sqr(x9 - x53) + sqr(x10 - x54) + sqr(x11 - x55) + sqr(x12 - x56)
       - 4*objvar =G= 0;

e81.. sqr(x9 - x57) + sqr(x10 - x58) + sqr(x11 - x59) + sqr(x12 - x60)
       - 4*objvar =G= 0;

e82.. sqr(x9 - x61) + sqr(x10 - x62) + sqr(x11 - x63) + sqr(x12 - x64)
       - 4*objvar =G= 0;

e83.. sqr(x9 - x65) + sqr(x10 - x66) + sqr(x11 - x67) + sqr(x12 - x68)
       - 4*objvar =G= 0;

e84.. sqr(x9 - x69) + sqr(x10 - x70) + sqr(x11 - x71) + sqr(x12 - x72)
       - 4*objvar =G= 0;

e85.. sqr(x9 - x73) + sqr(x10 - x74) + sqr(x11 - x75) + sqr(x12 - x76)
       - 4*objvar =G= 0;

e86.. sqr(x9 - x77) + sqr(x10 - x78) + sqr(x11 - x79) + sqr(x12 - x80)
       - 4*objvar =G= 0;

e87.. sqr(x9 - x81) + sqr(x10 - x82) + sqr(x11 - x83) + sqr(x12 - x84)
       - 4*objvar =G= 0;

e88.. sqr(x9 - x85) + sqr(x10 - x86) + sqr(x11 - x87) + sqr(x12 - x88)
       - 4*objvar =G= 0;

e89.. sqr(x9 - x89) + sqr(x10 - x90) + sqr(x11 - x91) + sqr(x12 - x92)
       - 4*objvar =G= 0;

e90.. sqr(x9 - x93) + sqr(x10 - x94) + sqr(x11 - x95) + sqr(x12 - x96)
       - 4*objvar =G= 0;

e91.. sqr(x13 - x17) + sqr(x14 - x18) + sqr(x15 - x19) + sqr(x16 - x20)
       - 4*objvar =G= 0;

e92.. sqr(x13 - x21) + sqr(x14 - x22) + sqr(x15 - x23) + sqr(x16 - x24)
       - 4*objvar =G= 0;

e93.. sqr(x13 - x25) + sqr(x14 - x26) + sqr(x15 - x27) + sqr(x16 - x28)
       - 4*objvar =G= 0;

e94.. sqr(x13 - x29) + sqr(x14 - x30) + sqr(x15 - x31) + sqr(x16 - x32)
       - 4*objvar =G= 0;

e95.. sqr(x13 - x33) + sqr(x14 - x34) + sqr(x15 - x35) + sqr(x16 - x36)
       - 4*objvar =G= 0;

e96.. sqr(x13 - x37) + sqr(x14 - x38) + sqr(x15 - x39) + sqr(x16 - x40)
       - 4*objvar =G= 0;

e97.. sqr(x13 - x41) + sqr(x14 - x42) + sqr(x15 - x43) + sqr(x16 - x44)
       - 4*objvar =G= 0;

e98.. sqr(x13 - x45) + sqr(x14 - x46) + sqr(x15 - x47) + sqr(x16 - x48)
       - 4*objvar =G= 0;

e99.. sqr(x13 - x49) + sqr(x14 - x50) + sqr(x15 - x51) + sqr(x16 - x52)
       - 4*objvar =G= 0;

e100.. sqr(x13 - x53) + sqr(x14 - x54) + sqr(x15 - x55) + sqr(x16 - x56)
        - 4*objvar =G= 0;

e101.. sqr(x13 - x57) + sqr(x14 - x58) + sqr(x15 - x59) + sqr(x16 - x60)
        - 4*objvar =G= 0;

e102.. sqr(x13 - x61) + sqr(x14 - x62) + sqr(x15 - x63) + sqr(x16 - x64)
        - 4*objvar =G= 0;

e103.. sqr(x13 - x65) + sqr(x14 - x66) + sqr(x15 - x67) + sqr(x16 - x68)
        - 4*objvar =G= 0;

e104.. sqr(x13 - x69) + sqr(x14 - x70) + sqr(x15 - x71) + sqr(x16 - x72)
        - 4*objvar =G= 0;

e105.. sqr(x13 - x73) + sqr(x14 - x74) + sqr(x15 - x75) + sqr(x16 - x76)
        - 4*objvar =G= 0;

e106.. sqr(x13 - x77) + sqr(x14 - x78) + sqr(x15 - x79) + sqr(x16 - x80)
        - 4*objvar =G= 0;

e107.. sqr(x13 - x81) + sqr(x14 - x82) + sqr(x15 - x83) + sqr(x16 - x84)
        - 4*objvar =G= 0;

e108.. sqr(x13 - x85) + sqr(x14 - x86) + sqr(x15 - x87) + sqr(x16 - x88)
        - 4*objvar =G= 0;

e109.. sqr(x13 - x89) + sqr(x14 - x90) + sqr(x15 - x91) + sqr(x16 - x92)
        - 4*objvar =G= 0;

e110.. sqr(x13 - x93) + sqr(x14 - x94) + sqr(x15 - x95) + sqr(x16 - x96)
        - 4*objvar =G= 0;

e111.. sqr(x17 - x21) + sqr(x18 - x22) + sqr(x19 - x23) + sqr(x20 - x24)
        - 4*objvar =G= 0;

e112.. sqr(x17 - x25) + sqr(x18 - x26) + sqr(x19 - x27) + sqr(x20 - x28)
        - 4*objvar =G= 0;

e113.. sqr(x17 - x29) + sqr(x18 - x30) + sqr(x19 - x31) + sqr(x20 - x32)
        - 4*objvar =G= 0;

e114.. sqr(x17 - x33) + sqr(x18 - x34) + sqr(x19 - x35) + sqr(x20 - x36)
        - 4*objvar =G= 0;

e115.. sqr(x17 - x37) + sqr(x18 - x38) + sqr(x19 - x39) + sqr(x20 - x40)
        - 4*objvar =G= 0;

e116.. sqr(x17 - x41) + sqr(x18 - x42) + sqr(x19 - x43) + sqr(x20 - x44)
        - 4*objvar =G= 0;

e117.. sqr(x17 - x45) + sqr(x18 - x46) + sqr(x19 - x47) + sqr(x20 - x48)
        - 4*objvar =G= 0;

e118.. sqr(x17 - x49) + sqr(x18 - x50) + sqr(x19 - x51) + sqr(x20 - x52)
        - 4*objvar =G= 0;

e119.. sqr(x17 - x53) + sqr(x18 - x54) + sqr(x19 - x55) + sqr(x20 - x56)
        - 4*objvar =G= 0;

e120.. sqr(x17 - x57) + sqr(x18 - x58) + sqr(x19 - x59) + sqr(x20 - x60)
        - 4*objvar =G= 0;

e121.. sqr(x17 - x61) + sqr(x18 - x62) + sqr(x19 - x63) + sqr(x20 - x64)
        - 4*objvar =G= 0;

e122.. sqr(x17 - x65) + sqr(x18 - x66) + sqr(x19 - x67) + sqr(x20 - x68)
        - 4*objvar =G= 0;

e123.. sqr(x17 - x69) + sqr(x18 - x70) + sqr(x19 - x71) + sqr(x20 - x72)
        - 4*objvar =G= 0;

e124.. sqr(x17 - x73) + sqr(x18 - x74) + sqr(x19 - x75) + sqr(x20 - x76)
        - 4*objvar =G= 0;

e125.. sqr(x17 - x77) + sqr(x18 - x78) + sqr(x19 - x79) + sqr(x20 - x80)
        - 4*objvar =G= 0;

e126.. sqr(x17 - x81) + sqr(x18 - x82) + sqr(x19 - x83) + sqr(x20 - x84)
        - 4*objvar =G= 0;

e127.. sqr(x17 - x85) + sqr(x18 - x86) + sqr(x19 - x87) + sqr(x20 - x88)
        - 4*objvar =G= 0;

e128.. sqr(x17 - x89) + sqr(x18 - x90) + sqr(x19 - x91) + sqr(x20 - x92)
        - 4*objvar =G= 0;

e129.. sqr(x17 - x93) + sqr(x18 - x94) + sqr(x19 - x95) + sqr(x20 - x96)
        - 4*objvar =G= 0;

e130.. sqr(x21 - x25) + sqr(x22 - x26) + sqr(x23 - x27) + sqr(x24 - x28)
        - 4*objvar =G= 0;

e131.. sqr(x21 - x29) + sqr(x22 - x30) + sqr(x23 - x31) + sqr(x24 - x32)
        - 4*objvar =G= 0;

e132.. sqr(x21 - x33) + sqr(x22 - x34) + sqr(x23 - x35) + sqr(x24 - x36)
        - 4*objvar =G= 0;

e133.. sqr(x21 - x37) + sqr(x22 - x38) + sqr(x23 - x39) + sqr(x24 - x40)
        - 4*objvar =G= 0;

e134.. sqr(x21 - x41) + sqr(x22 - x42) + sqr(x23 - x43) + sqr(x24 - x44)
        - 4*objvar =G= 0;

e135.. sqr(x21 - x45) + sqr(x22 - x46) + sqr(x23 - x47) + sqr(x24 - x48)
        - 4*objvar =G= 0;

e136.. sqr(x21 - x49) + sqr(x22 - x50) + sqr(x23 - x51) + sqr(x24 - x52)
        - 4*objvar =G= 0;

e137.. sqr(x21 - x53) + sqr(x22 - x54) + sqr(x23 - x55) + sqr(x24 - x56)
        - 4*objvar =G= 0;

e138.. sqr(x21 - x57) + sqr(x22 - x58) + sqr(x23 - x59) + sqr(x24 - x60)
        - 4*objvar =G= 0;

e139.. sqr(x21 - x61) + sqr(x22 - x62) + sqr(x23 - x63) + sqr(x24 - x64)
        - 4*objvar =G= 0;

e140.. sqr(x21 - x65) + sqr(x22 - x66) + sqr(x23 - x67) + sqr(x24 - x68)
        - 4*objvar =G= 0;

e141.. sqr(x21 - x69) + sqr(x22 - x70) + sqr(x23 - x71) + sqr(x24 - x72)
        - 4*objvar =G= 0;

e142.. sqr(x21 - x73) + sqr(x22 - x74) + sqr(x23 - x75) + sqr(x24 - x76)
        - 4*objvar =G= 0;

e143.. sqr(x21 - x77) + sqr(x22 - x78) + sqr(x23 - x79) + sqr(x24 - x80)
        - 4*objvar =G= 0;

e144.. sqr(x21 - x81) + sqr(x22 - x82) + sqr(x23 - x83) + sqr(x24 - x84)
        - 4*objvar =G= 0;

e145.. sqr(x21 - x85) + sqr(x22 - x86) + sqr(x23 - x87) + sqr(x24 - x88)
        - 4*objvar =G= 0;

e146.. sqr(x21 - x89) + sqr(x22 - x90) + sqr(x23 - x91) + sqr(x24 - x92)
        - 4*objvar =G= 0;

e147.. sqr(x21 - x93) + sqr(x22 - x94) + sqr(x23 - x95) + sqr(x24 - x96)
        - 4*objvar =G= 0;

e148.. sqr(x25 - x29) + sqr(x26 - x30) + sqr(x27 - x31) + sqr(x28 - x32)
        - 4*objvar =G= 0;

e149.. sqr(x25 - x33) + sqr(x26 - x34) + sqr(x27 - x35) + sqr(x28 - x36)
        - 4*objvar =G= 0;

e150.. sqr(x25 - x37) + sqr(x26 - x38) + sqr(x27 - x39) + sqr(x28 - x40)
        - 4*objvar =G= 0;

e151.. sqr(x25 - x41) + sqr(x26 - x42) + sqr(x27 - x43) + sqr(x28 - x44)
        - 4*objvar =G= 0;

e152.. sqr(x25 - x45) + sqr(x26 - x46) + sqr(x27 - x47) + sqr(x28 - x48)
        - 4*objvar =G= 0;

e153.. sqr(x25 - x49) + sqr(x26 - x50) + sqr(x27 - x51) + sqr(x28 - x52)
        - 4*objvar =G= 0;

e154.. sqr(x25 - x53) + sqr(x26 - x54) + sqr(x27 - x55) + sqr(x28 - x56)
        - 4*objvar =G= 0;

e155.. sqr(x25 - x57) + sqr(x26 - x58) + sqr(x27 - x59) + sqr(x28 - x60)
        - 4*objvar =G= 0;

e156.. sqr(x25 - x61) + sqr(x26 - x62) + sqr(x27 - x63) + sqr(x28 - x64)
        - 4*objvar =G= 0;

e157.. sqr(x25 - x65) + sqr(x26 - x66) + sqr(x27 - x67) + sqr(x28 - x68)
        - 4*objvar =G= 0;

e158.. sqr(x25 - x69) + sqr(x26 - x70) + sqr(x27 - x71) + sqr(x28 - x72)
        - 4*objvar =G= 0;

e159.. sqr(x25 - x73) + sqr(x26 - x74) + sqr(x27 - x75) + sqr(x28 - x76)
        - 4*objvar =G= 0;

e160.. sqr(x25 - x77) + sqr(x26 - x78) + sqr(x27 - x79) + sqr(x28 - x80)
        - 4*objvar =G= 0;

e161.. sqr(x25 - x81) + sqr(x26 - x82) + sqr(x27 - x83) + sqr(x28 - x84)
        - 4*objvar =G= 0;

e162.. sqr(x25 - x85) + sqr(x26 - x86) + sqr(x27 - x87) + sqr(x28 - x88)
        - 4*objvar =G= 0;

e163.. sqr(x25 - x89) + sqr(x26 - x90) + sqr(x27 - x91) + sqr(x28 - x92)
        - 4*objvar =G= 0;

e164.. sqr(x25 - x93) + sqr(x26 - x94) + sqr(x27 - x95) + sqr(x28 - x96)
        - 4*objvar =G= 0;

e165.. sqr(x29 - x33) + sqr(x30 - x34) + sqr(x31 - x35) + sqr(x32 - x36)
        - 4*objvar =G= 0;

e166.. sqr(x29 - x37) + sqr(x30 - x38) + sqr(x31 - x39) + sqr(x32 - x40)
        - 4*objvar =G= 0;

e167.. sqr(x29 - x41) + sqr(x30 - x42) + sqr(x31 - x43) + sqr(x32 - x44)
        - 4*objvar =G= 0;

e168.. sqr(x29 - x45) + sqr(x30 - x46) + sqr(x31 - x47) + sqr(x32 - x48)
        - 4*objvar =G= 0;

e169.. sqr(x29 - x49) + sqr(x30 - x50) + sqr(x31 - x51) + sqr(x32 - x52)
        - 4*objvar =G= 0;

e170.. sqr(x29 - x53) + sqr(x30 - x54) + sqr(x31 - x55) + sqr(x32 - x56)
        - 4*objvar =G= 0;

e171.. sqr(x29 - x57) + sqr(x30 - x58) + sqr(x31 - x59) + sqr(x32 - x60)
        - 4*objvar =G= 0;

e172.. sqr(x29 - x61) + sqr(x30 - x62) + sqr(x31 - x63) + sqr(x32 - x64)
        - 4*objvar =G= 0;

e173.. sqr(x29 - x65) + sqr(x30 - x66) + sqr(x31 - x67) + sqr(x32 - x68)
        - 4*objvar =G= 0;

e174.. sqr(x29 - x69) + sqr(x30 - x70) + sqr(x31 - x71) + sqr(x32 - x72)
        - 4*objvar =G= 0;

e175.. sqr(x29 - x73) + sqr(x30 - x74) + sqr(x31 - x75) + sqr(x32 - x76)
        - 4*objvar =G= 0;

e176.. sqr(x29 - x77) + sqr(x30 - x78) + sqr(x31 - x79) + sqr(x32 - x80)
        - 4*objvar =G= 0;

e177.. sqr(x29 - x81) + sqr(x30 - x82) + sqr(x31 - x83) + sqr(x32 - x84)
        - 4*objvar =G= 0;

e178.. sqr(x29 - x85) + sqr(x30 - x86) + sqr(x31 - x87) + sqr(x32 - x88)
        - 4*objvar =G= 0;

e179.. sqr(x29 - x89) + sqr(x30 - x90) + sqr(x31 - x91) + sqr(x32 - x92)
        - 4*objvar =G= 0;

e180.. sqr(x29 - x93) + sqr(x30 - x94) + sqr(x31 - x95) + sqr(x32 - x96)
        - 4*objvar =G= 0;

e181.. sqr(x33 - x37) + sqr(x34 - x38) + sqr(x35 - x39) + sqr(x36 - x40)
        - 4*objvar =G= 0;

e182.. sqr(x33 - x41) + sqr(x34 - x42) + sqr(x35 - x43) + sqr(x36 - x44)
        - 4*objvar =G= 0;

e183.. sqr(x33 - x45) + sqr(x34 - x46) + sqr(x35 - x47) + sqr(x36 - x48)
        - 4*objvar =G= 0;

e184.. sqr(x33 - x49) + sqr(x34 - x50) + sqr(x35 - x51) + sqr(x36 - x52)
        - 4*objvar =G= 0;

e185.. sqr(x33 - x53) + sqr(x34 - x54) + sqr(x35 - x55) + sqr(x36 - x56)
        - 4*objvar =G= 0;

e186.. sqr(x33 - x57) + sqr(x34 - x58) + sqr(x35 - x59) + sqr(x36 - x60)
        - 4*objvar =G= 0;

e187.. sqr(x33 - x61) + sqr(x34 - x62) + sqr(x35 - x63) + sqr(x36 - x64)
        - 4*objvar =G= 0;

e188.. sqr(x33 - x65) + sqr(x34 - x66) + sqr(x35 - x67) + sqr(x36 - x68)
        - 4*objvar =G= 0;

e189.. sqr(x33 - x69) + sqr(x34 - x70) + sqr(x35 - x71) + sqr(x36 - x72)
        - 4*objvar =G= 0;

e190.. sqr(x33 - x73) + sqr(x34 - x74) + sqr(x35 - x75) + sqr(x36 - x76)
        - 4*objvar =G= 0;

e191.. sqr(x33 - x77) + sqr(x34 - x78) + sqr(x35 - x79) + sqr(x36 - x80)
        - 4*objvar =G= 0;

e192.. sqr(x33 - x81) + sqr(x34 - x82) + sqr(x35 - x83) + sqr(x36 - x84)
        - 4*objvar =G= 0;

e193.. sqr(x33 - x85) + sqr(x34 - x86) + sqr(x35 - x87) + sqr(x36 - x88)
        - 4*objvar =G= 0;

e194.. sqr(x33 - x89) + sqr(x34 - x90) + sqr(x35 - x91) + sqr(x36 - x92)
        - 4*objvar =G= 0;

e195.. sqr(x33 - x93) + sqr(x34 - x94) + sqr(x35 - x95) + sqr(x36 - x96)
        - 4*objvar =G= 0;

e196.. sqr(x37 - x41) + sqr(x38 - x42) + sqr(x39 - x43) + sqr(x40 - x44)
        - 4*objvar =G= 0;

e197.. sqr(x37 - x45) + sqr(x38 - x46) + sqr(x39 - x47) + sqr(x40 - x48)
        - 4*objvar =G= 0;

e198.. sqr(x37 - x49) + sqr(x38 - x50) + sqr(x39 - x51) + sqr(x40 - x52)
        - 4*objvar =G= 0;

e199.. sqr(x37 - x53) + sqr(x38 - x54) + sqr(x39 - x55) + sqr(x40 - x56)
        - 4*objvar =G= 0;

e200.. sqr(x37 - x57) + sqr(x38 - x58) + sqr(x39 - x59) + sqr(x40 - x60)
        - 4*objvar =G= 0;

e201.. sqr(x37 - x61) + sqr(x38 - x62) + sqr(x39 - x63) + sqr(x40 - x64)
        - 4*objvar =G= 0;

e202.. sqr(x37 - x65) + sqr(x38 - x66) + sqr(x39 - x67) + sqr(x40 - x68)
        - 4*objvar =G= 0;

e203.. sqr(x37 - x69) + sqr(x38 - x70) + sqr(x39 - x71) + sqr(x40 - x72)
        - 4*objvar =G= 0;

e204.. sqr(x37 - x73) + sqr(x38 - x74) + sqr(x39 - x75) + sqr(x40 - x76)
        - 4*objvar =G= 0;

e205.. sqr(x37 - x77) + sqr(x38 - x78) + sqr(x39 - x79) + sqr(x40 - x80)
        - 4*objvar =G= 0;

e206.. sqr(x37 - x81) + sqr(x38 - x82) + sqr(x39 - x83) + sqr(x40 - x84)
        - 4*objvar =G= 0;

e207.. sqr(x37 - x85) + sqr(x38 - x86) + sqr(x39 - x87) + sqr(x40 - x88)
        - 4*objvar =G= 0;

e208.. sqr(x37 - x89) + sqr(x38 - x90) + sqr(x39 - x91) + sqr(x40 - x92)
        - 4*objvar =G= 0;

e209.. sqr(x37 - x93) + sqr(x38 - x94) + sqr(x39 - x95) + sqr(x40 - x96)
        - 4*objvar =G= 0;

e210.. sqr(x41 - x45) + sqr(x42 - x46) + sqr(x43 - x47) + sqr(x44 - x48)
        - 4*objvar =G= 0;

e211.. sqr(x41 - x49) + sqr(x42 - x50) + sqr(x43 - x51) + sqr(x44 - x52)
        - 4*objvar =G= 0;

e212.. sqr(x41 - x53) + sqr(x42 - x54) + sqr(x43 - x55) + sqr(x44 - x56)
        - 4*objvar =G= 0;

e213.. sqr(x41 - x57) + sqr(x42 - x58) + sqr(x43 - x59) + sqr(x44 - x60)
        - 4*objvar =G= 0;

e214.. sqr(x41 - x61) + sqr(x42 - x62) + sqr(x43 - x63) + sqr(x44 - x64)
        - 4*objvar =G= 0;

e215.. sqr(x41 - x65) + sqr(x42 - x66) + sqr(x43 - x67) + sqr(x44 - x68)
        - 4*objvar =G= 0;

e216.. sqr(x41 - x69) + sqr(x42 - x70) + sqr(x43 - x71) + sqr(x44 - x72)
        - 4*objvar =G= 0;

e217.. sqr(x41 - x73) + sqr(x42 - x74) + sqr(x43 - x75) + sqr(x44 - x76)
        - 4*objvar =G= 0;

e218.. sqr(x41 - x77) + sqr(x42 - x78) + sqr(x43 - x79) + sqr(x44 - x80)
        - 4*objvar =G= 0;

e219.. sqr(x41 - x81) + sqr(x42 - x82) + sqr(x43 - x83) + sqr(x44 - x84)
        - 4*objvar =G= 0;

e220.. sqr(x41 - x85) + sqr(x42 - x86) + sqr(x43 - x87) + sqr(x44 - x88)
        - 4*objvar =G= 0;

e221.. sqr(x41 - x89) + sqr(x42 - x90) + sqr(x43 - x91) + sqr(x44 - x92)
        - 4*objvar =G= 0;

e222.. sqr(x41 - x93) + sqr(x42 - x94) + sqr(x43 - x95) + sqr(x44 - x96)
        - 4*objvar =G= 0;

e223.. sqr(x45 - x49) + sqr(x46 - x50) + sqr(x47 - x51) + sqr(x48 - x52)
        - 4*objvar =G= 0;

e224.. sqr(x45 - x53) + sqr(x46 - x54) + sqr(x47 - x55) + sqr(x48 - x56)
        - 4*objvar =G= 0;

e225.. sqr(x45 - x57) + sqr(x46 - x58) + sqr(x47 - x59) + sqr(x48 - x60)
        - 4*objvar =G= 0;

e226.. sqr(x45 - x61) + sqr(x46 - x62) + sqr(x47 - x63) + sqr(x48 - x64)
        - 4*objvar =G= 0;

e227.. sqr(x45 - x65) + sqr(x46 - x66) + sqr(x47 - x67) + sqr(x48 - x68)
        - 4*objvar =G= 0;

e228.. sqr(x45 - x69) + sqr(x46 - x70) + sqr(x47 - x71) + sqr(x48 - x72)
        - 4*objvar =G= 0;

e229.. sqr(x45 - x73) + sqr(x46 - x74) + sqr(x47 - x75) + sqr(x48 - x76)
        - 4*objvar =G= 0;

e230.. sqr(x45 - x77) + sqr(x46 - x78) + sqr(x47 - x79) + sqr(x48 - x80)
        - 4*objvar =G= 0;

e231.. sqr(x45 - x81) + sqr(x46 - x82) + sqr(x47 - x83) + sqr(x48 - x84)
        - 4*objvar =G= 0;

e232.. sqr(x45 - x85) + sqr(x46 - x86) + sqr(x47 - x87) + sqr(x48 - x88)
        - 4*objvar =G= 0;

e233.. sqr(x45 - x89) + sqr(x46 - x90) + sqr(x47 - x91) + sqr(x48 - x92)
        - 4*objvar =G= 0;

e234.. sqr(x45 - x93) + sqr(x46 - x94) + sqr(x47 - x95) + sqr(x48 - x96)
        - 4*objvar =G= 0;

e235.. sqr(x49 - x53) + sqr(x50 - x54) + sqr(x51 - x55) + sqr(x52 - x56)
        - 4*objvar =G= 0;

e236.. sqr(x49 - x57) + sqr(x50 - x58) + sqr(x51 - x59) + sqr(x52 - x60)
        - 4*objvar =G= 0;

e237.. sqr(x49 - x61) + sqr(x50 - x62) + sqr(x51 - x63) + sqr(x52 - x64)
        - 4*objvar =G= 0;

e238.. sqr(x49 - x65) + sqr(x50 - x66) + sqr(x51 - x67) + sqr(x52 - x68)
        - 4*objvar =G= 0;

e239.. sqr(x49 - x69) + sqr(x50 - x70) + sqr(x51 - x71) + sqr(x52 - x72)
        - 4*objvar =G= 0;

e240.. sqr(x49 - x73) + sqr(x50 - x74) + sqr(x51 - x75) + sqr(x52 - x76)
        - 4*objvar =G= 0;

e241.. sqr(x49 - x77) + sqr(x50 - x78) + sqr(x51 - x79) + sqr(x52 - x80)
        - 4*objvar =G= 0;

e242.. sqr(x49 - x81) + sqr(x50 - x82) + sqr(x51 - x83) + sqr(x52 - x84)
        - 4*objvar =G= 0;

e243.. sqr(x49 - x85) + sqr(x50 - x86) + sqr(x51 - x87) + sqr(x52 - x88)
        - 4*objvar =G= 0;

e244.. sqr(x49 - x89) + sqr(x50 - x90) + sqr(x51 - x91) + sqr(x52 - x92)
        - 4*objvar =G= 0;

e245.. sqr(x49 - x93) + sqr(x50 - x94) + sqr(x51 - x95) + sqr(x52 - x96)
        - 4*objvar =G= 0;

e246.. sqr(x53 - x57) + sqr(x54 - x58) + sqr(x55 - x59) + sqr(x56 - x60)
        - 4*objvar =G= 0;

e247.. sqr(x53 - x61) + sqr(x54 - x62) + sqr(x55 - x63) + sqr(x56 - x64)
        - 4*objvar =G= 0;

e248.. sqr(x53 - x65) + sqr(x54 - x66) + sqr(x55 - x67) + sqr(x56 - x68)
        - 4*objvar =G= 0;

e249.. sqr(x53 - x69) + sqr(x54 - x70) + sqr(x55 - x71) + sqr(x56 - x72)
        - 4*objvar =G= 0;

e250.. sqr(x53 - x73) + sqr(x54 - x74) + sqr(x55 - x75) + sqr(x56 - x76)
        - 4*objvar =G= 0;

e251.. sqr(x53 - x77) + sqr(x54 - x78) + sqr(x55 - x79) + sqr(x56 - x80)
        - 4*objvar =G= 0;

e252.. sqr(x53 - x81) + sqr(x54 - x82) + sqr(x55 - x83) + sqr(x56 - x84)
        - 4*objvar =G= 0;

e253.. sqr(x53 - x85) + sqr(x54 - x86) + sqr(x55 - x87) + sqr(x56 - x88)
        - 4*objvar =G= 0;

e254.. sqr(x53 - x89) + sqr(x54 - x90) + sqr(x55 - x91) + sqr(x56 - x92)
        - 4*objvar =G= 0;

e255.. sqr(x53 - x93) + sqr(x54 - x94) + sqr(x55 - x95) + sqr(x56 - x96)
        - 4*objvar =G= 0;

e256.. sqr(x57 - x61) + sqr(x58 - x62) + sqr(x59 - x63) + sqr(x60 - x64)
        - 4*objvar =G= 0;

e257.. sqr(x57 - x65) + sqr(x58 - x66) + sqr(x59 - x67) + sqr(x60 - x68)
        - 4*objvar =G= 0;

e258.. sqr(x57 - x69) + sqr(x58 - x70) + sqr(x59 - x71) + sqr(x60 - x72)
        - 4*objvar =G= 0;

e259.. sqr(x57 - x73) + sqr(x58 - x74) + sqr(x59 - x75) + sqr(x60 - x76)
        - 4*objvar =G= 0;

e260.. sqr(x57 - x77) + sqr(x58 - x78) + sqr(x59 - x79) + sqr(x60 - x80)
        - 4*objvar =G= 0;

e261.. sqr(x57 - x81) + sqr(x58 - x82) + sqr(x59 - x83) + sqr(x60 - x84)
        - 4*objvar =G= 0;

e262.. sqr(x57 - x85) + sqr(x58 - x86) + sqr(x59 - x87) + sqr(x60 - x88)
        - 4*objvar =G= 0;

e263.. sqr(x57 - x89) + sqr(x58 - x90) + sqr(x59 - x91) + sqr(x60 - x92)
        - 4*objvar =G= 0;

e264.. sqr(x57 - x93) + sqr(x58 - x94) + sqr(x59 - x95) + sqr(x60 - x96)
        - 4*objvar =G= 0;

e265.. sqr(x61 - x65) + sqr(x62 - x66) + sqr(x63 - x67) + sqr(x64 - x68)
        - 4*objvar =G= 0;

e266.. sqr(x61 - x69) + sqr(x62 - x70) + sqr(x63 - x71) + sqr(x64 - x72)
        - 4*objvar =G= 0;

e267.. sqr(x61 - x73) + sqr(x62 - x74) + sqr(x63 - x75) + sqr(x64 - x76)
        - 4*objvar =G= 0;

e268.. sqr(x61 - x77) + sqr(x62 - x78) + sqr(x63 - x79) + sqr(x64 - x80)
        - 4*objvar =G= 0;

e269.. sqr(x61 - x81) + sqr(x62 - x82) + sqr(x63 - x83) + sqr(x64 - x84)
        - 4*objvar =G= 0;

e270.. sqr(x61 - x85) + sqr(x62 - x86) + sqr(x63 - x87) + sqr(x64 - x88)
        - 4*objvar =G= 0;

e271.. sqr(x61 - x89) + sqr(x62 - x90) + sqr(x63 - x91) + sqr(x64 - x92)
        - 4*objvar =G= 0;

e272.. sqr(x61 - x93) + sqr(x62 - x94) + sqr(x63 - x95) + sqr(x64 - x96)
        - 4*objvar =G= 0;

e273.. sqr(x65 - x69) + sqr(x66 - x70) + sqr(x67 - x71) + sqr(x68 - x72)
        - 4*objvar =G= 0;

e274.. sqr(x65 - x73) + sqr(x66 - x74) + sqr(x67 - x75) + sqr(x68 - x76)
        - 4*objvar =G= 0;

e275.. sqr(x65 - x77) + sqr(x66 - x78) + sqr(x67 - x79) + sqr(x68 - x80)
        - 4*objvar =G= 0;

e276.. sqr(x65 - x81) + sqr(x66 - x82) + sqr(x67 - x83) + sqr(x68 - x84)
        - 4*objvar =G= 0;

e277.. sqr(x65 - x85) + sqr(x66 - x86) + sqr(x67 - x87) + sqr(x68 - x88)
        - 4*objvar =G= 0;

e278.. sqr(x65 - x89) + sqr(x66 - x90) + sqr(x67 - x91) + sqr(x68 - x92)
        - 4*objvar =G= 0;

e279.. sqr(x65 - x93) + sqr(x66 - x94) + sqr(x67 - x95) + sqr(x68 - x96)
        - 4*objvar =G= 0;

e280.. sqr(x69 - x73) + sqr(x70 - x74) + sqr(x71 - x75) + sqr(x72 - x76)
        - 4*objvar =G= 0;

e281.. sqr(x69 - x77) + sqr(x70 - x78) + sqr(x71 - x79) + sqr(x72 - x80)
        - 4*objvar =G= 0;

e282.. sqr(x69 - x81) + sqr(x70 - x82) + sqr(x71 - x83) + sqr(x72 - x84)
        - 4*objvar =G= 0;

e283.. sqr(x69 - x85) + sqr(x70 - x86) + sqr(x71 - x87) + sqr(x72 - x88)
        - 4*objvar =G= 0;

e284.. sqr(x69 - x89) + sqr(x70 - x90) + sqr(x71 - x91) + sqr(x72 - x92)
        - 4*objvar =G= 0;

e285.. sqr(x69 - x93) + sqr(x70 - x94) + sqr(x71 - x95) + sqr(x72 - x96)
        - 4*objvar =G= 0;

e286.. sqr(x73 - x77) + sqr(x74 - x78) + sqr(x75 - x79) + sqr(x76 - x80)
        - 4*objvar =G= 0;

e287.. sqr(x73 - x81) + sqr(x74 - x82) + sqr(x75 - x83) + sqr(x76 - x84)
        - 4*objvar =G= 0;

e288.. sqr(x73 - x85) + sqr(x74 - x86) + sqr(x75 - x87) + sqr(x76 - x88)
        - 4*objvar =G= 0;

e289.. sqr(x73 - x89) + sqr(x74 - x90) + sqr(x75 - x91) + sqr(x76 - x92)
        - 4*objvar =G= 0;

e290.. sqr(x73 - x93) + sqr(x74 - x94) + sqr(x75 - x95) + sqr(x76 - x96)
        - 4*objvar =G= 0;

e291.. sqr(x77 - x81) + sqr(x78 - x82) + sqr(x79 - x83) + sqr(x80 - x84)
        - 4*objvar =G= 0;

e292.. sqr(x77 - x85) + sqr(x78 - x86) + sqr(x79 - x87) + sqr(x80 - x88)
        - 4*objvar =G= 0;

e293.. sqr(x77 - x89) + sqr(x78 - x90) + sqr(x79 - x91) + sqr(x80 - x92)
        - 4*objvar =G= 0;

e294.. sqr(x77 - x93) + sqr(x78 - x94) + sqr(x79 - x95) + sqr(x80 - x96)
        - 4*objvar =G= 0;

e295.. sqr(x81 - x85) + sqr(x82 - x86) + sqr(x83 - x87) + sqr(x84 - x88)
        - 4*objvar =G= 0;

e296.. sqr(x81 - x89) + sqr(x82 - x90) + sqr(x83 - x91) + sqr(x84 - x92)
        - 4*objvar =G= 0;

e297.. sqr(x81 - x93) + sqr(x82 - x94) + sqr(x83 - x95) + sqr(x84 - x96)
        - 4*objvar =G= 0;

e298.. sqr(x85 - x89) + sqr(x86 - x90) + sqr(x87 - x91) + sqr(x88 - x92)
        - 4*objvar =G= 0;

e299.. sqr(x85 - x93) + sqr(x86 - x94) + sqr(x87 - x95) + sqr(x88 - x96)
        - 4*objvar =G= 0;

e300.. sqr(x89 - x93) + sqr(x90 - x94) + sqr(x91 - x95) + sqr(x92 - x96)
        - 4*objvar =G= 0;

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

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set NLP $set NLP NLP
Solve m using %NLP% maximizing objvar;
