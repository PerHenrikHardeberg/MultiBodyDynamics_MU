clc; close all;

filename = 'figure3';



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

%CALCULATIONS

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

plot(tlist,xPlot,'LineWidth', LW)
hold on
plot(tlist,vPlot,'LineWidth', LW)
plot(tlist,aPlot,'LineWidth', LW)
plot(time, v, '*r')
legend('x','v','a','Given points', 'Interpreter', 'latex', Location='northwest')


grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all