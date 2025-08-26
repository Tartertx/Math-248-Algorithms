%% Preamble
% Program name:     Triangle.m
% Author:           Timothy Tarter
% Due Date:         08/28/2005
% Purpose:          Ask the user for three vertices of a triangle in
%                   \mathbb{R}^2, x then y. Calculate the lengths of 
%                   the sides, the perimeter, then the area. Print 
%                   the perimeter and the area to the screen. Then, 
%                   plot the triangle. 

%% Variables
% xi, yi are the coordinate entries of point i, respectively
% dist_p1_p2 is the distance between points 1 and 2
% dist_p2_p3 is the distance between points 2 and 3
% dist_p1_p3 is the distance between points 1 and 3
% perimeter is the perimeter of the triangle
% semi_peri is the semi-perimeter of the triangle
% area is the area of the triangle
% tri_x and tri_y are the arrays containing the coordinates of the vertices
% of the triangle for the purpose of making a plot.


%% Code
% Ask the user for vertices
x1 = input('What is the x-coordinate of the first point? ');
y1 = input('What is the y-coordinate of the first point? ');

x2 = input('What is the x-coordinate of the second point? ');
y2 = input('What is the y-coordinate of the second point? ');

x3 = input('What is the x-coordinate of the third point? ');
y3 = input('What is the y-coordinate of the third point? ');

% Calculate the lengths of the sides
dist_p1_p2 = sqrt((x2-x1)^2+(y2-y1)^2);
dist_p2_p3 = sqrt((x3-x2)^2+(y3-y2)^2);
dist_p1_p3 = sqrt((x3-x1)^2+(y3-y1)^2);

%Calculate the perimeter
perimeter = dist_p1_p2+dist_p2_p3+dist_p1_p3;
semi_peri = 0.5*perimeter;

%Calculate the area using Heron's formula
area = sqrt(semi_peri*(semi_peri-dist_p1_p2)*(semi_peri-dist_p2_p3)*(semi_peri-dist_p1_p3));

%Output the perimeter and area of the triangle
fprintf('The Perimeter of the triangle you entered is %4.1f\n', perimeter)
fprintf('The Area of the triangle you entered is %4.1f\n', area)

%Store the data of the triangle to make a plot
tri_x = [x1 x2 x3 x1];
tri_y = [y1 y2 y3 y1];

%Plot the triangle
figure
plot(tri_x,tri_y,'g--',LineWidth=1)
title('Triangle Plot')
xlabel('x-coordinate')
ylabel('y-coordinate')