function [TrainSaumon,TrainBar,TestSaumon,TestBar] = extractionVT2D( sizeTrain,VTSaumon,VTBar )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
VTSize=size(VTSaumon,1);
Z=randperm(VTSize);
TrainSaumonIndice = Z(1:sizeTrain);
TestSaumonIndice = Z(sizeTrain+1:VTSize);
VTSize=size(VTSaumon,1);
Z=randperm(VTSize);
TrainBarIndice = Z(1:sizeTrain);
TestBarIndice = Z(sizeTrain+1:VTSize);
TrainSaumon = VTSaumon(TrainSaumonIndice,:);
TestSaumon = VTSaumon(TestBarIndice,:);
TrainBar = VTBar(TrainBarIndice,:);
TestBar = VTBar(TestSaumonIndice,:);

end

