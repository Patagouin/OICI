function [ muBar, sigmaBar, muSaumon, sigmaSaumon] = trainModeleMV2C_3D(TrainBar, TrainSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

muBar = mean(TrainBar, 1);

sigmaBartmp = var(TrainBar, 1).^(1/2);
%sigmaBartmp = cov(TrainBar)
muSaumon = mean(TrainSaumon, 1);
sigmaSaumontmp = var(TrainSaumon, 1).^(1/2);

%
sizetmp = size(sigmaBartmp,2);
sigmaBar = eye(sizetmp);
sigmaSaumon = eye(sizetmp);

    for i=1:sizetmp
        sigmaBar(i,i)=sigmaBartmp(i);
        sigmaSaumon(i,i)=sigmaSaumontmp(i);
    end
end