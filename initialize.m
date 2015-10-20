function [ VTBar, VTSaumon, sizeTrain, nbIter ] = initialize()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    muSaumon = 12;
    sigmaSaumon = 4;
    muBar = 10;
    sigmaBar = 2;
    sizeVT = 1000;
    VTSaumon = mvnrnd(muSaumon, sigmaSaumon, sizeVT);
    VTBar = mvnrnd(muBar, sigmaBar, sizeVT);
    nbIter = 100;
    sizeTrain = 100;
end

