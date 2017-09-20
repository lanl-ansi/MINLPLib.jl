$offlisting
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         78       12       66        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37       37        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        498       66      432        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78;


e1.. sqr(x1) + sqr(x2) + sqr(x3) =E= 4;

e2.. sqr(x4) + sqr(x5) + sqr(x6) =E= 4;

e3.. sqr(x7) + sqr(x8) + sqr(x9) =E= 4;

e4.. sqr(x10) + sqr(x11) + sqr(x12) =E= 4;

e5.. sqr(x13) + sqr(x14) + sqr(x15) =E= 4;

e6.. sqr(x16) + sqr(x17) + sqr(x18) =E= 4;

e7.. sqr(x19) + sqr(x20) + sqr(x21) =E= 4;

e8.. sqr(x22) + sqr(x23) + sqr(x24) =E= 4;

e9.. sqr(x25) + sqr(x26) + sqr(x27) =E= 4;

e10.. sqr(x28) + sqr(x29) + sqr(x30) =E= 4;

e11.. sqr(x31) + sqr(x32) + sqr(x33) =E= 4;

e12.. sqr(x34) + sqr(x35) + sqr(x36) =E= 4;

e13.. sqr(x1 - x4) + sqr(x2 - x5) + sqr(x3 - x6) - 4*objvar =G= 0;

e14.. sqr(x1 - x7) + sqr(x2 - x8) + sqr(x3 - x9) - 4*objvar =G= 0;

e15.. sqr(x1 - x10) + sqr(x2 - x11) + sqr(x3 - x12) - 4*objvar =G= 0;

e16.. sqr(x1 - x13) + sqr(x2 - x14) + sqr(x3 - x15) - 4*objvar =G= 0;

e17.. sqr(x1 - x16) + sqr(x2 - x17) + sqr(x3 - x18) - 4*objvar =G= 0;

e18.. sqr(x1 - x19) + sqr(x2 - x20) + sqr(x3 - x21) - 4*objvar =G= 0;

e19.. sqr(x1 - x22) + sqr(x2 - x23) + sqr(x3 - x24) - 4*objvar =G= 0;

e20.. sqr(x1 - x25) + sqr(x2 - x26) + sqr(x3 - x27) - 4*objvar =G= 0;

e21.. sqr(x1 - x28) + sqr(x2 - x29) + sqr(x3 - x30) - 4*objvar =G= 0;

e22.. sqr(x1 - x31) + sqr(x2 - x32) + sqr(x3 - x33) - 4*objvar =G= 0;

e23.. sqr(x1 - x34) + sqr(x2 - x35) + sqr(x3 - x36) - 4*objvar =G= 0;

e24.. sqr(x4 - x7) + sqr(x5 - x8) + sqr(x6 - x9) - 4*objvar =G= 0;

e25.. sqr(x4 - x10) + sqr(x5 - x11) + sqr(x6 - x12) - 4*objvar =G= 0;

e26.. sqr(x4 - x13) + sqr(x5 - x14) + sqr(x6 - x15) - 4*objvar =G= 0;

e27.. sqr(x4 - x16) + sqr(x5 - x17) + sqr(x6 - x18) - 4*objvar =G= 0;

e28.. sqr(x4 - x19) + sqr(x5 - x20) + sqr(x6 - x21) - 4*objvar =G= 0;

e29.. sqr(x4 - x22) + sqr(x5 - x23) + sqr(x6 - x24) - 4*objvar =G= 0;

e30.. sqr(x4 - x25) + sqr(x5 - x26) + sqr(x6 - x27) - 4*objvar =G= 0;

e31.. sqr(x4 - x28) + sqr(x5 - x29) + sqr(x6 - x30) - 4*objvar =G= 0;

e32.. sqr(x4 - x31) + sqr(x5 - x32) + sqr(x6 - x33) - 4*objvar =G= 0;

e33.. sqr(x4 - x34) + sqr(x5 - x35) + sqr(x6 - x36) - 4*objvar =G= 0;

e34.. sqr(x7 - x10) + sqr(x8 - x11) + sqr(x9 - x12) - 4*objvar =G= 0;

e35.. sqr(x7 - x13) + sqr(x8 - x14) + sqr(x9 - x15) - 4*objvar =G= 0;

e36.. sqr(x7 - x16) + sqr(x8 - x17) + sqr(x9 - x18) - 4*objvar =G= 0;

e37.. sqr(x7 - x19) + sqr(x8 - x20) + sqr(x9 - x21) - 4*objvar =G= 0;

e38.. sqr(x7 - x22) + sqr(x8 - x23) + sqr(x9 - x24) - 4*objvar =G= 0;

e39.. sqr(x7 - x25) + sqr(x8 - x26) + sqr(x9 - x27) - 4*objvar =G= 0;

e40.. sqr(x7 - x28) + sqr(x8 - x29) + sqr(x9 - x30) - 4*objvar =G= 0;

e41.. sqr(x7 - x31) + sqr(x8 - x32) + sqr(x9 - x33) - 4*objvar =G= 0;

e42.. sqr(x7 - x34) + sqr(x8 - x35) + sqr(x9 - x36) - 4*objvar =G= 0;

e43.. sqr(x10 - x13) + sqr(x11 - x14) + sqr(x12 - x15) - 4*objvar =G= 0;

e44.. sqr(x10 - x16) + sqr(x11 - x17) + sqr(x12 - x18) - 4*objvar =G= 0;

e45.. sqr(x10 - x19) + sqr(x11 - x20) + sqr(x12 - x21) - 4*objvar =G= 0;

e46.. sqr(x10 - x22) + sqr(x11 - x23) + sqr(x12 - x24) - 4*objvar =G= 0;

e47.. sqr(x10 - x25) + sqr(x11 - x26) + sqr(x12 - x27) - 4*objvar =G= 0;

e48.. sqr(x10 - x28) + sqr(x11 - x29) + sqr(x12 - x30) - 4*objvar =G= 0;

e49.. sqr(x10 - x31) + sqr(x11 - x32) + sqr(x12 - x33) - 4*objvar =G= 0;

e50.. sqr(x10 - x34) + sqr(x11 - x35) + sqr(x12 - x36) - 4*objvar =G= 0;

e51.. sqr(x13 - x16) + sqr(x14 - x17) + sqr(x15 - x18) - 4*objvar =G= 0;

e52.. sqr(x13 - x19) + sqr(x14 - x20) + sqr(x15 - x21) - 4*objvar =G= 0;

e53.. sqr(x13 - x22) + sqr(x14 - x23) + sqr(x15 - x24) - 4*objvar =G= 0;

e54.. sqr(x13 - x25) + sqr(x14 - x26) + sqr(x15 - x27) - 4*objvar =G= 0;

e55.. sqr(x13 - x28) + sqr(x14 - x29) + sqr(x15 - x30) - 4*objvar =G= 0;

e56.. sqr(x13 - x31) + sqr(x14 - x32) + sqr(x15 - x33) - 4*objvar =G= 0;

e57.. sqr(x13 - x34) + sqr(x14 - x35) + sqr(x15 - x36) - 4*objvar =G= 0;

e58.. sqr(x16 - x19) + sqr(x17 - x20) + sqr(x18 - x21) - 4*objvar =G= 0;

e59.. sqr(x16 - x22) + sqr(x17 - x23) + sqr(x18 - x24) - 4*objvar =G= 0;

e60.. sqr(x16 - x25) + sqr(x17 - x26) + sqr(x18 - x27) - 4*objvar =G= 0;

e61.. sqr(x16 - x28) + sqr(x17 - x29) + sqr(x18 - x30) - 4*objvar =G= 0;

e62.. sqr(x16 - x31) + sqr(x17 - x32) + sqr(x18 - x33) - 4*objvar =G= 0;

e63.. sqr(x16 - x34) + sqr(x17 - x35) + sqr(x18 - x36) - 4*objvar =G= 0;

e64.. sqr(x19 - x22) + sqr(x20 - x23) + sqr(x21 - x24) - 4*objvar =G= 0;

e65.. sqr(x19 - x25) + sqr(x20 - x26) + sqr(x21 - x27) - 4*objvar =G= 0;

e66.. sqr(x19 - x28) + sqr(x20 - x29) + sqr(x21 - x30) - 4*objvar =G= 0;

e67.. sqr(x19 - x31) + sqr(x20 - x32) + sqr(x21 - x33) - 4*objvar =G= 0;

e68.. sqr(x19 - x34) + sqr(x20 - x35) + sqr(x21 - x36) - 4*objvar =G= 0;

e69.. sqr(x22 - x25) + sqr(x23 - x26) + sqr(x24 - x27) - 4*objvar =G= 0;

e70.. sqr(x22 - x28) + sqr(x23 - x29) + sqr(x24 - x30) - 4*objvar =G= 0;

e71.. sqr(x22 - x31) + sqr(x23 - x32) + sqr(x24 - x33) - 4*objvar =G= 0;

e72.. sqr(x22 - x34) + sqr(x23 - x35) + sqr(x24 - x36) - 4*objvar =G= 0;

e73.. sqr(x25 - x28) + sqr(x26 - x29) + sqr(x27 - x30) - 4*objvar =G= 0;

e74.. sqr(x25 - x31) + sqr(x26 - x32) + sqr(x27 - x33) - 4*objvar =G= 0;

e75.. sqr(x25 - x34) + sqr(x26 - x35) + sqr(x27 - x36) - 4*objvar =G= 0;

e76.. sqr(x28 - x31) + sqr(x29 - x32) + sqr(x30 - x33) - 4*objvar =G= 0;

e77.. sqr(x28 - x34) + sqr(x29 - x35) + sqr(x30 - x36) - 4*objvar =G= 0;

e78.. sqr(x31 - x34) + sqr(x32 - x35) + sqr(x33 - x36) - 4*objvar =G= 0;

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

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set NLP $set NLP NLP
Solve m using %NLP% maximizing objvar;
