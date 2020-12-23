function X = domi(xo,yo,zo,T)
sigma = 10;
rho = 28;
beta = 8/3;
F = @(t,Y) [sigma*(Y(2)-Y(1));rho*Y(1)-Y(2)-Y(1)*Y(3);Y(1)*Y(2)-beta*Y(3)] ;
CI = [xo;yo;zo];
[t,Y]=ode45(F,T,CI);
X=[t,Y];
