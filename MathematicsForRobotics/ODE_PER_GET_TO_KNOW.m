close all; clear all; clc;

y = @(t,y) 2*t; % function
y_3 = y(3); % Gives answer with the inserted value
tspan = 0 :0.001: 5; 
y0 = 0; % Initial condition
[t,y] = ode45(y, tspan, y0);

plot(t,y)

