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

x(1) = 0;
x(2) = -0.1;
xList = -1 : 0.001: 0.1; 
fPlot = xList.^2+2*sin(xList)+cos(xList);
for i = 2:6
fn = x(i)^2+2*sin(x(i))+cos(x(i));
fn_1 = x(i-1)^2+2*sin(x(i-1))+cos(x(i-1));

x(i+1)= x(i) - fn*(x(i)-x(i-1))/(fn-fn_1);
end 

fPlottest = x.^2+2*sin(x)+cos(x);
plot(xList,fPlot,'LineWidth', LW)
hold on
plot(x,fPlottest, '*','LineWidth', LW)



legend('f(f)','Itterations', 'Interpreter', 'latex', Location='northwest')
grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all