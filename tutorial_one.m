clear; close all; clc;

%1)

a = [1.5;0.4;0];
b = [-0.6;1.2;0];


alpha = 5;

c= alpha*b +a; 
%b)
dotProduct = dot(a,b);

%c)
crossproduct = cross(a,b);
%d)
lenght_a = sqrt(a(1)^2+a(2)^2)
lenght_a_2 = norm(a)
lenght_b = sqrt(b(1)^2+b(2)^2);
theta = acosd(dotProduct/(lenght_a*lenght_b))

%e) lenght_a, lenght_b

%f) %Unit vector
u_a = a/lenght_a;
u_b = b/lenght_b;


%2)
%a)
A = [3, -4, -10; 
    5, 6,6;
    8, -1,-7];



B = [10 -10 -16 15;
    5 -9 3 -4;
    12 6 17 -3];
%a)
A*B
%b)
B'*A
%C)
A'*B
%D) cant be doine
%e)
%inv(A*B)

rank(A)
rank(B)



eye(4)*7
% task 4

D = zeros(4);
D(2:4,1:3) = A
D(1:4,4)= [1,2,3,4]'

inv(D)
det(D)
trace(D)
norm(D)
rank(D)
eig(D)
poly(D)
cond(D)
sqrtm(D)

% 7) LU
a = [1,2,6
    4,5,6
    7,8,9];
[L,U] = lu(a);

% task 8)
clear;


A = [4 12 -16;
12 37 -43;
-16 -43 98]

R = chol(A)

test = R'*R %test = A

%9) symbolic
syms x y
eq = 9*x^3 + 2*x^2-3*x*y + 5*x*y^2+10*y^3
%b)
eq_diff_x =diff(eq,x)
%c)
eq_diff_y = diff(eq,y)

%10)
%plot(test,'*')


%11) Cumposory:
pic = imread('rashistan.jpg');
pic = rgb2gray(pic);
pic = im2double(pic);
pic = pic';
pic = pic(500:4100,1:1300);
figure
subplot(1,4,1);
imshow(pic)

pic2 = pic;
[U2,S2,V2] = svdsketch(pic2,1e-2);
pic2 = U2*S2*V2';
pic3 = pic;
[U3,S3,V3] = svdsketch(pic3,10e-2);
pic3 = U3*S3*V3';
pic4 = pic;
[U4,S4,V4] = svdsketch(pic4,50e-2);
pic4 = U4*S4*V4';

% Not totally  sure about this one...
subplot(1,4,2);
imshow(pic2)
subplot(1,4,3);
imshow(pic3)
subplot(1,4,4);
imshow(pic4)


