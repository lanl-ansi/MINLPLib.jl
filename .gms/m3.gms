$offlisting
*  MINLP written by GAMS Convert at 10/26/04 14:09:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         44        1        0       43        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         27       21        6        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        157      151        6        0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,objvar,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27;

Binary Variables  b1,b2,b3,b4,b5,b6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44;


e1..    objvar - 6*x10 - 6*x11 - 6*x12 - 6*x13 =E= 0;

e2..    x22 - x23 =L= 0;

e3..    0.5*x14 - x17 + x22 =L= 0;

e4..    0.5*x14 - x22 =L= 0;

e5..    0.5*x18 - x21 + x25 =L= 0;

e6..    0.5*x18 - x25 =L= 0;

e7..    0.5*x15 - x17 + x23 =L= 0;

e8..    0.5*x15 - x23 =L= 0;

e9..    0.5*x19 - x21 + x26 =L= 0;

e10..    0.5*x19 - x26 =L= 0;

e11..    0.5*x16 - x17 + x24 =L= 0;

e12..    0.5*x16 - x24 =L= 0;

e13..    0.5*x20 - x21 + x27 =L= 0;

e14..    0.5*x20 - x27 =L= 0;

e15..  - x8 + x22 - x23 =L= 0;

e16..  - x8 - x22 + x23 =L= 0;

e17..  - x9 + x25 - x26 =L= 0;

e18..  - x9 - x25 + x26 =L= 0;

e19..  - 10*b1 - 10*b2 + 0.5*x14 + 0.5*x15 - x22 + x23 =L= 0;

e20..  - 10*b1 + 10*b2 + 0.5*x14 + 0.5*x15 + x22 - x23 =L= 10;

e21..    5*b1 - 5*b2 + 0.5*x18 + 0.5*x19 - x25 + x26 =L= 5;

e22..    5*b1 + 5*b2 + 0.5*x18 + 0.5*x19 + x25 - x26 =L= 10;

e23..  - x10 + x22 - x24 =L= 0;

e24..  - x10 - x22 + x24 =L= 0;

e25..  - x11 + x25 - x27 =L= 0;

e26..  - x11 - x25 + x27 =L= 0;

e27..  - 10*b3 - 10*b4 + 0.5*x14 + 0.5*x16 - x22 + x24 =L= 0;

e28..  - 10*b3 + 10*b4 + 0.5*x14 + 0.5*x16 + x22 - x24 =L= 10;

e29..    5*b3 - 5*b4 + 0.5*x18 + 0.5*x20 - x25 + x27 =L= 5;

e30..    5*b3 + 5*b4 + 0.5*x18 + 0.5*x20 + x25 - x27 =L= 10;

e31..  - x12 + x23 - x24 =L= 0;

e32..  - x12 - x23 + x24 =L= 0;

e33..  - x13 + x26 - x27 =L= 0;

e34..  - x13 - x26 + x27 =L= 0;

e35..  - 10*b5 - 10*b6 + 0.5*x15 + 0.5*x16 - x23 + x24 =L= 0;

e36..  - 10*b5 + 10*b6 + 0.5*x15 + 0.5*x16 + x23 - x24 =L= 10;

e37..    5*b5 - 5*b6 + 0.5*x19 + 0.5*x20 - x26 + x27 =L= 5;

e38..    5*b5 + 5*b6 + 0.5*x19 + 0.5*x20 + x26 - x27 =L= 10;

e39.. 10/x14 - x18 =L= 0;

e40.. 10/x18 - x14 =L= 0;

e41.. 15/x15 - x19 =L= 0;

e42.. 15/x19 - x15 =L= 0;

e43.. 19/x16 - x20 =L= 0;

e44.. 19/x20 - x16 =L= 0;

* set non default bounds

x14.lo = 2; x14.up = 5.4772; 
x15.lo = 3; x15.up = 6.7081; 
x16.lo = 3.8; x16.up = 7.5498; 
x17.fx = 10; 
x18.lo = 1.8258; x18.up = 5; 
x19.lo = 2.2361; x19.up = 5; 
x20.lo = 2.5166; x20.up = 5; 
x21.fx = 5; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
