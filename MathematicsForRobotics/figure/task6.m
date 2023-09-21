clc; close all;

filename = 'figure6';



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
pX = [4 5 7 10 11]; %Given points along function
pY = [48 100 294 900 1210]; %Given points along function
% Evaluate f(8)


% 1st order diveded difference
for i=1 : length(pY)-1
    delta_ND(i) = (pY(1+i)-pY(i))/(pX(1+i)-pX(i));
    i = i+1;
end

% 2nd order diveded difference
delta_ND2 = [(97-52)/(7-4),(202-97)/(10-5),(310-202)/(11-7)]
delta_ND3 = [(21-15)/(10-4), (27-21)/(11-5)]

%ADD POINT (13,2028)
delta_ND(5) = (2028-1210)/(13-11);
delta_ND2(4) = (409-310)/(13-10);
delta_ND3(3) = (33-27)/(13-7);

syms x 
%Function y is unchanged with added point
y = 48 + (x-4)*52 + (x-4)*(x-5)*15 + (x-4)*(x-5)*(x-7);
y_8 = double(subs(y, x, 8))
%Point lands good on the function as expexted
y_12 = double(subs(y, x, 12))
xlist = 4 : 0.01 : 13;
ylist= (subs(y, x, xlist));

plot(xlist,ylist, 'LineWidth', LW)
hold on
plot(pX,pY, '*r','LineWidth', LW)
plot(8,y_8, 'ok','LineWidth', LW)
plot(13,2028,'^g','LineWidth', LW)
legend('x(y)','Given points','y(8)','(13, 2028)','Interpreter', 'latex', Location='northwest')




grid on;
xlabel('$x$', 'interpreter', 'latex')
ylabel('y', 'interpreter', 'latex')
%title('')
box on;
set(gca, 'FontName', font)
filename1 = append(filename, '.eps');
saveas(gcf,[output_path,filename1], 'epsc') % gcf = get current figure
%close all