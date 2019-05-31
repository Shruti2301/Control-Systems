%% Experiment 4 :

% MATLAB 1
clc;
clear all;
close all;

Num = [0.2];
Den = [1 0.07 0.1];
sys = tf(Num,Den)
figure('numbertitle','on','Name','Shruti Mandaokar_1(i) :17070123102');

% Obtaining the pole-zero location
pzmap(Num,Den) 

% Plotting the pole -zero plot
[z,p,k]=tf2zp(Num,Den) 

% Observing the Step Response
figure('numbertitle','on','Name','Shruti Mandaokar_1(ii) :17070123102');
step(sys)

%%Observing SIMULINK Waveform
sim('pg01')
plot(Time,x1)