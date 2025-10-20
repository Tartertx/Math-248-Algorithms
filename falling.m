function falling()
    % introduce the user
    fprintf('Hi! This program is used to numerically find the time at which a ball hits the ground after being dropped from an initial height.\n')
    
    % get inputs
    mass = input('How much does the ball weigh in kilograms? ');
    airRes = input('How much (non-zero) air-resistance is there in kilograms per second? ');
    startHeight = input('What is the starting height of the ball in meters? ');
    t0 = input('What positive number would you like to use as an initial guess for the time (in seconds) at which the ball bounces? ');
    gravity = 9.8; %m/s^2
    maxIterations = input('What is the maximum number of iterations you would like to perform? ');

    % newton's method code goes below

    % 
    
end