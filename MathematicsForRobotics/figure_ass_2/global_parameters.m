%% Global plotting parameters

%For subplots, use H and W under and subfigure them in latex

font = 'Times New Roman';
general_font_size = 11
title_font_size = 14


% Combined plot (1x2) will have this name, the two separate plots will have
% extension _sep_x.eps
%filename = 'omega_A_plot';

% Output path for .eps file
output_path = '';

% % For two figures next to each other, use w17xh6 an 0.5/textwidt in each subplot
% % 
% H_frame = 6;
% W_frame = 17;            % for two figures next to each other, use w17xh6 an 0.5/textwidt in each subplot
% 


% % %Long wide picture, height is tunale
 W_frame = 36;           % Final width of the frame [cm] of the plot in your document
 H_frame = 7; %7  %4 for torque
% 

% 
% % % %Subplot with 3 plots on side of each other
% H_frame = 5; %5           % Subplot with 3 images on side of each other
% W_frame = 10;  %10         % Subplot with 3 images on side of each other
% % 
% % 

% Number of rows and columns for the figure (for subplots)
rows = 1; %
cols = 1; % Doesent seem to help anything??

% Select thin or thick linewidth
LW_thin = false;

top_margin = 0.4;
bottom_margin = 0.1;