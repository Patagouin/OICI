function [ resC1, resC2 ] = classifieurMV( testC1,testC2, muC1, sigmaC1, muC2, sigmaC2)

%C1
ptC1 = mvnpdf(testC1,muC1,sigmaC1);
ptC2 = mvnpdf(testC1,muC2,sigmaC2);

resC1=zeros(size(testC1,1),1);
resC1=resC1+(ptC2 > ptC1);


%C2
ptC1 = mvnpdf(testC2,muC1,sigmaC1);
ptC2 = mvnpdf(testC2,muC2,sigmaC2);

resC2=zeros(size(testC2,1),1);
resC2=resC2+(ptC1 > ptC2);



end