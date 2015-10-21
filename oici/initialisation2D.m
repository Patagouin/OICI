function [ VTBar,VTSaumon ] = initialisation2D()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
muSaumon = [10 5];
sigmaSaumon = eye(2)*2;
muBar = [17 8];
sigmaBar = eye(2)*3;
sizeVT = 1000;
VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);
end