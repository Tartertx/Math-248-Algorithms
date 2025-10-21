function x_table = newton(x0,tol,n)
%{
Program:    newton.m
Author:     Alex Capaldi
Date:       10/9/25
Purpose:    Uses Newton's Method to find a solution to f(x)=0 given the 
            continuous function f and its derivative, starting 
            from initial guess x0.
%}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variable Listing:
% Inputs:
%   x0  - initial condition
%   tol - relative error tolerance (default value set)
%   n   - maximum number of iterations (default value set)
%
% Output:
%   x_table - table displaying [i, x_i]
%
% Other:
%   x       = vector of iteration values (double)
%   i       = loop index (int)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format longG % Makes numbers be displayed with 15 digits rather than just 5.

if (nargin < 2)
    tol = 10^(-3); % Default value of relative error tolerance.
end

if (nargin < 3)
    n = 10^3;      % Default value of maximum number of allowed iterations.
end

x = zeros(2,1);  % Initialize as column vector.
x(1) = inf;      % Arbitrarily large value for difference check
x(2) = x0;       % Starting guess
i = length(x);   % Initialize counter.

while (abs(x(i) - x(i-1)) >= tol * abs(x(i)))
    i = i + 1; % Increment counter
    if (i > n) % Hit max iterations?
        fprintf('The method failed after %s iterations.\n', num2str(n))
        return
    end

    [fx,dfx] = f(x(i-1));     % Evaluate the function and its derivative at x(i-1).

    x(i) = x(i-1) - fx / dfx; % Newton iteration
end

indices = (0:(i-2))';
x_table = table(indices, x(2:end), 'VariableNames', {'i','x_i'});

    function [y,yprime] = f(x)
        % y is the function whose root we are finding.
        % yprime is the derivative of that function.
        % Replace the lines below with the function of interest and its
        % derivative.
        y = x^2 - x - 2;
        yprime = 2*x - 1;
    end
end