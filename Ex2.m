%Design2
clear 
clc

%% plant paramerters, First Group
l = 0.8;
m = 0.5;
k = 0;

sim( 'Ex2Mdl',5 )

% plot figures
figure
h = plot(Tout,ThetaOut(:,1));
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta / rad' )
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
figure
h = plot(Tout,DThetaOut(:,1));
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta'' / rad' )


%% plant paramerters, 2nd Group
l = 1.2;
m = 1.5;
k = 0;

sim( 'Ex2Mdl',5 )

% plot figures
figure
h = plot(Tout,ThetaOut(:,1));
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta / rad' )
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
figure
h = plot(Tout,DThetaOut(:,1));
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta'' / rad' )

%% plant paramerters, 2nd Group
l = 1.2;
m = 1.5;
k = 0.2;

sim( 'Ex2Mdl',5 )

% plot figures
figure
h = plot(Tout,ThetaOut(:,1));
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta / rad' )
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
figure
h = plot(Tout,DThetaOut(:,1));
hold on
plot(Tout([1 end]),[0.01 0.01],'k--');
plot(Tout([1 end]),-[0.01 0.01],'k--');
h.LineWidth = 1;
xlabel('Time / s')
ylabel( '\theta'' / rad' )