function [MuTrainClasse,SigmaTrainClasse] = entrainement_CC(TrainClasse)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
NB_Classe=length(TrainClasse);
MuTrainClasse={};
SigmaTrainClasse={};

for i=1:NB_Classe
    MuTrainClasse{i} = mean(TrainClasse{i});
    SigmaTrainClasse{i} = cov(TrainClasse{i});
end
end