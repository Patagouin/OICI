function [ VerrorBar, VerrorSaumon ] = loopTrain( muSaumon, sigmaSaumon, muBar, sigmaBar, sizeVT )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    [VTBar, VTSaumon] = initialisation3D(muSaumon, sigmaSaumon, muBar, sigmaBar, sizeVT );
    nbIter = 100;
    for i=1:nbIter
        [TrainBar, TrainSaumon,TestBar,TestSaumon] = extractTrain3d(VTBar,VTSaumon);
        [muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon] = trainModeleMV2C_3D(TrainBar,TrainSaumon);

        resBarMV = classifieurMV3D(TestBar,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
        resSaumonMV = classifieurMV3D(TestSaumon,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
        IdErrorBar = find(resBarMV==2);
        IdErrorSaumon = find(resSaumonMV==1);

        VerrorBar = TestBar(IdErrorBar,:);
        VerrorSaumon = TestSaumon(IdErrorSaumon,:);

    end;

    hold on;
    figure(1);
    scatter3(TestBar(:,1),TestBar(:,2), TestBar(:,3), 'b');
    scatter3(TestSaumon(:,1),TestSaumon(:,2), TestSaumon(:,3), 'r');
    hold off;

    hold on;
    figure(2);
    scatter3(VerrorBar(:,1),VerrorBar(:,2), VerrorBar(:,3), 'r');
    scatter3(VerrorSaumon(:,1),VerrorSaumon(:,2), VerrorSaumon(:,3), 'b');
    hold off;

end

