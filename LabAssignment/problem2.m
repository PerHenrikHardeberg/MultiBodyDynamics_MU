clear; close all; clc;

s1am = [2,-3]'; % Body 1
s2bm = [-1, 2]'; % Body 2

r1 = [6, 4]';
phi1 = deg2rad(30);
r2 = [-3, 7]';
phi2 = deg2rad(60);


d = r1 + local2global(s1am,phi1) - r2 - local2global(s2bm,phi2)
d_lenght = sqrt(d(1)^2+d(2)^2); %Length of d





