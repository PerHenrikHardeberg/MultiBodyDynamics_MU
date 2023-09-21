function [B] = Brot(phi)
% Takes input in radians from input;
%Brot is the matrix part of the derivative of Arot

%ArotDot = phiDot*Brot. phiDot because of chain rule

B = [-cos(phi), -sin(phi);
    sin(phi), -cos(phi)]; 
end