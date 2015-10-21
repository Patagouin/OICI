function [ VTBar,VTSaumon ] = initialisation3D()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
muSaumon = [10 5 7];
sigmaSaumon = [1 0 0 ; 0 3 0; 0 0 5]
muBar = [12 7 8];
sigmaBar = [1 0 0 ; 0 2 0; 0 0 4];
sizeVT = 1000;
VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);
end