clc; close all;

filename = 'figure7';



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

%change itterations to get more accuracy
H = [0.5 0.001];
for j = 1:2
h = H(j);
itterations = 1/h;
%initial:
i = 1;
x(i) = 0;
y(i) = 1;

for i = 1 : itterations
x(i+1) = x(i) +h;
k1(i) = y(i)*x(i)^2 - 1.2*y(i);
k2(i) = (y(i)+k1(i)*h)*(x(i+1)) ^2 - 1.2*(y(i)+k1(i)*h);
y(i+1) = y(i) + (k1(i)+k2(i))*h/2;
end
plot(x,y,'LineWidth', LW)
hold on
end
xlim([0,1])

legend('Heuns Method $h = 0.5$', 'Heuns Method $h = 0.001$', 'Interpreter', 'latex')
% PLOTTING

grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all