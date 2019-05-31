%% Time Response Analysis of 1st & 2nd Order Systems
clc;
clear all;
close all;
%% First Order System 
% For T = 0.2
T =0.2;
sim('simu7');

plot(tout,Out1);
hold on;
plot(tout,Out2);
hold on;
plot(tout,Out3);
hold on;
grid on;

legend('Step','Impulse','Ramp');
ylim([0 2.5])
title('T=0.2');
xlabel('Time');
ylabel('Amplitude');

%% For T = 0.5
T = 0.5
figure()
sim('simu7');

plot(tout,Out1);
hold on;
plot(tout,Out2);
hold on;
plot(tout,Out3);
hold on;
grid on;

legend('Step','Impulse','Ramp');
ylim([0 2.5]);
title('T=0.5');
xlabel('Time');
ylabel('Amplitude');

%% Second Order System

omega = 4;
zeta = 0;

sim('simu71');

% For zeta = 0;

figure();
plot(tout,Out4);
hold on;
plot(tout,Out5);
hold on;
plot(tout,Out6);
hold on;
grid on;

ylim([0 1])
legend('Step','Impulse','Ramp');
title('zeta = 0');
xlabel('Time');
ylabel('Amplitude');

% For zeta = 0.5;
zeta = 0.5;
figure()
plot(tout,Out4);
hold on;
plot(tout,Out5);
hold on;
plot(tout,Out6);
hold on;
grid on;

ylim([0 1])
legend('Step','Impulse','Ramp');
title('zeta = 0.5');
xlabel('Time');
ylabel('Amplitude');

% For zeta = 1
zeta = 1;
figure()
plot(tout,Out4);
hold on;
plot(tout,Out5);
hold on;
plot(tout,Out6);
hold on;
grid on;

ylim([0 1])
legend('Step','Impulse','Ramp');
title('zeta = 1');
xlabel('Time');
ylabel('Amplitude');
 
% For zeta = 2
zeta = 2;
figure()
plot(tout,Out4);
hold on;
plot(tout,Out5);
hold on;
plot(tout,Out6);
hold on;
grid on;

ylim([0 1])
legend('Step','Impulse','Ramp');
title('zeta = 2');
xlabel('Time');
ylabel('Amplitude');
 



