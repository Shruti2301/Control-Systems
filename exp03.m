%%              Experiment No. 3
% Name :Shruti Mandaokar
% PRN:17070123102
% Batch: EB2(17-21)
%% Aim
% Title: Visualization of response of system described by transfer function.
%
% Objectives:
%1. To learn how to write transfer function of a system in SIMULINK.
%% 2. To learn how to generate an impulse signal from two step signals.
% 3. To visualize impulse, step and ramp responses for the systems in SIMULINK and
% MATLAB.
%% Q1
% Visualize an impulse signal on scope using two step signals in SIMULINK.
figure(1)
plot(time,x1)
hold on
plot(time,x2)
hold on
plot(time,x3)
legend('Step','Ramp','Impulse');
xlabel('time');
ylabel('Amplitude');
title('Step, Ramp, Impulse plot');
ylim([0 3])
figure()
ss1=imread('ss1.png');
imshow(ss1);
%% Q2
% Visualize impulse, step and ramp responses on scope for the following systems
%described by transfer functions.
%  1
%  -
%  s
figure(2)
plot(time,x21)
hold on
plot(time,x22)
hold on
plot(time,x23)
legend('Step','Ramp','Impulse');
xlabel('time');
ylabel('Amplitude');
title('1/s Step, Ramp, Impulse plot');
ylim([0 10])
figure()
ss3=imread('ss3.png');
imshow(ss3);
%  1
% ---
% s+1
figure(3)
plot(time,y21)
hold on
plot(time,y22)
hold on
plot(time,y23)
legend('Step','Ramp','Impulse');
xlabel('time');
ylabel('Amplitude');
title('1/(s+1) Step, Ramp, Impulse plot');
ylim([0 2])
figure()
ss2=imread('ss2.png');
imshow(ss2);
% (s+4)/(s^2+3.5s+6)
figure(4)
plot(time,z21)
hold on
plot(time,z22)
hold on
plot(time,z23)
legend('Step','Ramp','Impulse');
xlabel('time');
ylabel('Amplitude');
title('Step, Ramp, Impulse plot');
ylim([0 2])
figure()
ss5=imread('ss5.png');
imshow(ss5);
%% Q3.
figure(5)
plot(time,x31)
hold on
plot(time,x32)
legend('4(i)','4(ii)');
xlabel('time');
ylabel('Amplitude');
figure()
ss4=imread('ss4.png');
imshow(ss4);
%% Q4
% (i)
n1=[0 1];
d1=[1 0];
a=tf(n1,d1);
figure()
subplot(211)
impulse(a)
title('Impulse response');
subplot(212)
step(a)
title('step response');
% (ii)
n2=[0 1];
d2=[1 1];
b=tf(n2,d2)
figure()
subplot(211)
impulse(b)
title('impulse response');
subplot(212)
step(b)
% (iii)
n3=[0 1 4];
d3=[1 3.5 6];
c=tf(n3,d3);
figure()
subplot(211)
impulse(c)
title('Impulse response');
subplot(212)
step(c)
title('step response');