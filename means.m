%% Preamble
% Program name:     means.m
% Author:           Timothy Tarter
% Due Date:         09/03/2025
% Purpose:          Ask the user for how many numbers they would like to
%                   input, then calculate and output the arithmetic and 
%                   geometric mean. Additionally, if they input negative 
%                   numbers, return out of the loop.

%% Variables
% num_numbers is the number of numbers for the mean calculation
% ari is our running sum for the arithmetic mean
% geo is our running product for the geometric mean
% input_num is the current value being assessed and used in the loop,
%   provided by the user.

%% Code

% get length of loop
num_numbers = input('How many NON-NEGATIVE numbers would you like to input? ');

% make sure num_numbers is a valid positive integer
if num_numbers < 0
    fprintf('Enter a non-negative number please.')
    return
end


% initialize arithmetic mean and geometric mean calculation
ari = 0;
geo = 1;

% initialize loop
for i = 1:num_numbers
    % get numbers for calculations
    input_num = input('Input a non-negative number: ');

    % make sure numbers are non-negative
    if input_num < 0
        % if numbers are negative, exit the loop
        fprintf('You input a negative number. Please do not do that.')
        return
    else
        % if numbers are non-negative, add the new number to the arithmetic
        % mean and multiply the new number in to our
        % product for the geometric mean
        ari = ari + input_num;
        geo = geo * input_num;
    end
end

% calculate the arithmetic and geometric mean from the product and sum
ari = ari/num_numbers;
geo = geo^(1/num_numbers);

% output to the command window!
fprintf('Your arithmetic mean is, %4.1f\n', ari)
fprintf('Your geometric mean is, %4.1f\n', geo)