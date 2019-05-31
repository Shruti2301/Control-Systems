%% State Space Representation of System
clc;
clear all;
close all;
%% Generate State Space from Transfer Function
num = [1];
den = [5 0.35 0.5];
[A B C D] = tf2ss(num,den)
%% Generate Transfer Function from State Space
A = [-5 1; -6 0];
B = [1;2];
C = [2 1];
D = 0;
ss2tf(A,B,C,D);
printsys(A,B,C,D)
%% Simulation
figure()
sim('simu5');
plot(tout,response)
title('Step Response of State Space')
xlabel('Time')
ylabel('Amplitude')