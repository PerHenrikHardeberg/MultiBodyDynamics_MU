clear; close all; clc;

s1qm = [1.2, -0.5]';
r1 = [3, 2]';
r1Dot = [-0.4, 1.1]';
r1DotDot = [-0.2, -0.3]';
phi1 = pi/3;
phi1Dot = 0.2*pi;
phi1DotDot = -0.1*pi;

%Position:
rQ = r1 + local2global(s1qm,phi1);
%Velocity:
rQdot = r1Dot + local2globalDot(s1qm, phi1, phi1Dot);
%Acceleration:
rQDotDot = r1DotDot + local2globalDotDot(s1qm,phi1,phi1Dot,phi1DotDot);

