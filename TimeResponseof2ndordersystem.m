%%Time Response Specification of Second order Systems
clc;
clear all;
close all;

%%
t = 0:0.001:20;
w_n = 2;

%% For Zeta = 0.25 ( Without Inbuilt Step)

zeta = 0.25;
theta = atan(sqrt(1-zeta^2)/zeta);

w_d = w_n * sqrt(1-zeta^2);
C = 1 - ((exp(-zeta.*w_n.*t).*(sin(sqrt(1-zeta^2)*w_d.*t+theta)))./sqrt(1-zeta^2));

figure()
plot(t,C,'r','LineWidth',2);
hold on;

%% For Zeta = 0.7 (Without inbuilt Step)

zeta = 0.7;
theta = atan(sqrt(1-zeta^2)/zeta);

D = 1 -((exp(-zeta.*w_n.*t).*(sin(sqrt(1-zeta^2)*w_d.*t+theta)))./sqrt(1-zeta^2));

plot(t,D,'y','LineWidth',2);
hold on;

%% For Zeta = 1.0 (With Step Function)

zeta = 1.0;
N1 = (w_n)^2;
D1 = [1 (2*zeta*w_n) (w_n*w_n)];

M1 = tf(N1,D1)
stepplot(M1);
hold on;

%% For Zeta = 1.2 (With Step Function)

zeta = 1.2;
N2 = [(w_n)^2];
D2 = [1 (2*zeta*w_n) (w_n*w_n)];

M2 = tf(N2,D2)
stepplot(M2);
hold on; 
legend('zeta = 0.25','zeta=0.7','zeta = 1.0','zeta = 1.2')

%% 
stepinfo(C)
stepinfo(D)
figure()

plot(t,C);
hold on;
plot(t,D);
title('Step Response of zeta = 0.7 and zeta = 0.25')
xlabel('Time');
ylabel('Amplitude');
%%
