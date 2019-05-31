%% Experiment 10 : Effect of P, PI, PD and PID control action on control system
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : Entc EB2

clc;
clear all;
close all;
%% 1. Plot the step response for P, PI, PD and PID control systems with unity feedback
% (a) For Given System
N1=1;
D1=[1 10 20];
G1=tf(N1,D1)
figure()
stepplot(G1);
title('Step plot of System')

%% (b) Proportional Control with Kp =350
Kp=350;
X1=series(G1,Kp);

System1 = feedback(X1,1)
figure()
stepplot(System1);
title('Proportional Step plot of System')

%% (c)Integral Control with Ki = 300
Ki=300;
N2=Ki;
D2=[1 0];
G2=tf(N2,D2)
X2=parallel(Kp,G2);
X3=series(G1,X2);
System2=feedback(X3,1)
figure()
stepplot(System2);
title('Integral Step plot of System')

%% (d) Derivative Control with Kd = 50
Kd=50;
N3=[Kd 0]
D3=1
G3=tf(N3,D3)
X4=parallel(Kp,G3);
X5=series(G1,X4);
System3=feedback(X5,1)
figure()
stepplot(System3);
title('Derivative Step plot of System')

%% (e) PID Control with
PID=Kp+G3+G2
X6=series(G1,PID);
System4=feedback(X6,1)
figure()
stepplot(System4); 
title('PID Step plot of System')

%%
figure()
stepplot(G1);
hold on
stepplot(System1);
hold on
stepplot(System2);
hold on
stepplot(System3);
hold on
stepplot(System4);
legend("System","Proportional","Integral","Derivative","PID")
title("Step plots")

%% Conclusion :
% From the experiment, I learnt to plot Step response for P,PI,PD and PID
% Control Systems with unity feedback.

% Further I interpreted :

% Increasing the proportional gain has the effect of proportionally increasing the control signal for the same level of error.
% The fact that the controller will "push" harder for a given level of error tends to cause the closed-loop system to react more quickly, 
% but also to overshoot more. Another effect of increasing Kp is that it tends to reduce, but not eliminate, the steady-state error.

% The addition of a derivative term to the controller adds the ability of the controller to "anticipate" error. 
% With simple proportional control, if is fixed, the only way that the control will increase is if the error increases. 

% With derivative control, the control signal can become large if the error begins sloping upward, even while the magnitude of the error 
% is still relatively small. This anticipation tends to add damping to the system, thereby decreasing overshoot. 
% The addition of a derivative term, however, has no effect on the steady-state error.

% The addition of an integral term to the controller ($K_i$) tends to help reduce steady-state error. 
% If there is a persistent, steady error, the integrator builds and builds, thereby increasing the 
% control signal and driving the error down. A drawback of the integral term, 
% however, is that it can make the system more sluggish (and oscillatory) 
% since when the error signal changes sign, it may take a while for the integrator to "unwind."
