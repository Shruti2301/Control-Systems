%% Transfer Function of an Armature Controlled DC Motor
clc;
clear all;
close all;

%% Declaring Variables for Armature Controlled DC Motor
L = 0.5; %Electric Inductane
R = 1; % Electric Resistance
K_t = 0.1; %Motor Torque Constant
K_b = 0.1;
B = 0.1;
J = 0.01; %Moment of Inertia

%% Simulation
sim('simu6');
plot(tout,speed)
title('Step Response of Armature Controlled DC Motor');
xlabel('Time');
ylabel('Amplitude');
