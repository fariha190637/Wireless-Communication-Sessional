clc;
clear all;
close all;
R_SI=15; %signal to interference ratio in dB
io=6; %co-channel cells
n=[4 3];
fprintf('Given, signal to interference ratio is %ddB(minimum required for forward channel)\n',R_SI);
disp('First, let us consider N = 7 cell reuse pattern');
for a=1:2
    N=7;
    Q=sqrt(3*N);
    %disp('n: ')
    fprintf('n = %d',n(a));
    fprintf('\n');
    %n(a)
    %disp('Frequency reuse factor: ')
    fprintf('Frequency reuse factor, Q = %.2f\n',Q);
    %Q
    SI=10*(log10((1/io)*(Q^n(a))));
    %disp('Signal to interference ratio: ');
    fprintf('Signal to interference ratio: %.2fdB\n',SI);
    if(SI>R_SI)
        fprintf('Since this greater than the minimum required S/I, so cluster size N = %d can be used.\n\n',N);
    end
    %SI
    if(SI<R_SI)
        i=2; j=2;
        N= (i^2)+(i*j)+(j^2);
        Q=sqrt(3*N);
        disp('Since this is less than the minimum required S/I, so we need to use a larger N.')
        fprintf('So, the next possible value of N is %d\n',N);
        %disp('n: ')
        %n(a)
        %disp('Frequency reuse factor: ')
        %Q
        fprintf('Frequency reuse factor, Q = %.2f\n',Q);
        SI1=10*(log10((1/io)*(Q^n(a))));
        fprintf('Signal to interference ratio: %.2fdB\n',SI1);
        %disp('Signal to interference ratio: ')
        %SI1
        fprintf('So, Cluster size for n = %d is  %d\n',n(a),N);
    end
end