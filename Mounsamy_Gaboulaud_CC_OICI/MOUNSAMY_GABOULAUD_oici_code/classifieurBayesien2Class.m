function [ resC1_bay, resC2_bay, testC1, testC2 , error_bay] = classifieurBayesien2Class( C1,C2,sizeTrain,sizeTest )

[trainC1,trainC2,testC1,testC2] = extractTrainAndTest(C1,C2,sizeTrain,sizeTest);
[muC1,sigmaC1,muC2,sigmaC2] = model(trainC1,trainC2);
[resC1_bay, resC2_bay, error_bay] = classifieurBayesien( testC1, testC2, muC1, sigmaC1, muC2, sigmaC2 );


end

