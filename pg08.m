%% Experiment 8 : Time Response specifications of second order systems.
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : Entc EB2

clc;
clear all;
close all;
%% Plot step response of second order system
t=0:0.001:20;
w_n=2; 

% For zeta = 0.25
zeta=0.25; 
theta=atan(sqrt(1-zeta^2)/zeta);

w_d=w_n*sqrt(1-zeta^2);
C=1-((exp(-zeta.*w_n.*t).*(sin(sqrt(1-zeta^2)*w_d.*t+theta)))./sqrt(1-zeta^2));

figure()
plot(t,C,'r','LineWidth',2); hold on;

%For zeta = 0.7
zeta=0.7; 
theta=atan(sqrt(1-zeta^2)/zeta);
D=1-((exp(-zeta.*w_n.*t).*(sin(sqrt(1-zeta^2)*w_d.*t+theta)))/sqrt(1-zeta^2));
plot(t,D,'y','LineWidth',2); hold on;

% For zeta = 1.0
zeta=1.0;
N1=[(w_n)^2];
D1=[1 (2*zeta*w_n) (w_n*w_n)];

M1=tf(N1,D1)
stepplot(M1); hold on;

% For zeta = 1.2
zeta=1.2;
N2=[(w_n)^2];
D2=[1 (2*zeta*w_n) (w_n*w_n)];

M2=tf(N2,D2)
stepplot(M2); hold on;
legend('zeta=0.25','zeta=0.7','zeta=1.0','zeta=1.2');

%%
stepinfo(C)
stepinfo(D)
figure()

b = imread('exp0801.PNG');
imshow(b)

%plot(t,C);
%titlehold on
%plot(t,D);

%% Conclusion :
%In this experiment I plotted the step response of second order system with
%given parameters using step function and further calculated characteristics
%of system. Further, I used stepinfo to verify the results.
% 1. When 0<zeta<1, the system is underdamped. 
% 2. When zeta>1, system is overdamped.
% 3. As zeta increases, the response becomes progressively less
% oscillatory till it becomes critically damped for zeta = 1, and becomes
% overdamped for zeta > 1.


