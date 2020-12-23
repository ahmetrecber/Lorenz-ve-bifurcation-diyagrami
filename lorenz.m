sigma=10; beta=8/3; ro=28;  % Your data
ICs=[5, 5, 5];              % Your data   
t=[0, 20];
OPTs = odeset('reltol', 1e-6, 'abstol', 1e-8);
[time, fOUT]=ode45(@(t, x)([-sigma*x(1)+sigma*x(2);  -x(2)-x(1).*x(3); -beta*x(3)+x(1).*x(2)-beta*ro]), t, ICs, OPTs);
close all 
figure 
plot3(fOUT(:,1), fOUT(:,2), fOUT(:,3)), grid
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title('LORENZ functions x(t) vs. y(t) vs. z(t)')
axis tight
figure 
comet3(fOUT(:,1), fOUT(:,2), fOUT(:,3))
figure
subplot(311)
plot(time, fOUT(:,1), 'b','linewidth', 3), grid minor
title 'LORENZ functions x(t), y(t), z(t)', xlabel 'time', ylabel 'x(t)'
subplot(312)
plot( time', fOUT(:,2), 'r', 'linewidth', 2 ), grid minor
xlabel 'time', ylabel 'y(t)'
subplot(313)
plot(time, fOUT(:,3),'k', 'linewidth', 2), grid minor, xlabel 'time', ylabel 'z(t)'
figure
plot(fOUT(:,1), fOUT(:,2), 'b', 'linewidth', 1.5)
grid minor, title('LORENZ functions'), xlabel('x(t)'), ylabel 'y(t)'
axis square
figure
plot(fOUT(:,1), fOUT(:,3), 'k', 'linewidth', 1.5)
grid minor, title('LORENZ functions'), xlabel('x(t)'), ylabel 'z(t)'
axis square
figure
plot(fOUT(:,2), fOUT(:,3), 'm', 'linewidth', 1.5)
grid minor, title('LORENZ functions'), xlabel('y(t)'), ylabel 'z(t)'
axis square