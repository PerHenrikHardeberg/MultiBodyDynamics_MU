
clear; close all; clc;

%task 1

pX = [1, 2,3,4];
pY = [7,17, 53, 157];

% plot function
x = 1 : 0.001 : 4;
p = (x-1)/1;
P3_x = 7+10.*p + p.*(p-1).*26/(2*1) + p.*(p-1).*(p-2)*42/(3*2*1);

plot(pX,pY, '*r');
hold on
xlim([0.7 4.2]);
ylim([5 160]);
plot(x,P3_x, 'b')
legend('Point given in task', 'P_3(x)', Location='northwest')
%NB: generated .eps figure in other script

%% NewtonBackwards task 2 
clear; close all; clc;
pX = [-0.75, -0.5, -0.25, 0]; %Given points along function
pY = [-0.0718125,-0.02475, 0.3349375, 1.10100]; %Given points along function

%Calculate the Delta1Y
% From self made function
Delta1Y = delta(pY);
%calculate the delta^2Y
Delta2Y = delta(Delta1Y);
%calculate the delta^3Y
Delta3Y = delta(Delta2Y);
xList = -0.75 : 0.01 : 0;
x = xList;
p = x./0.25;
P_3_x = pY(4) + Delta1Y(3).*p + Delta2Y(2).*p.*(p+1)/(2*1) + Delta3Y(1).*p.*(p+1).*(p+2)/(3*2);
%Specific point
xGiven = -1/3;
x = xGiven;
p = x./0.25;
P_3_givenX = pY(4) + Delta1Y(3)*p + Delta2Y(2).*p.*(p+1)/(2*1) + Delta3Y(1)*p.*(p+1).*(p+2)/(3*2)

plot(pX,pY, '*r');
hold on
plot(xList,P_3_x, 'b')
plot(xGiven, P_3_givenX, 'ok')
legend('Point given in task', 'P_3(x)','Point x = -1/3', Location='northwest')
%NB: generated .eps figure in other script

%% lagrange task 3 
clear; close all; clc;

time = [0, 1, 3, 4]; % given time
v = [21, 15, 12, 10]; %given velocities at corresponding time

syms t

p1 = (t-1)*(t-3)*(t-4)*21/((-1*-3*-4));
p1 = expand(p1);

p2 = (t-0)*(t-3)*(t-4)*15/((1*(1-3)*(1-4)));
p2 = expand(p2);

p3 = (t-0)*(t-1)*(t-4)*12/(((3-0)*(3-1)*(3-4)));
p3 = expand(p3);

p4 = (t-0)*(t-1)*(t-3)*10/(((4-0)*(4-1)*(4-3)));
p4 = expand(p4);

v_t = p1+p2+p3+p4
x_t = int(v_t,t)
a_t = diff(v_t,t)


tlist = 0 : 0.01 : 4;
%from symbolic function to plotable values
vPlot = subs(v_t, t, tlist);
xPlot = subs(x_t, t, tlist);
aPlot = subs(a_t, t, tlist);

plot(tlist,xPlot)
hold on
plot(tlist,vPlot)
plot(tlist,aPlot)
plot(time, v, '*r')
legend('x','v','a','Given points', Location='northwest')

x_4_s = double(subs(x_t, t, 4))
a_4_s = double(subs(a_t, t, 4))
%NB: generated .eps figure in other script

%% Newton divided task 4 
clear; close all; clc;
pX = [5 7 11 13 17]; %Given points along function
pY = [150 392 1452 2366 5202]; %Given points along function

% 1st order diveded difference
for i=1 : length(pY)-1
    delta_ND(i) = (pY(1+i)-pY(i))/(pX(1+i)-pX(i));
    i = i+1;
end

% 2nd order diveded difference
delta_ND2 = [(265-121)/(11-5),(457-265)/(13-7),(709-457)/(17-11)]

% 3rd order 
delta_ND3 = [(32-24)/(13-5),(42-32)/(17-7)] 
% 3th order = 0
syms x
y = 150 + (x-5)*121 + (x-5)*(x-7)*24+ (x-5)*(x-7)*(x-11)*1;
y = expand(y);
xlist = 5 :0.01 : 17;
yPlot = subs(y, x, xlist);

y_9 = subs(y, x, 9);
plot(xlist,yPlot)
hold on
plot(pX,pY, '*r')
plot(9,y_9, 'ok')
legend('y(t)','Given points','y(9)', Location='northwest')
%NB: generated .eps figure in other script

%% Lagranges task 5 
clear; close all; clc;
pX = [30 34 38 42]; %Given points along function
pY = [-30 -13 3 18]; %Given points along function

syms y
x1 = (y+13)*(y-3)*(y-18)*30/((-30+13)*(-30-3)*(-30-18));
x2 = (y+30)*(y-3)*(y-18)*34/((-13+30)*(-13-3)*(-13-18));
x3 = (y+30)*(y+13)*(y-18)*38/((3+30)*(3+13)*(3-18));
x4 = (y+30)*(y+13)*(y-3)*42/((18+30)*(18+13)*(18-3));
x = x1+x2+x3+x4;

x = expand(x);

x_0 = double(subs(x, y, 0));
ylist = -30 : 0.01 :18;
xPlot= (subs(x, y, ylist));

plot(xPlot,ylist)
hold on
plot(pX,pY, '*r')
plot(x_0,0, 'ok')
legend('x(y)','Given points','x(0)', Location='northwest')
%NB: generated .eps figure in other script

%% Newton divided task 6
clear; close all; clc;
pX = [4 5 7 10 11]; %Given points along function
pY = [48 100 294 900 1210]; %Given points along function
% Evaluate f(8)


% 1st order diveded difference
for i=1 : length(pY)-1
    delta_ND(i) = (pY(1+i)-pY(i))/(pX(1+i)-pX(i));
    i = i+1;
end

% 2nd order diveded difference
delta_ND2 = [(97-52)/(7-4),(202-97)/(10-5),(310-202)/(11-7)]
delta_ND3 = [(21-15)/(10-4), (27-21)/(11-5)]

%ADD POINT (13,2028)
delta_ND(5) = (2028-1210)/(13-11);
delta_ND2(4) = (409-310)/(13-10);
delta_ND3(3) = (33-27)/(13-7);

syms x 
%Function y is unchanged with added point
y = 48 + (x-4)*52 + (x-4)*(x-5)*15 + (x-4)*(x-5)*(x-7);
y_8 = double(subs(y, x, 8))
%Point lands good on the function as expexted
y_12 = double(subs(y, x, 12))
xlist = 4 : 0.01 : 13;
ylist= (subs(y, x, xlist));

plot(xlist,ylist)
hold on
plot(pX,pY, '*r')
plot(8,y_8, 'ok')
plot(13,2028,'^g')
legend('x(y)','Given points','y(8)','(13, 2028)', Location='northwest')
%NB: generated .eps figure in other script


