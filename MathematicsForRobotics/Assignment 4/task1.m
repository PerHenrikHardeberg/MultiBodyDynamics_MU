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
x = [40 50 60 70 80];
yLow = [1, 0.7, 0.5, 0.3, 0];
yHigh = [0 0.2 0.4 0.7 1];

%a)
yNotLow = 1-yLow ;%  0    0.3000    0.5000    0.7000    1.0000
%b)
yNotHigh = 1-yHigh; %1.0000    0.8000    0.6000    0.3000         0
%C)
notLow_notHigh = max(yNotLow,yNotHigh)%Union = 1.0000    0.8000    0.6000    0.7000    1.0000 

plot(x,yLow,'LineWidth', LW)
hold on
plot(x,yHigh)
plot(x,yNotLow,'--','LineWidth', LW)
plot(x,yNotHigh,'--','LineWidth', LW)
plot(x,notLow_notHigh,'LineWidth', LW)
grid on
xlabel("Temperature", 'interpreter', 'latex')
ylabel("u(x)" ,'interpreter', 'latex')
legend("Low","High", "Not Low", "Not High","Union", 'interpreter', 'latex','Location','eastoutside')
%a)


box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
close all