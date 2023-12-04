clear; close all; clc;

% Given Function
xList = 0:0.1:31;
y = 4.*xList.^2-xList.^3+xList;
plot(xList,y)

% Function to convert binary to decimal
binaryToDecimal = @(binary) sum(binary .* 2.^(numel(binary)-1:-1:0));

% Parameters
num_individuals = 4;
num_bits = 5;
lower_limit = 0;
upper_limit = 31;

% a) Create population
population = [ 6;8;15;19;25;31];
f_x = 4.*population.^2-population.^3+population;
% b) Binary encoding
binary_population = arrayfun(@(x) decimalToBinary(x, num_bits), population, 'UniformOutput', false);

% Display the results
disp('Original Values:');
disp(population);
disp('Binary Encoding:');
disp(binary_population);

%c), calculate p based on fitness values.
% Formula from lecture: fi/sum(fi)
for i =1 :length(f_x)
p(i) = f_x(i)/sum(f_x)
end

sum(p)

%Task d)
%Offsprings from parent 6,5,4,3:
o1 = [1 1 1 1 1];
o2 = [1 1 0 0 1];
o3 = [0 1 0 1 1];
o4 = [1 0 1 1 1];
O1 = binaryToDecimal(o1)
O2 = binaryToDecimal(o2)
O3 = binaryToDecimal(o3)
O4 = binaryToDecimal(o4)

%Task e)
o1 = [1 1 0 0 1];
o2 = [1 1 1 1 1];
o3 = [0 1 0 1 1];
o4 = [1 0 1 1 1];
O1 = binaryToDecimal(o1)
O2 = binaryToDecimal(o2)
O3 = binaryToDecimal(o3)
O4 = binaryToDecimal(o4)

%% 
%r1
clear; clc
P_original = 11.4;cd 
r = 0.2;
q = 2;
Delta = 1.5;

delta = 1-(2*(1-r))^(1/(q+1))
Pmutated = P_original*delta*Delta % = -2.9003


% r2
%r1
clear;
P_original = 11.4;
r = 0.7;
q = 2;
Delta = 1.5;

delta = 1-(2*(1-r))^(1/(q+1))
Pmutated = P_original*delta*Delta % = 2.6773



