clear; close all; clc;

m = 5; %Kg
J = 3.5; %kg-m^2

fg = [0, -5*9.81]';
f = [1.2, 0.5, 0]';
tau = -0.8; %N torque

s1pm = [1.6, 0.8,0]'; %m
r1 = [2, 1.6]';

M = eye(3);
M = m*M;
M(3,3) = J; %Completing the M matrix with J

% a) M*[r1DotDot,phiDotDot]' = [f+fg;tau + cross(s1pm,f)]

%b)
moment = cross(s1pm,f)
momentSum = tau + moment(3)
%%
%qDotDot = inverse(M)*[f+fg; tau+momentSum]

% NO TIME FOR THIS


