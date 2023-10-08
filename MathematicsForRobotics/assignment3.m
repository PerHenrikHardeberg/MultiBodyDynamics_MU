clear; clc; close all;
% Task 1 Using bisectional method

syms x
xList = 3 : 0.001 : 4;
f = exp(-x)*(3.2*sin(x) - 0.5*cos(x));
f_plot = double(subs(f,x,xList));
a1 = 3;
b1 = 4;
c1 = (b1+a1)/2;
f_c1 = double(subs(f,x,c1))

% f_c1 < 0, therefore
a2 = a1;
b2 = c1;
c2 =(b2+a2)/2;
f_c2 = double(subs(f,x,c2))

% f_c2 > 0, therefore
a3 = c2;
b3 = b2;
c3 =(b3+a3)/2;
f_c3 = double(subs(f,x,c3))

% f_c3 < 0, therefore
a4 = a3;
b4 = c3;
c4 =(b4+a4)/2;
f_c4 = double(subs(f,x,c4))


% f_c4 < 0, therefore
a5 = a4;
b5 = c4;
c5 =(b5+a5)/2;
f_c5 = double(subs(f,x,c5))

%

% f_c5 > 0, therefore
a6 = c5;
b6 = b5;
c6 =(b6+a6)/2;
f_c6 = double(subs(f,x,c6))

plot(xList,f_plot)
hold on
plot(c1,f_c1, '*')
plot(c2,f_c2, '*')
plot(c3,f_c3, '*')
plot(c4,f_c4, '*')
plot(c5,f_c5, '*')
plot(c6,f_c6, '*')
grid on
xlim([3.2 3.6])
legend('f(x)', '(c2,f(c2))','(c3,f(c3))','(c3,f(c3))','(c4,f(c4))','(c5,f(c5))','(c6,f(c6))')
%Plottet to .eps in differnt script

%% Task 2
clear; clc; close all;

syms y2 y3
f1 = 4 - 8*y2 +4*y3 - 2*y2^3;
f2 = 1 - 4*y2 + 3*y3 + y3^2;
F = [f1;f2];

%enteties of  jacobian matrix
Ja = diff(f1,y2); 
Jb = diff(f1,y3);
Jc = diff(f2,y2);
Jd = diff(f2,y3);

J = [Ja, Jb;
    Jc, Jd];
init = [0.5; 0.5];
Values(:,1) = init; 
J1 = subs(J,[y2,y3],init')

for i = 1:6
Jinv = double(subs(J,[y2,y3],Values(:,i)')^-1)
Fn = double(subs(F,[y2,y3], Values(:, i)'))
Values(:,i+1) = Values(:,i) - (Jinv*Fn)
i = i +1;
end

% Check values for y2 and y3
ans = double(subs(F,[y2,y3], Values(:, i)'))

%% Task 3
clear; close all; clc;
x(1) = 0;
x(2) = -0.1;
xList = -1 : 0.001: 0.1; 
fPlot = xList.^2+2*sin(xList)+cos(xList);
for i = 2:6
fn = x(i)^2+2*sin(x(i))+cos(x(i));
fn_1 = x(i-1)^2+2*sin(x(i-1))+cos(x(i-1));

x(i+1)= x(i) - fn*(x(i)-x(i-1))/(fn-fn_1);
end 
x(i)

fPlottest = x.^2+2*sin(x)+cos(x);
plot(xList,fPlot)
hold on
plot(x,fPlottest, '*')

%Plottet to .eps in differnt script
%% task 4
clear; close all; clc;

x = 1.6 : 0.01 : 1.9;
y = sin(x);



xGiven = [1.7 1.74 1.78 1.82 1.86];
yGiven = [0.9916 0.9857 0.9781 0.9691 0.9584];


x_investigate = 1.74;
f_x_pluss_h = yGiven(3);
f_x_minus_h = yGiven(1);
h = 0.04;
f_diff_x = (f_x_pluss_h-f_x_minus_h)/(2*h)

tangent = f_diff_x.*(x-1.74)+0.9857;

plot(x,y)
hold on
plot(xGiven, yGiven, '*')
plot(x,tangent)
legend('sin(x)', 'Given points', 'Tangent')

%% task 5
clear; close all; clc;
% Nothing else given in task, so I choose n=2
n = 2;
a = 8;
b = 30;
h = (b-a)/n;

t = a; %x0
x0 = t;
y0 = 2000*log(140000/(140000-2100*t)) - 9.8*t
t = a+h; %x1
x1 = t;
y1 = 2000*log(140000/(140000-2100*t)) - 9.8*t
t = a+2*h; %x1
x2 = t;
y2 = 2000*log(140000/(140000-2100*t)) - 9.8*t

simps1_3 = h/3 * ((y0+y2)+4*(y1))
%b)
Et = -h^5/90
%c)
prosent = Et/simps1_3 * 100


%% task 6
clear; close all; clc;
% Choose n = 3
n = 3;
a = 8;
b = 30;
h = (b-a)/n;

t = a; %x0
x0 = t;
y0 = 2000*log(140000/(140000-2100*t)) - 9.8*t
t = a+h; %x1
x1 = t;
y1 = 2000*log(140000/(140000-2100*t)) - 9.8*t
t = a+2*h; %x1
x2 = t;
y2 = 2000*log(140000/(140000-2100*t)) - 9.8*t
t = a+3*h; %x1
x3 = t;
y3 = 2000*log(140000/(140000-2100*t)) - 9.8*t

simps3_8 = h*3/8 *(y0+3*y1+3*y2+y3)
% %b)
Et = -h^5*3/80
% %c)
prosent = Et/simps3_8 * 100

%% task 7
% dy_dt = f(x,y) = y*x^2 - 1.2*y = y(i)*x(i)^2 - 1.2*y(i)
clear; close all; clc;

%change itterations to get more accuracy
H = [0.5 0.001];
for j = 1:2
h = H(j);
itterations = 1/h;
%initial:
i = 1;
x(i) = 0;
y(i) = 1;

for i = 1 : itterations
x(i+1) = x(i) +h;
k1(i) = y(i)*x(i)^2 - 1.2*y(i);
k2(i) = (y(i)+k1(i)*h)*(x(i+1)) ^2 - 1.2*(y(i)+k1(i)*h);
y(i+1) = y(i) + (k1(i)+k2(i))*h/2;
end
plot(x,y)
hold on
end

legend('Heuns Method h = 0.5', 'Heuns Method h = 0.001')
% Task 8
clear x
clear y
 %close all; clc;
h = 0.5;
itterations = 1/h;
%initial:
i = 1;
x(i) = 0;
y(i) = 1;
% dy_dt = f(x,y) = y*x^2 - 1.2*y = y(i)*x(i)^2 - 1.2*y(i)




for i = 1 : itterations
x(i+1) = x(i) +h;
K1 = h*(y(i)*x(i)^2 - 1.2*y(i));
K2 = h*((y(i)+K1/2)*(x(i)+h/2)^2 - 1.2*(y(i)+K1/2));
K3 = h*((y(i)+K2/2)*(x(i)+h/2)^2 - 1.2*(y(i)+K2/2));
K4 = h*h*((y(i)+K3)*(x(i+1))^2 - 1.2*(y(i)+K3));
y(i+1) = y(i) + K1/6 + K2/3 + K3/3 + K4/6;
end
plot(x,y)

