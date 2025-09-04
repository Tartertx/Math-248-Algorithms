%% Preamble
% Program name:     pascal.m
% Author:           Timothy Tarter
% Due Date:         09/04/2025
% Purpose:          Build out Pascal's Triangle.

%% Variables
% n is the size of the nxn matrix
% A is the matrix

%% Code

n = 10;
A = zeros(n);
for i = 0:n-1
    for j = 0:n-1
        if j <= i
            A(i+1,j+1) = factorial(i)/(factorial(i-j)*factorial(j));
        end
    end
end

disp(A)