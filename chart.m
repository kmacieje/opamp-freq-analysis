function [H] = chart(num,den)

%% Objaśnienie argumentów wejściowych
% num - współczynniki wielomianu w liczniku transmitancji
% den - współczynniki wielomianu w mianowniku transmitancji

figure
H = tf(num,den)
bode(H,'g-')
grid on

figure
nyquist(H,'g-')
grid on

figure
nichols(H,'g-')
ngrid

end

