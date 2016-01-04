function [ resC1C2, resC1C3, resC2C3, error ] = classifieur_Bayesien_CC( trainC1, trainC2, trainC3, testC1, testC2, testC3 )

[ resC1C2_C1, resC1C2_C2, errorC1C2 ] = classifieurMV_CC( trainC1, trainC2, testC1, testC2 );
[ resC1C3_C1, resC1C3_C3, errorC1C3 ] = classifieurMV_CC( trainC1, trainC3, testC1, testC3 );
[ resC2C3_C2, resC2C3_C3, errorC2C3 ] = classifieurMV_CC( trainC2, trainC3, testC2, testC3 );

resC1C2 = [resC1C2_C1, resC1C2_C2];
resC1C3 = [resC1C3_C1, resC1C3_C3];
resC2C3 = [resC2C3_C2, resC2C3_C3];

error = [errorC1C2 , errorC1C3, errorC2C3];

end

