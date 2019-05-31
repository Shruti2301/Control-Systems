%% Experiment 5 : To Generate State-Space Representation of System
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : EB2
clc; 
clear all; 
close all;
%% 1. Generate State Space Representation from Transfer Function
num=[1];
den=[5 0.35 0.5];
[A,B,C,D]=tf2ss(num,den)

%% 2. Generate Transfer Function from State Space
A=[-5 1;-6 0];
B=[1;2];
C=[2 1];
D=0;
ss2tf(A,B,C,D);
printsys(A,B,C,D)

%% Visualizing the State Space Response
figure()
ckt1 = imread('05cs.PNG');
imshow(ckt1)
%%
sim('exp05simu.slx')
figure()
plot(Time,response)
title('Step Response of State Space')
xlabel('Time')
ylabel('Amplitude')

%% Brief Tasks Performed in Experiment :
% In this experiment, I generated the state-space representation from
% transfer function using tf2ss function. Then, I generated transfer 
% function from state space representation using ss2tf. The Step Response
% was observed in SIMULINK.

%% Conclusion :
% Thus we studied and implemented State Space Representation in MATLAB and 
% SIMULINK successfully.