clc; close all;

filename = 'figure1';



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if(LW_thin)
LW = 1;             % Line width of lines on plot
else
LW = 2;             % Line width of lines on plot
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig = figure;          % Handle for the figure
LLC_frame = [200,10];      % Position of lower left corner of the frame on the screen [cm]
fig.Units = 'centimeters';
fig.Position = [LLC_frame W_frame/2 H_frame]; %Specifying the width and height of the frame
hold on


%task 1

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
plot(c1,f_c1, '*','LineWidth', LW)
plot(c2,f_c2, '*','LineWidth', LW)
plot(c3,f_c3, '*','LineWidth', LW)
plot(c4,f_c4, '*','LineWidth', LW)
plot(c5,f_c5, '*','LineWidth', LW)
plot(c6,f_c6, '*','LineWidth', LW)
grid on
xlim([3.2 3.6])
legend('f(x)', '(c2,f(c2))','(c3,f(c3))','(c3,f(c3))','(c4,f(c4))','(c5,f(c5))','(c6,f(c6))','Interpreter', 'latex')

grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
close all