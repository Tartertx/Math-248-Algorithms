%% Preamble
% Program name:     checkerboard.m
% Author:           Timothy Tarter
% Due Date:         09/04/2025
% Purpose:          Make a checkerboard.

%% Variables
% n is the size of the nxn matrix
% A is the matrix

%% Code

% set matrix size and compute
n = 6;
A = zeros(n);
for i = 1:n
    for j = 1:n
        A(i,j) = mod(i+j,2);
    end
end

% display it
disp(A)