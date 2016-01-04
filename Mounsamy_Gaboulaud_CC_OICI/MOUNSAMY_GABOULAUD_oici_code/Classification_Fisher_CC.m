function [ resC1C2, resC1C3, resC2C3, error ,testFisher] = Classification_Fisher_CC( trainC1, trainC2, trainC3, testC1, testC2, testC3 )
[ muC1, sigmaC1, muC2, sigmaC2, muC3, sigmaC3 ] = model_3class( trainC1, trainC2, trainC3 );

%new train
[trainC1C2_C1, trainC1C2_C2, testC1C2_C1, testC1C2_C2] = fisher(muC1,muC2,trainC1,trainC2,testC1,testC2);
[trainC1C3_C1, trainC1C3_C3, testC1C3_C1, testC1C3_C3] = fisher(muC1,muC3,trainC1,trainC3,testC1,testC3);
[trainC2C3_C2, trainC2C3_C3, testC2C3_C2, testC2C3_C3] = fisher(muC2,muC3,trainC2,trainC3,testC2,testC3);


%res
[ resC1C2_C1, resC1C2_C2, errorC1C2 ] = classifieurMV_CC( trainC1C2_C1, trainC1C2_C2, testC1C2_C1, testC1C2_C2 );
[ resC1C3_C1, resC1C3_C3, errorC1C3 ] = classifieurMV_CC( trainC1C3_C1, trainC1C3_C3, testC1C3_C1, testC1C3_C3 );
[ resC2C3_C2, resC2C3_C3, errorC2C3 ] = classifieurMV_CC( trainC2C3_C2, trainC2C3_C3, testC2C3_C2, testC2C3_C3 );

resC1C2 = [resC1C2_C1, resC1C2_C2];
resC1C3 = [resC1C3_C1, resC1C3_C3];
resC2C3 = [resC2C3_C2, resC2C3_C3];

error = [errorC1C2 , errorC1C3, errorC2C3];

testFisher{1} = [testC1C2_C1, testC1C2_C2];
testFisher{2} = [testC1C3_C1, testC1C3_C3];
testFisher{3} = [testC2C3_C2, testC2C3_C3];

end

