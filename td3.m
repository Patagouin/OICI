
[VTBar, VTSaumon, sizeTrain, nbIter] = initialize();

vError = zeros(2,nbIter);

for i=1:nbIter
    
    [ TrainSaumon, TrainBar ] = extraireEnsembleEntrainement(VTBar, VTSaumon, sizeTrain);
    
    [ muBarTrain, sigmaBarTrain, muSaumonTrain, sigmaSaumonTrain ] = entrainerModeleMV2C(TrainSaumon, TrainBar);
    
    TestBar = VTBar; %ones(size(VTBar)) + 9;
    TestSaumon = VTSaumon;
    
    ResBar = classifieurMV(TestBar, muBarTrain, muSaumonTrain, sigmaBarTrain, sigmaSaumonTrain);
    ResSaumon = classifieurMV(TestSaumon, muBarTrain, muSaumonTrain, sigmaBarTrain, sigmaSaumonTrain);
    
    nbBarErreur = 2*size(ResBar, 1) - sum(ResBar);
    nbSaumonErreur = sum(ResSaumon) - size(ResSaumon, 1);
    vError(1, i) = nbBarErreur;
    vError(2, i) = nbSaumonErreur;
end;
hold on;
plot(vError(1, :), 'g');
plot(vError(2, :), 'r');

hold off;