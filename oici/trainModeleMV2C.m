function [ muBar, sigmaBar, muSaumon, sigmaSaumon] = trainModeleMV2C(TrainBar, TrainSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

muBar = mean(TrainBar);
sigmaBar = sqrt(var(TrainBar));
muSaumon = mean(TrainSaumon);
sigmaSaumon = sqrt(var(TrainSaumon));

end