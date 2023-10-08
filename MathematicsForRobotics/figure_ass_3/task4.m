clc; close all;

filename = 'figure4';



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


x = 1.6 : 0.01 : 1.9;
y = sin(x);

xGiven = [1.7 1.74 1.78 1.82 1.86];
yGiven = [0.9916 0.9857 0.9781 0.9691 0.9584];


x_investigate = 1.74;
f_x_pluss_h = yGiven(3);
f_x_minus_h = yGiven(1);
h = 0.04;
f_diff_x = (f_x_pluss_h-f_x_minus_h)/(2*h);

tangent = f_diff_x.*(x-1.74)+0.9857;

plot(x,y,'LineWidth', LW)
hold on
plot(xGiven, yGiven, '*','LineWidth', LW)
plot(x,tangent,'LineWidth', LW)
legend('sin(x)', 'Given points', 'Tangent', 'Interpreter', 'latex')

grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all