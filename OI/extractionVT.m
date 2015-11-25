function [TrainSaumon,TrainBar] = extractionVT( sizeTrain,VTSaumon,VTBar )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
VTSize=size(VTSaumon,1);
Z=randperm(VTSize);
TrainSaumonIndice = Z(1:sizeTrain);
VTSize=size(VTSaumon,1);
Z=randperm(VTSize);
TrainBarIndice = Z(1:sizeTrain);
TrainSaumon = VTSaumon(TrainSaumonIndice);
TrainBar = VTBar(TrainBarIndice);
end

