function [muSaumonTrain,sigmaSaumonTrain,muBarTrain,sigmaBarTrain] = entrainement(TrainSaumon,TrainBar)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

muSaumonTrain = mean(TrainSaumon);
sigmaSaumonTrain = cov(TrainSaumon);

muBarTrain = mean(TrainBar);
sigmaBarTrain = cov(TrainBar);

end

