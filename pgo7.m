%% Experiment 7 : Time Response Analysis of first and second order systems.
%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : Entc EB2

clc;
clear all;
close all;
%% Visualize time response of First Order System described by its TF.
T=0.2;
sim('simulink7');
figure();
a=imread('07cs.PNG'); 
imshow(a);

figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on; grid on;
legend('Step','Impulse','Ramp'); 
ylim([0 2.5]);
title('T=0.2');
xlabel('Time');
ylabel('Amplitude');


T=0.5;
sim('simulink7');
figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on; grid on;
legend('Step','Impulse','Ramp'); 
ylim([0 2.5]);
title('T=0.5');
xlabel('Time');
ylabel('Amplitude');

%% Visualize Time response of Second order system given by its TF
figure();
b=imread('072cs.PNG'); 
imshow(b);


omega=4;
zeta=0;
sim('simulink702');

figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on; grid on;
legend('Step','Impulse','Ramp');
title('zeta(?)=0');
xlabel('Time');
ylabel('Amplitude');

% For zeta = 0.5
zeta=0.5;
sim('simulink702');

figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on; grid on;
ylim([0 1]); 
legend('Step','Impulse','Ramp');
title('zeta(?)=0.5');
xlabel('Time');
ylabel('Amplitude');

% For zeta = 1
zeta=1;
sim('simulink702');
figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on;
ylim([0 1]);
legend('Step','Impulse','Ramp'); 
grid on;
title('zeta(?)=1');
xlabel('Time');
ylabel('Amplitude');

% For Zeta =2
zeta=2;
sim('simulink702');
figure();
plot(tout,Out1,'LineWidth',2); hold on;
plot(tout,Out2,'LineWidth',2); hold on;
plot(tout,Out3,'LineWidth',2); hold on;
ylim([0 1]);
legend('Step','Impulse','Ramp'); 
grid on;
title('zeta(?)=2');
xlabel('Time');
ylabel('Amplitude');

%% Conclusion : In this experiment, I studied and visualized about standard
%test signals and found out time response of first and second order systems
%given by its Transfer Function.


