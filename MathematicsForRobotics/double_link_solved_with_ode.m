clear; close all; clc;
%Given

tSpan = 0 : 0.01: 5;

%Initial contitions:
initial = [0,0,0,0];%theta1, theta2, theta1Dot, theta2Dot
q = initial;
t = [0 0];
[t, fval_out] = ode45(@(t,fval_out) twolink_equations(t,fval_out),tSpan,initial);
%[t,y] = ode45(@(t,y) secondordersolver(t,y),tlist,y_0);

function fVal = (twolink_equations(t, q)
Tau = [0,0];
m1 = 1;
m2 = 1;
l1 = 1;
l2 = 1;
r1 = l1/2;
r2 = l2/2;
I1 = 1/12;
I2 = 1/12;
g = 9.81;


theta1 = q(1);
theta2 = q(2);
theta1Dot = q(3); 
theta2Dot = q(4);

a = I1 + I2 + m1*r1^2 + m2*(l1^2+r1^2);
b = m2*l1*r2;
c = I2+m2*r2^2;

d1 = a + 2*b*cos(theta2);
d2 = c + b*cos(theta2);
d3 = d2;
d4 = c;

M = [d1, d2;
    d3, d4];

c1 = -m2*l2*r2*sin(theta2)*theta2Dot;
c2 = -m2*l2*r2*sin(theta2)*(theta1Dot+theta2Dot);
c3 = -m2*l2*r2*sin(theta2)*theta1Dot;
c4 = 0;

C = [c1, c2;
    c3, c4];

g1 = m2*g*(l1*cos(theta1)+r2*cos(theta1+theta2) + m1*g*r1*cos(theta1));
g2 = m2*g*r2*cos(theta1 + theta2);

G = [g1;g2];

fVal = M^-1*(Tau-C-G);

end

