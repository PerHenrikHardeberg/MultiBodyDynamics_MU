function [glob_vector] = local2global(local_vector, phi)
% Takes input in radians from input;
%Brot is the matrix part of the derivative of Arot

%ArotDot = phiDot*Brot. phiDot because of chain rule

glob_vector = [cos(phi), -sin(phi);
    sin(phi), cos(phi)]*local_vector; 
end