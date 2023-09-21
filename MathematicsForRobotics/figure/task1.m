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

pX = [1, 2,3,4];
pY = [7,17, 53, 157];

% plot function
x = 1 : 0.001 : 4;
p = (x-1)/1;
P3_x = 7+10.*p + p.*(p-1).*26/(2*1) + p.*(p-1).*(p-2)*42/(3*2*1);


%xlim([0.7 4.2]);
%ylim([5 160]);


%task 1

pX = [1, 2,3,4];
pY = [7,17, 53, 157];

% plot function
x = 1 : 0.001 : 4;
p = (x-1)/1;
P3_x = 7+10.*p + p.*(p-1).*26/(2*1) + p.*(p-1).*(p-2)*42/(3*2*1);

plot(pX,pY, '*r','LineWidth', LW)
hold on
xlim([0.7 4.2]);
ylim([5 160]);
plot(x,P3_x, 'b','LineWidth', LW)


legend('Point given in task', 'P_3(x)', 'Interpreter', 'latex', Location='northwest')
grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all