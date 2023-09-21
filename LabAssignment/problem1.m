clear; close all; clc;

r1 = [3.2, 2.8]';
phi = 45; %deg
phi = deg2rad(45);
s1am = [-1.1 -0.4]'; % LOCAL
s1bm = [-1.9, 2.3]'; % LOCAL
s1c = [5.3, 4.0]';%GLOBAL
Arot = Arot(phi);

%a)
r1b = r1 + local2global(s1bm,phi);
%b)
s1b = local2global(s1bm,phi);
%c)
S1c = local2global(s1c, -phi) - r1;
