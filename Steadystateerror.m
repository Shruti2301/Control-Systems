 %% Steady State Error Minimisation
%%
clc;
clear all;
close all;
%% TYPE 0
N1 = 1;
D1 = conv([1 2],[1 3]);
Sys1 = tf(N1,D1)
X1 = feedback(Sys1,1)

figure()
subplot(211)
stepplot(X1);
subplot(212)
impulse(X1);

%% TYPE 1
N2 = 1;
D2 = conv([1 0] ,D1);
Sys2 = tf(N2,D2)
X2 = feedback(Sys2,1)

figure()
subplot(211)
stepplot(X2);
subplot(212)
impulse(X2);

%% TYPE 2
N3 = conv([1 1],[1 4]);
D3 = conv([1 0 0] ,D1);
Sys3 = tf(N3,D3)
X3 = feedback(Sys3,1)

figure()
subplot(211)
stepplot(X3);
subplot(212)
impulse(X3)

%% Without K
N4 = conv([1 3],[1 5]);
X4 = conv([1 7], [1 8]);
D4 = conv([1 0], X4);
Sys4 = tf(N4,D4);
G4 = feedback(Sys4,1);

figure() 

t = 0:0.1:50;
u = t;
[y,t,x] = lsim(Sys4,u,t);

plot(t,y,'b',t,u,'r')
xlabel('Time');
ylabel('Amplitude')
title('Unit Ramp without K');
legend('With K','Input');

%% With K
K = 37.33;

Num1 = conv([1 3],[1 5]);
Num2 = conv([0 0 K], Num1);
Den3 = conv([1 7],[1 8]);
Den4 = conv([1 0], Den3);
Sys = tf(Num2,Den4);
Sys1 = feedback(Sys,1,-1)

t = 0:0.1:50;
u =t;
[y1,t,x] = lsim(Sys1,u,t);

figure()
plot(t,y1,'b',t,u,'r','Linewidth',1.8)
axis([32.3,34.5,32.2,34.5])
xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp with K');
legend('With K','Input');