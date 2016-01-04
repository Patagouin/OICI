function [ErrorWithClass] = classification_Bayesien_all( C1, C2, C3, C4, nbIter, sizeTrain, sizeTest )

for i=1:nbIter
    [ resC1C2_C1_bay, resC1C2_C2_bay,  testC1C2_C1_bay, testC1C2_C2_bay , errorC1C2_bay] = classifieurBayesien2Class( C1,C2,sizeTrain,sizeTest );
    [ resC1C3_C1_bay, resC1C3_C3_bay,  testC1C3_C1_bay, testC1C3_C3_bay , errorC1C3_bay] = classifieurBayesien2Class( C1,C3,sizeTrain,sizeTest );
    [ resC1C4_C1_bay, resC1C4_C4_bay,  testC1C4_C1_bay, testC1C4_C4_bay , errorC1C4_bay] = classifieurBayesien2Class( C1,C4,sizeTrain,sizeTest );
    [ resC2C3_C2_bay, resC2C3_C3_bay,  testC2C3_C2_bay, testC2C3_C3_bay , errorC2C3_bay] = classifieurBayesien2Class( C2,C3,sizeTrain,sizeTest );
    [ resC2C4_C2_bay, resC2C4_C4_bay,  testC2C4_C2_bay, testC2C4_C4_bay , errorC2C4_bay] = classifieurBayesien2Class( C2,C4,sizeTrain,sizeTest );
    [ resC3C4_C2_bay, resC3C4_C4_bay,  testC3C4_C2_bay, testC3C4_C4_bay , errorC3C4_bay] = classifieurBayesien2Class( C3,C4,sizeTrain,sizeTest );
    
    vError_bay(i,1)=errorC1C2_bay;
    vError_bay(i,2)=errorC1C3_bay;
    vError_bay(i,3)=errorC1C4_bay;
    vError_bay(i,4)=errorC2C3_bay;
    vError_bay(i,5)=errorC2C4_bay;
    vError_bay(i,6)=errorC3C4_bay;
end

visu_MC_bayesien(resC1C2_C1_bay,resC1C2_C2_bay,testC1C2_C1_bay,testC1C2_C2_bay,'C1','C2');
visu_MC_bayesien(resC1C3_C1_bay,resC1C3_C3_bay,testC1C3_C1_bay,testC1C3_C3_bay,'C1','C3');
visu_MC_bayesien(resC1C4_C1_bay,resC1C4_C4_bay,testC1C4_C1_bay,testC1C4_C4_bay,'C1','C4');
visu_MC_bayesien(resC2C3_C2_bay,resC2C3_C3_bay,testC2C3_C2_bay,testC2C3_C3_bay,'C2','C3');
visu_MC_bayesien(resC2C4_C2_bay,resC2C4_C4_bay,testC2C4_C2_bay,testC2C4_C4_bay,'C2','C4');
visu_MC_bayesien(resC3C4_C2_bay,resC3C4_C4_bay,testC3C4_C2_bay,testC3C4_C4_bay,'C3','C4');

meanError = mean(vError_bay);
ErrorC1 = meanError(1)+meanError(2)+meanError(3);
ErrorC2 = meanError(1)+meanError(4)+meanError(5);
ErrorC3 = meanError(2)+meanError(4)+meanError(6);
ErrorC4 = meanError(3)+meanError(5)+meanError(6);
ErrorWithClass = [ErrorC1 ErrorC2 ErrorC3 ErrorC4];


end

