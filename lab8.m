clc;
clear all;
close all;
Am_signal_power = 400; %unit in KW
modulation_depth = 0.75;
carrier_power_pc = (Am_signal_power)/(1+((modulation_depth)^2)/2);
fprintf('Carrier power Pc: %.2f KW\n',carrier_power_pc);
disp('(a)');
total_power = (carrier_power_pc/Am_signal_power)*100;
fprintf('Total power in the carrier is: %.2f%%\n',total_power)
disp('(b)');
power_in_each_sideband = (Am_signal_power-carrier_power_pc)*0.5;
fprintf('Power in each sideband: %.2f KW\n',power_in_each_sideband)
disp('(c)');
percentage_power = (1-(power_in_each_sideband)/Am_signal_power)*100;
fprintf('Percentage power saving: %.2f%%\n',percentage_power)