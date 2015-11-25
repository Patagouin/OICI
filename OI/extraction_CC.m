function [TrainClasse,TestClasse] = extraction_CC( sizeTrain,Classe)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
NB_Classe=length(Classe);
TrainClasse={};
TestClasse={};
for i=1:NB_Classe
    VTSize=length(Classe{i});
    Z=randperm(VTSize);
    TrainClasseiIndice = Z(1:sizeTrain);
    TestClasseiIndice = Z(sizeTrain+1:VTSize);
    TrainClasse{i} = Classe{i}(TrainClasseiIndice,:);
    TestClasse{i} = Classe{i}(TestClasseiIndice,:);
end
end
