function [w1,w2,H,N,D,cN,cD] = ftransfer(R1,R2,R3,C)

%% Objaśnienie zwracanych wartości
% w1 - zero transmitancji
% w2 - biegun transmitancji
% H = H(s) - transmitancja układu
% N - (numerator) - licznik transmitancji
% D - (denominator) - mianownik transmitancji
% cN - (coefficients in the numerator) - współczynniki wielomianu licznika
% cD - (coefficients in the denominator) - współczynniki wielomianu
% mianownika

w1 = 1./(C*(R1+R3));
w2 = 1./(C*R3);

syms s
H = (-R2.*(1+C.*(R1+R3).*s))/(R1.*(C.*R3.*s+1));

[N,D] = numden(H);

cN = sym2poly(N);
cD = sym2poly(D);

end

