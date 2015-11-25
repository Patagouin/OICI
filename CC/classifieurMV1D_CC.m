function [Res] = classifieurMV1D_CC(Test,MuTrainClasse,SigmaTrainClasse,NB_Classe,dimension1)

for i=1:NB_Classe
    MuTrainRedim{i}=[MuTrainClasse{i}(1,dimension1)];
    SigmaTrainRedim{i}=[SigmaTrainClasse{i}(dimension1,dimension1)];
end
TestRedim=[Test(:,dimension1)];
for i=1:NB_Classe
    PTClasse(:,i)=mvnpdf(TestRedim,MuTrainRedim{i},SigmaTrainRedim{i}); 
end
[Max,Res]=max(PTClasse,[],2);
end