function []=genSpectru(y,Fs)
%y semnal initial (format double)
%Fs frecventa de esantionare
Y = fft(y);
L = length(y);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
bar(f,P1) 
title('Spectrul semnalului')
xlabel('Frecventa (Hz)')
ylabel('Amplitudine');shg