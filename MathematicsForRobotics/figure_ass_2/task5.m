clc; close all;

filename = 'figure5';



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
pX = [30 34 38 42]; %Given points along function
pY = [-30 -13 3 18]; %Given points along function

syms y
x1 = (y+13)*(y-3)*(y-18)*30/((-30+13)*(-30-3)*(-30-18));
x2 = (y+30)*(y-3)*(y-18)*34/((-13+30)*(-13-3)*(-13-18));
x3 = (y+30)*(y+13)*(y-18)*38/((3+30)*(3+13)*(3-18));
x4 = (y+30)*(y+13)*(y-3)*42/((18+30)*(18+13)*(18-3));
x = x1+x2+x3+x4;

x = expand(x);

x_0 = double(subs(x, y, 0));
ylist = -30 : 0.01 :18;
xPlot= (subs(x, y, ylist));

% PLOTS
plot(xPlot,ylist,'LineWidth', LW)
hold on
plot(pX,pY, '*r','LineWidth', LW)
plot(x_0,0, 'ok','LineWidth', LW)
legend('x(y)','Given points','x(0)', 'Interpreter', 'latex', Location='northwest')
%NB: generated .eps figure in other script



grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all