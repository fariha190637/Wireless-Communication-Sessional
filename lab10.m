clc;
clear all;
close all;
trans_data = 270.833; %unit in kbps
each_time_slot_bit = 156.25; %unit in bits
num_of_time_slot = 8;
disp('(A)')
time_duration_of_a_bit_Tb= (1/trans_data);
fprintf('Time duration of a bit Tb: %.4f ms\n',time_duration_of_a_bit_Tb);
disp('(B)')
time_duration_of_a_slot_Ts = (each_time_slot_bit*time_duration_of_a_bit_Tb);
fprintf('Time duration of a slot Ts: %.2f ms\n',time_duration_of_a_slot_Ts);
disp('(C)');
time_duration_of_a_frame_Tf = (time_duration_of_a_slot_Ts*num_of_time_slot);
fprintf('Time duration of a frame Tf: %.3f ms\n',time_duration_of_a_frame_Tf);
disp('(D)');
disp('A user has to wait 4.615 ms, the arrival time of a new frame for its next transmission.');