load OICI-DATA-2015;
Classe{1}=ClasseC1;
Classe{2}=ClasseC2;

nbIter = 100;
sizeTrain = 1000;
ResTot={};
ErreurTot={};
for i=1:nbIter
    [TrainClasse,TestClasse] = extraction_CC( sizeTrain,Classe);
    [MuTrainClasse,SigmaTrainClasse] = entrainement_CC(TrainClasse);
    [Res3D,Erreur3D,NB_Erreur3D] = evaluateur3D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse );
    ResTot3D{i}=Res3D;
    ErreurTot3D{i}=Erreur3D;
    NB_ErreurTot3D(:,i)=NB_Erreur3D;
    [Res2D12,Erreur2D12,NB_Erreur2D12] = evaluateur2D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,1,2);
    NB_ErreurTot2D12(:,i)=NB_Erreur2D12;
    [Res2D13,Erreur2D13,NB_Erreur2D13] = evaluateur2D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,1,3);
    NB_ErreurTot2D13(:,i)=NB_Erreur2D13;
    [Res2D23,Erreur2D23,NB_Erreur2D23] = evaluateur2D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,2,3);
    NB_ErreurTot2D23(:,i)=NB_Erreur2D23;
    
    [Res1D1,Erreur1D1,NB_Erreur1D1] = evaluateur1D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,1);
    [Res1D2,Erreur1D2,NB_Erreur1D2] = evaluateur1D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,2);
    [Res1D3,Erreur1D3,NB_Erreur1D3] = evaluateur1D_CC( TestClasse,MuTrainClasse,SigmaTrainClasse,3);
end;
for i=1:2
    sigma_NB_ErreurTot3D(i,1)=var(NB_ErreurTot3D(i,:));
end