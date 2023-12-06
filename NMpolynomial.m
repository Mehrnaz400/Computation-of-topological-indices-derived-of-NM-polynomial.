clc;
%clear all;
syms x y;
P = input('Enter a NM-polynomial with two variables x and y: ');
Dx = simplify(x*diff(P,x));
Dy = simplify(y*diff(P,y));
M1 = simplify(Dx + Dy);
NZ1 = subs(M1, [x,y], [1,1]);
disp(['The first Zagreb index is: ', char(expand(M1))]);
disp([' NZ1(G) = ' char(NZ1)]);


DxDy = simplify(x*diff(Dy,x));
NZ2 = subs(DxDy, [x,y], [1,1]);
disp(['The second Zagreb index is: ', char(expand(DxDy))]);
disp([' NZ2(G) = ' char(NZ2)]);


Sy = simplify(int(P/y, y));
SxSy = simplify(int(Sy/x, x));
nmM2 = subs(SxSy, [x,y], [1,1]);
disp(['The second modified Zagreb index is: ', char(expand(SxSy))]);
disp([' nmM2(G) = ' char(nmM2)]);

DyM1 = simplify(y*diff(M1,y));
RezG = simplify(x*diff(DyM1,x));
ND3 = subs(RezG, [x,y], [1,1]);
disp(['The third NDe index is: ', char(expand(RezG))]);
disp([' ND3(G) = ' char(ND3)]);

G = subs(P, y, x);
Q = int(G/x, x);
Harmonic = simplify(2*Q);
NH = subs(Harmonic, [x,y], [1,1]);
disp(['The Harmonic index is: ', char(expand(Harmonic))]);
disp([' NH(G) = ' char(NH)]);

D2x = simplify(x*diff(Dx,x));
D2y = simplify(y*diff(Dy,y));
Forgotten = simplify(D2x + D2y);
NF = subs(Forgotten, [x,y], [1,1]);
disp(['The Forgotten index is: ', char(expand(Forgotten))]);
disp([' NF(G) = ' char(NF)]);

DxSy = simplify(x*diff(Sy,x));
SxDy = simplify(int(Dy/x, x));
SDD1 = simplify(DxSy + SxDy); 
ND5 = subs(SDD1, [x,y], [1,1]);
disp(['The fifth NDe index is: ', char(expand(SDD1))]);
disp([' ND5(G) = ' char(ND5)]);

DxDy = simplify(x*diff(Dy,x));
K = subs(DxDy, y, x);
IG = simplify(int(K/x, x));
NI = subs(IG, [x,y], [1,1]);
disp(['The Inverse sum indeg index is: ', char(expand(IG))]);
disp([' NI(G) = ' char(NI)]);

Dy = simplify(y*diff(P,y));
D2y = simplify(y*diff(Dy,y));
D3y = simplify(y*diff(D2y,y));
Dx = simplify(x*diff(D3y,x));
D2x = simplify(x*diff(Dx,x));
D3x = simplify(x*diff(D2x,x));
 Apolynomial = subs(D3x, y, x);
 Apolynomial = simplify(x^(-2)*Apolynomial);
 Apolynomial = int(Apolynomial/x,x);
 Apolynomial = int(Apolynomial/x,x);
 Apolynomial = int(Apolynomial/x,x);
S = subs(Apolynomial, x,1);
disp(['The Sanskruti index = :' char(expand(Apolynomial))]);
disp([' S(G) = ' char(S)]);
