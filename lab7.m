clc;
clear all;
close all;
fprintf('(a)\n');
Tn = 150; %unit in micro_second
N = 70;
delT = Tn/N;
fprintf('delT = %.2f micro_second\n',delT);
fprintf('(b)\n');
Tn = 4;
MBW = 2/delT; %unit in MHz
fprintf('The maximum bandwidth that the SMRCIM model can accurately represent = %.2f MHz\n',MBW);
Tn = 4; %unit in micro_second
delT = (Tn/N)*1000;
RFBW = (2/delT)*1000;
fprintf('delT for SMRCIM urban mircrocell model is %.2f ns\n',delT);
fprintf('The maximum RF bandwidth that can be represented is %.2f MHz\n',RFBW);
fprintf('(c)\n');
Exdel = 500; %excess delay in ns
delT = Exdel/N;
fprintf('For indoor channel, delT = %.2f ns\n',delT);
RFBW = (2/delT)*1000;
fprintf('The maximum RF bandwidth for the indoor channel model is %.2f MHz\n',RFBW);