clc;
clear all;
close all;
c = 3*(10^8); %velocity of light
f = 900*(10^6); %frequency(unit in Hz)
D = 1; %(unit in m)
lemda = (c/f);
df = 2*(D^2)/(lemda);
pl = -10*log10((lemda^2)/(((4*pi)^2)*(df^2)));
fprintf('Fraunhofer distance, df = %.2f m\n',df)
fprintf('Path Loss, PL(dB) = %.2f dB\n',pl);