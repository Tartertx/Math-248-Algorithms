%% Preamble
% Program name:     fpi.m
% Author:           Timothy Tarter
% Due Date:         10/06/2025
% Purpose:          Build a fixed point iteration function 

%% Variables
% y is the output of the function for g(x)
% x is the row vector of FPI entries
% tol is the error tolerance
% n is the maximum number of trials we are willing to have
% fixedpoint is the table output

%% Code
function fixedpoint = fpi(x0, tol, n)
    %deal with the number of inputs
    if nargin == 1
        tol = 0.001;
        n = 1000;
    end
    if nargin == 2
        n = 1000;
    end

    %set up initial conditions for the table
    format longG
    x = zeros(n,2);
    x(1,1)=x0;
    x(1,2)=0;

    %run the FPI algorithm
    for i = 1:n
        x(i+1,1) = g(x(i,1)); %update the x vector with g(x) and i
        x(i+1,2)=i;
        if abs(x(i,1)-x(i+1,1)) <= tol*x(i+1,1) %if the difference between terms is within the error bound, end the loop
            x=x(1:i,:); %chop off the last terms which are zeroed
            break
        end
    end
    
    %if we didn't end early, output an error
    if i == n 
            failureOutput = ['The method failed after ', num2str(n),' iterations.'];
            error(failureOutput);
    end
    
    %if we ended early, output the table
    if i < n
        fpidata = x(:,1);
        iteration = x(:,2);
        fixedpoint = table(iteration,fpidata);
    end

    %subfunction for computing g(x)
    function y=g(x)
        y = 2.^(-x);
    end
end