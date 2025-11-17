function M = mid(a,b,n)
%   M = mid(a, b, n) returns the approximate integral of f over [a,b]
%   using n subintervals and the composite midpoint rule.
%
% Inputs:
%   a - lower limit of integration
%   b - upper limit of integration
%   n - number of subintervals
%
% Output:
%   M - approximation of the integral

h = (b - a)/n; % Step size
x = a + h; % First midpoint.
sum = f(x);
for i=1:(n/2 - 1)
    x = x + 2*h; % We use every other node.
    sum = sum + f(x);
end

M = 2*h*sum; % Composite Midpoint value.

    function fx = f(x)
    % function f to take the integral of.
        fx = exp(x);
    end

end