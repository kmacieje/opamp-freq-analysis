function [step,impulse] = response(H)

%% Objaśnienie zwracanych wartości
% step - odpowiedź skokowa układu w dziedzinie czasu
% impulse - odpowiedź impulsowa układu w dziedzinie czasu

syms s
step = ilaplace(H/s);
impulse = ilaplace(H);

figure
subplot(2,1,1)
fplot(step,[0 3],'r-')
title("Odpowiedź skokowa układu")
xlabel("t")
ylabel("g(t)")
subplot(2,1,2)
fplot(impulse,[0 3],'r-')
title("Odpowiedź impulsowa układu")
xlabel("t")
ylabel("g(t)")

end

