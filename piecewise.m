%% Preamble
% Program name:     piecewise.m
% Author:           Timothy Tarter
% Due Date:         08/28/2005
% Purpose:          This program does a piecewise function

x = input('What x value? ');
y = input('What x value? ');

if x < 0 && y < 0
    z = x^2 + y^2;
elseif x < 0 && y >= 0
    z = x^2 + y;
elseif x > 0 && y < 0
    z = x + y^2;
else
    z = x + y;
end

disp(z)

