%% Experiment 6 :Study Transfer Function of an armature controlled DC Motor

%Name : Shruti Mandaokar
%PRN : 17070123102
%Batch : EB2
clc; 
%% Declaring Variables for Armature Controlled DC Motor
L = 0.5; %Electric Inductance
R = 1;   %Electric Resistance
K_t = 0.1; % Motor torque constant
K_b = 0.1; % Back emf constant
B = 0.1;
J = 0.01; % Moment of Inertia

figure()
ckt = imread('06cs.PNG');
imshow(ckt)
%% Simulating and Visualizing response of Armature Controlled DC Motor
sim('exp06.slx')
plot(tout,speed)
title('Step Response of Armature controlled DC Motor')
xlabel('Time')
ylabel('Speed')

%% Tasks Performed in the experiment :
% In this experiment, we derived the transfer function of an Armature 
% Controlled DC Motor. We declared variables in the Workspace by simulating
% & visualizing speed response of Armature Controlled DC Motor. 
% The speed vs time response was observed.

%% Conclusion:
%In this project the speed of the DC motor is controlled by the armature.
%
%The principle of operation used in this motor is electromagnetism.
%Whenever a conductor that is carrying some current is placed in an external
%magnetic field a force will be experienced by it. This force generated is
%proportional to the current flowing in the conductor and also on the 
%strength of the external magnetic field.
%
% Thus, the step response of armature controlled DC Motor was observed.