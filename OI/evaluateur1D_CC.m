function [Res,Erreur,NB_Erreur] = evaluateur1D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,dimension1)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
NB_Classe=length(TestClasse);
Res={};
Erreur={};

for i=1:NB_Classe
    [Res{i}] = classifieurMV1D_CC(TestClasse{i},MuTrainClasse,SigmaTrainClasse,NB_Classe,dimension1);
end
for i=1:NB_Classe
    Erreur{i}=find(Res{i}~=i);
    NB_Erreur(i,1)=length(Erreur{i})/length(Res{i})*100;
end
end
