function [delta_ND] = delta_ND_1stOrder(x,y)
% y = list of poins to find deltas from Newton divided differece
for i=1 : length(y)-1
    delta_ND(i) = (y(1+i)-y(i))/(x(1+i)-x(i));
    i = i+1;
end
end