function [Res] = classifieurMV3D_CC(Test,MuTrainClasse,SigmaTrainClasse,NB_Classe)

PTClasse=zeros(length(Test),NB_Classe);

for i=1:NB_Classe
    PTClasse(:,i)=mvnpdf(Test,MuTrainClasse{i},SigmaTrainClasse{i});
end
[Max,Res]=max(PTClasse,[],2);

end