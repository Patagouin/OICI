function [ VTBar,VTSaumon ] = initialisation()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
muSaumon = 10;
sigmaSaumon = 2;
muBar = 7;
sigmaBar = 3;
sizeVT = 1000;
VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);
end