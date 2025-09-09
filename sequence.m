%% Preamble
% Program name:     sequence.m
% Author:           Timothy Tarter
% Due Date:         09/11/2025
% Purpose:          Take in the n-value the user wants of the sequence,
%                   then the first two terms of the sequence, then 
%                   calculate the rest of the sequence and plot it. 

%% Variables
% n is the number of digits of the sequence to compute
% a1 is the first digit of the sequence
% a2 is the second digit of the sequence
% S is the array of sequence values
% index is the array of index values for the sequence
% S_table is the table we are asked to output

%% Code
% Introduce the function
function sequence(n, a1, a2)
    S = zeros(n,1); % Initialize our sequence
    S(1) = a1; % Initialize user values
    S(2) = a2; % Initialize user values

    % Use loop to generate sequence and store it in the plot data
    for i = 3:n
        S(i) = 0.5*(S(i-1)+S(i-2));
    end

    % Get index
    index = (1:n)';

    % Get and output the table
    S_table = table(index,S,'VariableNames',{'Index','S_i'});
    disp(S_table);

    % Make the visualization
    figure
    plot(index,S,'b*')
    title('Plot of the Sequence')
    xlabel('n Value')
    ylabel('Sequence Value')
end



