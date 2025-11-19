%% Preamble
% Program name:     quadrature_compare.m
% Author:           Timothy Tarter
% Due Date:         11/18/2025
% Purpose:          Compute our improved integral formula to calculate and
%                   compare the errors of the various methods for numerical
%                   integration.

%% Variables
% ImprovedIntegral = dummy variable to store the output of the improved
% integral function
%
% betterint = improved integral function
%
% midpointMethodi = ith midpoint method for granularity n
%
% trapMethodi = ith trap method for granularity n
%
% improvedMethodi = ith improved method for granularity n
%
% numericalIntegrationMatrix = matrix containing the results of all of our
% numerical integration sims
%
% trueValueMatrix = matrix of true values to difference ^ with
%
% abserrorMatrix = matrix of absolute difference between the two above
% matrices
%
% n = matrix with granularities of each ith trial for numerical integration
%
% errorTable = table with the absolute errors
%
% midpointRatioi = midpoint error i+1 / midpoint error i
%
% trapRatioi = trap error i+1 / trap error i
%
% improvedRatioi = improved error i+1 / improved error i
%
% ratioDf = matrix of the above ratios
% 
% comparedErrorTable = table of comapred error ratios

%% Code
function ImprovedIntegral = betterint(a,b,n)
     ImprovedIntegral = (1/3)*mid(a,b,n) + (2/3)*trap(a,b,n);
end

midpointMethod1=mid(0,2,100);
midpointMethod2=mid(0,2,200);
midpointMethod3=mid(0,2,400);

trapMethod1=trap(0,2,100);
trapMethod2=trap(0,2,200);
trapMethod3=trap(0,2,400);

improvedMethod1=betterint(0,2,100);
improvedMethod2=betterint(0,2,200);
improvedMethod3=betterint(0,2,400);

numericalIntegrationMatrix = [midpointMethod1 trapMethod1 improvedMethod1; midpointMethod2 trapMethod2 improvedMethod2; midpointMethod3 trapMethod3 improvedMethod3];
trueValueMatrix = (exp(2)-1)*ones(3,3);
abserrorMatrix = abs(numericalIntegrationMatrix-trueValueMatrix);
n = [100; 200; 400];
errorTable = table(n,abserrorMatrix(:,1),abserrorMatrix(:,2),abserrorMatrix(:,3),'VariableNames',{'n','Midpoint Error','Trap Error','Improved Error'});

%successive ratio

midpointRatio1 = abserrorMatrix(2,1)/abserrorMatrix(1,1);
midpointRatio2 = abserrorMatrix(3,1)/abserrorMatrix(2,1);

trapRatio1 = abserrorMatrix(2,2)/abserrorMatrix(1,2);
trapRatio2 = abserrorMatrix(3,2)/abserrorMatrix(2,2);

improvedRatio1 = abserrorMatrix(2,3)/abserrorMatrix(1,3);
improvedRatio2 = abserrorMatrix(3,3)/abserrorMatrix(2,3);

ratioDf = [midpointRatio1 trapRatio1 improvedRatio1; midpointRatio2 trapRatio2 improvedRatio2];
comparedErrorTable = table(ratioDf(:,1),ratioDf(:,2),ratioDf(:,3), 'VariableNames',{'Midpoint Successive Error','Trapezoid Successive Error','Improved Successive Error'});

disp(errorTable)
disp(comparedErrorTable)