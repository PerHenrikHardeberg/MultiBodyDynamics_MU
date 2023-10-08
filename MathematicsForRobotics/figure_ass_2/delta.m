function [delta] = delta(y)
% y = list of poins to find deltas from
for i=1 : length(y)-1
    delta(i) = y(1+i)-y(i);
end
end