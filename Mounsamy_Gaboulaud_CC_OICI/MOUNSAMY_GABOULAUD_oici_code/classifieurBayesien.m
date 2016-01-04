function [ resC1, resC2, error ] = classifieurBayesien( testC1, testC2, muC1, sigmaC1, muC2, sigmaC2 )

[resC1,resC2] = classifieurMV (testC1, testC2, muC1, sigmaC1, muC2, sigmaC2);

% %nombre de mal classé dans C1
 errorC1 = sum(resC1);

% %nombre de mal classé dans C2
 errorC2 = sum(resC2);
% 
 error = (errorC1 + errorC2)/(size(testC1,1)+size(testC2,1))*100 ;


end

