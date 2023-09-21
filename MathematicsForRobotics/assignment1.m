clear; close all; clc;

% TASK 1
A = [1 1 1;
    3 1 -3;
    1 -2 -5];
b = [1;5;10];

x = A\b; % Kontroll LU decomposition solving correct

% Do it step by step matlab:
[l, U]= lu(A);

%Ly = b
y = l\b;
% Ux = y
x = U\y; %same answer as on paper

%% Task 2;
clear; clc; close all;


% Find eigenvalues:

A = [6 15 55;
    15 55 225;
    55 225 979];
b = [76;295;1259];

lambda = eig(A);

L = chol(A) % Gives what I call L' on paper, so have to use opposite 
y = L'\b; % y = L\b on paper

% L'*x = y 
x = L\y % x = L'\y on paper
x_test = A\b % OK


%% Task 3;
clear; clc; close all;

A = [1 1 1;
    1 2 3;
    2 3 4]; 
b = [2; 5; 11];

x = A\b; % OK


%% Task 4;
clear; clc; close all;

A = [1 1 1;
    2 5 7;
    2 1 -1]; 
b = [9; 52 ;0 ];

x = A\b; % OK

%% Task 5;
clear; clc; close all;

X = zeros(5,3);
for i=1:5 % Use 5 for task
if i < 2 %Because gaus-jacobi itterative all x init shall be used in first itteration
x1 = (3+0+0)/4;
x2 = (9-3*0+2*0)/6;
x3 = (-6-0+0)/7;
else
x1 = (3+X(i-1,2)+X(i-1,3))/4;
x2 = (9-3*X(i-1,3)+2*X(i-1,1))/6;
x3 = (-6-X(i-1,2)+X(i-1,1))/7;
end
X(i,1) = x1; %save values
X(i,2) = x2;
X(i,3) = x3;
end



%% Task 8;
clear; clc; close all;

A = [2 -1 1;
    1 0 1;
    3 -1 4];

b = [0.913 0.659;
    0.457 0.330];

normMaxA_1 = norm(A,1);
normMaxB_1 = norm(b,1);

normMaxA_inf = norm(A,"inf");
normMaxB_inf = norm(b,"inf");





