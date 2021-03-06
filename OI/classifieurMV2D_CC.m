function [Res] = classifieurMV2D_CC(Test,MuTrainClasse,SigmaTrainClasse,NB_Classe,dimension1,dimension2)

for i=1:NB_Classe
    MuTrainRedim{i}=[MuTrainClasse{i}(dimension1) MuTrainClasse{i}(dimension2)];
    SigmaTrainRedim{i}=[SigmaTrainClasse{i}(dimension1,dimension1) SigmaTrainClasse{i}(dimension1,dimension2);SigmaTrainClasse{i}(dimension2,dimension1) SigmaTrainClasse{i}(dimension2,dimension2)];
end
TestRedim=[Test(:,dimension1) Test(:,dimension2)];
for i=1:NB_Classe
    PTClasse(:,i)=mvnpdf(TestRedim,MuTrainRedim{i},SigmaTrainRedim{i}); 
end
[Max,Res]=max(PTClasse,[],2);
end