function [A] = Arot(phi)
% Takes input in radians from input;

A = [cos(phi), -sin(phi);
    sin(phi), cos(phi)]; 
end