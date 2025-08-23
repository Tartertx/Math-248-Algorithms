% Program: Lagrange Interpolation
% Author:  Timothy Tarter
% Date:    08/21/2024
% Purpose: Interpolate Lagrange Polynomials

%%
%sets up symbolic polynomials 
syms x;

%%
%input the data for interpolation
xdata = [1 2 5];
ydata = [3 4 6];

for i = 0:length(xdata)-1
    disp(i);
end