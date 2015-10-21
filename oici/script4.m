[VTBar, VTSaumon] = initialisation();
nbIter = 100;
for i=1:nbIter
    [TrainBar, TrainSaumon] = extractTrain(VTBar,VTSaumon);
    [muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon] = trainModeleMV2C(TrainBar,TrainSaumon);
    TestBar = VTBar;
    TestSaumon = VTSaumon;
    [nbBarErrorMV, nbSaumonErrorMV,nbBarErrorSeuil, nbSaumonErrorSeuil ] = evaluateClassifier(TestBar,TestSaumon,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon)
    Verror(1,i) = nbBarErrorMV;
    Verror(2,i) = nbSaumonErrorMV;
    Verror(3,i) =  nbBarErrorSeuil;
    Verror(4,i) = nbSaumonErrorSeuil;
end;
hold on;
%plot(Verror(1, :),'b');
%plot(Verror(2, :), 'r');

%hist(Verror(1, :));
%hist(Verror(2, :));
figure(2);
hist(Verror(3, :));
figure(3);
hist(Verror(4, :));
visuTeorique(muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
hold off;

%visuTeorique(7,3,10,2);