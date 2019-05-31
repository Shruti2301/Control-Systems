%% Experiment 9 : Steady State Error Minimization
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : Entc EB2

clc;
clear all;
close all;
%% TYPE 0
N1=[0 0 1];
D1=conv([1 2],[1 3]);
G1=tf(N1,D1)
G2=feedback(G1,1,-1)
figure(1)
subplot(2,1,1)
impulse(G2)
subplot(2,1,2)
N2=[0 0 1];

step(G1)
%% TYPE 1
D2=conv([1 2],[1 3]);
D2=conv([1 0],D2);
G3=tf(N2,D2)
G4=feedback(G3,1,-1)
figure(2)
subplot(2,1,1)
impulse(G4)
subplot(2,1,2)
step(G4)
%% TYPE 2
N3=conv([1 1],[1 4]);
D3=conv([1 2],[1 3]);
D3=conv([1 0 0],D3);
G5=tf(N3,D3)
G6=feedback(G5,1,-1)
figure(3)
subplot(2,1,1)
impulse(G6)
subplot(2,1,2)
step(G6)

%% Unit Ramp without K
s = tf('s');

Num = conv([1 3],[1 5]);
Den1 = conv([1 7],[1 8]);
Den2 = conv([1 0], Den1);
G9 = tf(Num,Den2);
System = feedback(G9,1,-1)
t = 0:0.1:50;
u = t;
[y,t,x] = lsim(System,u,t);
figure()
a = imread('exp0901.PNG');
imshow(a);

% The input and output plot was obtained by using below functions.

%plot(t,y,'b',t,u,'r','LineWidth',1.8)
%xlabel('Time(secs)')
%ylabel('Amplitude')
%title('Unit Ramp without K')
%legend('Without K','Input');
%% Unit Ramp With K

K =37.33;
Num1 = conv([1 3],[1 5]);
Num2 = conv([0 0 K],Num1);
Den3 = conv([1 7],[1 8]);
Den4 = conv([1 0], Den3);
G10 = tf(Num2,Den4)
System1 = feedback(G10,1,-1)
t = 0:0.1:50;
u = t;
[y1,t,x] = lsim(System1,u,t);
figure()
b = imread('pg09.PNG');
imshow(b);

% Below functions were used to obtain the result.
% The output and input plot initially overlapped each other. So we changed
% the axis in order to distinguish both the waveforms.

%plot(t,y1,'b',t,u,'r','LineWidth',1.8)
%axis([32.2,34.5,32.2,34.5])
%xlabel('Time(secs)')
%ylabel('Amplitude')
%title('Unit Ramp With K');
%legend('With K','Input');

%% Conclusion :
% In this experiment, I simulated the step response and impulse response of
% Type-0, Type-1, Type-2 systems with unity feedback.
% I also observed that the Gain K is inversely proportional to the Steady
% State Error. When the system is with large Gain(K = 37.33), the steady 
% state error is less (Ess= 0.1). When the system is without Gain (K=1),
% the steady state error is large.