function [ VTBar, VTSaumon, sizeTrain, nbIter ] = initialize()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    %muSaumon = 6;
    %sigmaSaumon = 1;
    %muBar = 10;
    %sigmaBar = 1;
    

    muSaumon = [6 6];
    sigmaSaumon = [1 1];
    muBar = [10 10];
    sigmaBar = [1 1];
    
    
    sizeVT = 1000;
    VTSaumon = mvnrnd(muSaumon, sigmaSaumon, sizeVT);
    VTBar = mvnrnd(muBar, sigmaBar, sizeVT);
    nbIter = 100;
    sizeTrain = 100;
end

