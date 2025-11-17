%% Preamble
% Program name:     quadrature_compare.m
% Author:           Timothy Tarter
% Due Date:         11/18/2025
% Purpose:          

%% Variables
% num_numbers is the number of numbers for the mean calculation
% ari is our running sum for the arithmetic mean
% geo is our running product for the geometric mean
% input_num is the current value being assessed and used in the loop,
%   provided by the user.

%% Code
function I = betterint(a,b,n)
     I = (1/3)*mid(a,b,n) + (2/3)*trap(a,b,n);
end

m1=mid(0,2,100);
m2=mid(0,2,200);
m3=mid(0,2,400);

t1=trap(0,2,100);
t2=trap(0,2,200);
t3=trap(0,2,400);

i1=betterint(0,2,100);
i2=betterint(0,2,200);
i3=betterint(0,2,400);

A = [m1 t1 i1; m2 t2 i2; m3 t3 i3];
B = (exp(2)-1)*ones(3,3);
abserror = abs(A-B);
n = [100; 200; 400];
table(n,abserror(:,1),abserror(:,2),abserror(:,3),'VariableNames',{'n','Midpoint','Trap','Improved'})

%successive ratio

mrat1 = abserror(2,1)/abserror(1,1);
mrat2 = abserror(3,1)/abserror(2,1);

trat1 = abserror(2,2)/abserror(1,2);
trat2 = abserror(3,2)/abserror(2,2);

irat1 = abserror(2,3)/abserror(1,3);
irat2 = abserror(3,3)/abserror(2,3);

ratioDf = [mrat1 trat1 irat1; mrat2 trat2 irat2]