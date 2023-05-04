
close all
clear all
clc

% Dane 2:
R1_2 = 156e3;
R2_2 = 360e3;
R3_2 = 4e3;
C_2 = 31.25e-6;

%% Obliczanie transmitancji H(s) oraz jej biegunów i zer
syms s
[w1_2,w2_2,H_2,N2,D2,cN2,cD2] = ftransfer(R1_2,R2_2,R3_2,C_2);

%% Obliczanie odpowiedzi impulsowej i skokowej układu
syms s
[step1,impulse1] = response(H_2);

%% Charakterystyki Bodego, Nyquista, Nicholsa
chart(cN2,cD2);

