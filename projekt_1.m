close all
clear all
clc

% Dane 1:
R1_1 = 122.5e3;
R2_1 = 200e3;
R3_1 = 2.5e3;
C_1 = 80e-6;


%% Obliczanie transmitancji H(s) oraz jej biegunów i zer
syms s
[w1_1,w2_1,H_1,N1,D1,cN1,cD1] = ftransfer(R1_1,R2_1,R3_1,C_1);

%% Obliczanie odpowiedzi impulsowej i skokowej układu
syms s
[step1,impulse1] = response(H_1);

%% Charakterystyki Bodego, Nyquista, Nicholsa
chart(cN1,cD1);

