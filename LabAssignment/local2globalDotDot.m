function [glob_vectorDotDot] = local2globalDotDot(local_vector, phi, phiDot, phiDotDot)
% Takes input in radians from input;
%Brot is the matrix part of the derivative of Arot

%ArotDot = phiDot*Brot. phiDot because of chain rule

glob_vectorDotDot = phiDotDot*[-cos(phi), -sin(phi);
    sin(phi), -cos(phi)]*local_vector -phiDot^2*[cos(phi), -sin(phi);
    sin(phi), cos(phi)]*local_vector; 
end