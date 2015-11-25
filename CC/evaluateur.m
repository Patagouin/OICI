function [nbBarErreur1,nbSaumonErreur1] = evaluateur( TestBar,TestSaumon,muBarTrain,sigmaBarTrain,muSaumonTrain,sigmaSaumonTrain )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
ResBar = classifieurMV(TestBar,muBarTrain,muSaumonTrain,sigmaBarTrain,sigmaSaumonTrain);
ResSaumon = classifieurMV(TestSaumon,muBarTrain,muSaumonTrain,sigmaBarTrain,sigmaSaumonTrain);
nbSaumonErreur1 = 2*size(ResSaumon,1)-sum(ResSaumon);
nbBarErreur1=sum(ResBar)-size(ResBar,1);

end

