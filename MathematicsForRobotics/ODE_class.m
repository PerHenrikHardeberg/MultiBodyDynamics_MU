clear; close all; clc;

% FIRST ORDER SYSTEM

%given eq = dy/dx = 4*exp(0.8*x)-0.5*y;

% IC: 
y_0 = 2;
%Lets calculate first step with h = 0.5
h = 0.5;
tlist = 0 : h : 10;

%dy_dx = 4*exp(0.8*x)-0.5*y;
t = 0; %start
y = y_0; %start
[t,y] = ode45(@(t,y) firstordersolver(t,y),tlist,y_0);


plot(t(:,1),y(:,1))



% SECOND ORDER SYSTEM
%%
clear; close all; clc;
%Spring damper system:
% m*xDotDot = -kx -c*xDot
% m*xDotDot +c*xDot +kx = 0;

%Reduce order by writing as Verlocity.
% y = {x;xDot}
% dy/dt = {xDot; xDotDot}, xDotDot = (-kx -c*xDot)/(m)

y_0 = [1 0];
h = 0.5;
tlist = 0 : h : 10;

% y = [xDot, xDotDot]
%UNDERSTAND ODE 45 BETTER!!
t = [0 0]
[t,y] = ode45(@(t,y) secondordersolver(t,y),tlist,y_0);

plot(t(:,1),y(:,1)) % x
hold on
plot(t(:,1),y(:,2)) %xDot
legend('x', 'xDot')


% FUNCTIONS
function y1 = firstordersolver(tlist, y0)
y1 = 4*exp(0.8*tlist)-0.5*y0;
end


function fval = secondordersolver(tlist, y0)
c = 10;
k = 15;
m = 20;
x = y0(1); 
xDot =  y0(2);

fval(1,1) = xDot;
fval(2,1) = (-k*x -c*xDot)/(m);
end


