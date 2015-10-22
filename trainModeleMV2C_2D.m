function [ muBar, sigmaBar, muSaumon, sigmaSaumon] = trainModeleMV2C_2D(TrainBar, TrainSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

muBar = mean(TrainBar);
sigmaBartmp = sqrt(var(TrainBar))
%sigmaBartmp = cov(TrainBar)
muSaumon = mean(TrainSaumon);
sigmaSaumontmp = sqrt(var(TrainSaumon));

sizetmp = size(sigmaBartmp,2);
sigmaBar = eye(sizetmp);
sigmaSaumon = eye(sizetmp);

    for i=1:sizetmp
        sigmaBar(i,i)=sigmaBartmp(i);
        sigmaSaumon(i,i)=sigmaSaumontmp(i);
    end
end