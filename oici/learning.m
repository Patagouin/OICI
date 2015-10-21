function [ muBarTrain, sigmaBarTrain, muSaumonTrain, sigmaSaumonTrain ] = entrainerModeleMV2C( TrainSaumon, TrainBar )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    muSaumonTrain = mean(TrainSaumon);
    sigmaSaumonTrain = sqrt(var(TrainSaumon));
    
    muBarTrain = mean(TrainBar);
    sigmaBarTrain = sqrt(var(TrainBar));
    
    muSaumonTrain = mean(TrainSaumon);
    sigmaSaumonTrain = sqrt(var(TrainSaumon));

end

