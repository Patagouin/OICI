function [ TrainBar, TrainSaumon, TestBar, TestSaumon] = extractTrain3d(VTBar, VTSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sizeTrain = 100;
sizeVT = size(VTBar,1);
TrainBarId = randperm(sizeVT);
TrainSaumonId = randperm(sizeVT);
resTrainB = TrainBarId(1:sizeTrain);
resTrainS = TrainSaumonId(1:sizeTrain);
resB = TrainBarId(sizeTrain:sizeVT);
resS = TrainSaumonId(sizeTrain:sizeVT);
TrainBar = VTBar(resTrainB,:);
TrainSaumon = VTSaumon(resTrainS,:);
TestBar = VTBar(resB,:);
TestSaumon = VTSaumon(resS,:);

end