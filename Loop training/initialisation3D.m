function [ VTBar,VTSaumon ] = initialisation3D(muSaumon, sigmaSaumon, muBar, sigmaBar, sizeVT)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);

end