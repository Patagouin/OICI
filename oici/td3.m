
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
    vError(1, i) = nbBarErreur/size(ResSaumon,1);
    vError(2, i) = nbSaumonErreur/size(ResSaumon, 1);
    
    tmp = find();
end;

hold on;
%vError(1, :) = vError(1, :) / ( size(vError(1,:), 2));
%vError(2, :) = vError(2, :) / ( size(vError(2,:), 2));
%vError(1, :) = vError(1, :) * 100;
%vError(2, :) = vError(2, :) * 100;


%plot(vError(1, :), 'g');
%plot(vError(2, :), 'r');

hold off;