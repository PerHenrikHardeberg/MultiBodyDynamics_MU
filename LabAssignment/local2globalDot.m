function [glob_vectorDot] = local2globalDot(local_vector, phi, phiDot)
% Takes input in radians from input;
%Brot is the matrix part of the derivative of Arot

%ArotDot = phiDot*Brot. phiDot because of chain rule

glob_vectorDot = phiDot*[-cos(phi), -sin(phi);
    sin(phi), -cos(phi)]*local_vector; 
end