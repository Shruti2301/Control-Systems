%% Experiment 10 : Effect of P, PI, PD and PID control action on control system
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : Entc EB2

clc;
clear all;
close all;

%% Q.1.To plot the step response for P, PI, PD and PID control systems with unity feedback
%Q.1.(a) Unity gain feedback system
N=[0 1];
D=[1 10 20];
G=tf(N,D); %open loop transfer function of the system
H=1; %unity feedback system
sys=feedback(G,H); %closed loop transfer function of unity feedback system
figure('Numbertitle','off','Name','Step response graphs')
stepplot(sys)
S=stepinfo(sys)

%% Q.1.(b)Proportional control (P controller)
kp=350;
N1=[0 kp];
D1=[0 1];
Ctf1=tf(N1,D1); %transfer function of proportional controller 
G1=series(Ctf1,G); %cascading controller and plant
H1=1; %unity feedback
sys1=feedback(G1,H1); %closed loop transfer function of proportional controller
hold on
step(sys1) %step response of the system with P controller
S1=stepinfo(sys1)

%% Q.1.(c)Integral control (PI controller)
ki=300;
N2=[kp ki];
D2=[1 0];
Ctf2=tf(N2,D2); %transfer function of PI controller
G2=series(Ctf2,G); 
H2=1;
sys2=feedback(G2,H2); %closed loop transfer function of PI controller
hold on
step(sys2) %step response of system with PI controller
S2=stepinfo(sys2)

%% Q.1.(d)Derivative control (PD controller)
kd=50;
N3=[kd kp];
D3=[0 1];
Ctf3=tf(N3,D3); %transfer function of PD controller
G3=series(Ctf3,G); 
H3=1;
sys3=feedback(G3,H3); %closed loop transfer function of PD controller
hold on
step(sys3) %step response of system with PD controller
S3=stepinfo(sys3)

%% Q.1.(e)PID control
N4=[kd kp ki];
D4=[1 0];
Ctf4=tf(N4,D4); %transfer function of PID controller
G4=series(Ctf4,G); 
H4=1;
sys4=feedback(G4,H4); %closed loop transfer function of PID controller
hold on
step(sys4) %step response of system with PID controller
hold off
legend('Without controller','P','PI','PD','PID')
S4=stepinfo(sys4)