% Design 1
clear 
clc

syms L Rs R1 G g m
syms z1 z2 z3
syms fz(z1,z2,z3)  gz(z1,z2,z3) hz(z1)

fz = [z2; g-G*z3^2/(m*z1^2); -(R1+Rs)*z3/L ];
gz = [0;0;1/L];
hz = z1;

z = [z1 z2 z3];
Lfhz = diffM( hz,z )*fz;
Lghz = diffM( hz,z )*gz;

Lf2hz = diffM( Lfhz,z )*fz;
LgLfhz = diffM( Lfhz,z )*gz;

Lf3hz = diffM( Lf2hz,z )*fz;
LgLf2hz = diffM( Lf2hz,z )*gz;

%% Simulink Simulation
z0 = [0.001 0 0.2];   % initial state    
wn = 20;
p = conv(conv( [1 wn],[1 wn] ),[1 wn]);
k3 = p(2)
k2 = p(3)
k1 = p(4)

sim( 'Ex1Mdl',1 )

% plot figures
figure
h = plot(Tout,1000*Yout(:,1),Tout,1000*Yout(:,2),'r--');
h(1).LineWidth = 1.5;
h(2).LineWidth = 1.5;
legend('Actual output','Desired output')
xlabel('Time / s')
ylabel( 'The ball position / mm' )
figure
h2 = plot(Tout,Vout);
h2.LineWidth = 1.5;
xlabel('Time / s')
ylabel( 'The voltage V' )
