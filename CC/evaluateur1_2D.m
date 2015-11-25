function [nbBarErreur1,nbSaumonErreur1,ResSaumon,ResBar] = evaluateur1_2D( TestBar,TestSaumon,muBarTrain,sigmaBarTrain,muSaumonTrain,sigmaSaumonTrain )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
[ResSaumon,Ptsaumon1,Ptbar1] = classifieurMV2D(TestSaumon,muBarTrain,muSaumonTrain,sigmaBarTrain,sigmaSaumonTrain);
[ResBar,Ptsaumon2,Ptbar2] = classifieurMV2D(TestBar,muBarTrain,muSaumonTrain,sigmaBarTrain,sigmaSaumonTrain);
nbSaumonErreur1 = 2*size(ResSaumon,1)-sum(ResSaumon);
nbBarErreur1=sum(ResBar)-size(ResBar,1);

end

