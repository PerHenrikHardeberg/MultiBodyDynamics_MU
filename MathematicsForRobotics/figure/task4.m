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

%CALCULATIONS
pX = [5 7 11 13 17]; %Given points along function
pY = [150 392 1452 2366 5202]; %Given points along function

% 1st order diveded difference
for i=1 : length(pY)-1
    delta_ND(i) = (pY(1+i)-pY(i))/(pX(1+i)-pX(i));
    i = i+1;
end

% 2nd order diveded difference
delta_ND2 = [(265-121)/(11-5),(457-265)/(13-7),(709-457)/(17-11)]

% 3rd order 
delta_ND3 = [(32-24)/(13-5),(42-32)/(17-7)] 
% 3th order = 0
syms x
y = 150 + (x-5)*121 + (x-5)*(x-7)*24+ (x-5)*(x-7)*(x-11)*1;
y = expand(y);
xlist = 5 :0.01 : 17;
yPlot = subs(y, x, xlist);

y_9 = subs(y, x, 9);

% PLOTS
plot(xlist,yPlot,'LineWidth', LW)
hold on
plot(pX,pY, '*r','LineWidth', LW)
plot(9,y_9, 'ok','LineWidth', LW)
legend('y(t)','Given points','y(9)','Interpreter', 'latex', Location='northwest')
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