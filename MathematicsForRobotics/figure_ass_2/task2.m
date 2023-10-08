clc; close all;

filename = 'figure2';



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


pX = [-0.75, -0.5, -0.25, 0]; %Given points along function
pY = [-0.0718125,-0.02475, 0.3349375, 1.10100]; %Given points along function

%Calculate the Delta1Y
% From self made function
Delta1Y = delta(pY);
%calculate the delta^2Y
Delta2Y = delta(Delta1Y);
%calculate the delta^3Y
Delta3Y = delta(Delta2Y);
xList = -0.75 : 0.01 : 0;
x = xList;
p = x./0.25;
P_3_x = pY(4) + Delta1Y(3).*p + Delta2Y(2).*p.*(p+1)/(2*1) + Delta3Y(1).*p.*(p+1).*(p+2)/(3*2);
%Specific point
xGiven = -1/3;
x = xGiven;
p = x./0.25;
P_3_givenX = pY(4) + Delta1Y(3)*p + Delta2Y(2).*p.*(p+1)/(2*1) + Delta3Y(1)*p.*(p+1).*(p+2)/(3*2)

% PLOTTING

plot(pX,pY, '*r','LineWidth', LW)
hold on
plot(xList,P_3_x, 'b','LineWidth', LW)
plot(xGiven, P_3_givenX, 'ok','LineWidth', LW)

legend('Point given in task', 'P_3(x)','Point x = -1/3', 'Interpreter', 'latex', Location='northwest')
grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all