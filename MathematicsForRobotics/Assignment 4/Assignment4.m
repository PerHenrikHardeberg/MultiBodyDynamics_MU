clear; clc; close all;
%Task 1 see PDF
%Task 2 see PDF

%Task 3

x = [40 50 60 70 80];
yLow = [1, 0.7, 0.5, 0.3, 0];
yHigh = [0 0.2 0.4 0.7 1];

%a)
yNotLow = 1-yLow ;%  0    0.3000    0.5000    0.7000    1.0000
%b)
yNotHigh = 1-yHigh; %1.0000    0.8000    0.6000    0.3000         0
%C)
notLow_notHigh = max(yNotLow,yNotHigh)%Union = 1.0000    0.8000    0.6000    0.7000    1.0000 

plot(x,yLow)
hold on
plot(x,yHigh)
plot(x,yNotLow,'--')
plot(x,yNotHigh,'--')
plot(x,notLow_notHigh)
grid on
xlabel("Temperature")
ylabel("u(x)")
legend("Low","High", "Not Low", "Not High","Not Low U Not High")
%a)




