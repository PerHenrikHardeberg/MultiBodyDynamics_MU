clear; close all; clc;
% Approximate using sin(n*omega_0*t) sin(m*omega_0*t)
% Given signal :    1, 0<t<pi
                 % -1, pi<t<2*pi
t = 0 :0.01: 2*pi;
sqwave = 1*square(t);
plot(t,sqwave,LineWidth=2)
ylim([-1.5 1.5])
xlim([0 2*pi])

for r = 1:2:1000 %Skip even numbers
F(r,:) = 4/(r*pi)*sin(r*t);
hold on
end
plot(t,sum(F), LineWidth=1)

% DIDTNT MAKE IT SEE SOLUTION TEACHER
%%
clear; close all; clc;
t = 0 :0.01: 2*pi;
sqwave = 1*square(t);
plot(t,sqwave,LineWidth=2)
ylim([-1.5 1.5])
xlim([0 2*pi])

%F1
r= 1
F1 = 4/(r*pi)*sin(r*t);

r= 3
F3 = 4/(r*pi)*sin(r*t);

r= 5
F5 = 4/(r*pi)*sin(r*t);
r= 7
F7 = 4/(r*pi)*sin(r*t);
r= 9
F9 = 4/(r*pi)*sin(r*t);


Fplot1 = F1;
Fplot3 = F1+F3;
Fplot5 = F1+F3+F5;
Fplot7 = F1+F3+F5+F7;
Fplot9 = F1+F3+F5+F7+F9;

hold on
plot(t,Fplot1)
plot(t,Fplot3)
plot(t,Fplot5)
plot(t,Fplot7)
plot(t,Fplot9)















