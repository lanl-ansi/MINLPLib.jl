$offlisting
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         54        2       21       31        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         18       18        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        149       63       86        0
*
*  Solve m using QCP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,objvar;

Positive Variables  x16,x17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54;


e1..  - x1 + objvar =E= -6.25176938064369;

e2.. -x16*x17 + x1 =E= 0;

e3.. (x2 - x4)*(x2 - x4) + (x3 - x5)*(x3 - x5) =G= 1;

e4.. (x2 - x6)*(x2 - x6) + (x3 - x7)*(x3 - x7) =G= 1;

e5.. (x2 - x8)*(x2 - x8) + (x3 - x9)*(x3 - x9) =G= 1;

e6.. (x2 - x10)*(x2 - x10) + (x3 - x11)*(x3 - x11) =G= 1;

e7.. (x2 - x12)*(x2 - x12) + (x3 - x13)*(x3 - x13) =G= 1;

e8.. (x2 - x14)*(x2 - x14) + (x3 - x15)*(x3 - x15) =G= 1.44;

e9.. (x4 - x6)*(x4 - x6) + (x5 - x7)*(x5 - x7) =G= 1;

e10.. (x4 - x8)*(x4 - x8) + (x5 - x9)*(x5 - x9) =G= 1;

e11.. (x4 - x10)*(x4 - x10) + (x5 - x11)*(x5 - x11) =G= 1;

e12.. (x4 - x12)*(x4 - x12) + (x5 - x13)*(x5 - x13) =G= 1;

e13.. (x4 - x14)*(x4 - x14) + (x5 - x15)*(x5 - x15) =G= 1.44;

e14.. (x6 - x8)*(x6 - x8) + (x7 - x9)*(x7 - x9) =G= 1;

e15.. (x6 - x10)*(x6 - x10) + (x7 - x11)*(x7 - x11) =G= 1;

e16.. (x6 - x12)*(x6 - x12) + (x7 - x13)*(x7 - x13) =G= 1;

e17.. (x6 - x14)*(x6 - x14) + (x7 - x15)*(x7 - x15) =G= 1.44;

e18.. (x8 - x10)*(x8 - x10) + (x9 - x11)*(x9 - x11) =G= 1;

e19.. (x8 - x12)*(x8 - x12) + (x9 - x13)*(x9 - x13) =G= 1;

e20.. (x8 - x14)*(x8 - x14) + (x9 - x15)*(x9 - x15) =G= 1.44;

e21.. (x10 - x12)*(x10 - x12) + (x11 - x13)*(x11 - x13) =G= 1;

e22.. (x10 - x14)*(x10 - x14) + (x11 - x15)*(x11 - x15) =G= 1.44;

e23.. (x12 - x14)*(x12 - x14) + (x13 - x15)*(x13 - x15) =G= 1.44;

e24..    x2 - x16 =L= -0.5;

e25..    x3 - x17 =L= -0.5;

e26..    x4 - x16 =L= -0.5;

e27..    x5 - x17 =L= -0.5;

e28..    x6 - x16 =L= -0.5;

e29..    x7 - x17 =L= -0.5;

e30..    x8 - x16 =L= -0.5;

e31..    x9 - x17 =L= -0.5;

e32..    x10 - x16 =L= -0.5;

e33..    x11 - x17 =L= -0.5;

e34..    x12 - x16 =L= -0.5;

e35..    x13 - x17 =L= -0.5;

e36..    x14 - x16 =L= -0.7;

e37..    x15 - x17 =L= -0.7;

e38..    x2 =L= 4;

e39..    x3 =L= 1.45;

e40..    x2 - x4 =L= 0;

e41..    x2 - x6 =L= 0;

e42..    x2 - x8 =L= 0;

e43..    x2 - x10 =L= 0;

e44..    x2 - x12 =L= 0;

e45..    x4 - x6 =L= 0;

e46..    x4 - x8 =L= 0;

e47..    x4 - x10 =L= 0;

e48..    x4 - x12 =L= 0;

e49..    x6 - x8 =L= 0;

e50..    x6 - x10 =L= 0;

e51..    x6 - x12 =L= 0;

e52..    x8 - x10 =L= 0;

e53..    x8 - x12 =L= 0;

e54..    x10 - x12 =L= 0;

* set non-default bounds
x1.lo = 0.49; x1.up = 23.2;
x2.lo = 0.5; x2.up = 7.5;
x3.lo = 0.5; x3.up = 2.4;
x4.lo = 0.5; x4.up = 7.5;
x5.lo = 0.5; x5.up = 2.4;
x6.lo = 0.5; x6.up = 7.5;
x7.lo = 0.5; x7.up = 2.4;
x8.lo = 0.5; x8.up = 7.5;
x9.lo = 0.5; x9.up = 2.4;
x10.lo = 0.5; x10.up = 7.5;
x11.lo = 0.5; x11.up = 2.4;
x12.lo = 0.5; x12.up = 7.5;
x13.lo = 0.5; x13.up = 2.4;
x14.lo = 0.7; x14.up = 7.3;
x15.lo = 0.7; x15.up = 2.2;
x16.up = 8;
x17.up = 2.9;
objvar.lo = 0; objvar.up = 23.2;

* set non-default levels
x1.l = 0.49;
x2.l = 0.5;
x3.l = 0.5;
x4.l = 0.5;
x5.l = 0.5;
x6.l = 0.5;
x7.l = 0.5;
x8.l = 0.5;
x9.l = 0.5;
x10.l = 0.5;
x11.l = 0.5;
x12.l = 0.5;
x13.l = 0.5;
x14.l = 0.7;
x15.l = 0.7;

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set NLP $set NLP NLP
Solve m using %NLP% minimizing objvar;
