function [ TrainSaumon, TrainBar ] = extraireEnsembleEntrainement( VTBar, VTSaumon, sizeTrain)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    tmp = randperm(size(VTBar,1));
    TrainSaumonIndice = tmp(1:sizeTrain);
    
    tmp = randperm(size(VTBar,1));
    TrainBarIndice = tmp(1:sizeTrain);
    
    TrainSaumon = VTSaumon(TrainSaumonIndice);
    TrainBar = VTBar(TrainBarIndice);

end

